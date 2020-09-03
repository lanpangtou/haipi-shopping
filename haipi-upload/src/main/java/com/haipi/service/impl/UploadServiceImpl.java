package com.haipi.service.impl;

import com.github.tobato.fastdfs.domain.fdfs.StorePath;
import com.github.tobato.fastdfs.service.FastFileStorageClient;
import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.service.UploadService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Service
@Slf4j
public class UploadServiceImpl implements UploadService {

    //允许上传的图片类型
    private static final List<String> ALLOW_TYPES = Arrays.asList("image/jpeg","image/bmp","image/png");

    @Autowired
    private FastFileStorageClient storageClient;

    public String uploadImage(MultipartFile file) {
        //保存
        try {
            //校验文件类型
            String contentType = file.getContentType();
            if(!ALLOW_TYPES.contains(contentType)){
                throw new HaipiException(ExceptionEnum.INVALID__FILE_TYPE);
            }
            //校验文件内容
            BufferedImage image = ImageIO.read(file.getInputStream());
            if (image == null){
                throw new HaipiException(ExceptionEnum.INVALID__FILE_TYPE);
            }
            //上传到fastDFS
            String extension = StringUtils.substringAfterLast(file.getOriginalFilename(),".");
            StorePath storePath = storageClient.uploadFile(file.getInputStream(), file.getSize(), extension, null);
            System.out.println(storePath.getFullPath());
            //返回路径
            return "http://image.haipi.com/"+storePath.getFullPath();
        } catch (IOException e) {
            //保存失败
            log.error("image保存失败",e);
            throw new HaipiException(ExceptionEnum.UPLOAD_FILE_ERROR);
        }

    }
}
