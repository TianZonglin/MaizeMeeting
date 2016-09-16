package org.util;
import java.io.*;
import java.sql.ResultSet;
import java.util.ArrayList;

 
public class tools {
	public static void main(String[] args) throws Exception{
		PrintWriter pw = new PrintWriter(new FileWriter("C://Users/Administrator/Desktop/xxxxxxx.doc"));
		DbBean db=new DbBean();
		
		try{
			
			String sql1="select `title` from user;";
			ResultSet rs1=db.executeQuery(sql1);
			ArrayList<String> ss1 = new ArrayList<String>();
			while(rs1.next()){
				ss1.add(rs1.getString(1));//title
			}
			
			String sql2="select `name` from user;"; 
			ResultSet rs2=db.executeQuery(sql2);
			ArrayList<String> ss2 = new ArrayList<String>();  
			while(rs2.next()){
				ss2.add(rs2.getString(1));//name
			}
			
			String sql3="select `email` from user;"; 
			ResultSet rs3=db.executeQuery(sql3);
			ArrayList<String> ss3 = new ArrayList<String>();  
			while(rs3.next()){
				ss3.add(rs3.getString(1));//email
			}
			
			String sql4="select `author` from user;"; 
			ResultSet rs4=db.executeQuery(sql4);
			ArrayList<String> ss4 = new ArrayList<String>();  
			while(rs4.next()){
				ss4.add(rs4.getString(1));//author
			}
			
			
			String sql5="select `college` from user;"; 
			ResultSet rs5=db.executeQuery(sql5);
			ArrayList<String> ss5 = new ArrayList<String>();  
			while(rs5.next()){
				ss5.add(rs5.getString(1));//college
			}
			
			
			String sql6="select `abstracter` from user;"; 
			ResultSet rs6=db.executeQuery(sql6);
			ArrayList<String> ss6 = new ArrayList<String>();  
			while(rs6.next()){
				ss6.add(rs6.getString(1));//abstracter
			}
			
			String sql7="select `key` from user;"; 
			ResultSet rs7=db.executeQuery(sql7);
			ArrayList<String> ss7 = new ArrayList<String>();  
			while(rs7.next()){
				ss7.add(rs7.getString(1));//key
			}
			
			for(int i=0;i<ss1.size();i++){
				
				/*
				System.out.println(ss1.get(i));
				System.out.println("submitted by "+ss2.get(i)+"<"+ss3.get(i)+">");
				System.out.println("Full Author List: "+ss4.get(i));
				System.out.println(ss5.get(i));
				System.out.println("\n"+ss6.get(i));
				System.out.println("\n"+ss7.get(i));
				System.out.println();*/
				
				
				pw.print(ss1.get(i));//title
				pw.print("\nsubmitted by "+ss2.get(i)+"<"+ss3.get(i)+">");
				pw.print("\nFull Author List: "+ss4.get(i));
				pw.print("\n"+ss5.get(i));
				pw.print("\n"+ss6.get(i));
				pw.print("\n\n"+ss7.get(i));
				pw.print("\n\n");
				
			}
			 
		}catch(Exception e){
			e.printStackTrace();
			
		}
	
		pw.close();
		db.close();
	}
}
