# haipi-shopping

## 项目介绍

​	首先此项目是一个电商类网站，整个系统分为前端和后端，前端分为：门户网站（主要是面向客户，采用原生html，css，js开发），后台管理（面向数据管理人员，采用基于vue单页应用开发方式），后端（后端采用springcloud微服务框架，统一对外提供rest风格接口，无论是门户网站还是后台管理都共享这套接口）组成了这个完整的系统，可以继续扩展功能。

## 项目截图


![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/1.png)  
![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/3.png)  
![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/4.png)  
![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/5.png)  
![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/6.png)  
![image](https://github.com/lanpangtou/haipi-shopping/blob/master/doc/img/7.png)  




## 后端模块介绍    

（1）	用户服务：进行前端用户登录注册的处理，  
（2）	注册中心服务：对外暴露自己的地址，用来服务发现和注册。  
（3）	网关服务：所有从设备或网站来的请求都会经过Zuul到达后端应用程序，进行负载均衡和安全认证等。  
（4）	商品服务：提供对商品数据的处理。  
（5）	订单服务：提供对用户的商品订单处理。  
（6）	购物车服务：提供用户的购物车商品存储处理。  
（7）	页面服务：实现页面静态化，主要对商品详情页面进行处理。    
（8）	认证服务：实现用户的登录和授权，对整个系统的安全进行处理。    
（9）	文件上传服务：用来上传图片文件。  
