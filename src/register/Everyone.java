package register;

import java.io.PrintWriter;
import java.net.URLDecoder;
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.util.DbBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.rowset.CachedRowSetImpl;

public class Everyone extends ActionSupport{
	private String username;
	private String mark;
	
	
	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
/*	public String execute() throws Exception{
		PrintWriter writer = ServletActionContext.getResponse().getWriter();
		DbBean db=new DbBean();
		String sql="select * from user where `username` = '"+uname+"';";
		ResultSet rs=null;
		try{
		rs=db.executeQuery(sql);
		while(rs.next()){
			writer.write("failure");
			return null;
		}
		    writer.write("success");
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return null;
	}
	
	public String checkLogin()throws Exception{

		PrintWriter writer = ServletActionContext.getResponse().getWriter();
		DbBean db=new DbBean();
		String sql="select * from user where `username` = '"+uname+"' and `password`='"+pw+"';";
		ResultSet rs=null;
		try{
		rs=db.executeQuery(sql);
		while(rs.next()){
			writer.write("success");
			return null;
		}
		    writer.write("failure");
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return null;
			
	}*/
	
	

	
	
	public String execute()throws Exception{
		
		username = URLDecoder.decode(username , "utf-8");  //关键代码
		
        System.out.println("--------------------------"+username);;
		Map mapping=ActionContext.getContext().getSession();
		DbBean db=new DbBean();
		String sql="select * from user where `username` = '"+username+"';";
		ResultSet rs=null;
		CachedRowSetImpl result=null;
		try{			
			rs=db.executeQuery(sql);
			result= new CachedRowSetImpl();
			result.populate(rs);
		}catch(Exception e){
			e.printStackTrace();
			
		}
		rs.close();
		db.close();

		System.out.println(">>>>>>>>>>>>>>>>>>"+mark);	
		mapping.put("mark", mark);
	
		mapping.put("result", result);
		return SUCCESS;
			
	}	
	
	
	
	

}
