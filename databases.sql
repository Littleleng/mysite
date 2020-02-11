-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$XTvqaVZfBeJH$I1BcR2NCd6zo6JIrha+TWtJzheFhJjin/qe3S+/FzCY=','2020-02-09 16:11:13.693661',1,'weileng','','','',1,1,'2019-12-25 06:10:56.875986'),(2,'pbkdf2_sha256$100000$p4N6ltnakPMc$bTbQUqq4aqAC3E/n0RExE7ksR3BfmJjtO9LoVFebBO4=',NULL,1,'hjb','','','',1,1,'2019-12-25 06:12:10.221407');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'MySQL','<p>MySQL连接出现数据清空现象，目前不清楚是操作失误还是数据迁移没成功。</p>','2019-12-25 06:25:33.975108','2019-12-25 06:25:33.975108',1,2),(2,'django更换MySQL部署','<p><br />\r\n下载MySQL，目前我下载的是8.0.11版本，写一个配置文件-my.ini，设置datadir路径。</p>\r\n\r\n<p>开始MySQL初始化， &nbsp;安装 mysqld --jistall</p>\r\n\r\n<p>启动MySQL。</p>\r\n\r\n<p>登录MySQL，在这里我出了问题，需要密码，然而并没有设置密码，百度查找，说 是前面会给出</p>\r\n\r\n<p>随机密码，查找后并没有，无奈重新初始化MySQL。第二次成功登录。</p>\r\n\r\n<p>创建数据库。</p>\r\n\r\n<p>设置settings.py ，将指向sqlite3django自带数据库修改成指向MySQL。</p>\r\n\r\n<p>可以创建专门管理员管理该数据库，这样安全系数更高，但在这里，我还是使用root权限。</p>\r\n\r\n<p>需要安装 MySQL client，然后整合数据，如果之前设置管理员可能出现 no named &#39;***&#39;，问题。</p>\r\n\r\n<p>几经查找无果，尝试过各种方式，并无发现BUG出现原因，遂重新数据库重装，还是无法解决，</p>\r\n\r\n<p>最后通过询问室友在部署的时候有没有出现类似问题，进行对比使，最后经行尝试修改数据库使用权限</p>\r\n\r\n<p>得以解决。</p>\r\n\r\n<p>启动django会报错，是缓存问题 ，用python manage.py createcachetable,就可以了。</p>\r\n\r\n<p>启动后，里面没有数据，现在就是把原数据库储存数据导入到MySQL，因为之前博客是写在另一篇</p>\r\n\r\n<p>博客网站内，想尝试将以前博客也导入进来，失败，虽然失败了，但得益于此，将数据库备份了。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>使用django的dumpdata &gt;data.json,将数据导入到data.json文件，在从此文件导入到MySQL数据库。</p>\r\n\r\n<p>用loaddata会报错，主要原因是有文件名重复，启动MySQL进入删除即可。</p>\r\n\r\n<p>&nbsp;<br />\r\n部署完成。</p>','2020-02-09 16:12:06.070708','2020-02-09 16:12:06.070708',1,1),(3,'服务器部署','<p>首先，购买服务器，我是购买了阿里云学生服务器，自行购买。</p>\r\n\r\n<p>操作系统是用Linux的Ubuntu，购买后修改密码。</p>\r\n\r\n<p>使用git 用ssh命令连接服务器。</p>\r\n\r\n<p>在这里使用pycharm更加的方便，毕竟我两种都用了。</p>\r\n\r\n<p>安装python3.7，其中比较的麻烦，安装软件库，之类的。</p>\r\n\r\n<p>然后创建软链接，将之前指向py2版本的指向py3.</p>\r\n\r\n<p>安装pip3.7，也可安装虚拟环境，但犹豫个人原因，不太需要这个。</p>\r\n\r\n<p>安装git。</p>\r\n\r\n<p>查看版本源注意是-V 大V,不是小v，用小v进去后可用CTRL+D退出。</p>\r\n\r\n<p>可在git上直接克隆代码放在服务器上，但是在这出现几个问题，</p>\r\n\r\n<p>1，不清楚如何将本地代码更新至github，只学习到将GitHub代码更新到本地；</p>\r\n\r\n<p>2.如何修改GitHub上的文件名，其实也是第一个问题，知道用git push将代码上传，</p>\r\n\r\n<p>但是更改了文件夹名查找还是没有可更新的内容。</p>\r\n\r\n<p>被这点东西搞了好久。</p>\r\n\r\n<p>将没有上传到GitHub的settings等隐私代码上传到服务器。</p>\r\n\r\n<p>在服务器上安装mysql</p>\r\n\r\n<p>这里MySQL数据库部署基本和之前部署差不多。</p>\r\n\r\n<p>最后进行启动操作。</p>\r\n\r\n<p>报 no mudle named &nbsp;&#39;***&#39;，起初以为没有用虚拟环境所以启动不了，可惜不是的，</p>\r\n\r\n<p>然后因为之前也出现过类似问题，但很明显，之前出现的，之前就有在规避，</p>\r\n\r\n<p>百度类似问题，无解答，找到了up主，得到了一个方向，不是django启动原因，是配置问题。</p>\r\n\r\n<p>嗯，这很重要，方向很重要。</p>\r\n\r\n<p>但事实上还是没法解决这个问题，条条大路通罗马，我便打算换一个方式在试试。</p>\r\n\r\n<p>于是在pycharm中进行布置环境，将之前步骤简化了很多。</p>\r\n\r\n<p>一开始时，我用的是社区版，还以为是版本不同，后发现，下载专业版，</p>\r\n\r\n<p>其中破解花费了很长时间，基本坑都踩了个遍，破解后pycharm启动不了问题也可以解决。</p>\r\n\r\n<p>其实使用pycharm也出现之前问题，但是给了错误提示，我少安装了一个插件，运行成功。</p>\r\n\r\n<p>使用pycharm 正好规避的之前出现的问题， 修改文件提交，也在这解决了。</p>\r\n\r\n<p>目前依旧存在邮件无法发送问题。<br />\r\n&nbsp;</p>','2020-02-09 16:12:43.836345','2020-02-09 16:12:43.836345',1,1),(4,'pycharm连接中断','<p>一开始以为后端运行导致连接不上，通过git排除。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>于是通过查证，发现账号密码被清空了，没有提示，没有报错。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>输入账号密码正常连接。</p>','2020-02-09 16:13:32.133222','2020-02-09 16:13:32.133222',1,1),(5,'更新服务器代码','<p><br />\r\n目前已知比较好使的是将本地代码更新到github上，在由服务器上的git更新到服务器。</p>\r\n\r\n<p>小规模代码更新使用pycharm的remote Host功能直接修改，在进行上传，大规模添加文件可将新更新的文件记录好，</p>\r\n\r\n<p>然后进行单个的上传。</p>','2020-02-09 16:13:58.582267','2020-02-09 16:13:58.582267',1,1),(6,'验证码解决方式','<p><br />\r\n1，增加服务器的端口，</p>\r\n\r\n<p>2，修改本地端口，</p>\r\n\r\n<p>3，修改本地安全安全连接。</p>\r\n\r\n<p>完成！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>以上三个步骤尝试了十来遍。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1，增加服务器的端口</p>\r\n\r\n<p>最开始使用的是25端口，本地发送邮件毫无问题，服务器出现问题，查询资料，</p>\r\n\r\n<p>腾讯云适合25端口，阿里云适用465端口，基本很难使用25端口发邮件。</p>\r\n\r\n<p>这使用的是阿里云，在防火墙增加25端口和465端口，都尝试了下。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2，修改本地端口</p>\r\n\r\n<p>修改端口尝试发送服务器。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3，修改本地安全安全连接</p>\r\n\r\n<p>需要修改安全连接。</p>\r\n\r\n<p>使用465端口对应 &nbsp;EMAIL_USE_SSL<br />\r\n使用25端口对应 &nbsp; EMAIL_USE_TLS<br />\r\n&nbsp;</p>','2020-02-09 16:14:30.681684','2020-02-09 16:14:30.681684',1,1),(7,'选择ubuntu','<p><br />\r\n自己的服务器（比如用的阿里云服务器）请看下文：</p>\r\n\r\n<p>如果是新手，个人推荐用ubuntu,除非你对linux非常熟悉，ubuntu服务器的优点：</p>\r\n\r\n<p>一，开机apache2等都自动启动，不需要额外设置</p>\r\n\r\n<p>二，安装软件非常方便 apt-get 搞定</p>\r\n\r\n<p>三，安装ssh，git等也非常容易，几乎是傻瓜化</p>\r\n\r\n<p>如果你在虚拟机或个人电脑中安装，也可以试试 Linux Mint, 它用起来更简单，和ubuntu兼容。<br />\r\n&nbsp;</p>','2020-02-09 16:15:45.404810','2020-02-09 16:15:45.404810',1,1),(8,'服务器命令','<p>查看服务器操作</p>\r\n\r\n<p>cat /var/log/apache2/error.log</p>\r\n\r\n<p>检查你的配置文件</p>\r\n\r\n<p>apache2ctl configtest如果有问题，可以根据提示解决</p>\r\n\r\n<p>sudo service apache2 start/restart</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6, 最后</p>\r\n\r\n<p>curl http://localhost/api 检查你的网站，也可以在浏览器打开相应的地址</p>\r\n\r\n<p>　　3.修改settings.py，增加静态文件等设置</p>\r\n\r\n<p>正式上线的网站我们不能通过使用 python manage.py runserver 这样的方式启用。应该通过网页服务器（如 Apache）把远程浏览器的请求转送到 Django 程序中执行，再把执行后的结果通过 Apache 传回给浏览器。</p>\r\n\r\n<p>主要涉及到两个文件，setting.py 和 wsgi.py。setting.py 负责做 Django 网站的相关设置，而 wsgi.py 负责创建一个可以让 Apache 顺利转交程序代码以及返回执行结果的设置文件。</p>\r\n\r\n<p><br />\r\n自己将域名解析到服务器后网站一直报500错误，但是自己通过 IP 地址访问却一切正常，查找下原因，发现是解析域名到服务器，服务器如果在国内的，需要备案，不然是无法访问的，而自己恰巧是腾讯云的国内服务器，查找了好久，才发现一直报错是什么原因（捂脸）。</p>\r\n\r\n<p><br />\r\n因为项目之前通过python3 manage.py runserver可以走通，说明在django项目的settings.py中的INSTALLED_APPS中已经注册过rest_framework,那么肯定问题在配置文件 项目名称.conf的依赖文件路径中，所以修改正确的路径即可，如果是没有配置WSGIDaemonProcess这一项，直接进行正确的配置，这个问题尤其容易发生在以虚拟环境部署的项目</p>\r\n\r\n<p><br />\r\n从Linux服务器下载文件到本地命令<br />\r\n从Linux服务器下载文件夹到本地<br />\r\n1、使用scp命令</p>\r\n\r\n<p>scp /home/work/source.txt work@192.168.0.10:/home/work/ #把本地的source.txt文件拷贝到192.168.0.10机器上的/home/work目录下</p>\r\n\r\n<p>scp work@192.168.0.10:/home/work/source.txt /home/work/ #把192.168.0.10机器上的source.txt文件拷贝到本地的/home/work目录下</p>\r\n\r\n<p>scp work@192.168.0.10:/home/work/source.txt work@192.168.0.11:/home/work/ #把192.168.0.10机器上的source.txt文件拷贝到192.168.0.11机器的/home/work目录下</p>\r\n\r\n<p>scp -r /home/work/sourcedir work@192.168.0.10:/home/work/ #拷贝文件夹，加-r参数<br />\r\n&nbsp;</p>','2020-02-09 16:17:51.895845','2020-02-09 16:17:51.895845',1,1);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'django'),(2,'学习'),(3,'工作'),(4,'资料');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,1,'<p>之前没有迁移数据时删除过用户</p>','2019-12-25 06:29:35.175431',7,1,NULL,NULL,NULL),(2,1,'<p>现在问题有点搞不清了，还好保留了原数据</p>','2019-12-25 06:30:00.551224',7,1,1,1,1);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-12-25 06:23:51.736639','1','django',1,'[{\"added\": {}}]',8,1),(2,'2019-12-25 06:23:54.094365','2','学习',1,'[{\"added\": {}}]',8,1),(3,'2019-12-25 06:23:56.311409','3','工作',1,'[{\"added\": {}}]',8,1),(4,'2019-12-25 06:23:58.582339','4','资料',1,'[{\"added\": {}}]',8,1),(5,'2019-12-25 06:25:33.976106','1','<Blog: MySQL>',1,'[{\"added\": {}}]',7,1),(6,'2020-02-09 16:12:06.075664','2','<Blog: django更换MySQL部署>',1,'[{\"added\": {}}]',7,1),(7,'2020-02-09 16:12:43.837344','3','<Blog: 服务器部署>',1,'[{\"added\": {}}]',7,1),(8,'2020-02-09 16:13:32.134234','4','<Blog: pycharm连接中断>',1,'[{\"added\": {}}]',7,1),(9,'2020-02-09 16:13:58.583263','5','<Blog: 更新服务器代码>',1,'[{\"added\": {}}]',7,1),(10,'2020-02-09 16:14:30.682681','6','<Blog: 验证码解决方式>',1,'[{\"added\": {}}]',7,1),(11,'2020-02-09 16:15:45.405809','7','<Blog: 选择ubuntu>',1,'[{\"added\": {}}]',7,1),(12,'2020-02-09 16:17:51.896842','8','<Blog: 服务器命令>',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','blogtype'),(11,'comment','comment'),(5,'contenttypes','contenttype'),(12,'likes','likecount'),(13,'likes','likerecord'),(10,'read_statistics','readdetail'),(9,'read_statistics','readnum'),(6,'sessions','session'),(14,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-25 03:49:27.768682'),(2,'auth','0001_initial','2019-12-25 03:49:31.362110'),(3,'admin','0001_initial','2019-12-25 03:49:32.332333'),(4,'admin','0002_logentry_remove_auto_add','2019-12-25 03:49:32.375095'),(5,'contenttypes','0002_remove_content_type_name','2019-12-25 03:49:33.062258'),(6,'auth','0002_alter_permission_name_max_length','2019-12-25 03:49:33.462189'),(7,'auth','0003_alter_user_email_max_length','2019-12-25 03:49:33.566942'),(8,'auth','0004_alter_user_username_opts','2019-12-25 03:49:33.614782'),(9,'auth','0005_alter_user_last_login_null','2019-12-25 03:49:34.016719'),(10,'auth','0006_require_contenttypes_0002','2019-12-25 03:49:34.063582'),(11,'auth','0007_alter_validators_add_error_messages','2019-12-25 03:49:34.099485'),(12,'auth','0008_alter_user_username_max_length','2019-12-25 03:49:34.480031'),(13,'auth','0009_alter_user_last_name_max_length','2019-12-25 03:49:34.836373'),(14,'blog','0001_initial','2019-12-25 03:49:35.868752'),(15,'blog','0002_auto_20180120_0210','2019-12-25 03:49:35.902651'),(16,'blog','0003_auto_20180205_0147','2019-12-25 03:49:35.939684'),(17,'blog','0004_auto_20180205_0205','2019-12-25 03:49:35.995406'),(18,'blog','0005_blog_readed_num','2019-12-25 03:49:36.425224'),(19,'blog','0006_auto_20180224_0132','2019-12-25 03:49:37.463341'),(20,'blog','0007_auto_20180224_0212','2019-12-25 03:49:37.857288'),(21,'blog','0008_auto_20180426_0048','2019-12-25 03:49:38.619225'),(22,'comment','0001_initial','2019-12-25 03:49:39.728664'),(23,'comment','0002_auto_20180413_0417','2019-12-25 03:49:40.160709'),(24,'comment','0003_auto_20180413_0422','2019-12-25 03:49:41.033376'),(25,'comment','0004_auto_20180413_0431','2019-12-25 03:49:42.102267'),(26,'comment','0005_auto_20180413_0435','2019-12-25 03:49:43.212451'),(27,'comment','0006_auto_20180426_0048','2019-12-25 03:49:45.758972'),(28,'likes','0001_initial','2019-12-25 03:49:47.106961'),(29,'read_statistics','0001_initial','2019-12-25 03:49:47.578905'),(30,'read_statistics','0002_readdetail','2019-12-25 03:49:48.160264'),(31,'read_statistics','0003_auto_20180426_0048','2019-12-25 03:49:48.886324'),(32,'sessions','0001_initial','2019-12-25 03:49:49.240377'),(33,'user','0001_initial','2019-12-25 03:49:49.760667'),(34,'user','0002_auto_20191204_1424','2019-12-25 03:49:49.805558');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gmxd9hoygpgky50k26t8usmjjpcemweh','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-02-23 16:11:13.724592'),('t75w6sjvwgufoean0i1s52hf0at1e2ff','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-01-08 06:23:36.418587'),('t9m1spzehd1brrgpxusq9lvhh5ekyxdz','MTQwMTI4ZjkwMGU3MDZkYWIwZGJmNzY4NzY5ZjZiM2UyY2QxMzFiYjp7InJlZ2lzdGVyX2NvZGUiOiJrM3hEZVUiLCJzZW5kX2NvZGVfdGltZSI6MTU3ODY0MjI2NX0=','2020-01-24 07:44:26.726970'),('w9erc4gd6bfsho6fpe2vm9ka45eqpuas','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-01-08 06:11:09.315890');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,1,1,7);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (1,1,'2019-12-25 06:28:51.371467',7,1);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVLgoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMD3JlYWRfc3RhdGlzdGljc5RoPYwEZGF0ZZSHlFKUhpR9lIaUaGZohWhnaBVoaGiFjBJjb250YWluc19hZ2dyZWdhdGWUiXVijANyaHOUjAhkYXRldGltZZSMBGRhdGWUk5RDBAfkAgKUhZRSlIwUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZRoiYl1Ymh6jAhMZXNzVGhhbpSTlCmBlH2UKGh/aIBoimiNQwQH5AIJlIWUUpRokV2UaImJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloiYl1YowLd2hlcmVfY2xhc3OUaHWMCGdyb3VwX2J5lGheaGmGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhrhpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdogmg9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoiYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZSMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGgqaGuGlIwPX2RqYW5nb192ZXJzaW9ulIwGMi4wLjEzlHViLg==','2020-02-09 17:11:02.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2019-12-25',1,1,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,1,1,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10  0:25:53
