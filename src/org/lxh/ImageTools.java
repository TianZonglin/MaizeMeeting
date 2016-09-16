package org.lxh;
import org.util.*;
import java.io.File;

import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Hashtable;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;

import com.google.zxing.common.BitMatrix;


public class ImageTools {
/**
* @param args
* @throws Exception
*/
 
	@SuppressWarnings("unchecked")
	public static void main(String[] args) throws Exception {
		DbBean db = new DbBean();
		String sqx = "select `name` from `user` ;";
        ArrayList<String> sx = new ArrayList<String>();	
		try {
 
			ResultSet rx = db.executeQuery(sqx);
			while(rx.next()){
				sx.add(rx.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int width = 500;
		int height = 500;
		//二维码的图片格式
		String format = "jpg";
		Hashtable hints = new Hashtable();
		//内容所使用编码
		hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
		
	    //生成二维码
		for(int i=0;i<sx.size();i++){
			String decode = URLEncoder.encode(sx.get(i),"UTF-8");
			decode = URLEncoder.encode(decode,"UTF-8");
		    String text = "http://www.maizemeeting.org/exe.action?name="+decode+"          ";
            
		    BitMatrix bitMatrix = new MultiFormatWriter().encode(text,BarcodeFormat.QR_CODE, width, height, hints);
			File outputFile = new File("C://Users/Administrator/Desktop/jpg/"+sx.get(i)+".jpg");
			MatrixToImageWriter.writeToFile(bitMatrix, format, outputFile);
			
			System.out.println(text);
		}
	}
}