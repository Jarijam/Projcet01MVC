package multi.pro01.review;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service
public class FileUploadLogic {
	
	
	FileOutputStream fos;
	public void upload(MultipartFile file,String path,String fileName){
		try {
			byte[] data = file.getBytes();
			fos = 
			new FileOutputStream(path+File.separator+fileName);
			fos.write(data);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				if(fos!=null)fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	FileInputStream fis;
	public void download(MultipartFile file, String path, String fileName) {
		try {
			
			fis = new FileInputStream(path + File.separator+fileName);
			fis.read(file.getBytes());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}









