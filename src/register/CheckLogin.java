package register;

import java.io.PrintWriter;
import java.net.URLDecoder; //关键代码
import java.sql.ResultSet;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.util.DbBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.rowset.CachedRowSetImpl;

public class CheckLogin extends ActionSupport{
	private String uname;
	private String pw;

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}
	
	
	public String execute() throws Exception{
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
		
		uname = URLDecoder.decode(uname , "utf-8");  //关键代码
		System.out.println("#####uname######-->"+uname);
		System.out.println("#####pw######-->"+pw);
		
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
			
	}
	
	

	
	
	public String login()throws Exception{

		Map map=ActionContext.getContext().getSession();
		DbBean db=new DbBean();
		String sql="select * from user where `username` = '"+uname+"';";
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
		
		map.put("result", result);
		return SUCCESS;
			
	}	
	
	
	
	

}
