/*
 Navicat Premium Data Transfer

 Source Server         : tencent_cloud
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 139.199.30.68:3306
 Source Schema         : resources

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 03/02/2020 07:55:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `father` int(11) NOT NULL,
  `children` int(11) NULL DEFAULT NULL,
  `comment` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` datetime(0) NOT NULL,
  `utime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name_pk`(`name`) USING BTREE,
  INDEX `father_index`(`father`) USING BTREE,
  INDEX `children_index`(`children`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES (1, 'https://wuhan2020.kaiyuanshe.cn/#', '武汉新型冠状病毒防疫信息收集平台', 'link', 0, 18, NULL, '2020-01-26 05:24:44', '2020-01-31 18:05:40');
INSERT INTO `resources` VALUES (2, 'https://onwh.51rry.com/#/', '湖北医疗物资需求信息平台', 'link', 0, 19, NULL, '2020-01-31 09:06:01', '2020-01-31 09:06:01');
INSERT INTO `resources` VALUES (3, 'https://download.jetbrains.8686c.com/python/pycharm-professional-2019.3.2.exe', 'pycharm-professional-2019.3.2.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2020-01-22 15:18:47');
INSERT INTO `resources` VALUES (4, 'Vovan\r\n3AG46-JJ48E-CEACC-8E6EW-ECUAW', 'Editplus 注册码', 'file', 17, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:39:23');
INSERT INTO `resources` VALUES (5, 'https://github.com/javamelody/javamelody', 'javamelody——Java 监控设备信息', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (6, '王涛\r\n7C81-1689-4046-626F', 'UltraISO 注册码', 'file', 17, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:42:08');
INSERT INTO `resources` VALUES (7, 'https://code2flow.com/', '根据代码实时生成流程图', 'link', 15, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:34:53');
INSERT INTO `resources` VALUES (8, 'http://inputcss.bcloud.net.cn', 'input 输入框特效——演示', 'link', 6, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (9, '', 'SSM项目配置文件', 'folder', 0, 8, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (10, 'https://gitee.com/yongcloud/input_special_effect', 'input 输入框特效——Gitee 下载地址', 'link', 6, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (11, '<context-param>\n        <param-name>contextConfigLocation</param-name>\n        <param-value>classpath*:applicationContext.xml</param-value>\n    </context-param>\n\n    <filter>\n        <filter-name>encodingFilter</filter-name>\n        <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>\n        <init-param>\n            <param-name>encoding</param-name>\n            <param-value>UTF-8</param-value>\n        </init-param>\n    </filter>\n\n    <filter-mapping>\n        <filter-name>encodingFilter</filter-name>\n        <url-pattern>/*</url-pattern>\n    </filter-mapping>\n\n    <listener>\n        <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>\n    </listener>\n\n    <servlet>\n        <servlet-name>online</servlet-name>\n        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>\n        <init-param>\n            <param-name>contextConfigLocation</param-name>\n            <param-value>/WEB-INF/weibo.xml</param-value>\n        </init-param>\n    </servlet>\n\n    <servlet-mapping>\n        <servlet-name>online</servlet-name>\n        <url-pattern>/</url-pattern>\n    </servlet-mapping>\n\n    <welcome-file-list>\n        <welcome-file>index.html</welcome-file>\n    </welcome-file-list>', 'ssm-web.xml', 'file', 8, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (12, 'https://github.com/datawhalechina/leeml-notes', '李宏毅机器学习笔记', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (13, '', '软件工具下载', 'folder', 0, 1, NULL, '2019-12-31 09:45:04', '2020-01-31 09:03:26');
INSERT INTO `resources` VALUES (14, 'https://github.com/ouyangxin007/springmongodbdemo', 'Spring MongoDB Demo', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (15, 'https://leetcode-cn.com/', 'LeetCode 中文刷题网址', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:09');
INSERT INTO `resources` VALUES (16, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<settings xmlns=\"http://maven.apache.org/SETTINGS/1.0.0\" \n          xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n          xsi:schemaLocation=\"http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd\">\n  <localRepository>D:\\Repositories\\Maven</localRepository>\n  <pluginGroups>\n	<pluginGroup>org.mortbay.jetty</pluginGroup>\n  </pluginGroups>\n  <proxies>\n  </proxies>\n  <servers>\n    <server>\n        <id>releases</id>\n        <username>ali</username>\n        <password>ali</password>\n      </server>\n      <server>\n        <id>Snapshots</id>\n        <username>ali</username>\n        <password>ali</password>\n      </server>\n  </servers>\n  <mirrors>\n    <mirror>\n      <id>nexus</id>\n      <mirrorOf>*</mirrorOf> \n      <url>http://maven.aliyun.com/nexus/content/groups/public/</url>\n    </mirror>\n    <mirror>\n      <id>nexus-public-snapshots</id>\n      <mirrorOf>public-snapshots</mirrorOf> \n      <url>http://maven.aliyun.com/nexus/content/repositories/snapshots/</url>\n    </mirror>\n  </mirrors>\n  <profiles> \n    <profile>\n      <id>development</id>\n      <repositories>\n        <repository>\n          <id>central</id>\n          <url>http://central</url>\n          <releases><enabled>true</enabled><updatePolicy>always</updatePolicy></releases>\n          <snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>\n        </repository>\n      </repositories>\n     <pluginRepositories>\n        <pluginRepository>\n          <id>central</id>\n          <url>http://central</url>\n          <releases><enabled>true</enabled><updatePolicy>always</updatePolicy></releases>\n          <snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>\n        </pluginRepository>\n      </pluginRepositories>\n    </profile>\n    <profile>\n      <id>public-snapshots</id>\n      <repositories>\n        <repository>\n          <id>public-snapshots</id>\n          <url>http://public-snapshots</url>\n          <releases><enabled>false</enabled></releases>\n          <snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>\n        </repository>\n      </repositories>\n     <pluginRepositories>\n        <pluginRepository>\n          <id>public-snapshots</id>\n          <url>http://public-snapshots</url>\n          <releases><enabled>false</enabled></releases>\n          <snapshots><enabled>true</enabled><updatePolicy>always</updatePolicy></snapshots>\n        </pluginRepository>\n      </pluginRepositories>\n    </profile>\n  </profiles>\n   <activeProfiles>\n    <activeProfile>development</activeProfile>\n    <activeProfile>public-snapshots</activeProfile>\n   </activeProfiles>\n</settings>', 'maven-setting.xml', 'file', 8, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (17, 'https://www.laodengtou.cn', '全栈社区', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:14');
INSERT INTO `resources` VALUES (18, 'https://www.cnblogs.com/mmzs/p/10161936.html', '玩转 SpringBoot 定时任务', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:19');
INSERT INTO `resources` VALUES (19, 'https://m.bilibili.com/video/av59538266.html', '李毅宏机器学习视频', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:23');
INSERT INTO `resources` VALUES (20, '', 'Java 学习路线图', 'folder', 3, 2, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (21, 'https://pan.baidu.com/s/1XLMf9L2cJ1v0N3h1klXWhg', 'MyBatis 视频教程', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (22, 'https://www.python.org/ftp/python/3.8.0/python-3.8.0-amd64.exe', 'python-3.8.0-amd64.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2020-01-22 15:20:32');
INSERT INTO `resources` VALUES (23, 'https://pan.baidu.com/s/1vIu0hauj6U9bXcIcc3gKNA', '廖师兄两小时学会 Spring Boot', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (24, '', 'input 输入框特效', 'folder', 15, 6, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:36');
INSERT INTO `resources` VALUES (25, 'https://study.163.com/course/introduction.htm?courseId=1455026&_trace_c_p_k2_=2e84f26cb001429297f46b5710177736', 'Java 8 编程开发入门', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (26, 'https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.28-el7-x86_64.tar.gz', 'MySQL 5.7.28 for Linux', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (27, 'https://mp.weixin.qq.com/s/ejrBqgzzU1sScnTzP-cTUQ', '100多道 Java 基础面试题', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (28, 'https://juejin.im/post/58a4276f61ff4b006c899609', '50道 Java 基础编程练习题', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:29');
INSERT INTO `resources` VALUES (29, 'http://api.yesapi.cn/docs.html', '小白开放 API 平台', 'link', 15, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:36:49');
INSERT INTO `resources` VALUES (30, 'https://pan.baidu.com/s/1yrEPPjnEWoTw2DTCyf5PhQ', 'WIN10数字永久激活工具.exe', 'link', 17, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:39:41');
INSERT INTO `resources` VALUES (31, 'https://segmentfault.com/a/1190000018280290#articleHeader0', 'docker部署springboot', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:01');
INSERT INTO `resources` VALUES (32, 'https://github.com/vuejs/vue-next', 'vue 3.0', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (33, 'https://blog.csdn.net/qq_38209578/article/details/80450894', 'VUE 2.0 图片上传', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:05');
INSERT INTO `resources` VALUES (34, 'https://www.ibm.com/developerworks/cn/java/j-using-swagger-in-a-spring-boot-project/index.html', 'Swagger 解释文档', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:16');
INSERT INTO `resources` VALUES (35, 'https://github.com/cmiscm/leonsans', '花样字体', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (36, 'https://cdn.mysql.com//Downloads/MySQLInstaller/mysql-installer-community-5.7.28.0.msi', 'MySQL community 5.7.28', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (37, 'https://download.jetbrains.8686c.com/idea/ideaIU-2019.3.2.exe', 'ideaIU-2019.3.2.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2020-01-22 15:34:42');
INSERT INTO `resources` VALUES (38, 'https://mp.weixin.qq.com/s/Ux-tBH1nu82LW2CHCbdLuw', '十大经典排序算法（动画，代码，原理，优化）', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:22');
INSERT INTO `resources` VALUES (39, 'https://www.ownthink.com/', '知识图谱', 'link', 15, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:27');
INSERT INTO `resources` VALUES (40, '', 'Java 教程资料', 'folder', 0, 3, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (41, 'https://magi.com/', 'Magi 搜索', 'link', 15, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:33:08');
INSERT INTO `resources` VALUES (42, 'https://mp.weixin.qq.com/s/dkBgq88Dq9B8Km1hh-iO3g', '微软 Python 入门课程', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:32');
INSERT INTO `resources` VALUES (43, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<beans xmlns=\"http://www.springframework.org/schema/beans\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n       xmlns:context=\"http://www.springframework.org/schema/context\"\n       xmlns:mvc=\"http://www.springframework.org/schema/mvc\"\n       xmlns:tx=\"http://www.springframework.org/schema/tx\"\n       xsi:schemaLocation=\"http://www.springframework.org/schema/mvc\n        http://www.springframework.org/schema/mvc/spring-mvc.xsd\n		http://www.springframework.org/schema/beans\n		 http://www.springframework.org/schema/beans/spring-beans.xsd\n		http://www.springframework.org/schema/context\n		 http://www.springframework.org/schema/context/spring-context.xsd\n		http://www.springframework.org/schema/tx\n		 http://www.springframework.org/schema/tx/spring-tx.xsd\">\n\n    <context:component-scan base-package=\"com.weibo\"/>\n\n    <bean class=\"org.springframework.web.servlet.view.InternalResourceViewResolver\">\n        <property name=\"prefix\" value=\"/static/pages/\"/>\n        <property name=\"suffix\" value=\".html\"/>\n    </bean>\n\n    <mvc:annotation-driven/>\n\n    <mvc:default-servlet-handler/>\n\n    <tx:annotation-driven/>\n\n</beans>', 'ssm-spring-mvc.xml', 'file', 8, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (44, 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2019-09/R/eclipse-java-2019-09-R-win32-x86_64.zip&mirror_id=105', 'Eclipse Java x64.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (45, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">', 'spring-mybatis.xml', 'file', 8, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (46, 'https://hutool.cn/docs/#/', 'Hutool-java开发工具', 'link', 9, NULL, NULL, '2019-12-31 09:45:04', '2020-02-01 16:07:26');
INSERT INTO `resources` VALUES (47, 'https://mp.weixin.qq.com/s/7gsl0cIP5P0JRqMkcx1eJw', 'Linux 磁盘管理基础知识', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:37');
INSERT INTO `resources` VALUES (49, 'https://download.jetbrains.8686c.com/cpp/CLion-2019.3.exe', 'CLion-2019.3.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (50, 'https://github.com/yeahhub/Hacking-Security-Ebooks?from=singlemessage&isappinstalled=0', '黑客安全电子书', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (51, 'https://www.processon.com/view/5cd36b96e4b08b66b9cb2378?fromnew=1#map', 'Java 并发体系路线图', 'link', 2, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (52, 'https://mp.weixin.qq.com/s?__biz=MzA4NzA5NzE5Ng==&mid=502744107&idx=1&sn=45925ec227cebf99b2d8134b7c3685cb&chksm=083d4e283f4ac73edb3c40271adbacbd2da4aab09459c17f0ea4cf85bb9e3083bfc2f51fdbd8&mpshare=1&scene=23&srcid=1218xYDdOOB43qVUKHdYEPzX&key=c2233ec816eaa9a2a4ec406068ebe504148959abb4313cc4e9facc7478b875d8d77fc905c634c3c7acb1d985cc464a1b7fd0ee85c7789c45f1f1ad5ca7a55cdeaf8f00eba119eaef3249de0a95c235b8&ascene=1&uin=MTg2NDQ4MzMxMw%3D%3D&devicetype=Windows+10&version=62070152&lang=zh_CN&pass_ticket=UTojerfKVPV%2B3tW1%2BhkCgFwhYKyz2iGa0pAflh4i14TAFwHhXxY%2BI8XExdBdXyVv#rd&appinstall=0', 'SpringBootSpringCloud微服务项目实战', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:38:19');
INSERT INTO `resources` VALUES (53, 'https://mp.weixin.qq.com/s/0u8fqjdVgz4GVShxpP7onw', 'Java 基础思维导图', 'link', 2, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (54, 'https://pan.baidu.com/s/1nckz-iAgZzAHp6_4Cc62rQ', 'Spring4 视频教程', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (55, 'https://download.dcloud.net.cn/HBuilderX.2.3.6.20191020.zip', 'HBuilderX v2.3.6 Windows 标准版.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (56, '<dependency>\r\n            <groupId>junit</groupId>\r\n            <artifactId>junit</artifactId>\r\n            <version>4.11</version>\r\n            <scope>test</scope>\r\n        </dependency>\r\n\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-core</artifactId>\r\n            <version>4.3.7.RELEASE</version>\r\n        </dependency>\r\n\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-web</artifactId>\r\n            <version>4.3.7.RELEASE</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-webmvc</artifactId>\r\n            <version>4.3.7.RELEASE</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-jdbc</artifactId>\r\n            <version>4.3.7.RELEASE</version>\r\n        </dependency>\r\n\r\n        <dependency>\r\n            <groupId>org.springframework</groupId>\r\n            <artifactId>spring-context</artifactId>\r\n            <version>4.3.7.RELEASE</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>javax.servlet</groupId>\r\n            <artifactId>javax.servlet-api</artifactId>\r\n            <version>3.0.1</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis</artifactId>\r\n            <version>3.4.1</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>mysql</groupId>\r\n            <artifactId>mysql-connector-java</artifactId>\r\n            <version>5.1.26</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.mybatis</groupId>\r\n            <artifactId>mybatis-spring</artifactId>\r\n            <version>1.3.0</version>\r\n        </dependency>\r\n\r\n        <dependency>\r\n            <groupId>org.codehaus.jackson</groupId>\r\n            <artifactId>jackson-mapper-asl</artifactId>\r\n            <version>1.9.13</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.codehaus.jackson</groupId>\r\n            <artifactId>jackson-core-asl</artifactId>\r\n            <version>1.9.13</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>com.fasterxml.jackson.core</groupId>\r\n            <artifactId>jackson-databind</artifactId>\r\n            <version>2.6.6</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>com.fasterxml.jackson.core</groupId>\r\n            <artifactId>jackson-annotations</artifactId>\r\n            <version>2.6.0</version>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>com.fasterxml.jackson.core</groupId>\r\n            <artifactId>jackson-core</artifactId>\r\n            <version>2.6.6</version>\r\n        </dependency>\r\n        <!--fastjson-->\r\n        <dependency>\r\n            <groupId>com.alibaba</groupId>\r\n            <artifactId>fastjson</artifactId>\r\n            <version>1.2.40</version>\r\n        </dependency>\r\n        <!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->\r\n        <dependency>\r\n            <groupId>org.projectlombok</groupId>\r\n            <artifactId>lombok</artifactId>\r\n            <version>1.18.10</version>\r\n            <scope>provided</scope>\r\n        </dependency>\r\n        <dependency>\r\n            <groupId>org.slf4j</groupId>\r\n            <artifactId>slf4j-log4j12</artifactId>\r\n            <version>1.7.21</version>\r\n        </dependency>', 'SSM-POM.xml', 'file', 8, NULL, NULL, '2019-12-31 09:45:04', '2020-01-17 14:04:47');
INSERT INTO `resources` VALUES (57, 'http://xiazai.xshellcn.com/trial/Xshell-6.0.0125_wm.exe', 'Xshell 6 破解版.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (58, 'https://download.dcloud.net.cn/HBuilderX.2.3.6.20191020.dmg', 'HBuilder v2.3.6 MacOS 版.dmg', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (59, 'https://mp.weixin.qq.com/s/oExwvV6ZwERC99gZohG0xg', '8个 Spring Boot 精选项目', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:38:23');
INSERT INTO `resources` VALUES (60, 'https://mp.weixin.qq.com/s/9i5lklkf3aUwfS6WzjnMZw', '微软前端训练营', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:43');
INSERT INTO `resources` VALUES (62, 'FC7D0-D1YDL-M8DXZ-CYPZE-P2AY6', 'vmware worksatation 15.x 注册码', 'file', 17, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:39:33');
INSERT INTO `resources` VALUES (63, 'http://ftp.jaist.ac.jp/pub/eclipse/technology/epp/downloads/release/2019-09/R/eclipse-jee-2019-09-R-win32-x86_64.zip', 'Eclipse IDE for Enterprise Java Developers x64.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (64, 'https://github.com/microsoft/ai-edu', '微软人工智能社区', 'link', 4, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (66, 'https://pan.baidu.com/s/178Qe1KAJJmZhEAYvhZ2aUA', 'Spring MVC 视频教程', 'link', 3, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (67, 'https://gongpeione.github.io/quick-js-ocr/example/', 'OCR 文字识别', 'link', 15, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:33:13');
INSERT INTO `resources` VALUES (68, 'https://www.cxyxiaowu.com/', '五分钟学算法', 'link', 16, NULL, NULL, '2019-12-31 09:45:04', '2020-01-25 23:37:54');
INSERT INTO `resources` VALUES (69, '', 'GitHub 资源', 'folder', 0, 4, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (70, 'https://download.jetbrains.8686c.com/webstorm/WebStorm-2019.3.2.exe', 'Webstorm 2019.3.2.exe', 'link', 1, NULL, NULL, '2019-12-31 09:45:04', '2020-01-22 15:35:15');
INSERT INTO `resources` VALUES (72, 'https://juejin.im/post/5c96421e6fb9a070f12583bf', '个人博客数据库结构设计', 'link', 0, NULL, NULL, '2019-12-31 09:45:04', '2019-12-31 09:45:04');
INSERT INTO `resources` VALUES (73, '', 'Java 常用工具 - 合集', 'folder', 0, 9, NULL, '2020-01-04 00:53:48', '2020-01-25 23:34:02');
INSERT INTO `resources` VALUES (74, 'public static String getClientIp(HttpServletRequest request) {\r\n        String ip = request.getHeader(\"X-Forwarded-For\");\r\n        if (!StringUtils.isEmpty(ip) && !\"unKnown\".equalsIgnoreCase(ip)) {\r\n            //多次反向代理后会有多个ip值，第一个ip才是真实ip\r\n            int index = ip.indexOf(\",\");\r\n            if (index != -1) {\r\n                return ip.substring(0, index);\r\n            } else {\r\n                return ip;\r\n            }\r\n        }\r\n        ip = request.getHeader(\"X-Real-IP\");\r\n        if (!StringUtils.isEmpty(ip) && !\"unKnown\".equalsIgnoreCase(ip)) {\r\n            return ip;\r\n        }\r\n        return request.getRemoteAddr();\r\n\r\n    }\r\n\r\nNginx 配置:\r\nproxy_set_header X-Real-IP $remote_addr;', 'Java 通过 Nginx 获取真实 IP', 'file', 9, 10, NULL, '2020-01-04 00:54:39', '2020-01-04 00:54:39');
INSERT INTO `resources` VALUES (75, 'https://zhitu.isux.us/', '智图·高效优质的图片优化平台', 'link', 15, 11, NULL, '2020-01-04 07:07:42', '2020-01-25 23:33:47');
INSERT INTO `resources` VALUES (77, 'MMKGDNLG1O-eyJsaWNlbnNlSWQiOiJNTUtHRE5MRzFPIiwibGljZW5zZWVOYW1lIjoiemh1Ym95YW5nLmdpdGh1Yi5pbyIsImFzc2lnbmVlTmFtZSI6IkJhcnJ5IFpodSIsImFzc2lnbmVlRW1haWwiOiI5MDMxMDMzOThAcXEuY29tIiwibGljZW5zZVJlc3RyaWN0aW9uIjoiRm9yIG5vbi1jb21tZXJjaWFsIG9wZW4gc291cmNlIGRldmVsb3BtZW50IG9ubHkiLCJjaGVja0NvbmN1cnJlbnRVc2UiOnRydWUsInByb2R1Y3RzIjpbeyJjb2RlIjoiSUkiLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifSx7ImNvZGUiOiJBQyIsInBhaWRVcFRvIjoiMjAyMC0xMC0yNyJ9LHsiY29kZSI6IkRQTiIsInBhaWRVcFRvIjoiMjAyMC0xMC0yNyJ9LHsiY29kZSI6IlBTIiwicGFpZFVwVG8iOiIyMDIwLTEwLTI3In0seyJjb2RlIjoiR08iLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifSx7ImNvZGUiOiJETSIsInBhaWRVcFRvIjoiMjAyMC0xMC0yNyJ9LHsiY29kZSI6IkNMIiwicGFpZFVwVG8iOiIyMDIwLTEwLTI3In0seyJjb2RlIjoiUlMwIiwicGFpZFVwVG8iOiIyMDIwLTEwLTI3In0seyJjb2RlIjoiUkMiLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifSx7ImNvZGUiOiJSRCIsInBhaWRVcFRvIjoiMjAyMC0xMC0yNyJ9LHsiY29kZSI6IlBDIiwicGFpZFVwVG8iOiIyMDIwLTEwLTI3In0seyJjb2RlIjoiUk0iLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifSx7ImNvZGUiOiJXUyIsInBhaWRVcFRvIjoiMjAyMC0xMC0yNyJ9LHsiY29kZSI6IkRCIiwicGFpZFVwVG8iOiIyMDIwLTEwLTI3In0seyJjb2RlIjoiREMiLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifSx7ImNvZGUiOiJSU1UiLCJwYWlkVXBUbyI6IjIwMjAtMTAtMjcifV0sImhhc2giOiIxNTA4NDE0Ni81ODczNjg0IiwiZ3JhY2VQZXJpb2REYXlzIjo3LCJhdXRvUHJvbG9uZ2F0ZWQiOmZhbHNlLCJpc0F1dG9Qcm9sb25nYXRlZCI6ZmFsc2V9-r489m7c8cni885cSxvWRwiytHCONKA6g1vyG7iSZQqXkr35RwJI+/Gl9xTGpOqGGqvSfjFZMeLbQRwLY4H520VKRukAttuycVXj2ATepqS5i3LKlKSgEZWz0QcnvgFdMWD4e4nvq3iVn0/lb81akIn0fl6gqBFrmHlP9g9ATcRWRlRnHhlNxFC+L9mun4Q7sPqMgAZyCwUfKtX+/bZgOMwiTFnq34SNY+R1Imth+fx4W/yP9TaqXHU4y95pFa2od5/KJGjGT85mZmekWrCDNE2q2scfHzhLXCX5cUyNIW3a77DfrZjWB4IoyvZEuUG29IEbWvVsskzOXaxR5fgY1wg==-MIIElTCCAn2gAwIBAgIBCTANBgkqhkiG9w0BAQsFADAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBMB4XDTE4MTEwMTEyMjk0NloXDTIwMTEwMjEyMjk0NlowaDELMAkGA1UEBhMCQ1oxDjAMBgNVBAgMBU51c2xlMQ8wDQYDVQQHDAZQcmFndWUxGTAXBgNVBAoMEEpldEJyYWlucyBzLnIuby4xHTAbBgNVBAMMFHByb2QzeS1mcm9tLTIwMTgxMTAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxcQkq+zdxlR2mmRYBPzGbUNdMN6OaXiXzxIWtMEkrJMO/5oUfQJbLLuMSMK0QHFmaI37WShyxZcfRCidwXjot4zmNBKnlyHodDij/78TmVqFl8nOeD5+07B8VEaIu7c3E1N+e1doC6wht4I4+IEmtsPAdoaj5WCQVQbrI8KeT8M9VcBIWX7fD0fhexfg3ZRt0xqwMcXGNp3DdJHiO0rCdU+Itv7EmtnSVq9jBG1usMSFvMowR25mju2JcPFp1+I4ZI+FqgR8gyG8oiNDyNEoAbsR3lOpI7grUYSvkB/xVy/VoklPCK2h0f0GJxFjnye8NT1PAywoyl7RmiAVRE/EKwIDAQABo4GZMIGWMAkGA1UdEwQCMAAwHQYDVR0OBBYEFGEpG9oZGcfLMGNBkY7SgHiMGgTcMEgGA1UdIwRBMD+AFKOetkhnQhI2Qb1t4Lm0oFKLl/GzoRykGjAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBggkA0myxg7KDeeEwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMA0GCSqGSIb3DQEBCwUAA4ICAQAF8uc+YJOHHwOFcPzmbjcxNDuGoOUIP+2h1R75Lecswb7ru2LWWSUMtXVKQzChLNPn/72W0k+oI056tgiwuG7M49LXp4zQVlQnFmWU1wwGvVhq5R63Rpjx1zjGUhcXgayu7+9zMUW596Lbomsg8qVve6euqsrFicYkIIuUu4zYPndJwfe0YkS5nY72SHnNdbPhEnN8wcB2Kz+OIG0lih3yz5EqFhld03bGp222ZQCIghCTVL6QBNadGsiN/lWLl4JdR3lJkZzlpFdiHijoVRdWeSWqM4y0t23c92HXKrgppoSV18XMxrWVdoSM3nuMHwxGhFyde05OdDtLpCv+jlWf5REAHHA201pAU6bJSZINyHDUTB+Beo28rRXSwSh3OUIvYwKNVeoBY+KwOJ7WnuTCUq1meE6GkKc4D/cXmgpOyW/1SmBz3XjVIi/zprZ0zf3qH5mkphtg6ksjKgKjmx1cXfZAAX6wcDBNaCL+Ortep1Dh8xDUbqbBVNBL4jbiL3i3xsfNiyJgaZ5sX7i8tmStEpLbPwvHcByuf59qJhV/bZOl8KqJBETCDJcY6O2aqhTUy+9x93ThKs1GKrRPePrWPluud7ttlgtRveit/pcBrnQcXOl1rHq7ByB8CFAxNotRUYL9IF5n3wJOgkPojMy6jetQA5Ogc8Sm7RG6vg1yow==', 'IDEA 激活码', 'file', 17, 12, NULL, '2020-01-05 09:40:05', '2020-01-25 23:39:15');
INSERT INTO `resources` VALUES (79, 'https://mp.weixin.qq.com/s/FSnabeALdNVKL8h4nw-nfg', '11个炫酷的特效', 'link', 0, 13, NULL, '2020-01-08 14:34:02', '2020-01-08 14:34:02');
INSERT INTO `resources` VALUES (83, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<beans xmlns=\"http://www.springframework.org/schema/beans\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n       xsi:schemaLocation=\"http://www.springframework.org/schema/beans\n       http://www.springframework.org/schema/beans/spring-beans.xsd\">\n\n    <bean class=\"org.springframework.beans.factory.config.PropertyPlaceholderConfigurer\">\n        <property name=\"locations\" value=\"classpath*:db.properties\"/>\n    </bean>\n\n    <bean id=\"dataSource\" class=\"org.springframework.jdbc.datasource.DriverManagerDataSource\">\n        <property name=\"driverClassName\" value=\"${db.driverClassName}\"/>\n        <property name=\"url\" value=\"${db.url}\"/>\n        <property name=\"username\" value=\"${db.username}\"/>\n        <property name=\"password\" value=\"${db.password}\"/>\n    </bean>\n\n    <bean id=\"sqlSession\" class=\"org.mybatis.spring.SqlSessionFactoryBean\">\n        <property name=\"dataSource\" ref=\"dataSource\"/>\n        <property name=\"typeAliasesPackage\" value=\"org.example.entity\"/>\n        <property name=\"mapperLocations\" value=\"classpath*:mapper/*.xml\"/>\n    </bean>\n\n    <bean id=\"mapperScanner\" class=\"org.mybatis.spring.mapper.MapperScannerConfigurer\">\n        <property name=\"basePackage\" value=\"org.example.mapper\"/>\n        <property name=\"sqlSessionFactoryBeanName\" value=\"sqlSession\"/>\n    </bean>\n\n</beans>', 'applicationContext.xml', 'file', 8, 14, NULL, '2020-01-19 00:35:39', '2020-01-19 00:35:39');
INSERT INTO `resources` VALUES (84, NULL, '实用工具', 'folder', 0, 15, NULL, '2020-01-25 23:32:51', '2020-01-25 23:32:51');
INSERT INTO `resources` VALUES (85, NULL, 'Coding 课程', 'folder', 0, 16, NULL, '2020-01-25 23:34:38', '2020-01-25 23:34:38');
INSERT INTO `resources` VALUES (86, NULL, '激活码 - 合集 - (收集中)', 'folder', 0, 17, NULL, '2020-01-25 23:38:47', '2020-01-25 23:38:47');
INSERT INTO `resources` VALUES (90, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE generatorConfiguration\n    PUBLIC \"-//mybatis.org//DTD MyBatis Generator Configuration 1.0//EN\"\n    \"http://mybatis.org/dtd/mybatis-generator-config_1_0.dtd\">\n\n<generatorConfiguration>\n\n    <!--\n        出现错误：Caused by: java.lang.ClassNotFoundException: com.mysql.jdbc.Driver\n        解决办法：将本地的MAVEN仓库中的mysql驱动引入进来\n    -->\n    <classPathEntry location=\"D:\\Repositories\\Maven\\mysql\\mysql-connector-java\\5.1.26\\mysql-connector-java-5.1.26.jar\"/>\n\n    <context id=\"mysqlgenerator\" targetRuntime=\"MyBatis3\">\n        <!--不生成注释-->\n        <commentGenerator>\n            <property name=\"suppressAllComments\" value=\"true\"/>\n        </commentGenerator>\n        <!-- 配置数据库连接 -->\n        <jdbcConnection driverClass=\"com.mysql.jdbc.Driver\"\n                        connectionURL=\"jdbc:mysql://localhost:3306/tenement\"\n                        userId=\"root\"\n                        password=\"root\"/>\n\n        <!-- 指定javaBean生成的位置 -->\n        <javaModelGenerator targetPackage=\"online.yang.cloud.model\" targetProject=\"src/main/java\">\n            <!-- 在targetPackage的基础上，根据数据库的schema再生成一层package，最终生成的类放在这个package下，默认为false -->\n            <property name=\"enableSubPackages\" value=\"true\"/>\n            <!-- 设置是否在getter方法中，对String类型字段调用trim()方法 -->\n            <property name=\"trimStrings\" value=\"true\"/>\n        </javaModelGenerator>\n\n        <!--指定sql映射文件生成的位置 -->\n        <sqlMapGenerator targetPackage=\"mapper\" targetProject=\"src/main/resources\">\n            <property name=\"enableSubPackages\" value=\"true\"/>\n        </sqlMapGenerator>\n        <!-- 指定dao接口生成的位置，mapper接口 -->\n        <javaClientGenerator type=\"XMLMAPPER\" targetPackage=\"online.yang.cloud.mapper\" targetProject=\"src/main/java\">\n            <property name=\"enableSubPackages\" value=\"true\"/>\n        </javaClientGenerator>\n\n        <!-- table表生成对应的DoaminObject -->\n        <table tableName=\"admin\" domainObjectName=\"admin\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"building\" domainObjectName=\"building\" enableCountByExample=\"false\"\n               enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"complain\" domainObjectName=\"complain\" enableCountByExample=\"false\"\n               enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"cost\" domainObjectName=\"cost\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"house\" domainObjectName=\"house\"/>\n        <table tableName=\"manager\" domainObjectName=\"manager\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"notice\" domainObjectName=\"notice\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"owner\" domainObjectName=\"owner\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"parking\" domainObjectName=\"parking\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"repair\" domainObjectName=\"repair\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n        <table tableName=\"vilage\" domainObjectName=\"vilage\" enableCountByExample=\"false\" enableUpdateByExample=\"false\"\n               enableDeleteByExample=\"false\" enableSelectByExample=\"false\"\n               selectByExampleQueryId=\"false\"/>\n\n    </context>\n\n</generatorConfiguration>', 'mybatis文件生成器 : mybatis-generator.xml', 'file', 8, 20, NULL, '2020-01-31 11:46:27', '2020-01-31 11:46:27');
INSERT INTO `resources` VALUES (91, 'log4j.rootLogger=INFO,Console,File\nlog4j.appender.Console=org.apache.log4j.ConsoleAppender\nlog4j.appender.Console.Target=System.out\nlog4j.appender.Console.layout=org.apache.log4j.PatternLayout\nlog4j.appender.Console.layout.ConversionPattern=[%c] - %m%n\nlog4j.appender.Console.Threshold=ALL\nlog4j.logger.online.cloud.mapper=DEBUG', 'SSM-log4j.properties', 'file', 8, 21, NULL, '2020-01-31 14:52:04', '2020-01-31 14:52:04');
INSERT INTO `resources` VALUES (92, 'https://any86.github.io/any-rule/', 'JS 正则表达式大全', 'link', 15, 22, NULL, '2020-01-31 17:29:59', '2020-01-31 17:29:59');

-- ----------------------------
-- Table structure for service_ip
-- ----------------------------
DROP TABLE IF EXISTS `service_ip`;
CREATE TABLE `service_ip`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_ip
-- ----------------------------
INSERT INTO `service_ip` VALUES (1, '60.210.94.73', '中国-山东-淄博市', '2020-01-30 22:57:03');
INSERT INTO `service_ip` VALUES (2, '192.168.3.167', '局域网--', '2020-01-29 13:19:32');
INSERT INTO `service_ip` VALUES (3, '182.254.52.17', '中国-广东-深圳市', '2020-02-02 12:59:59');
INSERT INTO `service_ip` VALUES (4, '14.18.182.223', '中国-广东-佛山市', '2020-02-01 17:06:13');
INSERT INTO `service_ip` VALUES (5, '117.172.125.207', '中国-四川-乐山市', '2020-01-30 17:21:18');
INSERT INTO `service_ip` VALUES (6, '60.191.52.254', '中国-浙江-杭州市', '2020-01-30 23:12:16');
INSERT INTO `service_ip` VALUES (7, '222.186.175.211', '中国-江苏-镇江市', '2020-01-31 00:45:54');
INSERT INTO `service_ip` VALUES (8, '10.10.0.1', '局域网--', '2020-01-31 11:12:16');
INSERT INTO `service_ip` VALUES (9, '101.89.19.140', '中国-上海-', '2020-01-31 08:41:34');
INSERT INTO `service_ip` VALUES (10, '5.101.0.209', '俄罗斯--', '2020-01-31 09:26:43');
INSERT INTO `service_ip` VALUES (11, '189.97.81.216', '巴西--', '2020-01-31 09:42:54');
INSERT INTO `service_ip` VALUES (12, '103.144.160.1', '亚太地区--', '2020-01-31 09:52:58');
INSERT INTO `service_ip` VALUES (13, '59.109.219.26', '中国-北京-', '2020-01-31 10:01:41');
INSERT INTO `service_ip` VALUES (14, '59.36.132.240', '中国-广东-东莞市', '2020-01-31 14:34:58');
INSERT INTO `service_ip` VALUES (15, '61.241.50.63', '中国-江苏-泰州市', '2020-02-01 17:58:11');
INSERT INTO `service_ip` VALUES (16, '183.192.179.16', '中国-上海-', '2020-02-01 19:46:04');
INSERT INTO `service_ip` VALUES (17, '148.70.242.53', '中国-四川-成都市', '2020-01-31 17:05:29');
INSERT INTO `service_ip` VALUES (18, '181.211.12.150', '厄瓜多尔--', '2020-01-31 17:53:39');
INSERT INTO `service_ip` VALUES (19, '138.197.105.1', '美国--', '2020-01-31 18:10:34');
INSERT INTO `service_ip` VALUES (20, '139.162.119.197', '日本--', '2020-01-31 18:10:39');
INSERT INTO `service_ip` VALUES (21, '190.94.150.195', '厄瓜多尔--', '2020-01-31 18:37:42');
INSERT INTO `service_ip` VALUES (22, '176.97.190.248', '俄罗斯--', '2020-01-31 18:54:09');
INSERT INTO `service_ip` VALUES (23, '101.227.1.203', '中国-上海-', '2020-02-02 19:18:06');
INSERT INTO `service_ip` VALUES (24, '180.97.215.22', '中国-江苏-镇江市', '2020-01-31 20:06:26');
INSERT INTO `service_ip` VALUES (25, '180.97.215.22', '中国-江苏-镇江市', '2020-01-31 20:06:26');
INSERT INTO `service_ip` VALUES (26, '182.48.105.210', '中国-北京-海淀区', '2020-01-31 22:33:59');
INSERT INTO `service_ip` VALUES (27, '110.78.172.221', '泰国--', '2020-01-31 22:38:03');
INSERT INTO `service_ip` VALUES (28, '110.52.29.187', '中国-湖南-', '2020-01-31 23:11:26');
INSERT INTO `service_ip` VALUES (29, '88.247.88.212', '土耳其--', '2020-02-01 00:45:34');
INSERT INTO `service_ip` VALUES (30, '203.115.102.221', '印度--', '2020-02-01 02:38:45');
INSERT INTO `service_ip` VALUES (31, '45.143.220.189', '美国--', '2020-02-01 03:02:52');
INSERT INTO `service_ip` VALUES (32, '79.137.37.62', '法国--', '2020-02-01 04:02:07');
INSERT INTO `service_ip` VALUES (33, '106.13.213.243', '中国-北京-', '2020-02-02 04:33:42');
INSERT INTO `service_ip` VALUES (34, '83.97.20.34', '罗马尼亚--', '2020-02-03 06:26:26');
INSERT INTO `service_ip` VALUES (35, '47.240.89.111', '美国--', '2020-02-01 05:37:12');
INSERT INTO `service_ip` VALUES (36, '47.240.89.111', '美国--', '2020-02-01 05:37:13');
INSERT INTO `service_ip` VALUES (37, '196.52.43.103', '荷兰--', '2020-02-01 08:57:36');
INSERT INTO `service_ip` VALUES (38, '149.7.72.223', '美国--', '2020-02-01 09:03:52');
INSERT INTO `service_ip` VALUES (39, '212.46.197.114', '俄罗斯--', '2020-02-01 09:13:36');
INSERT INTO `service_ip` VALUES (40, '95.38.67.79', '伊朗--', '2020-02-01 09:51:06');
INSERT INTO `service_ip` VALUES (41, '119.17.228.23', '越南--', '2020-02-01 10:03:51');
INSERT INTO `service_ip` VALUES (42, '167.99.40.21', '荷兰--', '2020-02-01 12:23:38');
INSERT INTO `service_ip` VALUES (43, '92.118.160.57', '希腊--', '2020-02-01 12:30:57');
INSERT INTO `service_ip` VALUES (44, '195.43.172.151', '意大利--', '2020-02-01 13:20:18');
INSERT INTO `service_ip` VALUES (45, '177.152.159.33', '巴西--', '2020-02-01 14:49:48');
INSERT INTO `service_ip` VALUES (46, '187.74.176.254', '巴西--', '2020-02-01 17:20:08');
INSERT INTO `service_ip` VALUES (47, '36.76.22.98', '印度尼西亚--', '2020-02-01 17:28:37');
INSERT INTO `service_ip` VALUES (48, '193.57.40.38', '乌克兰--', '2020-02-01 18:19:43');
INSERT INTO `service_ip` VALUES (49, '47.111.115.182', '中国-浙江-杭州市', '2020-02-01 19:16:33');
INSERT INTO `service_ip` VALUES (50, '192.241.231.242', '美国--', '2020-02-01 19:32:56');
INSERT INTO `service_ip` VALUES (51, '170.82.22.142', '巴西--', '2020-02-01 20:41:20');
INSERT INTO `service_ip` VALUES (52, '198.108.66.208', '美国--', '2020-02-01 20:54:23');
INSERT INTO `service_ip` VALUES (53, '39.75.201.107', '中国-山东-临沂市', '2020-02-01 22:41:03');
INSERT INTO `service_ip` VALUES (54, '36.110.199.9', '中国-北京-', '2020-02-01 21:55:39');
INSERT INTO `service_ip` VALUES (55, '51.15.170.222', '法国--', '2020-02-01 22:51:02');
INSERT INTO `service_ip` VALUES (56, '187.110.208.2', '巴西--', '2020-02-01 22:54:49');
INSERT INTO `service_ip` VALUES (57, '111.229.108.46', '中国-浙江-绍兴市', '2020-02-01 23:14:20');
INSERT INTO `service_ip` VALUES (58, '186.208.25.206', '巴西--', '2020-02-02 00:19:01');
INSERT INTO `service_ip` VALUES (59, '191.205.43.166', '巴西--', '2020-02-02 01:47:23');
INSERT INTO `service_ip` VALUES (60, '183.57.38.156', '中国-广东-茂名市', '2020-02-02 01:53:30');
INSERT INTO `service_ip` VALUES (61, '105.212.95.30', '南非--', '2020-02-02 06:04:06');
INSERT INTO `service_ip` VALUES (62, '45.88.42.62', '欧盟--', '2020-02-02 07:24:25');
INSERT INTO `service_ip` VALUES (63, '119.3.221.180', '中国-北京-', '2020-02-02 07:59:10');
INSERT INTO `service_ip` VALUES (64, '74.116.180.26', '美国--', '2020-02-02 08:07:10');
INSERT INTO `service_ip` VALUES (65, '78.189.234.104', '土耳其--', '2020-02-02 08:25:33');
INSERT INTO `service_ip` VALUES (66, '185.216.140.6', '荷兰--', '2020-02-02 08:40:57');
INSERT INTO `service_ip` VALUES (67, '203.208.60.68', '中国-北京-', '2020-02-02 11:54:11');
INSERT INTO `service_ip` VALUES (68, '51.254.59.113', '英国--', '2020-02-02 12:37:39');
INSERT INTO `service_ip` VALUES (69, '116.86.136.121', '新加坡--', '2020-02-02 12:47:48');
INSERT INTO `service_ip` VALUES (70, '192.241.233.61', '美国--', '2020-02-02 12:50:23');
INSERT INTO `service_ip` VALUES (71, '183.202.4.130', '中国-山西-太原市', '2020-02-02 13:08:54');
INSERT INTO `service_ip` VALUES (72, '58.250.143.96', '中国-广东-深圳市', '2020-02-02 13:08:56');
INSERT INTO `service_ip` VALUES (73, '112.60.1.64', '中国-广东-茂名市', '2020-02-02 13:08:56');
INSERT INTO `service_ip` VALUES (74, '139.199.121.228', '中国-广东-广州市', '2020-02-02 15:00:55');
INSERT INTO `service_ip` VALUES (75, '139.214.163.88', '中国-吉林-松原市', '2020-02-02 15:20:34');
INSERT INTO `service_ip` VALUES (76, '170.78.160.2', '巴西--', '2020-02-02 16:24:08');
INSERT INTO `service_ip` VALUES (77, '152.32.65.99', '菲律宾--', '2020-02-02 16:48:42');
INSERT INTO `service_ip` VALUES (78, '77.89.199.166', '摩尔多瓦--', '2020-02-02 20:08:05');
INSERT INTO `service_ip` VALUES (79, '201.131.181.38', '巴西--', '2020-02-02 20:22:02');
INSERT INTO `service_ip` VALUES (80, '101.227.1.202', '中国-上海-', '2020-02-02 21:55:32');
INSERT INTO `service_ip` VALUES (81, '128.14.133.58', '美国--', '2020-02-02 23:22:14');
INSERT INTO `service_ip` VALUES (82, '31.170.51.213', '伊朗--', '2020-02-03 02:20:19');
INSERT INTO `service_ip` VALUES (83, '178.73.215.171', '瑞典--', '2020-02-03 02:49:53');
INSERT INTO `service_ip` VALUES (84, '101.251.242.238', '中国-北京-海淀区', '2020-02-03 04:30:13');
INSERT INTO `service_ip` VALUES (85, '106.2.125.215', '中国-浙江-杭州市', '2020-02-03 04:30:21');
INSERT INTO `service_ip` VALUES (86, '185.3.220.80', '希腊--', '2020-02-03 05:03:35');

SET FOREIGN_KEY_CHECKS = 1;
