

package register;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;
import org.email.Email;
import org.util.DbBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginRegister extends ActionSupport{
	Email mail=new Email();
	private String mailContent;
	
	private String username;
	private String password;
	private String repassword;
	private String name;
	private String sex;
	private String college;
	private String lab;
	private String lableader;
	private String email;
	private String phone;
	private String address;
	private String title;
	private String author;
	private String organization;
	private String key;
	private String abstracter;
	private String report;
	private String hotel;
	private String publish;
	private String journalname;
	private File file;
	private String fileContentType;
	private String fileFileName;	
	
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getLab() {
		return lab;
	}
	public void setLab(String lab) {
		this.lab = lab;
	}
	public String getLableader() {
		return lableader;
	}
	public void setLableader(String lableader) {
		this.lableader = lableader;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getAbstracter() {
		return abstracter;
	}
	public void setAbstracter(String abstracter) {
		this.abstracter = abstracter;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getJournalname() {
		return journalname;
	}
	public void setJournalname(String journalname) {
		this.journalname = journalname;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	
	 public static String generateRandomFilename(){  
	       String fourRandom = "";
	       //产生4位的随机数(不足4位前加零)
	       int   randomNum =   (int)(Math.random()*10000);
	       fourRandom = randomNum +"";
	       int randLength =  fourRandom.length();
	       if(randLength <4){
	           for(int i=1; i <=4-randLength; i++)
	               fourRandom = fourRandom + "0";
	       } 
	       Calendar c=Calendar.getInstance();
	       StringBuilder sb = new StringBuilder("");
	       sb.append(c.get(Calendar.YEAR))
	       .append(twoNumbers(c.get(Calendar.MONTH)))
	       .append(twoNumbers(c.get(Calendar.DAY_OF_MONTH)))
	       .append(twoNumbers(c.get(Calendar.HOUR)))
	       .append(twoNumbers(c.get(Calendar.MINUTE)))
	       .append(twoNumbers(c.get(Calendar.SECOND)))
	       .append(twoNumbers(c.get(Calendar.MILLISECOND)))
	       .append(fourRandom);
	       return sb.toString(); 
	    }
	
	 private static String twoNumbers(int number){
		   String _number = number + "";
		   if(_number.length() < 2){
		    _number = "0" + _number;
		   }
		   return _number;
		 }	
	
	
	
	
	public String execute() throws Exception{ 
		if(file!=null){
			System.out.println("***********4************************");
			System.out.println(fileFileName);
			String []tmp=fileFileName.split("\\.");
			String suffic=tmp[tmp.length-1];
			InputStream is = new FileInputStream(file);
		    String uploadPath = ServletActionContext.getServletContext().getRealPath("/file");
		    this.fileFileName=generateRandomFilename()+"."+suffic;
		    File toFile = new File(uploadPath,this.getFileFileName());
		    OutputStream os = new FileOutputStream(toFile);
		    byte[] buffer = new byte[1024];
		    int length = 0;
		    while((length=is.read(buffer))>0){
		          os.write(buffer,0,length);
		    }
		    os.flush();
		    is.close();
		    os.close();			
			
			
		}
		String realPath="file"+"/"+this.getFileFileName();
		//realPath=realPath.replace("\\", "\\\\");
		//System.out.println(realPath);	

		System.out.println("*********************6**************");
		DbBean db=new DbBean();
/*		String sql="insert into user values(null,'"+username+"','"+password+"','"+name+"','"+sex+"','"+college+"','"+lab;
		sql+="','"+lableader+"','"+email+"','"+phone+"','"+address+"','"+title+"','"+author+"','"+organization+"','"+key+"','"+abstracter;
		sql+="','"+report+"','"+hotel+"','"+publish+"','"+journalname+"','"+realPath+"');";*/
		
		String sql="update user set `name`='"+name+"',`sex`='"+sex+"',`college`='"+college+"',`lab`='"+lab+"',`lableader`='";
		sql+=lableader+"',`email`='"+email+"',`phone`='"+phone+"',`address`='"+address+"',`title`='"+title+"',`author`='"+author+"',`organization`='";
		sql+=organization+"',`key`='"+key+"',`abstracter`='"+abstracter+"',`report`='"+report+"',`hotel`='"+hotel+"',`publish`='"+publish+"',`journalname`='";
		sql+=journalname+"'";
		
		if(file!=null){
			sql+=",`filename`='"+realPath+"'";
		}
		sql+=" where `username`='"+username+"';";
		
		//**********************
		
		
		 
			mailContent = "您好："
	            + "\n\n"
	            + "              欢迎参加首届全国玉米分子生物学大会，您的摘要已修改成功!\n"
	            + "              您可以随时登陆进一步修改摘要信息或查看其他人所投摘要。\n"
	            + "              有任何疑问请联系组委会。\n\n"
	            + "              祝好，武汉见!\n\n\n"
	            + "                                                第一届玉米生物学学术研讨会  组委会\n";
			mail.setMail_body(mailContent);
		    mail.send(email);
		 
		//**********************
		try {System.out.println("****************************8*******");
			db.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return SUCCESS;
		
			
		
		
		
	}

	

}
