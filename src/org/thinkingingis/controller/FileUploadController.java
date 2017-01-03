package org.thinkingingis.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.thinkingingis.form.ThinkFileUpload;

@Controller
public class FileUploadController {
	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String thinkDisplayForm(){
		//从 index.jsp 拦截请求，请求名称为  : /upload
		return "uploadfile";
	}
	
    @RequestMapping(value = "/savefiles", method = RequestMethod.POST)
    public String crunchifySave(
            @ModelAttribute("uploadForm") ThinkFileUpload uploadForm,
            Model map) throws IllegalStateException, IOException {
       
    	//文件的存放路径
    	String saveDirectory = "G:/ThinkingInGIS/";
 
        List<MultipartFile> thinkFiles = uploadForm.getFiles();
 
        List<String> fileNames = new ArrayList<String>();
 
        if (null != thinkFiles && thinkFiles.size() > 0) {
            for (MultipartFile multipartFile : thinkFiles) {
 
                String fileName = multipartFile.getOriginalFilename();
                if (!"".equalsIgnoreCase(fileName)) {
                
                    multipartFile.transferTo(new File(saveDirectory + fileName));
                    fileNames.add(fileName);
                }
            }
        }
        map.addAttribute("files", fileNames);
        return "uploadfilesuccess";
    }
}
