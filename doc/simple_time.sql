/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.5.49 : Database - simple_time
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`simple_time` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `simple_time`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `loginName` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `joinTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`loginName`,`password`,`joinTime`) values ('40289f23542e193801542e19b28c0000','万恶的资本家','admin','21232f297a57a5a743894a0e4a801fc3','2016-04-19 18:38:33');

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(20000) CHARACTER SET utf8 DEFAULT NULL,
  `authorid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `valid` bigint(20) DEFAULT '1',
  `countpraise` int(11) DEFAULT '0',
  `countcomment` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `article` */

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `contentSynopsis` text,
  `author` varchar(30) DEFAULT NULL,
  `downloadUrl` varchar(100) DEFAULT NULL,
  `photoUrl` varchar(100) DEFAULT NULL,
  `tryReadContent` text,
  `authorSynopsis` text,
  `price` float DEFAULT NULL,
  `score` float DEFAULT NULL,
  `uploadUserId` varchar(50) DEFAULT NULL,
  `buileTime` datetime DEFAULT NULL,
  `valid` bigint(20) DEFAULT '1',
  `countPraise` int(11) DEFAULT '0',
  `countComment` int(11) DEFAULT '0',
  `countBuy` int(11) DEFAULT '0',
  `isbn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`name`,`contentSynopsis`,`author`,`downloadUrl`,`photoUrl`,`tryReadContent`,`authorSynopsis`,`price`,`score`,`uploadUserId`,`buileTime`,`valid`,`countPraise`,`countComment`,`countBuy`,`isbn`) values ('402880e7542f0c9801542f0cb6b30000','天龙八部','天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等 几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作品。是金庸作品中集大成的一部。故事以南宋末年动荡的社会环境为背景，展开波澜壮阔的历史画卷，塑造了乔峰、段誉、虚竹、慕容复等形象鲜明的人物，成为武侠史上的经典之作。故事精彩纷呈，人物命运悲壮多变，是可读性很强的作品，具有震撼人心的力量','金庸',NULL,'upload/img/book/705997d27a931ce8d98c29e1c895f29c.jpg',NULL,'金庸（1924年2月6日—），香港“大紫荆勋贤”。原名查良镛(zhā liáng yōng，英：Louis Cha)，浙江海宁人，当代著名作家、新闻学家、企业家、社会活动家，《香港基本法》主要起草人之一。金庸是新派武侠小说最杰出的代表作家，被普遍誉为武侠小说作家的“泰山北斗”，更有金迷们尊称其为“金大侠”或“查大侠”。\r\n金庸生于1924年，祖籍为安徽省桐城，出生在浙江海宁，查家为当地望族，历史上最鼎盛期为清康熙年间，以查慎行为首叔侄七人同任翰林。现代查氏家族还有两位知名人物，南开大学教授查良铮（穆旦）（四十年代九叶派代表诗人，翻译家），台湾学术界风云人物、司法部长查良钊。出自海宁的著名人物还有王国维和徐志摩。徐志摩是金庸的表兄。金庸祖父查沧珊是“丹阳教案”的当事人。\r\n1937年，金庸考入浙江一流的杭州高中，离开家乡海宁。1939年金庸15岁时曾经和同学一起编写了一本指导学生升初中的参考书《给投考初中者》，畅销内地，这是此类书籍在中国第一次出版，也是金庸出版的第一本书。1941年日军攻到浙江，金庸进入联合高中，那时他17岁，临毕业时因为写讽刺黑板报《阿丽丝漫游记》被开除。另一说是写情书.1944年考入重庆国立政治大学外文系，因对国民党职业学生不满投诉被勒令退学，一度进入中央图书馆工作，后转入苏州东吴大学(今苏州大学)学习国际法。抗战胜利后回杭州进《东南日报》做记者，1948年在数千人参加的考试中脱颖而出，进入《大公报》，做编辑和收听英语国际电讯广播当翻译。不久《大公报》香港版复刊，金庸南下到香港。\r\n1950年，《大公报》所属《新晚报》创刊，金庸调任副刊编辑，主持《下午茶座》栏目，也做翻译、记者工作，与梁羽生（原名陈文统）一个办公桌，写过不少文艺小品和影评（笔名姚馥兰和林欢）。姚馥兰的意思是英文的Your friend.(你的朋友)。1955年开写《书剑恩仇录》，在《大公报》与梁羽生、陈凡（百剑堂主）开设《三剑楼随笔》，成为专栏作家。1957年进入长城电影公司，专职为编剧，写过《绝代佳人》、《兰花花》、《不要离开我》、《三恋》、《小鸽子姑娘》、《午夜琴声》等剧本，合导过《有女怀春》、《王老虎抢亲》（所用笔名为林欢）。\r\n建国不久，金庸为了实现外交家的理想来到北京，但由于种种原因而失望地回到香港，从而开始了武侠小说的创作。\r\n1959年离开长城电影公司，与中学同学沈宝新合资创办《明报》，任主编兼社长历35年，期间又创办《明报月刊》、《明报周刊》、新加坡《新明日报》及马来西亚《新明日报》等。金庸任董事长期间，《明报》成为香港最有影响的报纸之一，有人把它比喻成香港的《泰晤士报》。其对中国时局的预测和分析，是其它报纸不能比拟的。《明报月刊》则是华人世界最文人化的刊物，其对大中华关怀，深受全世界华人好评。\r\n从五十年代末——七十年代初，金庸共写武侠小说15部，1972年宣布封笔，开始修订工作。\r\n1981年后金庸数次回大陆，先后受到邓小平、江泽民等领导人的接见，1985年任香港基本法起草委员会委员，1986年被任命为基本法起草委员会“政治体制”小组港方负责人，1989年辞去基本法委员职务，卸任《明报》社长职务，1992年到英国牛津大学当访问学者，1994年辞去《明报》企业董事局主席职务。1999~2005年任浙江大学人文学院院长。\r\n金庸博学多才。就武侠小说方面，金庸阅历丰富，知识渊博，文思敏捷，眼光独到。他继承古典武侠小说之精华，开创了形式独特、情节曲折、描写细腻且深具人性和豪情侠义的新派武侠小说先河。举凡历史、政治、古代哲学、宗教、文学、艺术、电影等都有研究，作品中琴棋书画、诗词典章、天文历算、阴阳五行、奇门遁甲、儒道佛学均有涉猎，金庸还是香港著名的政论家、企业家、报人，曾获法国总统“荣誉军团骑士”勋章，英国牛津大学董事会成员及两所学院荣誉院士，多家大学名誉博士。\r\n金庸一支笔写武侠，一支笔纵论时局，享誉香江；少年游侠，中年游艺，老年游仙；为文可以风行一世，为商可以富比陶朱，为政可以参国论要：金庸一生的传奇，可谓多姿多彩之至。佛学对金庸的影响很大。在他的文学作品中处处可见金庸中庸平和的风格。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:24',1,0,0,0,'9787108006721'),('40289f235433261601543326747c0000','百年孤独','《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。','加西亚·马尔克斯 ',NULL,'upload/img/book/d4f47730c8531b1d380ea3412d7325d1.jpg',NULL,'加西亚•马尔克斯（Gabriel García Márquez）1927年出生于哥伦比亚马格达莱纳海滨小镇阿拉卡塔卡。童年与外祖父母一起生活。1936年随父母迁居苏克雷。1947年考入波哥大国立大学。1948年因内战辍学，进入报界。五十年代开始发表文学作品。六十年代初移居墨西哥。1967年出版《百年孤独》。1982年获诺贝尔文学奖。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:26',1,0,0,0,'9787544253994'),('40289f23543337280154333774240000','明朝那些事儿1','从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎，铲除张士诚。徐达、常遇春等不世名将乘胜逐北破北元。更有明朝最大的谜团——永乐夺位、建文失踪的靖难之役。','当年明月',NULL,'upload/img/book/40289f23543337280154333774240000.jpg',NULL,'当年明月，青年历史学者，畅销书作家。专业职称为副研究员，明史学会会员。是心灵历史的开创者，担任国内多家电视台文史类节目主讲人。所著作品《明朝那些事儿》销量过五百万册，为三十年来最畅销之史学读本。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:28',1,0,0,0,'9787505722460'),('40289f23543337280154334d042d0001','张居正','黄仁宇《万历十五年》：“世间已无张居正。”金庸：“我读《张居正》，是迫不急待的先睹为快。”张居正，是明万历年间曾因厉行改革而彪炳史册的一位传奇人物。他荣登首辅之位后，理政十年：整饬吏治，刷新颓风；整肃教育，延揽济世之才；革新税赋，梳理财政。拯朱明王朝将倾之厦，使万历时期成为明王朝最为富庶的时代。其主事时声势显赫，炙手可热，圣眷优渥，无与伦比，但隆葬归天之际，即遭人非议之时，结果家产尽抄，爵封皆夺，祸连八旬老母，罪及子孙。他生前身后毁誉之悬殊，足见政治险恶、世态炎凉，今后人扼腕叹息。本书是篇幅巨大的历史小说，通过对典型环境的生动再现，历史氛围的精心营造，小说既弥漫着一种典雅古朴的气韵，又给人晓畅通达，引人入胜的阅读愉悦。','熊召政',NULL,'upload/img/book/29c0a11bf86f2da92bcec9e96e033507.jpg',NULL,'熊召政,中国当代著名作家，诗人。1953年12月出生于湖北省英山县温泉镇。参过军，下过乡。22岁起担任英山县文化馆创作辅导干部。1981年调入湖北省作家协会任专业作家至今。其间于1984—1986年任《长江文艺》副主编，1985—1989年担任湖北省作家协会副主席。\r\n1979年创作的政治抒情诗《请举起森林一般的手，制止!》获得1979—1980年全国首届中青年优秀新诗奖。已出版诗集五部，散文集两部，报告文学集两部。其诗歌及散文获各种奖项多次。自1993始，历经十年潜心创作四卷本长篇历史小说《张居正》，一经问世，便获得海内外读者的广泛好评，被评论界誉为当代中国长篇小说的重要收获。该书继获得湖北省政府图书奖、首届姚雪垠长篇历史小说奖及湖北省第六届屈原文艺奖等各种奖项后，又于2005年4日荣获第六届茅盾文学奖。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:30',1,0,0,0,'9787535425201'),('40289f2354334e9a0154334eedd20000','白夜行','东野圭吾万千书迷心中的无冕之王\r\n周刊文春推理小说年度BEST10第1名\r\n本格推理小说年度BEST10第2名\r\n《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备经典名著的一切要素：\r\n一宗离奇命案牵出跨度近20年步步惊心的故事：悲凉的爱情、吊诡的命运、令人发指的犯罪、复杂人性的对决与救赎……\r\n-------------------------------------------------------------------\r\n1973年，大阪的一栋废弃建筑中发现一名遭利器刺死的男子。案件扑朔迷离，悬而未决。\r\n此后20年间，案件滋生出的恶逐渐萌芽生长，绽放出恶之花。案件相关者的人生逐渐被越来越重的阴影笼罩……\r\n“我的天空里没有太阳，总是黑夜，但并不暗，因为有东西代替了太阳。虽然没有太阳那么明亮，但对我来说已经足够。\r\n凭借着这份光，我便能把黑夜当成白天。\r\n我从来就没有太阳，所以不怕失去。”\r\n“只希望能手牵手在太阳下散步”，这句象征本书故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的事件片段如纪录片一样一一还原，最后一丝温情也被完全抛弃，万千读者在一曲救赎罪恶的爱情之中悲切动容。','东野圭吾',NULL,'upload/img/book/7a41db9185fb52176cb9ffd98f2d3fff.jpg',NULL,'东野圭吾\r\n日本著名作家。\r\n1985年，凭《放学后》获第31届江户川乱步奖，开始专职写作；\r\n1999年，《秘密》获第52届日本推理作家协会奖；此后《白夜行》、《单恋》、《信》、《幻夜》先后入围直木奖。\r\n2005年出版的《嫌疑人X的献身》史无前例地将第134届直木奖、第6届本格推理小说大奖，以及年度三大推理小说排行榜第1名一并斩获；\r\n2008年，《流星之绊》获第43届新风奖。\r\n2009年出版的《新参者》获两大推理小说排行榜年度第1名；\r\n2012年，《浪矢杂货店的奇迹》获第7届中央公论文艺奖。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:33',1,0,0,0,'9787544258609'),('40289f23543366650154336683b40000','血色浪漫','上世纪八十年代以来，长篇小说的创作随着社会生活的变化而日渐繁荣，小说的创作与出版均呈现出多元化的态势，为记录长篇小说发展的历程，展示创作的实绩，长江文艺出版社决定每年推出若干种长篇小说。凡能中国文学的审美视野，小说艺术的表现领域，满足读者的欣赏需求和阅读期待，具有“精英文化 ，大人趣味，百姓情怀”品质，不限风格，题材，篇幅，不拘囿作家创作阅历长短，能体现上述宗旨者皆可入选。因出版者地处神话传说中的“九头鸟”故乡，又因“九头鸟”体现了我们这个信息时代“耳听八方，眼观六路”的特点，具有一定的历史文化积泻与鲜明的时代特色，故以此冠之。本书由长江文艺出版社出版。','都梁',NULL,'upload/img/book/ed7d89633cb1444385165b229764a112.jpg',NULL,'都梁：50年代出生，做过教师，公务员，公司经理，石油勘探技术研究所所长，现为自由撰稿人。2000年1月出版长篇小说《亮剑》。同名电视连续剧由海润影视传播公司拍摄。2001年12月发展26集电视连续剧剧本《血色浪漫》由润亚影视传播有限公司拍摄。',0,0,'40289f23542e193801542e19b28c0000','2016-04-22 11:22:35',1,0,0,0,'9787535427267');

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `performer` varchar(500) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `screenwriter` varchar(20) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `showTime` date DEFAULT NULL,
  `otherName` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `buileTime` datetime DEFAULT NULL,
  `score` float DEFAULT NULL,
  `valid` bigint(20) DEFAULT '1',
  `countpraise` int(11) DEFAULT '0',
  `countcomment` int(11) DEFAULT '0',
  `contentSynopsis` text,
  `photoUrl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

insert  into `movie`(`id`,`name`,`performer`,`director`,`screenwriter`,`area`,`showTime`,`otherName`,`type`,`buileTime`,`score`,`valid`,`countpraise`,`countcomment`,`contentSynopsis`,`photoUrl`) values ('40289f23543dfc7e01543dfc9a870000','楚门的世界','金·凯瑞/劳拉·琳妮/艾德·哈里斯/诺亚·艾默里奇/娜塔莎· 麦克艾霍恩','彼得·威尔','安德鲁·尼科尔','美国','1998-06-05','真人Show(港)/真人戏/真人世界/楚门秀','剧情','2016-04-22 20:40:45',0,1,0,0,'楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。 \r\n　　直到有一天，他忽然发觉自己似乎一直在被人跟踪，无论他走到哪里，干什么事情。这种感觉愈来愈强烈。楚门决定不惜一切代价逃离这个他生活了30多年的地方，去寻找他的初恋女友。 \r\n　　但他却发现自己怎样也逃不出去。真相其实很残忍。','upload/img/movie/f11ce9aa438ce2012a105667e1add1ff.jpg'),('40289f23543dfc7e01543dfc9ae20001','肖申克的救赎','蒂姆·罗宾斯/摩根·弗里曼/鲍勃·冈顿/威廉姆·赛德勒/克兰西·布朗/吉尔·贝罗斯/马克·罗斯顿/詹姆斯·惠特摩/杰弗里·德曼/拉里·布兰登伯格/尼尔·吉恩托利/布赖恩·利比/大卫·普罗瓦尔/约瑟夫·劳格诺/祖德·塞克利拉','弗兰克·德拉邦特','弗兰克·德拉邦特/斯蒂芬·金','美国','1994-09-10','月黑高飞(港)/刺激1995(台)/地狱诺言/铁窗岁月/消香克的救赎','剧情/犯罪','2016-04-22 20:40:45',0,1,0,0,'20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……','upload/img/movie/b995025bd291f497801ee93d82775b35.jpg'),('40289f23543dfc7e01543dfc9aed0002','大话西游之仙履奇缘','周星驰/吴孟达/朱茵/蔡少芬/蓝洁瑛/莫文蔚/罗家英/刘镇伟/陆树铭/李健仁','刘镇伟','刘镇伟/吴承恩','香港/中国大陆','1995-02-04','西游记完结篇仙履奇缘/齐天大圣西游记/大话东游之二/A Chinese Odyssey Part Two - Cinderella','喜剧/动作/爱情/奇幻/冒险','2016-04-22 20:40:45',0,1,0,0,'至尊宝（周星驰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。 \r\n　　紫霞与青霞（朱茵）本是如来佛祖座前日月神灯的灯芯（白天是紫霞，晚上是青霞），二人虽然同一肉身却仇恨颇深，因此紫霞立下誓言，谁能拔出她手中的紫青宝剑，谁就是她的意中人。紫青宝剑被至尊宝于不经意间拔出，紫霞决定以身相许，却遭一心记挂白晶晶（莫文蔚）的至尊宝拒绝。后牛魔王救下迷失在沙漠中的紫霞，并逼紫霞与他成婚，关键时刻，至尊宝现身。','upload/img/movie/a803e0ea0c9e50bfdfb4df6cc552373a.jpg'),('40289f23543dfc7e01543dfc9af80003','复仇者联盟','小罗伯特·唐尼/克里斯·埃文斯/斯嘉丽·约翰逊/克里斯·海姆斯沃斯/杰瑞米·雷纳/马克·鲁弗洛/塞缪尔·杰克逊/汤姆·希德勒斯顿/斯特兰·斯卡斯加德/寇碧·史莫德斯/克拉克·格雷格/保罗·贝坦尼/格温妮斯·帕特洛','乔斯·韦登','乔斯·韦登/扎克·佩恩','美国','2012-05-05','复仇者/复联','动作/科幻/奇幻/冒险','2016-04-22 20:40:45',0,1,0,0,'一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局（SHIELD）感到措手不及，其指挥官“独眼侠”尼克-法瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）意识到他必须创建一个“史上最强”的联盟组织，云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。于是由六大超级英雄——“钢铁侠”（小罗伯特·唐尼 Robert Downey Jr. 饰）、“雷神” （克里斯·海姆斯沃斯 Chris Hemsworth 饰）、“美国队长”（克里斯·埃文斯 Chris Evans 饰）、“绿巨人” （马克·鲁弗洛 Mark Ruffalo 饰）、“黑寡妇”（斯嘉丽·约翰逊 Scarlett Johansson 饰）和“鹰眼”（杰瑞米·雷纳 Jeremy Renner 饰）组成的 “复仇者联盟”应运而生。他们各显神通，团结一心，终于战胜了邪恶势力，保证了地球的安全。','upload/img/movie/67b28444e99885de86cf33d3d99db932.jpg'),('40289f23543dfc7e01543dfc9b000004','搜索','高圆圆/姚晨/赵又廷/陈红/王学圻/王珞丹/陈燃/张译','陈凯歌','陈凯歌/唐大年','中国大陆','2012-07-06','Caught in the Web','剧情/悬疑','2016-04-22 20:40:45',0,1,0,0,'网络时代的“人肉”技术，通常是娱乐大众的利器，但很不幸，它也可能成为一种杀人工具。 \r\n　　上市企业董事长秘书叶蓝秋（高圆圆 饰）在获知自己罹患癌症之后，心灰意冷的她上了一辆公交车，沉浸在惊愕与恐惧的她，拒绝给车上的老大爷让座，引起众议，这一过程被电视台实习记者杨佳琪（王珞丹 饰）用手机拍个正着。佳琪将公车上的新闻火速交给准嫂子陈若兮（姚晨 饰），凭着新闻主编的敏锐嗅觉，若兮将此新闻恶意放大，从而引发了一场社会大搜索，集体讨伐叶蓝秋的道德沦丧。在公众指责和病魔降临的夹缝中，叶蓝秋带着老板沈流舒（王学圻 饰）借给她的100万，彻底玩起了消失。岂料这更使她被冠以“小三”之名。若兮的摄影师男友无意中被卷入叶蓝秋的世界中，为了获得一笔高额报酬，他受雇陪伴在叶左右。而他却不曾想到，这竟是这个饱受指责的女人生命中最后一段时光。叶蓝秋的自杀，彻底颠覆了陈若兮的爱情与生活，也让所有人开始反思……','upload/img/movie/a4869b3143e6713a295fdd7d28f226a3.jpg'),('40289f23543dfc7e01543dfc9b090005','无间道','刘德华/梁朝伟/黄秋生/曾志伟/郑秀文/陈慧琳/陈冠希/余文乐/杜汶泽/林家栋/萧亚轩','刘伟强/麦兆辉','麦兆辉/庄文强','香港','2002-12-12','Infernal Affairs','悬疑/犯罪','2016-04-22 20:40:45',0,1,0,0,'1991年，香港黑帮三合会会员刘健明（刘德华）听从老大韩琛（曾志伟）的吩咐，加入警察部队成为黑帮卧底，韩琛许诺刘健明会帮其在七年后晋升为见习督察。1992年，警察训练学校优秀学员陈永仁（梁朝伟）被上级要求深入到三合会做卧底，终极目标是成为韩琛身边的红人。2002年，两人都不负重望，也都身背重压，刘健明渐想成为一个真正的好人，陈永仁则盼着尽快回归警察身份。 \r\n　　重案组从陈永仁手中获悉一批毒品交易情报，锁紧目标人物韩琛，没料情报被刘健明泄出，双方行动均告失败。但此事将双方均有卧底的事实暴露，引发双方高层清除内鬼的决心。命运迥异又相似的刘健明和陈永仁开始在无间道的旅程中接受严峻考验。','upload/img/movie/854e379cd169424d1cd7c855a3f3dfc9.jpg'),('40289f23543dfc7e01543dfc9b160006','僵尸先生','林正英/许冠英/钱小豪/李赛凤/楼南光/王小凤/黄虾/元华/陈友','刘观伟','司徒卓汉/黄炳耀','香港','1985-11-07','暂时停止呼吸(台)/霊幻道士(日)/Mr. Vampire','喜剧/动作/奇幻','2016-04-22 20:40:45',0,1,0,0,'富贵乡绅任发（黄虾 饰）先父当年威逼利诱求得一块风水宝地，经风水先生指点，其父下葬二十年后起坟迁葬，以利子孙。然九叔（林正英 饰）察看墓穴得知，当年风水先生与任家私怨在身，在墓穴中做下手脚，二十年后任老太爷尸体已生恶变。九叔提议就地火化，在任老爷请求下才将尸骨移往义庄。虽经小心看护，但任老太爷仍化作僵尸，将其子任发杀害。 \r\n　　九叔断定任老太爷和任发的僵尸将再次出现，于是命令徒弟秋生（钱小豪 饰）和文才（许冠英 饰）小心应付……','upload/img/movie/1c91c881d06b39fe58b78c8756a8e63d.jpg'),('40289f23543dfc7e01543dfc9b1f0007','快餐车','成龙/洪金宝/元彪/劳拉·福纳/张冲/吴耀汉/岑建勋/午马/冯淬帆','洪金宝','邓景生/李炯佳','香港/西班牙','1984-08-17','Wheels on Meals/Million Dollar Heiress','喜剧/动作','2016-04-22 20:40:45',0,1,0,0,'无比（洪金宝 饰）是巴塞罗那一间侦探社的打手，这天，他的侦探社接到了一单大生意：客人委托他们14天内找到一名叫歌利亚的女子和她的女儿施维亚。因为侦探社的社长侦探在外躲债，而无比又不想眼白白丢了一单生意，于是，他找来在当地经营快餐车的华人青年托马斯（成龙 饰）与大卫（元彪 饰）一起进行调查。 \r\n　　通过调查，他们发现歌利亚原来是当地一名富豪伯爵的千金，伯爵已经去世，如果找不到她或者她女儿的话巨额的遗产将落入她的堂兄的口袋，而他们幕后雇主正是这位心怀叵测的堂兄！于是，一幕英雄救美的好戏上演了！','upload/img/movie/5bf3942c3bc4c127909de22d57eabd8a.jpg'),('40289f23543dfc7e01543dfc9b2b0008','盗梦空间','莱昂纳多·迪卡普里奥/约瑟夫·高登-莱维特/艾伦·佩吉/渡边谦/汤姆·哈迪/迪利普·劳/玛丽昂·歌迪亚/基里安·墨菲/汤姆·贝伦杰/迈克尔·凯恩/卢卡斯·哈斯/皮特·波斯尔思韦特','克里斯托弗·诺兰','克里斯托弗·诺兰','美国/英国','2010-07-08','潜行凶间(港)/全面启动(台)/奠基/心灵犯案/记忆迷阵/记忆魔方','剧情/动作/科幻/悬疑/冒险','2016-04-22 20:40:45',0,1,0,0,'道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法。为了重返美国，柯布偷偷求助于岳父迈尔斯（迈克尔·凯恩 Michael Caine 饰），吸收了年轻的梦境设计师艾里阿德妮（艾伦·佩吉 Ellen Page 饰）、梦境演员艾姆斯（汤姆·哈迪 Tom Hardy 饰）和药剂师约瑟夫（迪利普·劳 Dileep Rao 饰）加入行动。在一层层递进的梦境中，柯布不仅要对付费希尔潜意识的本能反抗，还必须直面已逝妻子梅尔（玛丽昂·歌迪亚 Marion Cotillard 饰）的处处破坏，实际情况远比预想危险得多……','upload/img/movie/105a1cc4bd8aa3ae4b3eaacd23beede1.jpg'),('40289f23543dfc7e01543dfc9b390009','海上钢琴师','蒂姆·罗斯/普路特·泰勒·文斯/比尔·努恩/梅兰尼·蒂埃里/阿尔贝托·巴斯克斯','朱塞佩·托纳多雷','亚利桑德罗·巴里克/朱塞佩·托纳多雷','意大利','1998-10-28','声光伴我飞(台)/一九零零的传奇(港)/1900海上钢琴师/传奇1900/The Legend of 1900','剧情/音乐','2016-04-22 20:40:45',0,1,0,0,'本片讲述了一个钢琴天才传奇的一生。 \r\n　　1900年，Virginian号豪华邮轮上，一个孤儿被遗弃在头等舱，由船上的水手抚养长大，取名1900（蒂姆•罗斯 饰）。1900慢慢长大，显示出了无师自通的非凡钢琴天赋，在船上的乐队表演钢琴，每个听过他演奏的人，都被深深打动。爵士 乐鼻祖杰尼听说了1900的高超技艺，专门上船和他比赛，最后自叹弗如，黯然离去。 \r\n　　可惜，这一切的事情都发生在海上，1900从来不愿踏上陆地，直到有一天，他爱上了一个女孩，情愫在琴键上流淌。他会不会为了爱情，踏上陆地开始新的生活，用他的琴声惊艳世界？他将怎样谱写自己非凡的人生。','upload/img/movie/1a44dca7dfc6e16774d59ebb713bee97.jpg');

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `songWriter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `songSmith` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lyric` text COLLATE utf8_unicode_ci,
  `downloadUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoUrl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `singerSynopsis` text COLLATE utf8_unicode_ci,
  `uploadUserId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buileTime` datetime DEFAULT NULL,
  `valid` bigint(20) DEFAULT '1',
  `countpraise` int(11) DEFAULT '0',
  `countcomment` int(11) DEFAULT '0',
  `countBuy` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `music` */

insert  into `music`(`id`,`name`,`singer`,`songWriter`,`songSmith`,`lyric`,`downloadUrl`,`photoUrl`,`score`,`price`,`singerSynopsis`,`uploadUserId`,`buileTime`,`valid`,`countpraise`,`countcomment`,`countBuy`) values ('402880f35441a79c015441a8505d0000','相思赋予谁','好妹妹乐队','知错','浪客秦昊','你说相思赋予谁\r\n明月妆台纤纤指，\r\n年华偶然谁弹碎，\r\n应是佳人春梦里，\r\n忆不起，双峨眉。\r\n翩跹霓裳烟波上\r\n几时共饮长江水，\r\n而今夜雨十年灯，\r\n我犹在，顾念谁。\r\n一番番青春未尽游丝逸\r\n思悄悄木叶缤纷霜雪催\r\n嗟呀呀昨日云髻青牡丹\r\n独默默桃花又红人不归\r\n你说相思赋予谁\r\n你说相思他赋予谁','upload/music/ae6a645ce8f12e8f8764bf62f204f01c.mp3','upload/img/music/ae6a645ce8f12e8f8764bf62f204f01c.jpg',0,0,'好妹妹乐队是由两个青年组成，分别是秦昊和张小厚，乐队组建于2010年4月，中国民谣、乡村乐队。\r\n2012年独立发行首张专辑《春生》突破京东唱片销量榜。2013年成立春生工作室并发行第二张专辑《南北》获得“2013年度蒙牛酸酸乳MusicRadio中国TOP排行榜年度最佳乐团”称号。歌曲《一个人的北京》获“2013年度蒙牛酸酸乳MusicRadio中国TOP排行榜”内地最佳作词奖。2014年3月联合芒果V基金进行音乐教室项目，并发行童谣专辑《送你一朵山茶花》，同年发行专辑《说时依旧》。\r\n2015年，创作青春校园电影《栀子花开》主题曲及推广曲《年少有你》。\r\n2015年12月1日，发行第五张全新专辑《西窗》。','40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a8509a0001','笑忘书','王菲','林夕','C.Y KONG','没没有蜡烛就不用勉强庆祝\r\n没没想到答案就不用寻找题目\r\n没没有退路那我也不要散步\r\n没没人去仰慕那我就继续忙碌\r\n王菲\r\n王菲 (13张)\r\n来 来 思前想后\r\n差一点忘记了怎么投诉\r\n来啊来 从此以后 不要犯同一个错误\r\n将这样的感触 写一封情书 送给我自己\r\n感动得要哭 很久没哭\r\n不失为天大的幸福\r\n将这一份礼物 这一封情书 给自己祝福\r\n可以不在乎 才能对别人在乎\r\n有一点帮助 就可以对谁倾诉\r\n有一个人保护 就不用自我保护\r\n有一点满足 就准备如何结束\r\n有一点点领悟 就可以往后回顾\r\n来 来 思前想后\r\n差一点忘记了怎么投诉\r\n来 来 从此以后 不要犯同一个错误\r\n将这样的感触 写一封情书 送给我自己\r\n感动得要哭 很久没哭\r\n不失为天大的幸福\r\n将这一份礼物\r\n这一封情书 给自己祝福\r\n可以不在乎 才能对别人在乎\r\nlalalala....... lalalala.......\r\n从开始哭着嫉妒 变成了笑着羡慕\r\n时间是怎么样爬过了我皮肤\r\n只有我自己最清楚\r\n将这样的感触 写一封情书 送给我自己\r\n感动得要哭 很久没哭\r\n不失为天大的幸福\r\n将这一份礼物\r\n这一封情书给自己祝福\r\n可以不在乎 才能对别人在乎\r\n让我亲手将这样的感触\r\n写一封情书 送给我自己\r\n感动得要哭 很久没哭\r\n不失为天大的幸福\r\n就好好将这一份礼物\r\n这一封情书给 自己祝福\r\n可以不在乎 才能对别人在乎','upload/music/edc0d62f5b2d620811395ef63a5a4568.mp3','upload/img/music/edc0d62f5b2d620811395ef63a5a4568.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850a30002','Try','Colbie Caillat',NULL,NULL,'Put your make up on\r\n化好妆\r\nGet your nails done\r\n涂好指甲\r\nCurl your hair\r\n盘好秀发\r\nRun the extra mile\r\n再接再厉\r\nKeep it slim so they like you, do they like you?\r\n保持苗条 他们才喜欢你 他们喜欢你吗？\r\nGet your sexy on\r\n妩媚性感\r\nDon\'t be shy, girl\r\n不要害羞 女孩\r\nTake it off\r\n袒露身段\r\nThis is what you want, to belong, so they like you\r\n这就是你的追求和归属 所以他们喜欢你\r\nDo you like you?\r\n你喜欢自己吗？\r\nYou don\'t have to try so hard\r\n你不必逼自己竭尽全力\r\nYou don\'t have to, give it all away\r\n你不必逼自己毫无保留\r\nYou just have to get up, get up, get up, get up\r\n你只需要振作起来\r\nYou don\'t have to change a single thing\r\n你不必逼自己做任何改变\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try\r\n你不必尝试\r\nYooou don\'t have to try\r\n你不必尝试\r\nGet your shopping on, at the mall, extra credit card\r\n疯狂购物 逛便商场 刷爆信用卡\r\nYou don\'t have to choose, buy it all, so they like you\r\n你不必选择一口气买完 所以他们喜欢你\r\nDo they like you?\r\n他们喜欢你吗？\r\nWait a second,\r\n等一下\r\nWhy, should you care, what they think of you\r\n为什么你需要关心他们如何想你\r\nWhen you\'re all alone, by yourself, do you like you?\r\n当你只剩你自己的时候 你喜欢你吗？\r\nDo you like you?\r\n你喜欢你吗？\r\nYou don\'t have to try so hard\r\n你不必逼自己竭尽全力\r\nYou don\'t have to, give it all away\r\n你不必逼自己毫无保留\r\nYou just have to get up, get up, get up, get up\r\n你只需要振作起来\r\nYou don\'t have to change a single thing\r\n你不必逼自己做任何改变\r\nYou don\'t have to try so hard\r\n你不必逼自己竭尽全力\r\nYou don\'t have to bend until you break\r\n你不必委曲求全\r\nYou just have to get up, get up, get up, get up\r\n你只需要振作起来\r\nYou don\'t have to change a single thing\r\n你不必逼自己做任何改变\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try\r\n你不必尝试\r\nYou don\'t have to try\r\n你不必尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try\r\n你不必尝试\r\nYooou don\'t have to try\r\n你不必尝试\r\nYou don\'t have to try so hard\r\n你不必逼自己竭尽全力\r\nYou don\'t have to, give it all away\r\n你不必逼自己毫无保留\r\nYou just have to get up, get up, get up, get up\r\n你只需要振作起来\r\nYou don\'t have to change a single thing\r\n你不必逼自己做任何改变\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必试着去努力尝试\r\nYou don\'t have to try, try, try, try\r\n你不必尝试\r\nYou don\'t have to try\r\n你不必尝试\r\nTake your make up off\r\n卸掉妆\r\nPut your head down\r\n披落秀发\r\nTake a breath\r\n轻声呼吸\r\nLook into the mirror, at yourself\r\n对着镜子 看着自己\r\nDon\'t you like you?\r\n你不喜欢你吗？\r\nCause I like you\r\n因为我喜欢你','upload/music/70f9dd93f9ee985b3c453a80a686ed87.mp3','upload/img/music/70f9dd93f9ee985b3c453a80a686ed87.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850ac0003','在木星','朴树','朴树','朴树','君归来 君归来\r\n待历经沧海 待阅尽悲欢 心方倦知返\r\n君已尘满面 污泥满身 好个白发迷途人\r\n今日归来不晚 彩霞濯满天 明月作烛台\r\n亦归来 亦归来\r\n以苦难为船 以泪为帆 心似离弦箭\r\n莫说天无涯 海无岸 纵然归程须万载\r\n今日归来不晚 与故人重来 天真作少年\r\n你为什么哎 言无声 泪如雨\r\n你为什么哎 仰起脸 笑得象满月\r\n问那人间 千百回 生老死别\r\n与君欢颜 从此永留身边\r\n你为什么哎 言无声 泪如雨\r\n你为什么哎 仰起脸 笑得象满月\r\n问那人间 千百回 生老死别\r\n与君欢颜 从此永留身边\r\n君归来 君归来\r\n待历经沧海 待阅尽悲欢 心方倦知返\r\n君已尘满面 污泥满身 好个白发迷途人\r\n今日归来不晚 彩霞濯满天\r\n亦归来 亦归来\r\n以苦难为船 以泪为帆 心似离弦箭\r\n莫说天无涯 海无岸 纵然归程须万载\r\n今日归来不晚 与故人重来 天真作少年\r\n沧浪之江\r\n西来水泱泱\r\n江上一轮明月\r\n照多少沉浮过往\r\n沧浪之江\r\n东往水莽莽\r\n谁赏江上明月\r\n谁听江声浩荡','upload/music/797bed551027a2c918679d1136737307.mp3','upload/img/music/797bed551027a2c918679d1136737307.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850b60004','西海情歌','张玮伽',NULL,NULL,'自你离开以后\r\n从此就丢了温柔\r\n等待在这雪山路漫长\r\n听寒风呼啸依旧\r\n一眼望不到边\r\n风似刀割我的脸\r\n等不到西海天际蔚蓝\r\n无言着苍茫的高原\r\n还记得你\r\n答应过我不会让我把你找不见\r\n可你跟随\r\n那南归的候鸟飞得那么远\r\n爱像风筝断了线\r\n拉不住你许下的诺言\r\n我在苦苦等待\r\n雪山之巅温暖的春天\r\n等待高原\r\n冰雪融化之后归来的孤雁\r\n爱再难以续情缘\r\n回不到我们的从前\r\n一眼望不到边\r\n风似刀割我的脸\r\n等不到西海天际蔚蓝\r\n无言着苍茫的高原\r\n还记得你\r\n答应过我不会让我把你找不见\r\n可你跟随\r\n那南归的候鸟飞得那么远\r\n爱像风筝断了线\r\n拉不住你许下的诺言\r\n我在苦苦等待\r\n雪山之巅温暖的春天\r\n等待高原\r\n冰雪融化之后归来的孤雁\r\n爱再难以续情缘\r\n回不到我们的从前\r\n还记得你\r\n答应过我不会让我把你找不见\r\n可你跟随\r\n那南归的候鸟飞得那么远\r\n爱像风筝断了线\r\n拉不住你许下的诺言\r\n我在苦苦等待\r\n雪山之巅温暖的春天\r\n等待高原\r\n冰雪融化之后归来的孤雁\r\n爱再难以续情缘\r\n回不到我们的从前','upload/music/de602a48482cf224ca454841e716ca38.mp3','upload/img/music/de602a48482cf224ca454841e716ca38.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850be0005','挪威的森林','张玮伽',NULL,NULL,'让我将你心儿摘下\r\n试著将它慢慢溶化\r\n看我在你心中是否仍完美无瑕\r\n是否依然为我丝丝牵挂\r\n依然爱我无法自拔\r\n心中是否有我未曾到过的地方啊\r\n那里湖面总是澄清\r\n那里空气充满宁静\r\n雪白明月照在大地\r\n藏著你不愿提起的回忆\r\n你说真心总是可以从头\r\n真爱总是可以长久\r\n为何你的眼神还有孤独时的落寞\r\n是否我只是你一种寄托\r\n填满你感情的缺口\r\n心中那片森林何时能让我停留\r\n那里湖面总是澄清\r\n那里空气充满宁静\r\n雪白明月照在大地\r\n藏著你不愿提起的回忆\r\n或许我\r\n不该问\r\n让你平静的心再起涟漪\r\n只是爱你的心超出了界线\r\n我想拥有你所有一切\r\n应该是\r\n我不该问\r\n不该让你再将往事重提\r\n只是心中枷锁\r\n该如何才能解脱\r\n让我将你心儿摘下\r\n试著将它慢慢溶化\r\n看我在你心中是否仍完美无瑕\r\n是否依然为我丝丝牵挂\r\n依然爱我无法自拔\r\n心中是否有我未曾到过的地方啊\r\n那里湖面总是澄清\r\n那里空气充满宁静\r\n雪白明月照在大地\r\n藏著你最深处的秘密\r\n或许我\r\n不该问\r\n让你平静的心再起涟漪\r\n只是爱你的心超出了界线\r\n我想拥有你所有一切\r\n应该是\r\n我不该问\r\n不该让你再将往事重提\r\n只是心中枷锁\r\n该如何才能解脱\r\n或许我\r\n不该问\r\n让你平静的心再起涟漪\r\n只是爱你的心超出了界线\r\n我想拥有你所有一切\r\n应该是\r\n我不该问\r\n不该让你再将往事重提\r\n只是心中枷锁\r\n该如何才能解脱','upload/music/f942bb4171f365f05a70807639790f4f.mp3','upload/img/music/f942bb4171f365f05a70807639790f4f.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850cb0006','Croatian Rhapsody','马克西姆.姆尔维察',NULL,NULL,NULL,'upload/music/f7618539031c212eb5cd8d78029d33ca.mp3','upload/img/music/f7618539031c212eb5cd8d78029d33ca.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850d30007','北京东路的日子','刘千楚/徐逸昊/鲁天舒/姜玮珉/胡梦原/张鎏依/梁竞元/游彧涵/金书援/许一璇/汪源/张夙西',NULL,NULL,'开始的开始 我们都是孩子\r\n最后的最后 渴望变成天使\r\n歌谣的歌谣 藏着童话的影子\r\n孩子的孩子... 该要飞往哪去\r\n开始的开始 我们都是孩子\r\n最后的最后 渴望变成天使\r\n歌谣的歌谣藏着童话的影子\r\n孩子的孩子 该要飞往哪去\r\n当某天 你若听见 有人在说那些奇怪的语言\r\n当某天 你若看见 满街的本子还是学乐先\r\n当某天 再唱着 这首歌会是在哪一个角落\r\n当某天~ 再踏进~~\r\n这校园会是哪片落叶 掉进回忆的流年\r\n表示从 一楼到四楼的距离 原来只有三年\r\n表示门卫叔叔食堂阿姨 很有夫妻脸\r\n各种季风洋流都搞不懂 还有新视野\r\n各种曾经狂热的海报照片 卖几块几毛钱\r\n我们穿上西装假装成长 胶片挥霍习惯的笑脸\r\n悲伤一发 寂寞唏嘘 痛的初体验\r\n毕业和成年的字眼 格外扣人心弦\r\n各种莫名的感伤 只说句 嘻嘻一些\r\n十年后 你若听见 有人在说这些奇怪的语言\r\n十年后 你若看见 满街的本子还是学乐先\r\n表示从 一楼到四楼的距离 原来只有三年\r\n表示门卫叔叔食堂阿姨 很有夫妻脸\r\n各种季风洋流都搞不懂 还有新视野\r\n各种曾经狂热的海报照片 卖几块几毛钱\r\n我们即将分别 独自浪在 中国外国不同地点\r\n瞥见白色的校服 还会以为是我认识的谁\r\n顾萍凡哥乌龟大师 方丈我爱你\r\n也或许谁都忘记谁的名字 但记得\r\n北京东路的日子\r\n开始的开始 我们都是孩子\r\n最后的最后 渴望变成天使\r\n歌谣的歌谣 藏着童话的影子\r\n孩子的孩子 该要飞往哪去','upload/music/222e8e51997f89ee64bcdc7b95a9f366.mp3','upload/img/music/222e8e51997f89ee64bcdc7b95a9f366.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850dd0008','夜照亮了夜','万芳','王中言','伍佰','夜是那么黑 看不见悲喜界限\r\n任谁都好累 青春只剩一滴眼泪\r\n我变成了谁 独自又为爱放逐灵魂\r\n心死就不伤悲 明知爱很珍贵\r\n夜照亮了夜 痛战胜了痛\r\n然而春去春回长大成人滋味\r\n最黑的黑是背叛 最痛的痛是原谅\r\n雾是那么轻可以覆盖一切\r\n放过手的不是昨天明天你我\r\n风吹过了雪 爱的记忆都溶解\r\n这一刻心为蝶 挣脱轮回\r\n夜是那么黑 看不见悲喜界限\r\n任谁都好累 青春只剩一滴眼泪\r\n我变成了谁 独自又为爱放逐灵魂\r\n心思就不伤悲 明知爱很珍贵\r\n夜照亮了夜 痛战胜了痛\r\n然而春去春回长大成人滋味\r\n最黑的黑是背叛 最痛的痛是原谅\r\n雾是那么轻可以覆盖一切\r\n放过手的不是昨天明天你我\r\n风吹过了雪 爱的记忆都溶解\r\n这一刻心为蝶 挣脱轮回\r\n我愿拥抱你\r\n你不能承受的虚伪我来体会','upload/music/8f55d1619ea48c6dd17034d3efd29c94.mp3','upload/img/music/8f55d1619ea48c6dd17034d3efd29c94.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0),('402880f35441a79c015441a850e70009','爱若','陈粒','何飞','陈粒','爱若有光明 为何我的心中一片黑暗\r\n爱若有快乐 为何我的身心苦闷不堪\r\n爱若有前方 为何我的眼前但有墙山\r\n爱若有希望 为何想实现却如此遥远\r\n爱若 爱若\r\n爱若是绝望 以洒脱心体验刹那戏台\r\n爱若是邪心 与其谈心与其俱飞起来\r\n爱若灌我醉 我定踏入极地而不知还\r\n爱若清我醒 何时渡过欲流到达彼岸\r\n爱若 爱若\r\n爱若是贪婪 心圆光极照破无明黑暗\r\n爱若是憎恨 虚空境界含受十方火海\r\n爱若是痴狂 把狂性雕刻为智慧烈焰\r\n爱若有慈孝 世间伦理崩泄何者空谈\r\n爱若 爱若\r\n爱若有真理 为何你我总是胡言乱语\r\n爱若是黑暗 一切光明终将回向于爱\r\n爱若是苦涩 把它放在盘中作我的菜\r\n爱若是边际 绽开翅膀穿越无边未来\r\n爱若 爱若......','upload/music/6da1b2b2c20553790cea434663f4ad38.mp3','upload/img/music/6da1b2b2c20553790cea434663f4ad38.jpg',0,0,NULL,'40289f23542e193801542e19b28c0000','2016-04-23 13:47:10',1,0,0,0);

/*Table structure for table `sign` */

DROP TABLE IF EXISTS `sign`;

CREATE TABLE `sign` (
  `id` varchar(50) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `signTime` datetime DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sign` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `nickName` varchar(25) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `jointime` datetime DEFAULT NULL,
  `photourl` varchar(100) DEFAULT NULL,
  `integral` int(11) DEFAULT '0',
  `lastSignTime` datetime DEFAULT NULL,
  `countContinuityLogin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
