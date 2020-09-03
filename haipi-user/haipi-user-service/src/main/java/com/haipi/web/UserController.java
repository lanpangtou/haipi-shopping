package com.haipi.web;

import com.haipi.enums.ExceptionEnum;
import com.haipi.exception.HaipiException;
import com.haipi.pojo.User;
import com.haipi.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

@RestController
public class UserController {


    @Autowired
    private UserService userService;

    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     * 校验用户名是否存在
     * @param name
     * @return
     */
    @GetMapping("/check/{name}")
    public ResponseEntity<Boolean> checkName(@PathVariable("name") String name) {
        return ResponseEntity.ok(userService.checkName(name));
    }

    /**
     * 注册
     * @param user
     * @return
     */
    @PostMapping("register")
    public ResponseEntity<Void> register(User user,@RequestParam("code")String code,HttpServletRequest request) {
        String checkCode = (String)request.getSession().getAttribute("checkCode");
        //校验验证码
        if (!StringUtils.equalsIgnoreCase(code,checkCode)) {
            throw new HaipiException(ExceptionEnum.INVALID_VERIFY_CODE);
        }
        userService.register(user);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

    /**
     * 根据用户名和密码查询用户
     * @param username
     * @param password
     * @return
     */
    @GetMapping("query")
    public ResponseEntity<User> queryUserByNameAndPass(@RequestParam("username")String username,@RequestParam("password")String password){
        return ResponseEntity.ok(userService.queryUserByNameAndPass(username, password));
    }

    /**
     * 验证码
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("code")
    public void getCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int width = 100;
        int height = 35;
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        //填充背景色
        g.setColor(Color.PINK);
        g.fillRect(0,0,width,height);
        //画边框
        g.setColor(Color.GRAY);
        g.drawRect(0,0,width -1,height -1);
        Random random = new Random();
        String codes = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890";
        request.getSession().removeAttribute("checkCode");
        String code = "";
        //写验证码
        for (int i = 0; i < 4; i++) {
            //获取随机字符
            char codeStr = codes.charAt(random.nextInt(codes.length()));
            code+=codeStr;
            //写验证码
            g.drawString(codeStr+"",width/4*i+10,height/2);
        }
        request.getSession().setAttribute("checkCode",code);
        ImageIO.write(image,"jpg",response.getOutputStream());
        response.getOutputStream().flush();
    }
}
