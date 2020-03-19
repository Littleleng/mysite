-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$XTvqaVZfBeJH$I1BcR2NCd6zo6JIrha+TWtJzheFhJjin/qe3S+/FzCY=','2020-02-16 03:00:00.718154',1,'weileng','','','',1,1,'2019-12-25 06:10:56.875986'),(2,'pbkdf2_sha256$100000$p4N6ltnakPMc$bTbQUqq4aqAC3E/n0RExE7ksR3BfmJjtO9LoVFebBO4=',NULL,1,'hjb','','','',1,1,'2019-12-25 06:12:10.221407'),(3,'pbkdf2_sha256$100000$xHXtSG4QBrL2$DHimd1j5YeHbFbIfVo9x29J0BN53eesTi2PZ1fG1/Os=','2020-02-13 08:39:30.564644',0,'lengxiaowei','','','2833461082@qq.com',0,1,'2020-02-11 06:29:38.957519');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'MySQL','<p>MySQL连接出现数据清空现象，目前不清楚是操作失误还是数据迁移没成功。</p>','2019-12-25 06:25:33.975108','2019-12-25 06:25:33.975108',1,2),(2,'django更换MySQL部署','<p><br />\r\n下载MySQL，目前我下载的是8.0.11版本，写一个配置文件-my.ini，设置datadir路径。</p>\r\n\r\n<p>开始MySQL初始化， &nbsp;安装 mysqld --jistall</p>\r\n\r\n<p>启动MySQL。</p>\r\n\r\n<p>登录MySQL，在这里我出了问题，需要密码，然而并没有设置密码，百度查找，说 是前面会给出</p>\r\n\r\n<p>随机密码，查找后并没有，无奈重新初始化MySQL。第二次成功登录。</p>\r\n\r\n<p>创建数据库。</p>\r\n\r\n<p>设置settings.py ，将指向sqlite3django自带数据库修改成指向MySQL。</p>\r\n\r\n<p>可以创建专门管理员管理该数据库，这样安全系数更高，但在这里，我还是使用root权限。</p>\r\n\r\n<p>需要安装 MySQL client，然后整合数据，如果之前设置管理员可能出现 no named &#39;***&#39;，问题。</p>\r\n\r\n<p>几经查找无果，尝试过各种方式，并无发现BUG出现原因，遂重新数据库重装，还是无法解决，</p>\r\n\r\n<p>最后通过询问室友在部署的时候有没有出现类似问题，进行对比使，最后经行尝试修改数据库使用权限</p>\r\n\r\n<p>得以解决。</p>\r\n\r\n<p>启动django会报错，是缓存问题 ，用python manage.py createcachetable,就可以了。</p>\r\n\r\n<p>启动后，里面没有数据，现在就是把原数据库储存数据导入到MySQL，因为之前博客是写在另一篇</p>\r\n\r\n<p>博客网站内，想尝试将以前博客也导入进来，失败，虽然失败了，但得益于此，将数据库备份了。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>使用django的dumpdata &gt;data.json,将数据导入到data.json文件，在从此文件导入到MySQL数据库。</p>\r\n\r\n<p>用loaddata会报错，主要原因是有文件名重复，启动MySQL进入删除即可。</p>\r\n\r\n<p>&nbsp;<br />\r\n部署完成。</p>','2020-02-09 16:12:06.070708','2020-02-09 16:12:06.070708',1,1),(3,'服务器部署','<p>首先，购买服务器，我是购买了阿里云学生服务器，自行购买。</p>\r\n\r\n<p>操作系统是用Linux的Ubuntu，购买后修改密码。</p>\r\n\r\n<p>使用git 用ssh命令连接服务器。</p>\r\n\r\n<p>在这里使用pycharm更加的方便，毕竟我两种都用了。</p>\r\n\r\n<p>安装python3.7，其中比较的麻烦，安装软件库，之类的。</p>\r\n\r\n<p>然后创建软链接，将之前指向py2版本的指向py3.</p>\r\n\r\n<p>安装pip3.7，也可安装虚拟环境，但犹豫个人原因，不太需要这个。</p>\r\n\r\n<p>安装git。</p>\r\n\r\n<p>查看版本源注意是-V 大V,不是小v，用小v进去后可用CTRL+D退出。</p>\r\n\r\n<p>可在git上直接克隆代码放在服务器上，但是在这出现几个问题，</p>\r\n\r\n<p>1，不清楚如何将本地代码更新至github，只学习到将GitHub代码更新到本地；</p>\r\n\r\n<p>2.如何修改GitHub上的文件名，其实也是第一个问题，知道用git push将代码上传，</p>\r\n\r\n<p>但是更改了文件夹名查找还是没有可更新的内容。</p>\r\n\r\n<p>被这点东西搞了好久。</p>\r\n\r\n<p>将没有上传到GitHub的settings等隐私代码上传到服务器。</p>\r\n\r\n<p>在服务器上安装mysql</p>\r\n\r\n<p>这里MySQL数据库部署基本和之前部署差不多。</p>\r\n\r\n<p>最后进行启动操作。</p>\r\n\r\n<p>报 no mudle named &nbsp;&#39;***&#39;，起初以为没有用虚拟环境所以启动不了，可惜不是的，</p>\r\n\r\n<p>然后因为之前也出现过类似问题，但很明显，之前出现的，之前就有在规避，</p>\r\n\r\n<p>百度类似问题，无解答，找到了up主，得到了一个方向，不是django启动原因，是配置问题。</p>\r\n\r\n<p>嗯，这很重要，方向很重要。</p>\r\n\r\n<p>但事实上还是没法解决这个问题，条条大路通罗马，我便打算换一个方式在试试。</p>\r\n\r\n<p>于是在pycharm中进行布置环境，将之前步骤简化了很多。</p>\r\n\r\n<p>一开始时，我用的是社区版，还以为是版本不同，后发现，下载专业版，</p>\r\n\r\n<p>其中破解花费了很长时间，基本坑都踩了个遍，破解后pycharm启动不了问题也可以解决。</p>\r\n\r\n<p>其实使用pycharm也出现之前问题，但是给了错误提示，我少安装了一个插件，运行成功。</p>\r\n\r\n<p>使用pycharm 正好规避的之前出现的问题， 修改文件提交，也在这解决了。</p>\r\n\r\n<p>目前依旧存在邮件无法发送问题。<br />\r\n&nbsp;</p>','2020-02-09 16:12:43.836345','2020-02-09 16:12:43.836345',1,1),(4,'pycharm连接中断','<p>一开始以为后端运行导致连接不上，通过git排除。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>于是通过查证，发现账号密码被清空了，没有提示，没有报错。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>输入账号密码正常连接。</p>','2020-02-09 16:13:32.133222','2020-02-09 16:13:32.133222',1,1),(5,'更新服务器代码','<p><br />\r\n目前已知比较好使的是将本地代码更新到github上，在由服务器上的git更新到服务器。</p>\r\n\r\n<p>小规模代码更新使用pycharm的remote Host功能直接修改，在进行上传，大规模添加文件可将新更新的文件记录好，</p>\r\n\r\n<p>然后进行单个的上传。</p>','2020-02-09 16:13:58.582267','2020-02-09 16:13:58.582267',1,1),(6,'验证码解决方式','<p><br />\r\n1，增加服务器的端口，</p>\r\n\r\n<p>2，修改本地端口，</p>\r\n\r\n<p>3，修改本地安全安全连接。</p>\r\n\r\n<p>完成！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>以上三个步骤尝试了十来遍。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1，增加服务器的端口</p>\r\n\r\n<p>最开始使用的是25端口，本地发送邮件毫无问题，服务器出现问题，查询资料，</p>\r\n\r\n<p>腾讯云适合25端口，阿里云适用465端口，基本很难使用25端口发邮件。</p>\r\n\r\n<p>这使用的是阿里云，在防火墙增加25端口和465端口，都尝试了下。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2，修改本地端口</p>\r\n\r\n<p>修改端口尝试发送服务器。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3，修改本地安全安全连接</p>\r\n\r\n<p>需要修改安全连接。</p>\r\n\r\n<p>使用465端口对应 &nbsp;EMAIL_USE_SSL<br />\r\n使用25端口对应 &nbsp; EMAIL_USE_TLS<br />\r\n&nbsp;</p>','2020-02-09 16:14:30.681684','2020-02-09 16:14:30.681684',1,1),(7,'选择ubuntu','<p><br />\r\n自己的服务器（比如用的阿里云服务器）请看下文：</p>\r\n\r\n<p>如果是新手，个人推荐用ubuntu,除非你对linux非常熟悉，ubuntu服务器的优点：</p>\r\n\r\n<p>一，开机apache2等都自动启动，不需要额外设置</p>\r\n\r\n<p>二，安装软件非常方便 apt-get 搞定</p>\r\n\r\n<p>三，安装ssh，git等也非常容易，几乎是傻瓜化</p>\r\n\r\n<p>如果你在虚拟机或个人电脑中安装，也可以试试 Linux Mint, 它用起来更简单，和ubuntu兼容。<br />\r\n&nbsp;</p>','2020-02-09 16:15:45.404810','2020-02-09 16:15:45.404810',1,1),(8,'服务器命令','<p>查看服务器操作</p>\r\n\r\n<p>cat /var/log/apache2/error.log</p>\r\n\r\n<p>检查你的配置文件</p>\r\n\r\n<p>apache2ctl configtest如果有问题，可以根据提示解决</p>\r\n\r\n<p>sudo service apache2 start/restart</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6, 最后</p>\r\n\r\n<p>curl http://localhost/api 检查你的网站，也可以在浏览器打开相应的地址</p>\r\n\r\n<p>　　3.修改settings.py，增加静态文件等设置</p>\r\n\r\n<p>正式上线的网站我们不能通过使用 python manage.py runserver 这样的方式启用。应该通过网页服务器（如 Apache）把远程浏览器的请求转送到 Django 程序中执行，再把执行后的结果通过 Apache 传回给浏览器。</p>\r\n\r\n<p>主要涉及到两个文件，setting.py 和 wsgi.py。setting.py 负责做 Django 网站的相关设置，而 wsgi.py 负责创建一个可以让 Apache 顺利转交程序代码以及返回执行结果的设置文件。</p>\r\n\r\n<p><br />\r\n自己将域名解析到服务器后网站一直报500错误，但是自己通过 IP 地址访问却一切正常，查找下原因，发现是解析域名到服务器，服务器如果在国内的，需要备案，不然是无法访问的，而自己恰巧是腾讯云的国内服务器，查找了好久，才发现一直报错是什么原因（捂脸）。</p>\r\n\r\n<p><br />\r\n因为项目之前通过python3 manage.py runserver可以走通，说明在django项目的settings.py中的INSTALLED_APPS中已经注册过rest_framework,那么肯定问题在配置文件 项目名称.conf的依赖文件路径中，所以修改正确的路径即可，如果是没有配置WSGIDaemonProcess这一项，直接进行正确的配置，这个问题尤其容易发生在以虚拟环境部署的项目</p>\r\n\r\n<p><br />\r\n从Linux服务器下载文件到本地命令<br />\r\n从Linux服务器下载文件夹到本地<br />\r\n1、使用scp命令</p>\r\n\r\n<p>scp /home/work/source.txt work@192.168.0.10:/home/work/ #把本地的source.txt文件拷贝到192.168.0.10机器上的/home/work目录下</p>\r\n\r\n<p>scp work@192.168.0.10:/home/work/source.txt /home/work/ #把192.168.0.10机器上的source.txt文件拷贝到本地的/home/work目录下</p>\r\n\r\n<p>scp work@192.168.0.10:/home/work/source.txt work@192.168.0.11:/home/work/ #把192.168.0.10机器上的source.txt文件拷贝到192.168.0.11机器的/home/work目录下</p>\r\n\r\n<p>scp -r /home/work/sourcedir work@192.168.0.10:/home/work/ #拷贝文件夹，加-r参数<br />\r\n&nbsp;</p>','2020-02-09 16:17:51.895845','2020-02-09 16:17:51.895845',1,1),(9,'apache2部署完成','<p><br />\r\n&nbsp;source ../mysite_env/bin/activate<br />\r\n启动虚拟环境</p>\r\n\r\n<p>重启<br />\r\napache2ctl restart<br />\r\n确认配置<br />\r\napache2ctl configtest<br />\r\n&nbsp;</p>','2020-02-11 05:46:45.516570','2020-02-11 05:46:45.516604',1,5),(10,'服务器数据导出','<p>根据本地数据导入，进行逆推，方便用于下次数据的保存。下载到本地。<br />\r\n首先 使用 mysqldump 这个命令经行导出 &nbsp;mysqldump -u root -p mysite_db &gt;data.sql &nbsp;导出到数据库文本data中。<br />\r\n此处准备先做一个实验。</p>\r\n\r\n<p>在本地博客写入新的数据导入databases.sql文件，<br />\r\n用scp dabatases.sql root@59.110.218.29:/home/dabatases.sql<br />\r\n上传数据，在进入服务器数据库<br />\r\n使用 use mysite_db; 指定数据库<br />\r\nsource dabatases.sql 导入数据<br />\r\n&nbsp;</p>','2020-02-11 05:47:22.372028','2020-02-11 05:47:22.372069',1,6),(11,'配置服务器的曲折历史','<p>服务器基本全部重置了一遍！</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>之前内容基本全部丢失，由于一开始就打算备份数据等待后期的爬虫上传，所以用文本大概备份了一些。</p>\r\n\r\n<p>没想到第二天，出现了重大的事故。由于部署apache2出现了各种问题，所以一直带debug，但是，找出一个，</p>\r\n\r\n<p>又接着出现一个，但是配置没有问题，问题就出现在配置之前，部署服务器留下来的隐患。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>其中，有一个问题，启动apache存在两个django文件，出现问题。</p>\r\n\r\n<p>因为在之前部署服务器，我用了两种方法，所以同时也出现了两个python文件。</p>\r\n\r\n<p>于是进行删除，此处出现了人工问题。</p>\r\n\r\n<p>操作剪贴了usr系统文件，并且并没有粘贴下来，省略了这一个步骤，没能想windows系统那样撤销了这部操作</p>\r\n\r\n<p>而进行了下一个文件的删除，导致重启服务器后，usr文件丢失。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>此处非常阿里云专业人员的指导。</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>因为频繁的重启服务器，后来连接不上服务器，之前百度，有说可能频繁重启服务器被当成Doss攻击，阿里云自动关闭服务器，在2.5-24小时后开放22端口。</p>\r\n\r\n<p>过24小时后问题没有解决，向阿里云求助。</p>\r\n\r\n<p>通过长时间的沟通，发现问题，给出解决方案。塞翁失马焉知非福，备份服务器，重置服务器。</p>\r\n\r\n<p>帮我挂盘，等我下载，事实上，出现下载问题，推荐使用winsSCP软件下载，不过下载速度非常的缓慢，只把关键数据下载下来。</p>\r\n\r\n<p>进过重新的服务器，apache部署，非常的顺利。也学到很多。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>晚点以后重新备份数据。</p>','2020-02-11 05:58:20.688813','2020-02-11 06:09:34.462340',1,6),(12,'添加加密操作','<p>昨天在添加加密操作</p>\r\n\r\n<p>今天给撤回了。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>目前测试可能是系统全局环境文件失效 ：/etc/profile</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>无法加载或运行已输入的环境。</p>\r\n\r\n<p>source 过，也cheo $ 检查过，并无问题，但查看日志，一直显示密码缺失。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>目前处理了 错误页面显示，404，</p>\r\n\r\n<p>及 提交错误页面 500，继续页面优化。</p>','2020-02-13 07:02:40.468783','2020-02-13 07:02:40.468818',1,1),(14,'测试视频上传','<p><param name=\"allowFullScreen\" value=\"true\" /><param name=\"quality\" value=\"high\" /><param name=\"movie\" value=\"/media/upload/2020/02/13/-merge_1LHHVmn.mp4\" /></p>\r\n\r\n<hr />\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"\" src=\"/media/upload/2020/02/13/icdrde.png\" style=\"height:487px; width:590px\" /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><embed pluginspage=\"http://www.macromedia.com/go/getflashplayer\" quality=\"high\" src=\"/media/upload/2020/02/13/-merge_1LHHVmn.mp4\" type=\"application/x-shockwave-flash\"></embed></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','2020-02-13 09:28:52.695112','2020-02-13 15:48:26.213571',1,7),(15,'在同一台服务器里如何运行多个网站','<p>Apache Web服务软件</p>\r\n\r\n<p>方法/步骤</p>\r\n\r\n<p>实现方法有三种：&nbsp;&nbsp;&nbsp;&nbsp;1：IP的方法&nbsp;2：基于主机名的方法&nbsp;3：基于端口方法。&nbsp;&nbsp;&nbsp;&nbsp;①基于IP的方法：&nbsp;&nbsp;&nbsp;&nbsp;在服务器里绑定多个IP，然后配置WEB服务器，把多个网站绑定在不同的IP上。访问不同的IP，就看到不同的网站。&nbsp;&nbsp;&nbsp;&nbsp;②基于端口的方法：&nbsp;&nbsp;&nbsp;&nbsp;一个IP地址，通过不同的端口实在不同网站的访问。&nbsp;&nbsp;&nbsp;&nbsp;③基于主机名的方法：&nbsp;&nbsp;&nbsp;&nbsp;设置多个域名的A记录，使它们解析到同一个IP地址上，即同一个服务器上。然后，在服务器上配置WEB服务端，添加多个网站，为每个网站设定一个主机名。因为HTTP协议访问请求里包含有主机名信息，当WEB服务器收到访问请求时，就可以根据不同的主机名来访问不同的网站。</p>\r\n\r\n<p>三种虚拟主机实现的基本配置&nbsp;&nbsp;&nbsp;&nbsp;①基于IP虚拟主机的实现：&nbsp;&nbsp;&nbsp;&nbsp;多个ip，需要把中心主机取消&nbsp;&nbsp;&nbsp;&nbsp;打开web服务的主配置文档：vim&nbsp;/etc/httpd/conf/httpd.conf&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;注释掉&nbsp;&nbsp;&nbsp;&nbsp;配置虚拟主机：&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost&nbsp;192.168.1.100:80&gt;&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;&quot;/var/a/html&quot;&nbsp;&nbsp;&nbsp;&nbsp;ServerName&nbsp;&nbsp;www.a.com&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost/&gt;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&lt;VirtualHost&nbsp;192.168.1.101:80&gt;&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;&quot;/var/ab/html&quot;&nbsp;&nbsp;&nbsp;&nbsp;ServerName&nbsp;&nbsp;www.ab.com&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost/&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;vim&nbsp;/etc/hosts&nbsp;&nbsp;&nbsp;&nbsp;192.168.1.100&nbsp;&nbsp;www.a.com&nbsp;&nbsp;&nbsp;&nbsp;192.168.1.101&nbsp;&nbsp;www.ab.com&nbsp;&nbsp;&nbsp;&nbsp;浏览器中输入IP地址进行实验效果的验证。&nbsp;&nbsp;&nbsp;&nbsp;②基于端口：&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost&nbsp;192.168.1.100:80&gt;&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;&quot;/var/a/html&quot;&nbsp;&nbsp;&nbsp;&nbsp;ServerName&nbsp;&nbsp;www.a.com&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost/&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost&nbsp;192.168.1.101:8080&gt;&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;&quot;/var/ab/html&quot;&nbsp;&nbsp;&nbsp;&nbsp;ServerName&nbsp;&nbsp;www.ab.com&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost/&gt;&nbsp;&nbsp;&nbsp;&nbsp;③基于主机名：&nbsp;&nbsp;&nbsp;&nbsp;开启：NameVirtualHost&nbsp;192.168.1.100:80&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost&nbsp;*:80&gt;&nbsp;&nbsp;&nbsp;&nbsp;ServerAdmin&nbsp;&nbsp;&nbsp;&nbsp;www.a.com&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;/var/a/html&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&lt;/VirtualHost&gt;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&lt;VirtualHost&nbsp;*:80&gt;&nbsp;&nbsp;&nbsp;&nbsp;ServerAdmin&nbsp;&nbsp;&nbsp;&nbsp;www.ab.com&nbsp;&nbsp;&nbsp;&nbsp;DocumentRoot&nbsp;/var/ab/html&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&lt;/VirtualHost&gt;</p>','2020-02-23 02:40:26.613176','2020-02-23 02:41:37.777926',1,6);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'django'),(2,'学习'),(3,'工作'),(4,'资料'),(5,'apache'),(6,'服务器'),(7,'他和她');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,1,'<p>之前没有迁移数据时删除过用户</p>','2019-12-25 06:29:35.175431',7,1,NULL,NULL,NULL),(2,1,'<p>现在问题有点搞不清了，还好保留了原数据</p>','2019-12-25 06:30:00.551224',7,1,1,1,1),(3,6,'<p><strong>注意，修改密码记得及时更新授权码</strong></p>','2020-02-13 08:44:18.593235',7,1,NULL,NULL,NULL),(4,14,'<p>chmod -R 777 media&nbsp; 给权限才能上传图片</p>','2020-02-13 09:40:44.652238',7,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-12-25 06:23:51.736639','1','django',1,'[{\"added\": {}}]',8,1),(2,'2019-12-25 06:23:54.094365','2','学习',1,'[{\"added\": {}}]',8,1),(3,'2019-12-25 06:23:56.311409','3','工作',1,'[{\"added\": {}}]',8,1),(4,'2019-12-25 06:23:58.582339','4','资料',1,'[{\"added\": {}}]',8,1),(5,'2019-12-25 06:25:33.976106','1','<Blog: MySQL>',1,'[{\"added\": {}}]',7,1),(6,'2020-02-09 16:12:06.075664','2','<Blog: django更换MySQL部署>',1,'[{\"added\": {}}]',7,1),(7,'2020-02-09 16:12:43.837344','3','<Blog: 服务器部署>',1,'[{\"added\": {}}]',7,1),(8,'2020-02-09 16:13:32.134234','4','<Blog: pycharm连接中断>',1,'[{\"added\": {}}]',7,1),(9,'2020-02-09 16:13:58.583263','5','<Blog: 更新服务器代码>',1,'[{\"added\": {}}]',7,1),(10,'2020-02-09 16:14:30.682681','6','<Blog: 验证码解决方式>',1,'[{\"added\": {}}]',7,1),(11,'2020-02-09 16:15:45.405809','7','<Blog: 选择ubuntu>',1,'[{\"added\": {}}]',7,1),(12,'2020-02-09 16:17:51.896842','8','<Blog: 服务器命令>',1,'[{\"added\": {}}]',7,1),(13,'2020-02-11 05:45:48.214421','1','apache',2,'[{\"changed\": {\"fields\": [\"type_name\"]}}]',8,1),(14,'2020-02-11 05:46:02.206007','1','django',2,'[{\"changed\": {\"fields\": [\"type_name\"]}}]',8,1),(15,'2020-02-11 05:46:08.772639','5','apache',1,'[{\"added\": {}}]',8,1),(16,'2020-02-11 05:46:45.517264','9','<Blog: apache2部署完成>',1,'[{\"added\": {}}]',7,1),(17,'2020-02-11 05:47:04.530699','6','服务器',1,'[{\"added\": {}}]',8,1),(18,'2020-02-11 05:47:22.372694','10','<Blog: 服务器数据导出>',1,'[{\"added\": {}}]',7,1),(19,'2020-02-11 05:58:20.689850','11','<Blog: 配置服务器的曲折历史>',1,'[{\"added\": {}}]',7,1),(20,'2020-02-11 06:09:34.463381','11','<Blog: 配置服务器的曲折历史>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(21,'2020-02-13 07:02:40.469366','12','<Blog: 添加加密操作>',1,'[{\"added\": {}}]',7,1),(22,'2020-02-13 09:10:06.754517','13','<Blog: 测试视频>',1,'[{\"added\": {}}]',7,1),(23,'2020-02-13 09:24:13.296201','13','<Blog: 测试视频>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(24,'2020-02-13 09:26:18.207003','13','<Blog: 测试视频>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(25,'2020-02-13 09:27:01.679495','13','<Blog: 测试视频>',3,'',7,1),(26,'2020-02-13 09:28:04.166734','7','他和她',1,'[{\"added\": {}}]',8,1),(27,'2020-02-13 09:28:52.695696','14','<Blog: 测试视频上传>',1,'[{\"added\": {}}]',7,1),(28,'2020-02-13 10:15:53.105358','14','<Blog: 测试视频上传>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(29,'2020-02-13 10:17:19.044983','14','<Blog: 测试视频上传>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(30,'2020-02-13 15:48:26.214525','14','<Blog: 测试视频上传>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(31,'2020-02-23 02:40:26.613965','15','<Blog: 在同一台服务器里如何运行多个网站>',1,'[{\"added\": {}}]',7,1),(32,'2020-02-23 02:41:37.778904','15','<Blog: 在同一台服务器里如何运行多个网站>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `django_session` VALUES ('9437bd56o1ecfx7vhsbvlx51cqt5i9sa','OWFiNWQ2ZTg5OWQxMDNlOGY4NmNmODM0NjMxMmVlMjc3MWU3ZmQwNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDA4M2M5Mzk1NDQ3N2QxZmYxZmU0NWU1ZThhZDg2YWY4MmE3YzRjIn0=','2020-02-27 08:39:30.567529'),('gmxd9hoygpgky50k26t8usmjjpcemweh','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-02-23 16:11:13.724592'),('l7w5za309oedm6wai7wevdrf2x2raiyc','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-03-01 03:00:00.721362'),('t75w6sjvwgufoean0i1s52hf0at1e2ff','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-01-08 06:23:36.418587'),('t9m1spzehd1brrgpxusq9lvhh5ekyxdz','MTQwMTI4ZjkwMGU3MDZkYWIwZGJmNzY4NzY5ZjZiM2UyY2QxMzFiYjp7InJlZ2lzdGVyX2NvZGUiOiJrM3hEZVUiLCJzZW5kX2NvZGVfdGltZSI6MTU3ODY0MjI2NX0=','2020-01-24 07:44:26.726970'),('tx0lmaa25js9z04dcbx18p0zip6cciej','ZDdlOWQ1ZDhmNTQ3YzBiMjJhYWZkNTVmMTA1NjkzZjA1OTgyZTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIiwiYmluZF9lbWFpbF9jb2RlIjoiNHJ5bTFpIiwic2VuZF9jb2RlX3RpbWUiOjE1ODE1ODM5MjF9','2020-02-27 08:52:03.747382'),('w9erc4gd6bfsho6fpe2vm9ka45eqpuas','ZjkxODdkYzg1YTU0MjI4YjcwMGFmZjY2OTU2ZWM1NDY3NTYzM2Q5ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZjkxMzAwYWY4NGZlZjNjOGE3YjQ2MTEzZjc0MmVhMDM0MTBmMDIwIn0=','2020-01-08 06:11:09.315890'),('yg3xvy4n48pt3wc3fqhc0atpq4y7qexy','NjVkMGRlMzlmNWE3MzNmNzlkNzk4ZGUwMWMxYTAzMzIwMjM0YThhYjp7ImZvcmdvdF9wYXNzd29yZF9jb2RlIjoickpNdzZJIiwic2VuZF9jb2RlX3RpbWUiOjE1ODE0MDI1MjksIl9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZDA4M2M5Mzk1NDQ3N2QxZmYxZmU0NWU1ZThhZDg2YWY4MmE3YzRjIn0=','2020-02-25 06:29:39.174829');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likecount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,1,1,7),(2,8,0,7),(3,7,0,7),(4,6,0,7),(5,5,0,7),(6,4,0,7),(7,3,0,7),(8,2,0,7),(9,1,0,11),(10,2,0,11),(11,11,0,7),(12,10,0,7),(13,9,0,7),(14,12,0,7),(15,13,0,7),(16,14,0,7),(17,4,0,11),(18,3,0,11),(19,15,0,7);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likerecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVVgsAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGKMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWJoXSmBlH2UKGhgaBRoN2g4aAeMBXRpdGxllIeUUpSGlH2UhpRoZmhuaGdoFGhoaG51YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMCExlc3NUaGFulJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMD3JlYWRfc3RhdGlzdGljc5RoPYwEZGF0ZZSHlFKUhpR9lIaUaGZohmhnaBVoaGiGaGmJdWKMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+QDBpSFlFKUjBRiaWxhdGVyYWxfdHJhbnNmb3Jtc5RdlGhpiXViaHuMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKGiAaIFoimiNQwQH5AIclIWUUpRokV2UaGmJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloaYl1YowLd2hlcmVfY2xhc3OUaHaMCGdyb3VwX2J5lGheaGqGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhshpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdog2g9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoaYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZQofZQoaCpLBGhsjBNweWNoYXJt6L+e5o6l5Lit5patlGiySxN1fZQoaCpLDmhsjBLmtYvor5Xop4bpopHkuIrkvKCUaLJLEXV9lChoKksPaGyMMOWcqOWQjOS4gOWPsOacjeWKoeWZqOmHjOWmguS9lei/kOihjOWkmuS4que9keermZRosksQdX2UKGgqSwxobIwS5re75Yqg5Yqg5a+G5pON5L2clGiySw11fZQoaCpLCmhsjBXmnI3liqHlmajmlbDmja7lr7zlh7qUaLJLDXV9lChoKksFaGyMFeabtOaWsOacjeWKoeWZqOS7o+eggZRosksMdX2UKGgqSwtobIwe6YWN572u5pyN5Yqh5Zmo55qE5puy5oqY5Y6G5Y+ylGiySwt1ZYwOX3N0aWNreV9maWx0ZXKUiYwKX2Zvcl93cml0ZZSJjBlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzlCmMDl9wcmVmZXRjaF9kb25llImMFl9rbm93bl9yZWxhdGVkX29iamVjdHOUfZSMD19pdGVyYWJsZV9jbGFzc5RoAIwOVmFsdWVzSXRlcmFibGWUk5SMB19maWVsZHOUaCpobIaUjA9fZGphbmdvX3ZlcnNpb26UjAMyLjCUdWIu','2020-03-06 05:11:22.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2019-12-25',1,1,7),(2,'2020-02-10',1,7,7),(3,'2020-02-10',1,5,7),(4,'2020-02-10',1,2,7),(5,'2020-02-10',1,4,7),(6,'2020-02-11',7,1,7),(7,'2020-02-11',5,8,7),(8,'2020-02-11',3,2,7),(9,'2020-02-11',2,4,7),(10,'2020-02-11',3,11,7),(11,'2020-02-11',2,10,7),(12,'2020-02-11',2,3,7),(13,'2020-02-11',2,9,7),(14,'2020-02-12',2,8,7),(15,'2020-02-12',3,11,7),(16,'2020-02-12',1,1,7),(17,'2020-02-13',1,11,7),(18,'2020-02-13',1,8,7),(19,'2020-02-13',2,1,7),(20,'2020-02-13',1,2,7),(21,'2020-02-13',3,12,7),(22,'2020-02-13',1,6,7),(24,'2020-02-13',6,14,7),(25,'2020-02-13',1,4,7),(26,'2020-02-14',4,11,7),(27,'2020-02-14',4,12,7),(28,'2020-02-14',2,6,7),(29,'2020-02-14',3,4,7),(30,'2020-02-14',2,1,7),(31,'2020-02-14',1,14,7),(32,'2020-02-14',1,2,7),(33,'2020-02-14',1,8,7),(34,'2020-02-15',5,12,7),(35,'2020-02-15',2,14,7),(36,'2020-02-15',2,11,7),(37,'2020-02-15',2,4,7),(38,'2020-02-15',2,6,7),(39,'2020-02-15',1,1,7),(40,'2020-02-15',2,2,7),(41,'2020-02-15',2,8,7),(42,'2020-02-15',1,10,7),(43,'2020-02-15',2,9,7),(44,'2020-02-15',3,7,7),(45,'2020-02-15',2,5,7),(46,'2020-02-15',1,3,7),(47,'2020-02-16',4,2,7),(48,'2020-02-16',4,12,7),(49,'2020-02-16',4,1,7),(50,'2020-02-16',4,10,7),(51,'2020-02-16',4,11,7),(52,'2020-02-16',3,14,7),(53,'2020-02-16',3,3,7),(54,'2020-02-16',3,4,7),(55,'2020-02-16',5,6,7),(56,'2020-02-16',3,7,7),(57,'2020-02-16',2,8,7),(58,'2020-02-16',2,5,7),(59,'2020-02-16',2,9,7),(60,'2020-02-17',2,10,7),(61,'2020-02-17',2,6,7),(62,'2020-02-17',1,5,7),(63,'2020-02-17',2,12,7),(64,'2020-02-17',1,4,7),(65,'2020-02-17',1,8,7),(66,'2020-02-17',1,7,7),(67,'2020-02-17',2,9,7),(68,'2020-02-17',1,1,7),(69,'2020-02-18',9,14,7),(70,'2020-02-18',2,9,7),(71,'2020-02-18',3,6,7),(72,'2020-02-18',4,5,7),(73,'2020-02-18',2,8,7),(74,'2020-02-18',3,1,7),(75,'2020-02-18',4,4,7),(76,'2020-02-18',4,12,7),(77,'2020-02-18',2,10,7),(78,'2020-02-18',3,11,7),(79,'2020-02-18',2,7,7),(80,'2020-02-18',3,2,7),(81,'2020-02-18',3,3,7),(82,'2020-02-19',2,8,7),(83,'2020-02-19',2,1,7),(84,'2020-02-19',2,11,7),(85,'2020-02-19',3,2,7),(86,'2020-02-19',1,7,7),(87,'2020-02-19',2,9,7),(88,'2020-02-19',1,10,7),(89,'2020-02-19',1,6,7),(90,'2020-02-19',1,3,7),(91,'2020-02-19',6,12,7),(92,'2020-02-19',1,4,7),(93,'2020-02-19',2,5,7),(94,'2020-02-19',6,14,7),(95,'2020-02-20',7,10,7),(96,'2020-02-20',6,11,7),(97,'2020-02-20',7,2,7),(98,'2020-02-20',6,4,7),(99,'2020-02-20',5,1,7),(100,'2020-02-20',4,6,7),(101,'2020-02-20',10,14,7),(102,'2020-02-20',8,12,7),(103,'2020-02-20',5,9,7),(104,'2020-02-20',5,8,7),(105,'2020-02-20',3,7,7),(106,'2020-02-20',3,5,7),(107,'2020-02-20',2,3,7),(108,'2020-02-21',4,14,7),(109,'2020-02-21',2,12,7),(110,'2020-02-21',4,7,7),(111,'2020-02-21',6,10,7),(112,'2020-02-21',2,9,7),(113,'2020-02-21',1,6,7),(114,'2020-02-21',1,5,7),(115,'2020-02-21',1,1,7),(116,'2020-02-21',1,4,7),(117,'2020-02-21',1,11,7),(118,'2020-02-21',1,2,7),(119,'2020-02-21',1,8,7),(120,'2020-02-21',1,3,7),(121,'2020-02-22',6,12,7),(122,'2020-02-22',1,10,7),(123,'2020-02-22',1,11,7),(124,'2020-02-22',5,14,7),(125,'2020-02-22',1,6,7),(126,'2020-02-22',1,7,7),(127,'2020-02-22',2,5,7),(128,'2020-02-22',1,2,7),(129,'2020-02-23',7,14,7),(130,'2020-02-23',3,11,7),(131,'2020-02-23',5,12,7),(132,'2020-02-23',4,15,7),(133,'2020-02-23',3,8,7),(134,'2020-02-23',2,3,7),(135,'2020-02-23',3,9,7),(136,'2020-02-23',2,10,7),(137,'2020-02-23',2,1,7),(138,'2020-02-23',2,4,7),(139,'2020-02-23',1,2,7),(140,'2020-02-23',2,5,7),(141,'2020-02-23',1,7,7),(142,'2020-02-23',1,6,7),(143,'2020-02-24',2,15,7),(144,'2020-02-24',2,6,7),(145,'2020-02-24',1,11,7),(146,'2020-02-24',2,5,7),(147,'2020-02-24',1,10,7),(148,'2020-02-24',1,12,7),(149,'2020-02-24',2,3,7),(150,'2020-02-24',1,8,7),(151,'2020-02-24',1,2,7),(152,'2020-02-24',1,9,7),(153,'2020-02-24',2,14,7),(154,'2020-02-25',1,1,7),(155,'2020-02-25',1,4,7),(156,'2020-02-25',1,5,7),(157,'2020-02-25',1,2,7),(158,'2020-02-25',2,8,7),(159,'2020-02-25',1,14,7),(160,'2020-02-25',1,7,7),(161,'2020-02-25',1,10,7),(162,'2020-02-26',2,3,7),(163,'2020-02-26',4,10,7),(164,'2020-02-26',6,5,7),(165,'2020-02-26',3,9,7),(166,'2020-02-26',2,11,7),(167,'2020-02-26',4,7,7),(168,'2020-02-26',3,14,7),(169,'2020-02-26',2,2,7),(170,'2020-02-26',3,12,7),(171,'2020-02-26',1,15,7),(172,'2020-02-26',2,6,7),(173,'2020-02-26',2,1,7),(174,'2020-02-26',3,4,7),(175,'2020-02-26',3,8,7),(176,'2020-02-27',4,9,7),(177,'2020-02-27',2,3,7),(178,'2020-02-27',5,5,7),(179,'2020-02-27',1,10,7),(180,'2020-02-27',1,7,7),(181,'2020-02-27',2,8,7),(182,'2020-02-27',3,4,7),(183,'2020-02-27',1,14,7),(184,'2020-02-27',5,12,7),(185,'2020-02-27',4,11,7),(186,'2020-02-28',3,14,7),(187,'2020-02-28',1,3,7),(188,'2020-02-28',2,12,7),(189,'2020-02-28',2,10,7),(190,'2020-02-28',1,9,7),(191,'2020-02-28',3,5,7),(192,'2020-02-28',1,8,7),(193,'2020-02-28',1,2,7),(194,'2020-02-28',1,15,7),(195,'2020-02-28',1,11,7),(196,'2020-02-29',3,12,7),(197,'2020-02-29',2,10,7),(198,'2020-02-29',3,8,7),(199,'2020-02-29',2,9,7),(200,'2020-02-29',2,14,7),(201,'2020-02-29',2,5,7),(202,'2020-02-29',1,3,7),(203,'2020-02-29',1,11,7),(204,'2020-02-29',3,15,7),(205,'2020-02-29',2,7,7),(206,'2020-02-29',1,6,7),(207,'2020-02-29',1,4,7),(208,'2020-02-29',1,2,7),(209,'2020-02-29',1,1,7),(210,'2020-03-01',3,15,7),(211,'2020-03-01',2,4,7),(212,'2020-03-01',1,1,7),(213,'2020-03-01',3,14,7),(214,'2020-03-01',2,10,7),(215,'2020-03-01',2,11,7),(216,'2020-03-01',2,12,7),(217,'2020-03-01',1,3,7),(218,'2020-03-02',7,4,7),(219,'2020-03-02',4,12,7),(220,'2020-03-02',4,11,7),(221,'2020-03-02',5,10,7),(222,'2020-03-02',6,15,7),(223,'2020-03-02',5,14,7),(224,'2020-03-02',3,9,7),(225,'2020-03-02',4,1,7),(226,'2020-03-02',2,5,7),(227,'2020-03-02',2,8,7),(228,'2020-03-02',3,2,7),(229,'2020-03-02',1,7,7),(230,'2020-03-02',1,6,7),(231,'2020-03-02',1,3,7),(232,'2020-03-03',2,4,7),(233,'2020-03-03',2,1,7),(234,'2020-03-03',1,11,7),(235,'2020-03-03',1,9,7),(236,'2020-03-04',1,12,7),(237,'2020-03-04',3,5,7),(238,'2020-03-04',1,1,7),(239,'2020-03-04',1,9,7),(240,'2020-03-04',4,4,7),(241,'2020-03-04',1,14,7),(242,'2020-03-05',3,4,7),(243,'2020-03-05',2,5,7),(244,'2020-03-05',1,12,7),(245,'2020-03-05',1,1,7),(246,'2020-03-05',2,9,7),(247,'2020-03-05',3,14,7),(248,'2020-03-05',2,10,7),(249,'2020-03-05',2,11,7),(250,'2020-03-05',3,15,7),(251,'2020-03-05',3,8,7),(252,'2020-03-05',2,3,7),(253,'2020-03-05',3,6,7),(254,'2020-03-05',5,2,7),(255,'2020-03-05',3,7,7),(256,'2020-03-06',2,14,7),(257,'2020-03-06',1,8,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,45,1,7),(2,32,7,7),(3,46,5,7),(4,42,2,7),(5,53,4,7),(6,45,8,7),(7,51,11,7),(8,48,10,7),(9,27,3,7),(10,40,9,7),(11,71,12,7),(12,32,6,7),(13,2,13,7),(14,79,14,7),(15,23,15,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'冷小微',3);
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

-- Dump completed on 2020-03-06 13:02:29
