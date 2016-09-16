package register;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.email.Email;
import org.util.DbBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Allshow extends ActionSupport{

	public String execute() throws Exception{
		Map mapping=ActionContext.getContext().getSession();
		DbBean db=new DbBean();
		String sql = "select `name`,`college`,`title` from `user` ;";
		String sqt = "select `username` from `user` ;";
		String sqx = "select `name` from `user` ;";
        ArrayList<String> ss = new ArrayList<String>();
        ArrayList<String> st = new ArrayList<String>();
        ArrayList<String> sx = new ArrayList<String>();
		
		try {
			ResultSet rs = db.executeQuery(sql);
			while(rs.next()){
				for(int i=1;i<=3;i++) ss.add(rs.getString(i));
			}
			ResultSet rt = db.executeQuery(sqt);
			while(rt.next()){
				st.add(rt.getString(1));
			}
			ResultSet rx = db.executeQuery(sqx);
			while(rx.next()){
				sx.add(rx.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        for(int i=0;i<st.size();i++){System.out.println("----------------"+st.get(i));}
		mapping.put("data",ss);
		mapping.put("name",sx);
		mapping.put("usename",st);
	       return SUCCESS;
		
	}
}
