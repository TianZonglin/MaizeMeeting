package register;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import org.util.DbBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.rowset.CachedRowSetImpl;

public class Login extends ActionSupport{
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
    public String getWebRoot()
	 {
	     String path = getClass().getProtectionDomain().getCodeSource().getLocation().getPath();
	     if (path.indexOf("WEB-INF") > 0) 
	     {
	        path = path.substring(0, path.indexOf("WEB-INF/classes"));
	     } 
	     return path;
	}	
	
	
	
	
	
	public String execute(){
		
		Map session = ActionContext.getContext().getSession();
		
		DbBean db = new DbBean();
		
		String sql="select * from user where `username`='"+username+"' and `password`='"+password+"';";
		
		ResultSet rs=null;
		
		try {
			rs=db.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(rs==null) return ERROR;
		
		CachedRowSetImpl crsi=null;
		
		try {
			crsi= new CachedRowSetImpl();
			crsi.populate(rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			db.close();
		}
		
		session.put("result", crsi);
		
		db.close();
		
		return SUCCESS;
		
	}

	
	
	
	
	
	

}
