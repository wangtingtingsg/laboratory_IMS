# 实验室管理系统
### 开发背景
 本人在大二期间学习了一些java web相关的知识，当时有写过练习用的“酒店管理系统”。后来在大三期间有信息系统课设，则刚好利用原来的项目环境进行修改，做成了现在的“实验室管理系统”。  
 但是这个系统在设计上还有很多的不足，代码也并不是特别的严谨。在此是放在这里进行一个记录学习的作用。
 
### 开发技术和环境
* jsp技术  
JSP是基于JavaServlet以及整个Java体系的Web开发技术，利用这一技术可以建立先进、安全和跨平台的动态网站。JSP技术在多个方面加速了动态Web页面的开发。为界面设计带来了很大的便利。  
* SMM框架  
SMM是由Spring+MVC+Mybaits构成，是整个代码逻辑思路更加清晰便捷。由于此次系统设计较为简单，所以省略了Service层，保留了jsp+servlet前端结合MVC，以及Dao层集合Mybaits对数据库的访问操作。  
* Mysql数据库  
数据库不仅存储数据，还能反应实体与实体之间的关系，操作方便。  

### 模块清单
* 登录  
![登录界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%871.png)  
* 查看个人信息  
个人用户信息，可查看个人信息，管理员可进行管理操作。  
![登录后界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%872.png)  
点击个人信息头像可查看个人信息，且点击改密可以修改个人密码。  
![个人信息界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%873.png) 
* 管理员模块  
**实验室信息管理**  
实验室信息以列表的形式展示，图中正确全面 的显示了数据库中实验室信息。  
![实验室管理界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%874.png)   
**用户信息管理**  
用户信息以列表的形式展示，图中正确全面 的显示了数据库中用户信息。  
![用户信息管理界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%875.png)   
* 教师模块  
**实验室预约**  
实验室信息列表中操作栏点击预约，则会弹出实验列表，可以看到该实验其他预约情况。点击预约可以填写预约试验信息，并成功加入实验。  
![实验室预约界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%876.png)  
**实验项目**  
点击实验项目菜单栏，可以查看到当前教师的所有实验，点击操作栏的管理，可以看到参与该实验学生的分数，同时可以评分和修改分数。学生登录时吃、此界面只可以查看分数。  
![实验项目界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%877.png)   
* 学生模块  
实验信息列表中操作栏点击预约，则会弹出实验列表，可以看到该实验其他预约情况。点击预约可以填写预约实验信息，并成功加入实验。  
![实验预约界面](https://github.com/wangtingtingsg/laboratory_IMS/blob/master/readmImages/%E5%9B%BE%E7%89%878.png)  
根据目前我院的具体情况，完成目前湖工大教师实验室的管理，包括：教师信息管理、学生信息管理、项目管理与管控、学生参与项目信息记录、学生工作统计、教师指导统计等工作。  
其中设计时考虑到现实实验室信息和用户信息不能直接删除，则去掉了删除的功能，取而代之的是修改其状态，如停用或者使用。  


