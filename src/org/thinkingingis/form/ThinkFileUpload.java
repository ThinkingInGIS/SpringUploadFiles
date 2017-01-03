package org.thinkingingis.form;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ThinkFileUpload {
	private List<MultipartFile> thinkFiles;
	 
    public List<MultipartFile> getFiles() {
        return thinkFiles;
    }
 
    public void setFiles(List<MultipartFile> files) {
        this.thinkFiles = files;
    }
}
