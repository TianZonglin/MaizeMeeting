package org.output;  

//import java.io.File;  
import java.io.FileOutputStream;  
import java.sql.ResultSet;
import java.util.ArrayList;

import org.util.*;
 

import com.lowagie.text.Chunk;
import com.lowagie.text.Document;  
import com.lowagie.text.Font;  
import com.lowagie.text.Paragraph;  
import com.lowagie.text.rtf.RtfWriter2;  
 
public class NewTools {  

    /** 
     * @param args 
     */  
    public static void main(String[] args) {  
        exportDoc("C://Users/Administrator/Desktop/Articles.doc");
 

    }  

    public static void exportDoc(String fileName){  
        try {  
        	
        	DbBean db=new DbBean();
			
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
        	

            Document doc = new Document();  
            
            RtfWriter2.getInstance(doc, new FileOutputStream(fileName));  
            // 打开文档  
            doc.open();  
            //设置页边距，上、下25.4毫米，即为72f，左、右31.8毫米，即为90f  
            doc.setMargins(90f, 90f, 72f, 72f);  

            //设置 字体样式，粗体、二号、华文中宋  
            Font font1 = DocStyleUtils.setFontStyle("华文中宋", 15f, Font.BOLD); //title 
            Font font2 = DocStyleUtils.setFontStyle("华文中宋", 11f, Font.NORMAL); //name//abstracter  //key
            Font font5 = DocStyleUtils.setFontStyle("华文中宋", 11f, Font.UNDERLINE); //email
            Font font3 = DocStyleUtils.setFontStyle("华文中宋", 10f, Font.NORMAL); //author  
            Font font4 = DocStyleUtils.setFontStyle("华文中宋", 9f, Font.NORMAL); //college 
           
          
            for(int i=0;i<ss1.size();i++){
            //构建标题，居中对齐，12f表示单倍行距  
            	if(check(ss1.get(i))){
            		
		            Paragraph a = DocStyleUtils.setParagraphStyle(ss1.get(i), font1, 12f, Paragraph.ALIGN_LEFT);  //title
		            
		            Chunk chunk1 = new Chunk("(submitted by "+ss2.get(i)+"< ",font2);
		            Chunk chunk2 = new Chunk(ss3.get(i),font5);
		            Chunk chunk3 = new Chunk(">)",font2);
		            Paragraph b = new Paragraph();
		            b.add(chunk1); 
		            b.add(chunk2); 
		            b.add(chunk3); 
		            
		            Paragraph c = DocStyleUtils.setParagraphStyle("Full Author List: "+ss4.get(i), font3, 12f, Paragraph.ALIGN_LEFT); //author  
		            Paragraph d = DocStyleUtils.setParagraphStyle(ss5.get(i), font4, 12f, Paragraph.ALIGN_LEFT); //college 
		            Paragraph e = DocStyleUtils.setParagraphStyle("\n"+ss6.get(i), font2, 12f, Paragraph.ALIGN_JUSTIFIED_ALL); //abstracter 		            

		            doc.add(a);  
		            doc.add(b); 
		            doc.add(c); 
		            doc.add(d);  
		            doc.add(e);
		            
		            if(!ss7.get(i).equals("")){
		            	Paragraph f = DocStyleUtils.setParagraphStyle("\nFunding acknowledgement: "+ss7.get(i)+"\n\n\n", font3, 12f, Paragraph.ALIGN_LEFT); //key 
		            	doc.add(f);
		            }else{
		            	Paragraph f = DocStyleUtils.setParagraphStyle("\n\n\n", font3, 12f, Paragraph.ALIGN_LEFT); //key 
		            	doc.add(f);
		            }
		         
            	}
            }
            //首行缩进2字符，行间距1.5倍行距  
            //Paragraph bodyPar = DocStyleUtils.setParagraphStyle(contentSb.toString(), font2, 32f, 18f);  
            //Paragraph bodyEndPar = DocStyleUtils.setParagraphStyle("xxx", font2, 32f, 18f);  
            //设置空行  
            //Paragraph blankRow = new Paragraph(18f, " ", font2);  
            //Paragraph deptPar = DocStyleUtils.setParagraphStyle("xxx", font2, 12f, Paragraph.ALIGN_RIGHT);  
            //Paragraph datePar = DocStyleUtils.setParagraphStyle("xxx", font2, 12f, Paragraph.ALIGN_RIGHT);  
 
            //最后关闭  
            doc.close();  
            System.out.println("completed...");
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }   
    
    public static boolean check(String str){
    	if(str.equals("无"))return false;
    	if(str.equals("暂无"))return false;
    	if(str.equals("Just for test"))return false;
    	if(str.equals("同刘磊，张祖新"))return false;
    	if(str.equals("1"))return false;
    	return true;
    }

}  