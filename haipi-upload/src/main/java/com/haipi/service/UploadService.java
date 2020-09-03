package com.haipi.service;

import org.springframework.web.multipart.MultipartFile;

public interface UploadService {

    public String uploadImage(MultipartFile file);
}
