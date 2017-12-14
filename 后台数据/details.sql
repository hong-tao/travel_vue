/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : list

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-14 09:06:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productID` varchar(11) NOT NULL,
  `hot` varchar(255) DEFAULT NULL COMMENT '是否热门推荐',
  `kind` varchar(255) DEFAULT NULL COMMENT '商品种类标签',
  `url` varchar(255) DEFAULT '' COMMENT '轮播图片路径',
  `name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `descriptName` varchar(255) DEFAULT NULL COMMENT '详细解释名称',
  `originPrice` varchar(255) DEFAULT NULL COMMENT '原价',
  `price` varchar(255) DEFAULT NULL COMMENT '售价',
  `origin` varchar(255) DEFAULT NULL COMMENT '出发地',
  `destination` varchar(255) DEFAULT NULL COMMENT '目的地',
  `theme` varchar(255) DEFAULT NULL COMMENT '商品主题',
  `days` varchar(255) DEFAULT NULL COMMENT '产品天数',
  `travelPrice` varchar(255) DEFAULT NULL COMMENT '出行价目表',
  `travelDays` varchar(255) DEFAULT NULL COMMENT '旅游具体出发日期',
  `productFeatures` varchar(255) DEFAULT NULL COMMENT '产品特色',
  `date` varchar(255) DEFAULT NULL COMMENT '出发日期',
  `packageID` varchar(255) DEFAULT NULL COMMENT '套餐编号',
  `planDay` varchar(255) DEFAULT NULL COMMENT '安排D1D2等',
  `planAbstract` varchar(255) DEFAULT NULL COMMENT '概要',
  `planDetails` varchar(2000) DEFAULT NULL COMMENT '具体路线规划',
  `planHotel` varchar(255) DEFAULT NULL COMMENT '住宿',
  `planCatering` varchar(255) DEFAULT NULL COMMENT '餐饮',
  `attention` varchar(800) DEFAULT NULL COMMENT '注意事项',
  `scheduleMatter` varchar(500) DEFAULT NULL COMMENT '预定须知',
  `scheduleTime1` varchar(255) DEFAULT NULL COMMENT '出发时间',
  `scheduleTime2` varchar(255) DEFAULT NULL COMMENT '返回时间',
  `scheduleFirst` varchar(500) DEFAULT NULL COMMENT '须知一',
  `scheduleSecond` varchar(500) DEFAULT NULL COMMENT '须知二',
  `scheduleThird` varchar(1000) DEFAULT NULL COMMENT '须知三',
  `scheduleTip` varchar(255) DEFAULT NULL COMMENT '温馨提示',
  `scheduleThird2` varchar(500) DEFAULT NULL,
  `scheduleForth` varchar(500) DEFAULT NULL,
  `scheduleFifth` varchar(500) DEFAULT NULL COMMENT '须知五',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('1', '80017456', 'true', '跟团游', 'src/view/details/img/hz1.jpg,src/view/details/img/hz2.jpg,src/view/details/img/hz3.jpg,src/view/details/img/hz4.jpg', '【温泉】惠州龙门地派温泉2/3天', '【典·全景】湖南、张家界、凤凰古城、双飞5天＊直飞凤凰＊挑战玻璃桥＊＜天门山，大峡谷＞', '409', '399', '广州', '惠州', '直通车,温泉', '2/3', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-19', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('2', '800012151', 'true', '跟团游', 'src/view/details/img/mz1.jpg', '美国加拿大墨西哥南美洲【境外WIFI租赁】', '【典·全景】海南、三亚、海口、双飞4天＊皇牌特惠＊＜天涯海角，蜈支洲早机升级＞', '', '25', '广州', '美国-加拿大-北美洲-南美洲', '当地玩乐 ', '1', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `details` VALUES ('3', '80003153', 'false', '自由行', 'src/view/details/img/lunbo1.jpg,src/view/details/img/lunbo2.jpg,src/view/details/img/lunbo3.jpg,src/view/details/img/lunbo4.jpg', '【誉·博览】泰国曼谷、芭堤雅6天＊豪叹＊安心夜市', '＊＜全程无购物无自费，ASIATIQUE夜市，畅游沙美岛，龙虾海鲜餐，全程入住国际超豪华酒店＞', '5399', '5199', '广州', '芭堤雅-曼谷-泰国', '安心游,休闲,海滩海岛  ', '6', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-19', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('4', '80009297', 'true', '跟团游', 'src/view/details/img/bld1.jpg,src/view/details/img/bld2.jpg,src/view/details/img/bld3.jpg,src/view/details/img/bld4.jpg', '【自由行】印尼巴厘岛5天＊含寒假＋春节＊华美达日落酒店＊广州往返＊等待确认', '＜超值豪华，国际连锁酒店，GA鹰航＞', '', '3899', '广州', '巴厘岛', '', '6', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-16', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('5', '80014715', 'true', '跟团游', 'src/view/details/img/qy1.jpg,src/view/details/img/qy2.jpg,src/view/details/img/qy3.jpg', '【直通车】清远佛冈熹乐谷温泉2/3天＊无限次温泉', '＊＜熹乐纯＞【典·全景】江西、南昌、九江、上饶、高铁5天＊高庐婺三＊冬韵庐山＊＜滕王阁，庐山，婺源，三清山，景德镇＞', '', '499', '广州', '清远', '温泉', '3', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `details` VALUES ('6', '80014734', 'true', '跟团游', 'src/view/details/img/sz1.jpg,src/view/details/img/sz2.jpg,src/view/details/img/sz3.jpg,src/view/details/img/sz4.jpg', '【生态·乐园】深圳东部华侨城1天', '＊大侠谷＊一票通玩＊机动游戏＊', '', '219', '广州', '深圳', '主题乐园 ', '1', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-16', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('7', '80017457', 'false', '跟团游', 'src/view/details/img/hz1.jpg,src/view/details/img/hz2.jpg,src/view/details/img/hz3.jpg,src/view/details/img/hz4.jpg', '【温泉】惠州龙门地派温泉2/3天', '【温泉】惠州龙门大观园温泉2/3天＊直通车＊', '409', '399', '广州', '惠州', '直通车,温泉', '2/3', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-19', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('8', '80025146', 'true', '自由行', 'src/view/details/img/mrdf1.jpg,src/view/details/img/mrdf2.jpg,src/view/details/img/mrdf3.jpg,src/view/details/img/mrdf4.jpg', '【自由行】马尔代夫（星宇之岛）6天＊机＋酒＊广州往返＊等待确认', '＜简朴自然，舒适悠闲，快艇＞', '8999.00', '6999', '广州', '马尔代夫', '海滩海岛  ', '6', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-19', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
INSERT INTO `details` VALUES ('9', 'GZ0SK004105', 'true', '当地游玩', 'src/view/details/img/wz1.jpg,src/view/details/img/wz2.jpg,src/view/details/img/wz3.jpg,src/view/details/img/wz4.jpg,src/view/details/img/wz5.jpg', '【乌镇当地玩乐】1晚通安客栈贵宾楼＋乌镇西栅门票＋传统手工体验券匠心慢旅', '＜简朴自然，舒适悠闲，快艇＞', '', '549', '多地出发', '嘉兴', '甜蜜侣程,休闲,当地玩乐', '2', '￥5199,￥5499,￥5499,￥5499,￥5499,￥5899,￥5499', '2017-12-19,2017-12-24,2017-12-26,2017-12-28,2017-12-29,2017-12-30,2017-12-31', '★全程纯玩无购物无自费, ★全程入住国际超豪华酒店，最后一晚升级湄南河边国际超豪华酒店,★特别安排沙美岛游,★体验泰式古法按摩，首推ASIATIQUE夜市泰拳表演', '出发日期：2017-12-30', '套餐编号：GZLGZ0CT1SK1712190608TB06AS', 'D1,D2,D3,D4,D5,D6', '广州--曼谷(含团队午餐) CZ357(08:50/10:50),大皇宫-玉佛寺-湄南河水上人家-大理石寺-泰国NANTA乱打秀(含:团队早餐，团队午餐，团队晚餐),曼谷- -芭堤雅-东芭乐园-三大奇观--四合镇水乡--罗马竞技场Colosseum人妖秀(含:团队早餐，团队午餐，团队晚餐),芭堤雅-沙美岛一日游--正宗泰式古法按摩(含:团队早餐，团队午餐，团队晚餐),皇家寺-乘骑瑞象+欧式马车-曼谷--RAMAYANA自助餐-曼谷新天地ASIATIQUE河畔观光夜市--泰拳表演(含:团队早餐，团队午餐，团', ' 是日于航班起飞前2小时在广州白云国际机场国际出发厅7号门集中，乘机前往泰国首都---［曼谷］（飞行时间约2.5小时），抵达后安排午餐，之后入住酒店。晚餐自理。,景点介绍：;【大皇宫】大皇宫（The Grand Palace）紧邻湄南河，是曼谷中心内一处大规模古建筑群（计28座），总面积二十一万八千四百平方米。大皇宫是仿照故都大城的旧皇宫建造的，经历代君王不断扩建，终于建成现在这座规模宏大的大皇宫建筑群。大皇宫是泰国诸多王宫之一，是历代王宫保存最完美、规模最大、最有民族特色的王宫。曼谷王朝从拉玛一世到拉玛八世，均居于大皇宫内。1946年拉玛八世在宫中被刺之后，拉玛九世便搬至大皇宫东面新建的集拉达宫居住。现在，大皇宫除了用于举行加冕典礼、宫廷庆祝等仪式和活动外，平时对外开放，成为泰国著名的游览场所。;【玉佛寺】玉佛寺是泰国王族供奉玉佛像和举行宗教仪式的场所，因寺内供奉着玉佛而得名。寺内有玉佛殿、先王殿、佛骨殿、藏经阁、钟楼和金塔。玉佛殿是玉佛寺的主体建筑，大殿正中的神龛里供奉着被泰国视为国宝的玉佛像。玉佛高66厘米，阔48厘米，是由一整块碧玉雕刻而成。每当换季时节，泰国国王都亲自为玉佛更衣，以保国泰民安。;【湄南河水上人家】观赏湄南河风景，领略泰国特色水上市场风情。;【大理石寺】为拉玛五世时所建，寺内建有佛殿、藏经阁、长廊、楼阁、佛学院等建筑。其主院建筑全部由意大利输入的大理石建成;【NANTA乱打秀】全剧演员灵活运用厨房用具，以敲打各式锅碗瓢盆表演出精彩的打击乐章，在全场没有语言，只靠打击乐和演员的丰富肢体语言呈现剧情，成功结合韩国传统打击乐与现代表演艺术。荒谬的剧情使整场演出笑声不断，而充满热情与活力的节奏声更是响彻整个会场，这也让观众的鼓掌声与叫好声久久不散。,景点介绍：;【东芭乐园】东芭乐园位于泰国旅游胜地芭堤雅市附近，占地甚广。园中有人工湖，水光潋滟，小河缭绕于亭台楼阁之间，树木葱笼，鸟语花香，景色如画。园中设有文化村，是集中展示泰国民族文化的场所。园内节目三大部分：一是泰国的民俗表演；二是大象表演；三是植物园。民俗歌舞很质朴、很地道，表演者就是村寨中人；大象表演格外精彩。;【七珍佛山】仿佛一斧劈开半山、镶上金粉金箔的大壁佛;【九世皇庙】是当今国王最爱的庙宇， 庙中供奉着高僧的舍利子;【蜡像馆】蜡像是泰国著名的师父精心雕刻而成，让您觉得有如真人般一样。;【四合镇水乡】方圆36800平方公尺面积融合了浓郁纯朴的泰国乡村文化气息，一幢幢古色古香的木雕风格泰屋围建于迂回的河道上而形成风情独特的水上人家。游客搭乘舢板船随着船夫划桨撩拨起水波蜇游穿梭前行，徘徊流连于河岸边设铺摆摊、水道央行舟贩卖琳琅商货的水上市场，间或有传统民俗舞蹈笙歌，又见炊烟袅绕的食档扁舟烹饪着当地小吃，小贩殷勤的吆喝，让游客无法拒绝。相信古朴的水乡风情魅力将会在您旅行记忆中定格为远离泰国都市现代化外最动人的画面。;【罗马竞技场Colosseum人妖秀】神创论建筑风格融合意大利罗马斗场，建立在一个面积超过16亩的黄金地段。剧院中歌舞表演是宏大而创新的。两个元素与现代设计的结合天衣无缝。人妖表演艺术理念提出的要求是精湛与完美，是芭提雅的一个新景点。,景点介绍：;【沙美岛自然国家公园】位于泰国湾上的一座小岛，靠近曼谷东南面大约220公里，以其美丽的沙滩和全年丰富的海上活动，吸引着来自世界各地的游客。在这里我们为您体贴的准备了沙滩躺椅，您可换上最靓丽的泳装，吹吹海风，放松自我、忘掉一切世俗尘嚣，尽享这世外桃源给与的难得假期。;【泰式古法按摩】：于养生康泰馆内享受泰国传统的『古法按摩』，通过技师娴熟的指压技法，让您舒筋活络，通体舒畅。（小费自理）,景点介绍：;【皇家寺】寺庙里供奉了一尊很大的四面佛，这是泰国香火最旺的寺庙之一，大家可以参拜著名的四面佛，进香纳福，为自己和家人祈求平安和财富。;【丛林骑大象】 \"乘骑瑞象\"悠然漫步于丛林中，体验暹罗人民的悠然自得。;【ASIATIQUE夜市】于2012年5月最新开幕的大型河畔夜市，也是曼谷最新规化的一个结合购物及餐饮的复合式购物中心; 前身是泰国五世皇朝代相当重要的港口，它是开启泰国和欧洲各国贸易、促进经济繁荣的功臣之一，然而随着时代转变、物换星移，这里也成了人烟稀疏的废墟，但现在这个港口有了新的生命力，建筑采用传统与现代，保留昔日仓库外观与模样，每天17:00开始~到24:00，拥有泰国及各国自创的品牌约有1500家左右的商店，您可尽情游逛；无论是纪念品、传统时尚服饰、配件、纺织布料、美食街、小吃摊…等等应有尽有、一起为ASIATIQUE绽放新的光彩。,早餐后，自由活动，午餐后铸下最深刻的美好回忆，挥别微笑之邦--泰国，乘机飞返［广州］（飞行时间约2.5小时），结束愉快的旅程！ ', '住宿：曼谷国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：芭堤雅国际超豪华酒店,住宿：曼谷国际超豪华酒店,住宿：无', '餐饮：含团队午餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐，团队晚餐,餐饮：含:团队早餐，团队午餐', '1、请在提交订单前再次核对订单内容及资料等相关信息，最终团费价格以支付时为准。,2、旅客信息请务必填写正确，因客人原因填写错误产生的责任及费用，需由客人自行承担；,3、据新修订的《居民身份证法》规定，一代居民身份证已于2013年1月1日起停止使用，请使用二代居民身份证，以便顺利出游；,4、本网站不接受未成年人单独报名，必须有成年人同行或提供家长同意书方可报名；,5、因接待条件有限，不接受孕妇及80周岁以上(含80周岁)人士报名；,6、报名出境旅游，请务必检查护照的有效期至少为（回程日期+6个月）以上和两页以上空白签证页，特别产品可能要求的有效期更长，请务必咨询客服。,7、产品名称含有“等待确认”或预订的是单项代订服务产品（例如：代订酒店、交通等），请等待我司通知确认能否预订成功，若我司通知未能成功预订，则订单不生效，我司将退还客人所支付的款项，不另作任何赔偿。', '本行程仅作界定旅游线路、接待标准以及游览项目之用，由广州广之旅国际旅行社股份有限公司（下简称\"旅行社\"） 委托旅游目的地具有相应资质的地接社承接本旅行团在当地的接待业务，地接社的相关信息、本旅行社委派的领队姓名和电话，以及具体航班时间、最终行程（游览顺序）及入住酒店的具体名称等信息，一并在出团前（集合地）派发的行程表中告知，客人对此表示同意。', '*去程交通参考时间：CZ357(08:50/10:50)', '*返程交通参考时间：CZ364(18：55/22：45)', '1、费用已含：1) 费用已含：1) 在泰国驻广州总领事馆办理泰国签证所需的费用；2)代订行程表所列往返交通费、机场税（费）、游览交通费；3)行程表所列酒店或同级酒店的住宿费；4)行程表所列的餐费（不含酒水）；5)行程表所列第一门票。6)旅游签证、旅游空调巴士；7)导游服务费。,2、费用未含：1)个人旅游意外保险费和航空保险费；2)旅途中火车、轮船上餐费；3)行程表以外活动项目所需的费用；4)卫生检疫费；5)出入境行李的海关税、搬运费、保管费和超重（件）行李托运费；6)酒店内的酒水、洗衣、通讯等费用；7)其他未约定由旅行社支付的费用（包括单间差、节假日旺季升幅、机场内候机和转机的餐食、不可抗力因素所产生的额外费用、在泰国当地办理落地签而新增的费用（详见行程备注第四大点中的签证说明）等）。', '1、本团成团的最低人数为：16人。,2、住    宿：全程入住国际超豪华酒店双人间（双床房或大床房，每成人每晚一个床位)。', '1、在境外海岛旅游中，有不少不法分子利用各种手段（例如用低价吸引旅客出海或者参加海上活动，完成出海或者海上活动后向旅客收取更高的费用），导致客人蒙受金钱损失。特意提醒客人，在出海时，一定要跟随旅行社的领队或当地导游出行，不要轻信不明人士的推介。若在旅途中出现上述情况引致客人上当受骗或带来的不利后果，不属于旅行社承担的责任范围内。,2、泰国海关最新规定：为防止不法商贩走私香烟，泰国海关不允许游客携带超过一条以上的香烟入境，违者将有可能被泰国海关责以重罚。敬请留意！', '温馨提示：由于本行程含快艇出海项目，根据当地船公司要求60-64岁客人视天气及自身身体状况安排是否能搭乘，65周岁以上客人不能搭乘，因此如遇快艇出海当天，旅行社将安排65周岁以上客人在酒店自由活动，无费用增减，敬请客人留意。', '3、泰国习俗和禁忌：,   泰国是一个佛教国家，对泰皇相当尊敬。女士进入皇宫时不可穿短裙和无袖装，男士必须穿有领子的上装，不得穿拖鞋，服装应整齐、端庄，最好不要穿短裤。,遇见僧侣要礼让，女士避免碰触僧侣，如奉献财务，可请男士代劳或直接放在桌上。,泰国禁赌，即使在酒店房间内也不可玩牌或打麻将。', '四、特别约定：,1、强烈建议出行游客购买个人旅游意外保险。具体保险险种请在报名时向销售人员咨询并购买，出行时请将该保单资料随身携带。', '五、出票风险、特别扣费约定及其他,1、出票风险：客人明白，是否获得签证，使领馆有可能在团队出发前一日才通知旅行社。');
