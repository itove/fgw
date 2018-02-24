-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: fgw
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `property` varchar(50) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `investment` varchar(50) NOT NULL,
  `invest_plan` varchar(50) NOT NULL COMMENT 'this year',
  `start` varchar(50) NOT NULL,
  `finish` varchar(50) NOT NULL,
  `investby` varchar(50) NOT NULL,
  `o_incharge` varchar(50) NOT NULL COMMENT 'organization in charge. we actually use oid. keep it here just for xls import purpose',
  `o_serve` varchar(50) NOT NULL COMMENT 'organization that provides services. keep it here for xls import purpose',
  `p_incharge` varchar(50) NOT NULL COMMENT 'people in charge',
  `oid` int(11) DEFAULT NULL,
  `implementor` varchar(50) DEFAULT NULL,
  `alert` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'东风总装厂、车架厂搬迁及车轮定位检测阵地建设','新建','位于东风大道，东风公司将车架厂、总装厂老厂区零部件仓储阵地搬迁至西坪园区，在西坪联合工厂园区建设新的车架辊型线、车架涂装线、车架装配线、整车装配线、零部件存储及相关辅助设施，将联合工厂建设成为一个16万辆以上规模的包括车架、总装、零部件仓储在内的完整的生产单元，承担东风商用车重卡的全部生产业务。车轮定位检测阵地建设，增强总装厂车轮定位技术水平和能力，提升车辆驾驶的舒适性和安全性。','170000','80000','2018','2019','企业投资','               东城开发区  \n','                         区经信局\n','周庆荣             明怀宇',NULL,NULL,NULL,NULL),(2,'东风实业产业园','新建','位于胡家片区，以区政府“重资产”方式代建标准化厂房，支持东风实业公司对茅箭辖区所属东风康明斯、东森、东风非金属等企业进行规划整合，打造东风实业产业园。同时，东风实业公司与大洋电机公司合作开发生产新能源汽车电控系统和驱动电机，后期启动氢燃料电池和氢燃料发动机系统研发和生产。','110000','27000','2018','2020','企业投资','               东城开发区  \n','区经信局','张捍声\n明怀宇 ',NULL,NULL,NULL,NULL),(3,'驰田金钢10万辆专用车','新建','位于驼鞍沟片区，征地1000亩，十堰市驰田汽车有限公司投资建设年产6万辆“中国高轻自卸车生产基地”和年产4万辆挂车生产基地。新建20万平方米厂房（一期建设10万平方米），2万平方米高轻自卸研发中心、院士工作站、生活及办公用房，购置国内先进的大型数控冲压、辊压、剪、折设备及机器人焊接工作站，大力提升专用车生产工艺和技术水平。','200000','50000','2018','2020','企业投资','               东城开发区  \n','区经信局','吕自宏',NULL,NULL,NULL,NULL),(4,'中正新型轻卡','续建','位于普林工业园二期，湖北中正汽车有限公司投资改建厂房，安装轻卡整车自动装配线2条、样品车装配线1条、整车检测线1条，形成年产1万辆轻型载货汽车生产能力。','50000','30000','2017','2020','企业投资','               东城开发区  \n','                            区发改局\n','明怀宇 ',NULL,NULL,NULL,NULL),(5,'正奥PKC汽车线束生产线建设','新建','位于东风大道，湖北正奥汽车附件集团有限公司与芬兰PKC公司共同成立合资公司“湖北正奥比克希汽车电气系统有限公司”，整合正奥公司现有商用车线束业务，扩大线束等汽车零部件的设计、开发、制造与销售（包括出口）等业务。','40000','20000','2018','2019','企业投资','               东城开发区  \n','                                 区统计局\n','王书林',NULL,NULL,NULL,NULL),(6,'东风康明斯国六排放处理系统生产线','新建','位于东益大道1号，租赁5400平方米的厂房建设国六排放处理系统生产线、仓储物流基地、质量检测基地和各类辅房，一期项目建成后实现年产能9万套，二期实现年产能18万套。','30000','20000','2018','2020','企业投资','               东城开发区  \n','                          区商务局\n','黄朝军',NULL,NULL,NULL,NULL),(7,'沈阳机床i5智能智造生态谷','新建','位于胡家工业园，由茅箭区政府提供1.2万平方米的厂房、研发中心及办公场所，上海优尼斯工业设备销售有限公司（沈阳机床股份有限公司全资子公司）提供i5智能装备500台（套），十堰圣伟屹智能制造有限公司负责租赁和运营，三方联合打造i5智能智造生态谷项目。项目一期投入i5智能装备500台（套），打造高端智能制造示范应用基地。','40000','30000','2018','2019','企业投资','               东城开发区  \n','                             区科技局\n','明怀宇',NULL,NULL,NULL,NULL),(8,'科技创业园孵化器','新建','位于东风工业园，按照湖北省科技厅3A企业孵化器标准，以政府重资产方式代建厂房，打造茅箭区新兴产业孵化产业园，产业主要以智能制造、智能物联、节能环保产业为主。','30000','15000','2018','2019','区政府投资\n企业投资','                 东城开发区\n','区科技局','王雁波',NULL,NULL,NULL,NULL),(9,'骐嘉新能源汽车底盘','续建','位于和谐园区，由宁波梅山保税港区武当源投资有限公司、湖北骐嘉汽车科技有限公司共同投资建设，依托湖北骐嘉汽车科技有限公司独立自主开发的空气弹簧独立悬架技术及电机集中驱动技术，建设两条新能源纯电动汽车空气悬架底盘生产线，达到年产3万台纯电动车底盘制造能力。','30000','15000','2017','2019','企业投资','                 东城开发区\n','                          区安监局\n','明怀宇',NULL,NULL,NULL,NULL),(10,'天海石油汽车尾气处理液','续建','位于胡家工业园，占地100亩，天海石油新能源环保科技有限公司投资建设，项目分两期实施：一期生产汽车尾气处理液，二期新建厂房1万平方米。主要生产润滑油、玻璃水、防冻液、燃油宝、加油机、加气机、尿素加注机等相关产品。','20000','8000','2017','2019','企业投资','                 东城开发区\n','区人社局','张文法',NULL,NULL,NULL,NULL),(11,'湖北捷城装配式建筑工业化生产','新建','位于何家沟工业园，占地100亩，湖北捷城建筑科技有限公司投资建设，项目分两期实施，总建筑面积2.5万平方米。建设PC构件三跨钢结构车间、一条综合环形生产线、固定模具及异型构件生产车间、钢筋加工车间、混凝土搅拌站、科研办公楼及职工宿舍餐厅等。','20000','10000','2018','2019','企业投资','                 东城开发区\n','                          区食品药品监督局\n','金  菊',NULL,NULL,NULL,NULL),(12,'政府重资产厂房及配套设施建设','新建','在胡家工业园建设标准化厂房用于招商企业入驻，其中规划厂房12栋，总面积10.5万平方米，办公楼及商业楼9800平方米，食堂1500平方米，职工宿舍7000平方米。同时，对重庆路三环1万平方米老厂房进行租赁和改造，以重资产的方式引进项目入驻。','20000','12000','2018','2019 ','政府投资\n企业投资','                 东城开发区\n','区行政审批局','明怀宇\n许  波',NULL,NULL,NULL,NULL),(13,'坤钰汽车饰件高端制造及技术改造','新建','位于胡家工业园，占地60亩，十堰坤钰渝明汽车零部件有限公司投资建设，生产顶衬、门护板、全车地毯、隔音隔热垫、遮阳板等汽车饰件，建成后可形成年产100万辆全车内饰件生产能力。','12100','9000','2018','2019','企业投资','                 东城开发区\n','                            区经信局\n','董祥吉',NULL,NULL,NULL,NULL),(14,'雄振汽车零部件生产基地','新建','位于何家沟工业园，征地50亩，雄振汽车零部件有限公司投资建设，建设汽车机器人、冲焊自动化生产基地。','10000','6000','2018','2019','企业投资','                 东城开发区\n','                           区物价局\n','明怀宇',NULL,NULL,NULL,NULL),(15,'柳川智能混凝土搅拌站','续建','位于何家沟工业园，占地30亩，湖北柳川混凝土有限公司投资建设新型绿色环保智能化混凝土搅拌扩能项目，新建厂房、办公楼、智能控制生产设备，打造智能化控制的绿色环保花园式工厂。','10000','7000','2017','2018','企业投资','                 东城开发区\n','                          区住建局\n','张俊江',NULL,NULL,NULL,NULL),(16,'山鼎环境环保运营控制基地','新建','位于北京路，拟征地30亩，湖北山鼎环境科技股份有限公司投资，总建筑面积7000平方米，建设4000平方米的基于物联网技术的环保设施运营总部基地和3000平方米的环保装备制造车间以及附属设施。','10000','4000','2018','2020','企业投资','                二堰街办\n','区科技局','勾书平',NULL,NULL,NULL,NULL),(17,'中关村储能联盟储能一体化','新建','位于东城开发区，中关村储能联盟在普林工业园、万向通达工业园、十堰华西农产品交易中心和佰昌农产品交易中心利用厂房楼顶建设5兆瓦光伏储能发电站。','10000','5000','2018','2019','企业投资','                 东城开发区\n','区发改局','顾衍波张  强',NULL,NULL,NULL,NULL),(18,'众柴年产10万件汽车发动机部件','新建','位于普林三期，十堰众柴发动机部件制造有限公司投资建设，采用最新铸造工艺——消失模铸造，生产飞轮壳、油底壳、飞轮板，提升产品品质和产能。','8000','4000','2018','2019','企业投资','                 东城开发区\n','                            区经信局\n','朱圣明',NULL,NULL,NULL,NULL),(19,'高启旋装滤清器生产线','新建','位于许白路，由湖北高启工贸有限公司与玉柴公司下属企业广西华源过滤系统股份有限公司共同投资，建设旋装滤清器滤芯生产线及其它空气滤清器壳体生产线，并配套建设相应的滤清器零配件加工生产线，达到年产600万套旋装滤清器能力。','5000','2500','2018','2019','企业投资','                 东城开发区\n','                            区经信局\n','张文法',NULL,NULL,NULL,NULL),(20,'同创同步器总成技术改造','新建','位于东城开发区西坪村，十堰同创传动技术有限公司投资，引进德国同步器加工自动化设备10余台套，对现有生产线进行技术改造与升级，提升同步器产品生产能力与效率。','5000','5000','2018','2018','企业投资','                 东城开发区\n','                            区审计局\n','吕自宏',NULL,NULL,NULL,NULL),(21,'源久5万台（套）商用车车载冰箱','新建','位于普林工业园，湖北源久汽车零部件有限公司投资，租赁厂房8000平方米，独立自主研发、设计商用车车载冰箱，建设车载冰箱生产线，形成年产5万台（套）商用车车载多功能冰箱生产能力。','5000','5000','2018','2018','企业投资','                 东城开发区\n','                            区司法局\n','苏立梅',NULL,NULL,NULL,NULL),(22,'先驰新能源汽车车架装配生产线柔性化改造','新建','位于普林工业园一期，湖北先驰交通装备有限公司投资，新建车架总成生产线两条，焊接车架生产线一条，超强钢板开平生产线一条；新建数控剪切加工中心，新购大型平面数控冲压设备一台、12米折弯机一台、等离子切割设备二台、钻床十台等，对公司现有车架装配生产线进行改造，提升生产自动化水平。','5000','5000','2018','2018','企业投资','                 东城开发区\n','                                 区统计局\n','王书林',NULL,NULL,NULL,NULL),(23,'双兴履带式稻麦联合收割机脱粒总成产能扩建','新建','位于东风大道23号，十堰市双兴净化器有限公司投资建设，总建筑面积为1万平方米，建设三栋约3000平方米的冲压车间和焊接车间，并将厂区原有的生产车间改造成总装车间，辅助建设2000平方米的仓库及配电房，购置激光切割、数控车床、数控折弯机、卧式加工中心、机器人焊接设备、液压机、各类模具设备等生产设备及综合动力、消防辅助设备188套。建成后将形成年产3000台85马力履带式稻麦联合收割机脱粒总成的生产能力。','5000','5000','2018','2018','企业投资','                 东城开发区\n','                           区经信局\n','吕自宏',NULL,NULL,NULL,NULL),(24,'鄂西北医用气体储备中心','新建','位于何家沟工业园，十堰市汉坤气体有限公司投资建设，项目包含医用气体储备区、分装区以及办公楼和绿化区等配套基础设施。','5000','5000','2018','2018','企业投资','                 东城开发区\n','                            区安监局\n ','谢生海',NULL,NULL,NULL,NULL),(25,'名创产业科技园','新建','规划建设标准化厂房5万平方米，名创产业科技园主要以生产名创优品直营的手机为主，同时生产目前各名创优品专营店销售的小包、充电器、水杯、鼠标、手机壳、耳机、太阳眼镜、茶壶、香水等。','120000','20000','2018','2021 ','企业投资','区商务局','区行政审批局','张捍声                   明怀宇',NULL,NULL,NULL,NULL),(26,'锦恒安全气囊','新建','锦恒汽车安全系统有限公司拟与双鸥汽车饰件有限公司进行合作，进行安全座椅生产项目。','50000','15000','2018','2020 ','企业投资','东城开发区','区文体新广局','王  斌',NULL,NULL,NULL,NULL),(27,'高端精密铸造产业园','新建','规划建设产品以汽车铸件为主，通用机械铸件为辅，逐步向汽车、工程机械、家电等众多领域发展。产业链条以铸造为龙头，逐步形成铸件、精加工、铸件装配、工装模具、研发检测、信息平台为一体、功能齐全的铸造行业全产业链，最终建成年产10万吨绿色高端精密铸造基地。','40000','15000','2018','2021 ','企业投资','区商务局','                       区商务局\n','明怀宇',NULL,NULL,NULL,NULL),(28,'精密新能源汽车动力总成','新建','位于胡家工业园，征地60亩，由湖北绿驰精密电驱动系统有限公司投资建设，以政府重资产方式代建厂房，建设新能源汽车动力总成项目，一期设计产能8万台动力总成系统，年产值15亿元。二期项目新增12万台产能，年产值25亿元。项目建成达产后，将形成40亿元年产值的产能。','50000','15000','2018','2020','企业投资','               东城开发区 \n','                          区物价局\n','明怀宇',NULL,NULL,NULL,NULL),(29,'KAMA云智能制造中心','新建','位于驼鞍沟片区，征地60亩，由北京洪树冶金机械建设KAMA云智能制造中心项目，主要引进德国进口七轴三维坐标、软件程序及高分子精加工智能等设备，建设智能制造中心，项目投产后，3年内实现销售收入6.5亿元。','32000','15000','2018','2020','企业投资','               东城开发区 \n','                           区食品药品监督局\n','王雁波',NULL,NULL,NULL,NULL),(30,'震科军用轮胎中央充放气','新建','位于胡家工业园，征地30亩，由十堰震科工业科技有限公司以政府重资产方式代建厂房，建设年产1万套充放气产品，2万套油水分离器、干燥器，3千台维修设备、1千台装甲车改装驾驶室的生产规模。产品覆盖军用轻、中、重型高机动战术车辆及装甲车辆。项目建成后实现销售收入1.5亿元。','20000','10000','2018','2019','区政府投资\n企业投资','               东城开发区 \n','区司法局','明怀宇',NULL,NULL,NULL,NULL),(31,'安通机动车检测中心','新建','十堰交投安通机动车检车有限公司拟征地50亩，建设机动车检测中心和维修中心。','10000','8000','2018','2019','企业投资','               东城开发区 \n','                          区司法局\n','顾衍波',NULL,NULL,NULL,NULL),(32,'汉宫矿渣微粉深加工','新建','十堰市汉宫建材科技有限公司拟在何家沟工业园征地15亩，建设年产矿粉40万吨的矿渣微粉制造厂项目。项目建成后，第一年可生产32万吨矿粉，第二年可生产40万吨矿粉。矿渣微粉是高炉矿渣经烘干、粉磨至适当细度的粉体，是优质的混凝土掺合料和水泥混合材。','6000','4000','2018','2019','企业投资','               东城开发区 \n','                             区民政局\n','谢生海',NULL,NULL,NULL,NULL),(33,'多弗国际产业发展项目','新建','多弗控股集团拟在我区投资建设新能源汽车、生态旅游开发以及商业综合体等产业发展项目。多弗控股集团是一家以国内外贸易、融资租赁、商业保理、资产管理、拍卖行和房地产投资等多元化业务为一体的大型集团化企业。','500000','50000','2018','2020 ','企业投资','区商务局','区行政审批局','明怀宇',NULL,NULL,NULL,NULL),(34,'深圳贝特瑞磷酸铁锂正极材料','新建','深圳贝特瑞新能源材料股份有限公司拟在驼鞍沟片区投资建设磷酸铁锂正极材料项目，项目一期为产量3万吨、产值约30亿元，一期投产后逐步扩能至产量6万吨、产值约60亿元。','100000','20000','2018','2020','企业投资','               东城开发区 \n','                             区发改局\n','张捍声\n明怀宇',NULL,NULL,NULL,NULL),(35,'丰田合成车用密封件','新建','正奥集团全资子公司诺克橡塑密封科技有限公司与日本丰田合成公司合作拟征地75亩，进行产品升级改造。','50000','10000','2018','2020 ','企业投资','区商务局','区审计局','明怀宇',NULL,NULL,NULL,NULL),(36,'高领新能源科技轻量化压缩机','新建','浙江高领新能源科技有限公司拟在我区投资建设轻量化压缩机项目。该公司是一家专注于涡旋流体机械研发、制造、销售和服务为一体的企业，公司位于浙江德清科技科创园内。现有产品已用于电动车组，内燃动车组，地铁和轻型轨道车辆。已形成无油涡旋空气压缩机、无油无水涡旋空气压缩机、无油涡旋低压制氮制氧机、高空机载制氧机、一体式无油涡旋车用气泵五大系列产品。','20000','5000','2018','2019 ','企业投资','区商务局','区科技局','苏立梅',NULL,NULL,NULL,NULL),(37,'上海贽匠智能化机器人','新建','上海贽匠智能科技有限公司拟在我区投资建设智能化机器人教育培训项目。该公司专业从事以工业移载机器人、工业4.0、工业码垛机器人、工业机械臂、agv、自动化专用设备、电控网络系统、mes生产管理系统为核心产品的系统解决方案。','10000','2000','2018','2019 ','企业投资','区商务局','区财政局','明怀宇',NULL,NULL,NULL,NULL),(38,'正和高端车身项目','新建','正和车身公司拟争地建设高端车身厂项目。根据开发规划,将在现有产品的基础上,加大技术研发,填补现有产品的空白。','30000','2000','2018','2019 ','企业投资','区商务局','区人社局','明怀宇',NULL,NULL,NULL,NULL),(39,'万向汽车零部件产业园','新建','万向钱潮股份有限公司拟在我区投资建设汽车零部件产业园。该公司立足于汽车零部件制造业专业生产汽车底盘及悬架系统、汽车制动系统、汽车传动系统、轮毂单元、轴承、精密件、工程机械零部件等汽车系统零部件及总成，是目前国内最大的独立汽车系统零部件专业生产基地之一。','30000','10000','2018','2020 ','企业投资','区商务局','区财政局','明怀宇',NULL,NULL,NULL,NULL),(40,'台州顺意汽车零部件生产','新建','台州顺意汽车零部件有限公司拟在我区建设汽车零部件生产项目。','20000','5000','2018','2020 ','企业投资','区商务局','区民政局','明怀宇',NULL,NULL,NULL,NULL),(41,'武汉健民中药饮片','新建','武汉健民药业集团股份有限公司拟入股清大中药饮片公司，进行中药饮片开发和建设清大中医院。武汉健民药业集团股份有限公司是国家重点高新技术企业店之一的叶开泰药店，现拥有十余个子公司，集生产、科研、经贸于一体，年生产能力近十亿元。','10000','4000','2018','2019 ','企业投资','区商务局','区卫计局','顾衍波',NULL,NULL,NULL,NULL),(42,'天津铁鹰特种车','新建','铁鹰特种车（天津）有限公司拟在我区投资建设军车武器改装生产基地，以东风猛士为基础，独立设计、制造采购，对东风猛士进行改装、加装武器模块。','10000','4000','2018','2019 ','企业投资','区商务局','区卫计局','明怀宇',NULL,NULL,NULL,NULL),(43,'世纪百强城市综合体','新建','位于北京路立交桥东北片区，占地约300亩，湖北世纪百强置业投资公司投资建设，项目包含三栋5A级写字楼及公寓，建设集商业、办公、住宅、餐饮、娱乐、旅游特产等“吃、住、行、游、购、娱”六大功能于一体的城市综合体。','100000','30000','2018','2020','企业投资','            \n百强世纪城项目协调服务指挥部','百强世纪城项目协调服务指挥部','周庆荣             张俊江',NULL,NULL,NULL,NULL),(44,'十堰恒大城\n二期','新建','位于上海路北侧，由恒大地产集团武汉有限公司进行投资建设，占地733.4亩，规划总建筑面积约162万方，总投资110亿元。项目建成后，将成为一个商业面积30余万方，包含五星级酒店、购物中心、影城、运动中心等配套设施的商住大型综合体，项目建成可新增就业岗位一千余个，累计上缴税收可达16亿元。该项目拟分为七期开发建设，一期总建筑面积14万平方米，二期总建筑面积18万平方米。','300000','200000','2018','2019','企业投资','                  二堰街办           \n','区住建局','马继光',NULL,NULL,NULL,NULL),(45,'名创吾悦广场及商业综合体','新建','①名创吾悦广场拟在火车站北广场征地500亩，总建面积约100万平方米，建设一站式大型体验式购物中心。项目建成运营后可直接产生年税收1.5元亿元,创造5000-8000人就业岗位。②199跨境电商项目拟在五堰人民路与东山路交汇处征地24.53亩,引进以名创优品集团为核心的199跨境电商全球集散中心、名创优品华中区数据结算中心，打造集电商、金融、文化创意、互联网+、融创平台、创业孵化器于一体的十堰总部经济示范区，项目建成后，直接带动外贸出口净增10亿元,华中区数据结算交易20亿元，创造就业岗位近万个,创造税收近亿元；名创PDS时尚百货位于人民路与东山路交汇处（现王子鞋城），拟对该项目升级改造，打造十堰首个引领时尚潮流主题百货；四星级酒店位于五堰香港街8号（原疾控中心），总建筑面积7400平方米，拟引进国际酒店品牌纽宾凯酒店集团打造五堰香港街首个四星级国际酒店。','420000','80000','2018','2023 ','企业投资','赛曼控股集团（茅箭）投资项目协调服务指挥部','赛曼控股集团（茅箭）投资项目协调服务指挥部','王  斌\n明怀宇',NULL,NULL,NULL,NULL),(46,'佰昌仓储物流产业园','新建','位于东城开发区驼鞍沟片区，湖北佰昌农业发展有限公司投资，为首期佰昌鄂西北优质农产品交易中心配套建设，建设农产品初加工车间、仓储库房、物流设施以及相关配服务设施，包含农产品初加工区、仓储物流区、办公生活区、配套服务区。','100000','28000','2018','2019','企业投资','                  东城开发区\n                    ','区发改局','顾衍波',NULL,NULL,NULL,NULL),(47,'汇霖·K-MALL时尚广场','新建','位于火车站北广场，由湖北汇霖置业有限公司与上海颐贸投资有限公司共同投资建设。规划用地面积2.59万平方米，总建筑面积13万平方米。其中，商业街建筑总面积3万平方米，4栋住宅楼建筑总面积4.2万平方米，1栋高级公寓楼建筑总面积2.2万平方米。','80000','25000','2018','2022','企业投资','                  二堰街办    \n','区财政局','黄朝军',NULL,NULL,NULL,NULL),(48,'新合作总部及物流基地','新建','十堰市新合作超市有限公司投资建设，总占地260亩，在驼鞍沟片区征地200亩，建设新合作仓储物流交易中心项目；另征地60亩，建设新合作总部大楼和行政中心。','50000','20000','2018','2020','企业投资','                        东城开发区\n','区商务局','王雁波',NULL,NULL,NULL,NULL),(49,'大洋摩登购物中心','续建','位于朝阳路与公园路交汇处，城市第一高楼IFC国际金融中心裙楼，地下三层为停车场，1至7层为购物中心，8至9层为娱乐休闲区，总营业面积约5万多平方方米。十堰大洋摩登购物中心市场定位是引领时尚消费新潮流，打造集购物、休闲、美食、娱乐为一体的情景化购物中心。','50000','5000','2016','2018','企业投资','               五堰街办     \n','区商务局','张俊江',NULL,NULL,NULL,NULL),(50,'十堰群利物流园','新建','位于东环路东风商用车有限公司交付中心对面，十堰群利物流工业园有限公司投资，占地110亩，建设以办公、商业、车间、仓储为一体的综合性全方位立体式的现代工业园。主要围绕东风商用车有限公司提供相关的配套服务，项目涵盖东风商用车物流管理基地、东风商用车4S旗舰店、东风商用车差异化物流管理基地、东风配件物流仓储配送中心、东风汽车公司（十堰）生产物流基地等五大板块。项目建成后，预计可实现年产值5亿元，创利税2100万元。','20000','20000','2018','2018','企业投资','东城开发区  ','区人社局','李金功',NULL,NULL,NULL,NULL),(51,'新媒体文化创意产业园','新建','位于人民中路，对十堰日报社现有办公场所进行改造，打造新媒体文化产业基地。','5000','5000','2018','2018','企业投资','                     二堰街办\n','区文体新广局','童  华',NULL,NULL,NULL,NULL),(52,'创家孵化产业园','新建','位于天津路，项目占地2000平方米，建设30个独立办公室，容纳30家科技型企业，吸纳50名留学生，带动就业200人。','3000','3000','2018','2018','企业投资','              五堰街办     \n','区物价局','王雁波',NULL,NULL,NULL,NULL),(53,'汽车特色小镇','新建','拟选址胡家村，建设智能制造产业园、新能源电动汽车产业园、汽车主题公园、汽车展会中心、节能环保产业园、国家级康养示范基地等。','50000','15000','2018','2020 ','企业投资','东城开发区','区发改局','明怀宇',NULL,NULL,NULL,NULL),(54,'猪八戒互联网示范','新建','重庆花果山企业管理有限公司拟于茅箭区政府合作在NOVO创业孵化基地打造总体量3万平方米综合示范区，为茅箭区中小企业提供全生命周期服务。重点建设十堰文化产业开发开放试验区、省级科技服务平台、省级国家级创业创新基地、省级工业设计中心、省级国家级广告园、省级国家级青年创业示范园、中小微企业创业投资基金等。','30000','15000','2018','2020 ','企业投资','区商务局','区卫计局','王雁波',NULL,NULL,NULL,NULL),(55,'京东物流','新建','北京京东世纪贸易有限公司拟投资建设京东物流项目。北京京东世纪贸易有限公司是中国最大的自营式电商企业，京东集团旗下设有京东商城、京东金融、拍拍网、京东智能、O2O及海外事业部。','20000','10000','2018','2020 ','企业投资','区商务局','区行政审批局','明怀宇',NULL,NULL,NULL,NULL),(56,'百二河河道及沿岸\n景观改造工程','新建','起点百二河水库，终点文化宫旁六堰桥，总面积300公顷（4500亩），其中包括旧城改造、河道景观改造、建设十桥十园，打造十堰城市主轴线。','500000','10000','2018','2022','市级PPP项目','区住建局','区住建局','周庆荣\n张俊江',NULL,NULL,NULL,NULL),(57,'火车站商圈\n（南广场商圈）','续建','总面积8000亩，其中包括旧城改造、水土修复、矿山修复、森林公园等内容，打造首个生态国土示范区。','560000','10000','2017','2026','区级PPP项目','朝北沟生态国土综合治理示范项目指挥部','朝北沟生态国土综合治理示范项目指挥部','张捍声\n顾衍波\n李  斌\n朱圣明',NULL,NULL,NULL,NULL),(58,'林荫大道二号线\n安置区一期、二期','续建','位于林荫大道和凤凰路交汇处，总规划用地面积31.75万平方米，总建筑面积139.34万平方米，项目涵盖住宅、商业、教育配套等。','700000','150000','2017','2023','企业投资','林荫大道二号线建设工程指挥部','林荫大道二号线建设工程指挥部','赵洪福\n刘明华',NULL,NULL,NULL,NULL),(59,'快速通道（茅箭段）','新建','汉十高铁十堰站至武当山玄岳门快速一级公路项目，起于汉十高铁十堰站，经武当山机场、高铁武当山站，止于武当山玄岳门，连接316国道，全长47.5公里，设计速度80公里每小时，路基宽52米，双向六车道。快速通道茅箭段全部集中在东城开发区范围内，东城段全长13.06公里，其中快速通道长10.9公里，机场连接线长2.16公里。','169000','67600','2018','2019','市级PPP项目','滨江新区至武当山玄岳门一级公路建设茅箭段协调指挥部','滨江新区至武当山玄岳门一级公路建设茅箭段协调指挥部','顾衍波\n朱圣明',NULL,NULL,NULL,NULL),(60,'武当路复线工程','新建','起点接三峡路与车城南路交叉口，终点接吉林路，按照城市主干道标准建设，全长9.57公里，双向六车道。','129200','50000','2018','2019','市级PPP项目','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','张捍声\n李  斌\n张俊江\n朱圣明',NULL,NULL,NULL,NULL),(61,'火车站北广场','续建','位于十堰火车站北侧，东至凤凰路，西邻城邦地产，南接火车站南广场，北至林荫大道，总面积约18公顷，建设用地面积约13.87公顷，总建筑面积约15.75万平方米，其中地上总建筑面积3.41万平方米，地下总建筑面积12.34万平方米。','120000','30000','2015','2018','市级投资','火车站北广场项目协调服务指挥部','火车站北广场项目协调服务指挥部','吕自宏',NULL,NULL,NULL,NULL),(62,'许白路沿线环境整治','续建','位于许白路，美化亮化绿化许白路沿线，整理土地2000亩。','100000','20000','2016','2019','市级投资','许白路沿线环境整治指挥部','许白路沿线环境整治指挥部','王  斌\n张文法',NULL,NULL,NULL,NULL),(63,'航空路','新建','起点接林荫大道与机场路立交桥，终点接机场路东路。全长6.7公里。按照城市规划主干道标准建设，道路红线宽50米，双向六车道。主要构筑物有跨东风大道及马家河高架桥、龙门沟隧道、和谐路跨线桥、许白路跨线桥等。','93800','50000','2018','2019','市级PPP项目','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','李金功',NULL,NULL,NULL,NULL),(64,'林荫大道二号线','续建','道路为天津路至东环路段以及凤凰路交口至北京南路段，延长线至驼鞍沟园区段，全长5千米，道路宽26-45米。','90000','2500','2014','2018','市级投资','林荫大道二号线建设工程指挥部','林荫大道二号线建设工程指挥部','赵洪福\n刘明华',NULL,NULL,NULL,NULL),(65,'林荫大道一号线','新建','起点为武汉路，终点接天津路，全长3.98公里。按照城市规划次干道标准建设，重庆路至天津路段红线宽度为40米，武汉路至重庆路路段红线宽度为30米，双向四车道。','51400','25000','2018','2019','市级PPP项目','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','张俊江',NULL,NULL,NULL,NULL),(66,'林荫大道三号线','新建','起点接武当路、终点接机场大道，途经张家沟，上跨重庆路、翻山至大洋五洲三期，上跨天津路，翻山至武家沟、七里沟，接机场大道，为东西走向，全长4.41公里。按照城市规划次干道标准建设，道路红线宽35米，双向四车道。','50300','25000','2018','2019','市级PPP项目','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','武当路复线等市政道路PPP项目建设拆迁协调服务领导小组','马继光\n谢生海',NULL,NULL,NULL,NULL),(67,'G209十堰城区垭子至大川段改扩建工程','新建','十堰垭子至大川段，路线全长11.755公里，新建隧道1座长77米，新建桥梁18座2093.09米，道路为一级公路，设计时速60公里/小时。','45500','14900','2018','2020','市级投资','区交通局','区交通局','顾衍波\n朱圣明',NULL,NULL,NULL,NULL),(68,'南部山区道路升级改造','新建','涉及五条道路。大黄路道路起点大川镇出口，止于黄家村，全长23公里，按照二级公路标准建设。茅官路道路起于茅塔乡，止于官山镇分道观，道路全长5.5公里，按照二级公路标准建设，其中长隧道一条1000米。岩坪路道路起于茅塔乡坪子村止于岩屋村大分水岭五棵树，道路全长7.85公里，按照二级公路标准建设。锅场路道路全长6公里，按照山区三级公路标准建设。五卡路五条岭至卡子村道路改扩建工程，全长14公里，按照二级公路标准建设。','42300','16500','2018','2020','区级投资','区交通局','区交通局','顾衍波\n朱圣明',NULL,NULL,NULL,NULL),(69,'许白路安置区建设','新建','位于许白路，规划占地80余亩，建筑面积15万平方米，建设安置房1500余套。','40000','20000','2018','2019','区级投资','                       东城开发区\n','区城投公司','王  斌',NULL,NULL,NULL,NULL),(70,'十堰市康德养老中心','新建','位于二堰街办杨家沟，规划用地面积4.47万平方米，建设规模11.9万平方米，建设养老床位2000张。','36000','15000','2018','2019','企业投资','                     二堰街办       \n','区民政局','张俊江',NULL,NULL,NULL,NULL),(71,'和谐安置区二期','新建','位于和谐大道，总建筑面积15万平方米。配套建设小区内基础设施。','35000','10000','2018','2019','企业投资','东城开发区','区城投公司','顾衍波',NULL,NULL,NULL,NULL),(72,'汉十高铁（茅箭段）','续建','起于武汉枢纽汉阳站，西北止于十堰北站，全长370.25公里。铁路等级为客运专线，速度目标值为350公里/小时，其中茅箭段3.2公里。','32000','12000','2015','2018','市级投资','武汉至十堰城际铁路茅箭段项目建设协调服务指挥部','武汉至十堰城际铁路茅箭段项目建设协调服务指挥部','龚  林',NULL,NULL,NULL,NULL),(73,'立体过街工程','续建','修建上海路北京路车行立交桥1座，郧阳医学院、邮电街口、八一巷、文化广场等4座人行天桥，湖北工业职业技术学院地下通道。','27900','17000','2017','2019','市级PPP项目','区住建局','区住建局','张俊江',NULL,NULL,NULL,NULL),(74,'城区地下综合管廊','续建','涉及辖区3条综合管廊建设，总长度15.1公里，其中林荫大道一号线设置单舱管廊长度4公里，林荫大道三号线设置单舱管廊4.4公里，航空路设置双舱管廊6.7公里。','25230','12000','2017','2020','市级投资','区住建局','区住建局','张俊江',NULL,NULL,NULL,NULL),(75,'泗河污水处理厂扩能\n改造工程','续建','位于许白路，设计扩建规模5万m³/d，采用“预处理+二级生物处理+深度处理工艺+污泥处理”作为主体处理工艺，项目出水水质一级A标准，部分主要指标达到地表水Ⅳ类水质标准。','19514','14514','2017','2018','东城开发区','                       东城开发区     \n','区住建局','张俊江',NULL,NULL,NULL,NULL),(76,'北京路、重庆路、浙江路综合改造及天津路\n大修','续建','北京路路面改造起点十堰市体育中心，终点接北京路立交桥。全长1.86公里，红线宽38米，双向6车道。改造公交港湾7个，在道路两侧增设绿化带。重庆路改造起点为重庆路与北京路交叉口，终点为重庆路与武当路交叉口，长3.2公里,车行道宽25米,人行道宽10米，拟对道路进行彻底改造，整体沥青罩面，对人行道进行维护，改造港湾公交站16处。浙江路综合改造，起点为浙江路转盘，终点为火箭路交叉口，长2.5公里，车行道宽20米，人行道宽10米。天津路大修起点京东路，终点东风大道51厂路口，长4公里，车行道宽20米，人行道宽10 米，部分道路路基路面破损严重，拟进行大修,对 2.5 万平方米破损路面维修和沥青罩面，改造港湾公交站。','18200','12000','2017','2018','市级投资','区住建局','区住建局','张俊江',NULL,NULL,NULL,NULL),(77,'城区内循环道路建设','新建','在城区建设四条内循环道路。柳中路起点上海路美盛城售楼部，终点至柳林路（十堰市旅游局办公楼），全长1960米，规划道路红线宽20米。北京路至上海路连接线起点九龙太阳城小区，终点至恒大售楼部，道路长度926米，宽度20米。大沟路（一期）道路起于中岳路，终点为大沟巷，道路全长280米，红线宽12米，双向两车道。标志路起点接武当路与吉林路上跨桥，终点接龙门大道，道路长1100米，双向6车道。','15000','10000','2018','2019','市级PPP项目','区住建局','区住建局','张俊江',NULL,NULL,NULL,NULL),(78,'三供一业综合改造','新建','对辖区12个中央省属企业，住宅小区物业进行移交，对供水、供电、供暖进行综合改造。','15000','8000','2018','2019','市级投资','区住建局','区财政局','张俊江',NULL,NULL,NULL,NULL),(79,'东方伊顿（十堰）学校','新建','位于天津路市委党校对面，江苏阳光教育集团投资建设，规划占地面积5万平方米，校舍4万平方米，设置小学、初中和国际部，设计办学72个班，可容纳学生2880人。','13000','8000','2018','2019','企业投资','\n东城开发区     \n','区教育局','顾衍波',NULL,NULL,NULL,NULL),(80,'东城开发区保障性安居工程配套基础设施建设','新建','涉及三个片区。天津路片区位于天津路徐家沟村、西坪村片区位于东城开发区银杏小区、鸳鸯村片区位于东城开发区梅子小区，修建利民便民休闲场所、医疗卫生服务中心、物业用房等，铺设道路，修建地下管网，增加小区绿化面积等。徐家沟综合便民服务中心位于徐家沟村民安小区，项目总占地面积1200平方米，建筑面积4600平方米，主要建设内容包括农贸市场、党员群众活动中心、医疗服务中心等。','12600','12600','2018','2018','区级投资','东城开发区','区住建局','张俊江',NULL,NULL,NULL,NULL),(81,'老旧小区综合改造','新建','对五堰街办山西路七号片区、武当路街办缸套厂小区、招贤巷片区进行完善配套设施、提升景观环境、整新建筑楼体、消除安全隐患、建立长效管理等方面的综合整治，共计涉及改造户数1700户。对辖区内七层以上的老旧小区楼房安装电梯200部。','10550','10550','2018','2018','市级投资','                区住建局 \n','                区住建局 \n','张俊江',NULL,NULL,NULL,NULL),(82,'东部新区综合污水处理厂及管网建设工程\n（A区）','新建','位于东城开发区，污水处理厂设计规模为3000吨/日，铺设管网20公里，排放标准地表Ⅳ类水质，主要处理东部工业园区工业废水和部分生活污水。','4000','2400','2018','2019','区级投资','                      东城开发区\n','区南调办','顾衍波',NULL,NULL,NULL,NULL),(83,'茅箭区义务教育学校\n标准化建设','新建','鸳鸯学校位于东城开发区胡家村二组，学校占地面积9665平方米，新建教学楼4400平方米，设计办学规模12个教学班600人、3个幼儿班100人。天津路第二小学位于天津路民安小区，规划占地面积41.4亩，拟建校舍1.6万平方米，可容纳1000名学生，20个教学班。','10000','10000','2018','2018','区级投资','东城开发区     ','区教育局','童  华',NULL,NULL,NULL,NULL),(84,'漫谷公社','新建','位于茅塔乡岩屋村、坪子村、廖家村河谷地带，以精致慢生活场景体验为主题，打造集科普教育、户外运动、田园休闲、亲子体验、养生度假于一体的文旅康养休闲产业聚集地。','100000','20000','2018','2023','企业投资','                   茅塔乡   \n','                       区旅游局\n','金  菊',NULL,NULL,NULL,NULL),(85,'云龙谷国际旅游度假区','新建','天津开发区梅林浩工贸有限公司以赛武当生态涵养区为核心，将产业功能与生态资源相结合，打造集生态保护、森林观光、健康医疗、中草药种植、养生度假为一体的健康生态养生产业带。','100000','15000','2018','2025','企业投资','                  赛管局   \n','                        区旅游局\n','童  华\n杨亚军',NULL,NULL,NULL,NULL),(86,'秦巴生态植物园','续建','位于武当路街办马家河村，建设以秦巴特色生态植物为主题，集观赏、苗木培植、科普教育、珍稀植物保护于一体的生态植物园。','56000','10000','2016','2020','企业投资','                    武当路街办\n','                        区农业局\n','周庆荣\n王  雯',NULL,NULL,NULL,NULL),(87,'茅箭三益田园综合体','新建','位于茅塔乡，北京三益集团通过克隆技术，培植兰花、铁皮石斛等，通过生物酶技术养殖南北对虾，开展兰花展、农业嘉年华等农旅产业。','35000','12000','2018','2019 ','企业投资','茅塔乡','区林业局','曾  强\n张  强',NULL,NULL,NULL,NULL),(88,'泗河系统治理工程','新建','茅塔河、马家河治理河道长度17公里，主要包括河道清淤疏浚、新建生态护岸挡墙、生态护坡、新建三维土工植被网、新建拦河堰等。','7000','3000','2018','2019','区级投资','区水利局','区水利局','童  华\n张  强',NULL,NULL,NULL,NULL),(89,'南部山区公路旅游景观建设','续建','对马赛路、五茅路、茅大路沿线进行绿化美化，建设节点景观和旅游基础设施。','4000','3500','2017','2018','区级投资','区旅游局','区旅游局','童  华',NULL,NULL,NULL,NULL),(90,'2018年农村饮水安全巩固提升工程','新建','通过管网延伸、新建小型集中供水工程、配套净化过滤及消毒等设施解决全区5500人的饮水安全（含2018年易地扶贫安置小区）。启动实施浪溪综合供水工程。','4000','2160','2018','2019','区级投资','区水利局','区水利局','曾  强',NULL,NULL,NULL,NULL),(91,'马家河武当路街办段河道综合治理工程','续建','河道疏浚、新建挡墙及生态护坡；河道沿线绿化、自行车道、景观基础设施及配套服务建设，四个重要节点施工。','3500','2400','2017','2018','区级投资','                  武当路街办\n','区水利局','童  华',NULL,NULL,NULL,NULL),(92,'食用菌产业园','新建','位于茅塔乡大坪村，武当山珍公司投资建设食用菌产业园，包含食用菌生产车间、加工车间、包装车间。','3000','1500','2018','2019','企业投资','茅塔乡   ','区农业局','曾  强',NULL,NULL,NULL,NULL),(93,'2018年茅箭区“厕所革命”工程建设','新建','\n对全区农户厕所、农村改厕、城镇厕所、交通厕所、旅游厕所以及对公众开放的内部厕所等6大类厕所，达到无害化厕所标准。\n','3000','3000','2018','2020','区级投资','区发改局','区发改局','顾衍波',NULL,NULL,NULL,NULL),(94,'2018年茅箭区精准灭荒工程建设项目','新建','对茅箭区辖区荒地进行修整，绿化面积32万平方米，主要对马赛路、五茅路等沿线进行裸露山体治理。','3000','3000','2018','2018','区级投资','区林业局','区林业局','               童  华\n ',NULL,NULL,NULL,NULL),(95,'茅箭区光伏电站建设','新建','在茅塔乡东沟村、廖家村、坪子村等15个贫困村建设光伏发电站，每个村为200千瓦，总共建设规模为3兆瓦，解决957户3556人的产业扶贫问题。','3000','3000','2018','2018','区级投资','                茅塔乡\n','区扶贫办','金  菊',NULL,NULL,NULL,NULL),(96,'茅塔河、马家河、大川生态清洁型小流域','新建','茅塔河小流域综合治理水土流失面积11.49平方公里，马家河小流域治理水土流失面积11.05平方公里，大川项目区小流域治理水土流失面积3.65平方公里，对小流域生态进行自然修复、综合治理及河（沟）道周边整治，达到减少水土流失、减轻面源污染、河道村庄美化亮化。','3000','1500','2018','2019','区级投资','区水利局','区水利局','曾  强',NULL,NULL,NULL,NULL),(97,'泗河流域不达标支沟水质改善及水体生态治理工程','新建','主要针对韩家沟、脂肪沟、战马沟、徐家沟、黄蜡沟、七里沟和胡家沟等7条水质长期超标的支沟进行治理，建设生态透水坝，安装好氧生物反应箱、生物膜箱、生物膜带、生物岛系统、鼓风曝气。','3000','3000','2018','2018','区级投资','环保\n茅箭分局','环保\n茅箭分局','顾衍波',NULL,NULL,NULL,NULL),(98,'廿四·节气村','新建','位于大川镇浪溪村、卡子村、段家村及五条岭S235旧省道所辖范围，建设以24节气为主题的村落，配置基础设施、景观、森林公园、主题民宿、景区升级等。','100000','15000','2018','2027','企业投资','大川镇','区旅游局','勾书平',NULL,NULL,NULL,NULL),(99,'紫薇岛整体开发','新建','依托紫薇岛区位优势和资源优势，整体开发打造高端度假区。','50000','20000','2018','2023 ','企业投资','武当路街办','区旅游局','王  雯',NULL,NULL,NULL,NULL),(100,'大川特色小镇','新建','依托大川镇现有资源进行集镇开发，结合棚户区改造，对集镇中心区、村委会、拓展学校等进行绿化、建筑改造、沿线景观改造，整体对外招商。','30000','10000','2018','2022 ','企业投资','大川镇','区发改局','童  华',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-24 11:33:37
