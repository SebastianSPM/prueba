
DROP DATABASE IF EXISTS pd_sebastian_pereira_manglar;
CREATE DATABASE pd_sebastian_pereira_manglar;
USE pd_sebastian_pereira_manglar;

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(50),
    address TEXT,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE invoices(
	ID_bill VARCHAR(20) NOT NULL,
    mount_bill DECIMAL(10,2) NOT NULL,
    period_bill VARCHAR(30) NOT NULL,
    PRIMARY KEY(ID_bill)
);

CREATE TABLE transations(
	ID_transation VARCHAR(30) PRIMARY KEY,
    mount_transation INT,
    type_transation VARCHAR(30),
    date_hour_transation VARCHAR(30),
    state_transation VARCHAR(20),
    mount_paid INT,
    use_platform VARCHAR(20)
);

DROP TABLE transations;

INSERT INTO customers (number_identification, full_name_customer, phone_customer, address, email)
VALUES
(149186547,'Angel Daniel','873)222-2692x09480','USNS Davis FPO AP 78518','rmiller@boyer.com'),
(475925688,'Matthew Wilson','264)225-7425','42023 Barrett Path Suite 281 Jeremyborough, OH 72889','matthew15@ramirez.com'),
(112231541,'Jennifer Phelps','248.695.2117','392 Smith Corners Apt. 737 East Angeltown, MO 64086','echristian@hotmail.com'),
(708283326,'Jonathan Cook','0756633727','657 Landry Way Suite 966 Robinsonfurt, CA 22461','zjones@yahoo.com'),
(959234562,'Lindsay Garcia','001-158-358-0277','906 Justin Locks Apt. 838 Port Timothyview, AR 68865','juliamatthews@carpenter.com'),
(243553915,'Eric Klein','9179003714','0571 Carroll Cliffs Davisstad, WI 00721','acostajoshua@hotmail.com'),
(7005498,'Ashley Adams','224)273-1751x2329','660 Marcus Camp Suite 262 Port Stevenmouth, NC 10819','elambert@cook.info'),
(724330039,'Meghan Nguyen','767.278.8207','259 Jared Manor Brownville, AZ 52844','hhughes@randolph-ingram.com'),
(643387222,'Ryan Richards','001-398-345-1521x215','695 Francis Cliffs Port Bryantown, VT 33873','phillipcarter@hotmail.com'),
(215716832,'Janice Alexander','+1-411-073-0697x704','81268 Hamilton Fort Fitzgeraldfort, ID 71489','matthew55@leach-blackburn.com'),
(92651576,'Katherine Dunn','6081126986','837 Schneider Spur Suite 656 Darrellmouth, WI 33323','golson@davis.info'),
(724488250,'Brett Odom','550.725.0901','952 Barbara Turnpike Jacquelinebury, MO 71346','colemanjames@chavez.info'),
(265881315,'Jenna Scott','404-358-1223x371','Unit 1694 Box 1865 DPO AE 26667','rogerseric@hotmail.com'),
(401149568,'Andrew Johns','894-499-5852x2479','62457 Booth Mews Apt. 453 Lake Vincentport, DE 49208','lorinelson@hotmail.com'),
(778029406,'Christine Curtis','554.861.0493x592','2480 Jesse Unions Suite 534 East Antonioshire, MS 71510','christopherferguson@acevedo-robertson.info'),
(307805784,'Madison Jones','149.766.5747','USNS Ferguson FPO AP 50263','wattsdavid@morgan-wheeler.com'),
(484837788,'Tracy Simmons','0383343588','76775 Jennifer Orchard Apt. 758 Port Lance, NH 53890','bryan30@williams.com'),
(962795476,'Shelby Wolf','7506854443','613 Billy Radial Suite 171 South Benjamin, WY 15230','daniel46@gmail.com'),
(65030358,'Kyle Jackson','001-392-237-6541x8420','24896 Helen Rapid Suite 758 New Joseph, MN 97017','pwheeler@yahoo.com'),
(644042817,'Linda Shepard','2931087130','4947 Reynolds Islands Kathleenburgh, DE 96988','munozcharles@yahoo.com'),
(689720635,'Kathleen Brady','2253893664','Unit 6453 Box 5308 DPO AA 48049','victoria31@gmail.com'),
(800125157,'Bobby Luna','001-549-919-1859','2923 Michael Fords Suite 316 Dustinton, IN 31032','kathryn43@hotmail.com'),
(268619593,'Richard Lopez','+1-418-560-8033x44588','6875 Hill Forks Teresaland, AL 58910','justinallen@quinn.info'),
(625774276,'Ralph Bush','+1-866-778-9252x6524','03975 Mills Square Apt. 322 Port Claudia, MI 34792','bradleyamy@doyle.com'),
(569906245,'David Webb','993.305.1410','3613 Laura Ridges Suite 762 South Theresa, VA 98493','stevenrodriguez@gmail.com'),
(328037408,'Kim Russell','001-136-251-3102x24346','887 Kelley Walk Apt. 960 East Martha, CT 59649','cindy11@wood.com'),
(969677194,'Michael Holt','882-041-3572','3499 David Lake Suite 745 South Dylan, AK 03041','rmiller@hubbard-benitez.com'),
(796337665,'Mr. Justin Cook','737.675.5823','Unit 9907 Box 4757 DPO AE 46640','ofritz@richards.com'),
(636808209,'Timothy Wood','001-948-037-6474','836 Bates Points Port Andrewshire, GA 83721','christina78@yahoo.com'),
(975617669,'Yolanda Hines','659)333-4905','812 Mccarthy Viaduct Apt. 376 Kristinamouth, AL 43563','cscott@hotmail.com'),
(569390187,'Jasmine Kelly','843-277-1394','697 Reynolds Dam Apt. 423 Jacobland, MO 89387','fitzgeraldelizabeth@yahoo.com'),
(325459789,'Robert Smith','001-595-596-1706x9253','Unit 2774 Box 4368 DPO AE 01041','smithtimothy@wallace.com'),
(325603096,'Jonathan Smith','796.397.5185x7448','322 Smith Pines Suite 052 Lake Scotthaven, NM 11543','debragriffin@hotmail.com'),
(819212515,'Erin Marshall','793.145.6997x893','04382 Edward Mountains Suite 369 Georgeberg, ME 94518','sethsmith@robinson.com'),
(444056964,'Mark Ford','+1-407-009-2402','07900 Friedman Ferry Suite 170 South Christina, WV 53142','millerricardo@hotmail.com'),
(717643055,'Cynthia Lee','+1-822-188-2029x6929','368 Jones Estates Apt. 059 Jonesstad, NY 59968','christinaflores@jones.org'),
(30122773,'Sean Hood','+1-348-069-6954x792','7426 Middleton Hill Suite 303 Millerview, CO 23232','cynthiaevans@hernandez.com'),
(622536043,'Kim Stephens','092)586-3570x54204','12967 Ryan Shoals Apt. 994 Port Jesse, MO 86007','karen28@johnson.com'),
(747822485,'Adam Mckinney','813.559.4153x962','572 Tammy Forest Youngside, SD 92567','fwilliams@lewis-wu.org'),
(857630459,'Valerie Brown','869.591.7228','2739 Hood Rest Apt. 962 Johnburgh, UT 27169','qmcgee@gmail.com'),
(204909440,'Jason Pace','001-517-371-6236x2223','19964 Edwards Pines South Jeremystad, AZ 79080','tjohnson@yahoo.com'),
(241114561,'Gregory Anderson','+1-282-173-3048x555','5395 Brandon Freeway Apt. 858 North Melissa, OR 60184','julie98@cortez.com'),
(494808313,'Rebecca Avila','773.248.1617','78969 Mcguire Springs Suite 562 Port Christopher, NJ 29478','pwilson@sanchez.com'),
(315164793,'Morgan Leon','001-853-081-5933x565','853 Virginia Cape Suite 757 Wilsonport, SC 89614','miranda94@yahoo.com'),
(505327194,'Fernando Hunt','5863279231','9609 Conner Track Apt. 859 Kristenberg, MD 40765','abigailkelly@johnson.net'),
(892962448,'Jason Luna','600.123.2569x570','204 Laura Hill Craigland, OK 08760','rodriguezrhonda@yahoo.com'),
(394523505,'Gregory Howell','213-496-7129x11054','036 Tyler Groves Suite 302 Danielsfurt, WV 45483','david12@young.org'),
(763963140,'Miguel Sharp MD','001-600-899-5324','47921 Johnson Expressway Suite 742 Oliviaport, PA 16931','sgeorge@ramos-acevedo.net'),
(594590875,'Stephanie Acosta','001-365-629-8075x05840','7067 Henderson Knoll Joshuashire, NJ 84213','joshuahenderson@pierce-ramos.com'),
(25832528,'Julia Davis','674-440-7862','0246 Brown Roads Suite 606 North Luisburgh, WI 38462','barkerbrent@berg-dougherty.com'),
(97866586,'Amy Woods','2338512573','247 Sheila Centers North Troybury, WA 43836','paul38@byrd.info'),
(79987146,'Julie Dunn','883-656-1878x6532','758 Ruth Mall Briggstown, MA 48538','melissawebb@gmail.com'),
(520620439,'Nicole Mcdonald','+1-692-758-5774x3951','7229 Michelle Forges Suite 411 Hardyview, VT 06858','frederickmarshall@evans.biz'),
(260613460,'Jennifer Mendoza','203-605-2009x1103','11916 Katherine Creek Kathleenport, ND 68479','susanchapman@gmail.com'),
(511962082,'Rachel Fisher','650-424-8808','38507 Newman Loop Suite 268 Tommyberg, UT 25108','bgarcia@johnson.org'),
(527088924,'Jorge Thomas','921-668-1704x3013','013 Tabitha Cliff Stevenmouth, NJ 04089','jason19@yahoo.com'),
(181982363,'Robert Hicks','335)290-8992','1639 Delacruz Park East Linda, DC 18242','powelllarry@hotmail.com'),
(87147005,'Terry Watson','426)053-2668','0047 Lori Square East Josechester, KS 29146','kaiserwilliam@hotmail.com'),
(623072602,'Carlos Wood','440-516-4972x0722','53828 Laura Spurs Lauraville, DE 53316','hillwilliam@hotmail.com'),
(729577216,'Richard Weiss','521-212-3209x2220','316 Robert Dam North Christina, MA 15552','carla37@gmail.com'),
(696739719,'Sarah Clark','853.981.8171','04967 Nguyen Circle Suite 871 Lake Andrea, NY 87021','wsanchez@christian.com'),
(520971718,'Briana Wu','177)732-3856x95766','534 Campbell View Sandersland, FL 59798','rachelsmith@frey.com'),
(785949232,'Raven Jordan','001-870-036-3211','6132 Spencer Corner Apt. 383 Lake Loriberg, MA 96874','rayalexa@yahoo.com'),
(519768710,'Angelica Gibbs','+1-378-867-9488x99135','68574 Coleman Villages Suite 522 North Erikaton, CA 83413','yarnold@smith-bruce.com'),
(64271785,'Tammy Jacobs','227.597.0062','57458 Collier Junctions Suite 288 Lake Nicholas, CT 00530','scottroger@gmail.com'),
(357901640,'Michael Evans','6777129275','921 Ramirez Mount New Anthonyville, ND 52047','steven80@yahoo.com'),
(830210363,'Tony Pham','001-094-782-5703','Unit 3715 Box 5620 DPO AA 18266','kendrapena@yahoo.com'),
(696962875,'Miss Carrie Underwood','0792914312','USNV Morris FPO AA 49085','amy45@hotmail.com'),
(896950954,'Ryan Russell','001-266-212-7928x22281','70003 Tiffany Drives Robertchester, IA 05998','michael78@walters.com'),
(196811583,'Kimberly Bennett','083)724-9058x016','70851 Daniel Station Apt. 975 Hernandezton, IL 77476','smithmichelle@gmail.com'),
(893866597,'Joshua Neal','001-256-341-5493x0374','1324 William Glens New Jenniferland, IL 16679','wheelerbrandon@hotmail.com'),
(291010345,'Robert Rodriguez','562-175-6225x4306','9483 Patricia Greens Suite 612 West Daniel, CT 37484','steven70@gmail.com'),
(915064128,'Blake Ford','276-740-5323x764','933 Casey Court Apt. 193 Lake Douglas, AL 33325','wrightsally@hotmail.com'),
(11426912,'Chad Garcia','530)211-7419','195 Rollins Land Suite 478 North Angelastad, IN 84674','john27@schaefer.com'),
(174039328,'Autumn Webb','907-357-6151x4325','198 Frazier Branch Suite 399 South Sharon, AR 75490','davidreed@hotmail.com'),
(565067343,'Elizabeth Singleton','173.672.3805','87020 Horton Valleys Rodriguezfurt, WV 03348','jeffreyhahn@dawson-myers.biz'),
(333387701,'Sarah Thompson','+1-444-121-3206x307','Unit 0218 Box 2805 DPO AA 08015','williamchavez@yahoo.com'),
(355405632,'Sarah Martin','406-810-6283','5963 Strong Points Lake Kayla, SC 51830','earllee@gmail.com'),
(71585472,'Pamela Herrera','539.557.9029','3416 Gregory Rapids Suite 629 North Nicolehaven, IL 93329','cardenasthomas@yahoo.com'),
(708960117,'Shannon Horn','297)388-2854','USNS Buchanan FPO AA 82885','brian88@pitts-bush.com'),
(626043010,'Christopher Edwards','204)535-1285x920','32230 Jeffery Via Apt. 616 West Tanya, WA 77567','pmcclain@castro-humphrey.com'),
(326481119,'Brandon Hester','836.687.2362x166','0169 Summers Vista West Stuart, UT 98685','huertatracie@yahoo.com'),
(599800533,'Mariah Jackson','382)120-4674','558 Bryan Isle New Raymond, AL 55316','eperry@wilson.com'),
(492953650,'Carol Lawson','783.291.2840','747 Miller Point Georgeton, UT 90920','joneskelsey@hotmail.com'),
(573712035,'Heather Collins','+1-960-564-8502x177','7878 Nelson Stravenue New Jacob, NE 62801','thomashansen@hotmail.com'),
(56103750,'Joshua Delgado','101-802-6501x00181','741 Morgan Underpass South Sheila, IL 16740','greenbrandon@gmail.com'),
(867865303,'Jerry Greene','703)649-5080x4789','60823 Lauren Wall Apt. 074 New Kellyside, MI 21097','jay56@white-wiggins.com'),
(355813998,'Connor Wagner','0195959907','506 Brandy Rapid Dawsonberg, RI 42470','haley03@boyd-harris.com'),
(118434130,'Marcia Randolph','508.559.9292','327 Roberts Neck Gonzalezshire, WA 18952','huntrussell@smith.com'),
(779362405,'John Price','546-202-9331x88558','PSC 5622, Box 3709 APO AA 38900','daniel62@powell.com'),
(499561637,'Bill Hopkins','288-662-8572','54675 Matthew Key Torresstad, ME 64087','briannaweeks@gmail.com'),
(179287266,'Ryan Harrison','001-320-723-6362x5909','66252 Trevor Harbor Apt. 887 Lake Ambertown, TN 81820','carrie64@hotmail.com'),
(667230218,'Donald Young','929-112-6985x483','223 Dawson Mall Suite 571 Smithburgh, MS 75952','stanleyhall@hotmail.com'),
(311310607,'Louis Gilbert','461.203.7672x451','530 Brown Corner Thompsontown, WV 70738','pgreene@hotmail.com'),
(319413369,'Marcus Martin','+1-071-678-3536x79738','PSC 6227, Box 1600 APO AP 14578','jamesjenkins@harmon-randall.com'),
(861461933,'Sharon Ingram','270.214.8473x8548','132 Vargas Turnpike Danielbury, DE 40715','seanbishop@yahoo.com'),
(61660425,'Kyle Martinez','676-110-6562x32575','USS Greene FPO AA 26511','haleronald@vargas-hernandez.info'),
(603449840,'Elizabeth Rodriguez','677)161-5260x6354','3551 Rodriguez Port Apt. 808 Lake Charles, WI 24322','kathyrodriguez@thompson.biz'),
(917844640,'Christopher Gomez','001-066-886-7181x1777','875 Jennifer Oval Suite 067 West Phillipmouth, IL 91337','marcus34@hotmail.com'),
(843106189,'Brian Morton','+1-352-961-6835x0739','431 Rodriguez Estate Suite 894 New Christopherview, TN 74616','garnold@bender-caldwell.com');



INSERT INTO invoices (ID_bill, mount_bill, period_bill)
VALUES
('FAC7068', 39940, '2024-06'),
('FAC6577', 76145, '2024-06'),
('FAC5707', 179217, '2024-06'),
('FAC7188', 52267, '2024-07'),
('FAC7289', 157001, '2024-06'),
('FAC2190', 33428, '2024-07'),
('FAC6207', 75801, '2024-07'),
('FAC1691', 17870, '2024-07'),
('FAC4680', 22294, '2024-06'),
('FAC8010', 193307, '2024-06'),
('FAC1328', 159093, '2024-07'),
('FAC8140', 175018, '2024-06'),
('FAC4679', 110754, '2024-07'),
('FAC3589', 163283, '2024-06'),
('FAC6122', 22161, '2024-07'),
('FAC4870', 196275, '2024-07'),
('FAC5322', 20824, '2024-06'),
('FAC8663', 191634, '2024-07'),
('FAC4380', 62979, '2024-06'),
('FAC5128', 37472, '2024-06'),
('FAC7986', 128381, '2024-06'),
('FAC7543', 26817, '2024-06'),
('FAC7964', 147864, '2024-07'),
('FAC1309', 153404, '2024-06'),
('FAC8025', 14710, '2024-07'),
('FAC8943', 49512, '2024-06'),
('FAC1190', 40302, '2024-07'),
('FAC4264', 27833, '2024-07'),
('FAC1462', 30813, '2024-07'),
('FAC6381', 134884, '2024-07'),
('FAC8571', 29482, '2024-07'),
('FAC7018', 158030, '2024-06'),
('FAC4082', 196509, '2024-07'),
('FAC5756', 69026, '2024-06'),
('FAC9278', 166287, '2024-06'),
('FAC6223', 179265, '2024-06'),
('FAC8510', 98069, '2024-07'),
('FAC4305', 153650, '2024-06'),
('FAC9358', 87402, '2024-06'),
('FAC1208', 97457, '2024-07'),
('FAC5492', 145586, '2024-07'),
('FAC6585', 163925, '2024-07'),
('FAC2187', 186218, '2024-07'),
('FAC7545', 160000, '2024-07'),
('FAC9699', 94554, '2024-07'),
('FAC2512', 153659, '2024-07'),
('FAC1330', 165021, '2024-06'),
('FAC9310', 115066, '2024-07'),
('FAC9524', 161529, '2024-06'),
('FAC7938', 167924, '2024-07'),
('FAC8649', 147991, '2024-06'),
('FAC4348', 124048, '2024-07'),
('FAC9905', 138162, '2024-07'),
('FAC5210', 161137, '2024-06'),
('FAC8033', 35669, '2024-06'),
('FAC7850', 68367, '2024-07'),
('FAC7378', 58242, '2024-07'),
('FAC3104', 114319, '2024-07'),
('FAC2382', 37708, '2024-06'),
('FAC6022', 54969, '2024-07'),
('FAC3529', 51911, '2024-06'),
('FAC1856', 45733, '2024-06'),
('FAC5678', 100426, '2024-07'),
('FAC7474', 32072, '2024-07'),
('FAC9956', 123720, '2024-07'),
('FAC7570', 17171, '2024-06'),
('FAC2909', 57259, '2024-06'),
('FAC2139', 197548, '2024-07'),
('FAC8752', 93635, '2024-06'),
('FAC8107', 58585, '2024-07'),
('FAC7475', 87244, '2024-06'),
('FAC3660', 55572, '2024-06'),
('FAC9573', 51213, '2024-06'),
('FAC2238', 129980, '2024-06'),
('FAC6979', 42157, '2024-06'),
('FAC8740', 127084, '2024-06'),
('FAC9872', 191436, '2024-06'),
('FAC9634', 78561, '2024-06'),
('FAC9210', 163844, '2024-06'),
('FAC3888', 80735, '2024-07'),
('FAC7110', 158138, '2024-06'),
('FAC5649', 102093, '2024-06'),
('FAC1490', 104241, '2024-07'),
('FAC5439', 41300, '2024-06'),
('FAC4962', 90456, '2024-06'),
('FAC8801', 165402, '2024-07'),
('FAC1904', 107189, '2024-06'),
('FAC7503', 23411, '2024-07'),
('FAC7561', 11359, '2024-06'),
('FAC5390', 79808, '2024-06'),
('FAC1760', 43148, '2024-07'),
('FAC3395', 102468, '2024-06'),
('FAC1926', 116488, '2024-06'),
('FAC7521', 61920, '2024-07'),
('FAC6693', 142010, '2024-07'),
('FAC1513', 39792, '2024-06'),
('FAC3039', 88189, '2024-07'),
('FAC3709', 179739, '2024-06'),
('FAC3914', 106611, '2024-06'),
('FAC8875', 142787, '2024-06');

INSERT INTO transations (ID_transation, mount_transation, type_transation, date_hour_transation, state_transation, mount_paid, use_platform)
VALUES
('TXN001', 38940, 'Pago de Factura', '2024-06-01 10:00:00', 'Pendiente', 0, 'Nequi'),
('TXN002', 75145, 'Pago de Factura', '2024-07-09 12:00:00', 'Pendiente', 75145, 'Daviplata'),
('TXN003', 179217, 'Pago de Factura', '2024-06-13 10:00:00', 'Fallida', 179217, 'Daviplata'),
('TXN004', 51767, 'Pago de Factura', '2024-07-26 13:00:00', 'Fallida', 51767, 'Daviplata'),
('TXN005', 156501, 'Pago de Factura', '2024-07-28 06:00:00', 'Completada', 156501, 'Daviplata'),
('TXN006', 32428, 'Pago de Factura', '2024-07-16 21:00:00', 'Completada', 32428, 'Nequi'),
('TXN007', 75301, 'Pago de Factura', '2024-07-26 22:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN008', 16870, 'Pago de Factura', '2024-06-17 16:00:00', 'Pendiente', 16870, 'Nequi'),
('TXN009', 21794, 'Pago de Factura', '2024-07-10 23:00:00', 'Fallida', 21794, 'Nequi'),
('TXN010', 193307, 'Pago de Factura', '2024-06-19 23:00:00', 'Completada', 0, 'Daviplata'),
('TXN011', 159093, 'Pago de Factura', '2024-06-01 06:00:00', 'Completada', 0, 'Daviplata'),
('TXN012', 174518, 'Pago de Factura', '2024-07-12 19:00:00', 'Pendiente', 0, 'Nequi'),
('TXN013', 110254, 'Pago de Factura', '2024-07-04 12:00:00', 'Fallida', 0, 'Daviplata'),
('TXN014', 162283, 'Pago de Factura', '2024-07-12 04:00:00', 'Pendiente', 0, 'Nequi'),
('TXN015', 22161, 'Pago de Factura', '2024-06-21 12:00:00', 'Pendiente', 22161, 'Daviplata'),
('TXN016', 195775, 'Pago de Factura', '2024-07-08 12:00:00', 'Pendiente', 195775, 'Daviplata'),
('TXN017', 20824, 'Pago de Factura', '2024-06-27 03:00:00', 'Fallida', 20824, 'Nequi'),
('TXN018', 191134, 'Pago de Factura', '2024-07-09 05:00:00', 'Completada', 0, 'Nequi'),
('TXN019', 62979, 'Pago de Factura', '2024-06-16 20:00:00', 'Completada', 0, 'Daviplata'),
('TXN020', 36472, 'Pago de Factura', '2024-06-08 22:00:00', 'Fallida', 0, 'Daviplata'),
('TXN021', 127881, 'Pago de Factura', '2024-06-16 06:00:00', 'Completada', 127881, 'Nequi'),
('TXN022', 26317, 'Pago de Factura', '2024-07-30 03:00:00', 'Fallida', 0, 'Daviplata'),
('TXN023', 147364, 'Pago de Factura', '2024-07-27 01:00:00', 'Pendiente', 147364, 'Nequi'),
('TXN024', 153404, 'Pago de Factura', '2024-06-26 01:00:00', 'Pendiente', 153404, 'Daviplata'),
('TXN025', 14210, 'Pago de Factura', '2024-07-07 10:00:00', 'Completada', 0, 'Nequi'),
('TXN026', 49012, 'Pago de Factura', '2024-06-08 19:00:00', 'Completada', 49012, 'Daviplata'),
('TXN027', 40302, 'Pago de Factura', '2024-06-28 06:00:00', 'Fallida', 40302, 'Daviplata'),
('TXN028', 27833, 'Pago de Factura', '2024-07-03 01:00:00', 'Pendiente', 27833, 'Daviplata'),
('TXN029', 30313, 'Pago de Factura', '2024-07-29 02:00:00', 'Fallida', 0, 'Nequi'),
('TXN030', 134884, 'Pago de Factura', '2024-07-26 20:00:00', 'Fallida', 134884, 'Daviplata'),
('TXN031', 28982, 'Pago de Factura', '2024-07-03 10:00:00', 'Completada', 28982, 'Nequi'),
('TXN032', 158030, 'Pago de Factura', '2024-06-15 17:00:00', 'Pendiente', 158030, 'Nequi'),
('TXN033', 196009, 'Pago de Factura', '2024-06-24 08:00:00', 'Fallida', 196009, 'Daviplata'),
('TXN034', 68526, 'Pago de Factura', '2024-06-22 17:00:00', 'Pendiente', 68526, 'Daviplata'),
('TXN035', 165287, 'Pago de Factura', '2024-06-23 12:00:00', 'Completada', 0, 'Nequi'),
('TXN036', 178265, 'Pago de Factura', '2024-06-28 11:00:00', 'Fallida', 178265, 'Nequi'),
('TXN037', 98069, 'Pago de Factura', '2024-07-23 18:00:00', 'Completada', 98069, 'Nequi'),
('TXN038', 153150, 'Pago de Factura', '2024-07-28 00:00:00', 'Completada', 153150, 'Nequi'),
('TXN039', 86902, 'Pago de Factura', '2024-06-05 12:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN040', 96457, 'Pago de Factura', '2024-06-28 04:00:00', 'Pendiente', 96457, 'Nequi'),
('TXN041', 145586, 'Pago de Factura', '2024-06-07 20:00:00', 'Fallida', 0, 'Daviplata'),
('TXN042', 163425, 'Pago de Factura', '2024-07-15 19:00:00', 'Fallida', 163425, 'Nequi'),
('TXN043', 186218, 'Pago de Factura', '2024-07-26 02:00:00', 'Pendiente', 186218, 'Nequi'),
('TXN044', 159000, 'Pago de Factura', '2024-07-12 01:00:00', 'Fallida', 159000, 'Daviplata'),
('TXN045', 94554, 'Pago de Factura', '2024-07-21 21:00:00', 'Pendiente', 94554, 'Daviplata'),
('TXN046', 152659, 'Pago de Factura', '2024-07-26 11:00:00', 'Fallida', 0, 'Daviplata'),
('TXN047', 165021, 'Pago de Factura', '2024-06-05 17:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN048', 115066, 'Pago de Factura', '2024-06-10 10:00:00', 'Completada', 0, 'Daviplata'),
('TXN049', 161029, 'Pago de Factura', '2024-06-03 20:00:00', 'Completada', 0, 'Daviplata'),
('TXN050', 167924, 'Pago de Factura', '2024-07-29 03:00:00', 'Completada', 167924, 'Nequi'),
('TXN051', 147991, 'Pago de Factura', '2024-07-24 19:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN052', 124048, 'Pago de Factura', '2024-07-26 11:00:00', 'Completada', 124048, 'Nequi'),
('TXN053', 138162, 'Pago de Factura', '2024-07-13 23:00:00', 'Completada', 0, 'Nequi'),
('TXN054', 161137, 'Pago de Factura', '2024-06-28 00:00:00', 'Fallida', 161137, 'Nequi'),
('TXN055', 35669, 'Pago de Factura', '2024-06-17 03:00:00', 'Fallida', 0, 'Daviplata'),
('TXN056', 67867, 'Pago de Factura', '2024-07-06 07:00:00', 'Fallida', 0, 'Nequi'),
('TXN057', 58242, 'Pago de Factura', '2024-07-25 20:00:00', 'Fallida', 0, 'Nequi'),
('TXN058', 113319, 'Pago de Factura', '2024-06-09 20:00:00', 'Pendiente', 113319, 'Nequi'),
('TXN059', 37708, 'Pago de Factura', '2024-07-11 23:00:00', 'Completada', 37708, 'Daviplata'),
('TXN060', 54969, 'Pago de Factura', '2024-07-20 16:00:00', 'Pendiente', 0, 'Nequi'),
('TXN061', 51411, 'Pago de Factura', '2024-07-08 23:00:00', 'Completada', 0, 'Daviplata'),
('TXN062', 45233, 'Pago de Factura', '2024-07-17 05:00:00', 'Completada', 45233, 'Nequi'),
('TXN063', 99926, 'Pago de Factura', '2024-06-10 01:00:00', 'Fallida', 0, 'Nequi'),
('TXN064', 31572, 'Pago de Factura', '2024-06-20 12:00:00', 'Completada', 31572, 'Nequi'),
('TXN065', 123720, 'Pago de Factura', '2024-06-14 03:00:00', 'Pendiente', 0, 'Nequi'),
('TXN066', 17171, 'Pago de Factura', '2024-07-29 14:00:00', 'Fallida', 0, 'Daviplata'),
('TXN067', 56259, 'Pago de Factura', '2024-07-23 09:00:00', 'Fallida', 0, 'Daviplata'),
('TXN068', 196548, 'Pago de Factura', '2024-06-20 22:00:00', 'Fallida', 0, 'Daviplata'),
('TXN069', 93635, 'Pago de Factura', '2024-06-20 18:00:00', 'Completada', 0, 'Daviplata'),
('TXN070', 58585, 'Pago de Factura', '2024-07-15 21:00:00', 'Completada', 58585, 'Daviplata'),
('TXN071', 86244, 'Pago de Factura', '2024-06-06 18:00:00', 'Completada', 0, 'Daviplata'),
('TXN072', 55572, 'Pago de Factura', '2024-07-18 20:00:00', 'Fallida', 0, 'Nequi'),
('TXN073', 50713, 'Pago de Factura', '2024-06-21 06:00:00', 'Fallida', 50713, 'Nequi'),
('TXN074', 129480, 'Pago de Factura', '2024-06-29 18:00:00', 'Completada', 129480, 'Nequi'),
('TXN075', 41657, 'Pago de Factura', '2024-07-03 20:00:00', 'Completada', 41657, 'Daviplata'),
('TXN076', 126084, 'Pago de Factura', '2024-06-15 11:00:00', 'Completada', 0, 'Daviplata'),
('TXN077', 190936, 'Pago de Factura', '2024-06-04 07:00:00', 'Fallida', 0, 'Nequi'),
('TXN078', 78561, 'Pago de Factura', '2024-06-21 21:00:00', 'Fallida', 78561, 'Nequi'),
('TXN079', 162844, 'Pago de Factura', '2024-07-23 11:00:00', 'Completada', 162844, 'Nequi'),
('TXN080', 80235, 'Pago de Factura', '2024-06-29 15:00:00', 'Fallida', 0, 'Nequi'),
('TXN081', 158138, 'Pago de Factura', '2024-06-18 00:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN082', 101593, 'Pago de Factura', '2024-06-06 15:00:00', 'Pendiente', 101593, 'Daviplata'),
('TXN083', 103741, 'Pago de Factura', '2024-06-22 03:00:00', 'Pendiente', 103741, 'Daviplata'),
('TXN084', 41300, 'Pago de Factura', '2024-07-04 02:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN085', 89956, 'Pago de Factura', '2024-06-19 11:00:00', 'Completada', 0, 'Daviplata'),
('TXN086', 165402, 'Pago de Factura', '2024-07-13 05:00:00', 'Completada', 165402, 'Nequi'),
('TXN087', 106689, 'Pago de Factura', '2024-07-04 09:00:00', 'Pendiente', 106689, 'Nequi'),
('TXN088', 22411, 'Pago de Factura', '2024-06-14 11:00:00', 'Completada', 22411, 'Nequi'),
('TXN089', 11359, 'Pago de Factura', '2024-06-27 05:00:00', 'Pendiente', 11359, 'Daviplata'),
('TXN090', 79808, 'Pago de Factura', '2024-06-08 10:00:00', 'Pendiente', 0, 'Nequi'),
('TXN091', 42648, 'Pago de Factura', '2024-07-05 21:00:00', 'Pendiente', 42648, 'Nequi'),
('TXN092', 101468, 'Pago de Factura', '2024-06-03 05:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN093', 115488, 'Pago de Factura', '2024-06-21 17:00:00', 'Pendiente', 0, 'Daviplata'),
('TXN094', 61920, 'Pago de Factura', '2024-07-26 00:00:00', 'Completada', 0, 'Daviplata'),
('TXN095', 141510, 'Pago de Factura', '2024-07-23 20:00:00', 'Fallida', 141510, 'Nequi'),
('TXN096', 39792, 'Pago de Factura', '2024-07-08 19:00:00', 'Pendiente', 39792, 'Daviplata'),
('TXN097', 87689, 'Pago de Factura', '2024-07-09 05:00:00', 'Completada', 0, 'Daviplata'),
('TXN098', 178739, 'Pago de Factura', '2024-07-06 00:00:00', 'Fallida', 0, 'Nequi'),
('TXN099', 105611, 'Pago de Factura', '2024-07-27 10:00:00', 'Fallida', 0, 'Daviplata'),
('TXN100', 141787, 'Pago de Factura', '2024-07-11 07:00:00', 'Fallida', 141787, 'Daviplata');


USE pd_sebastian_pereira_manglar;
DESCRIBE customers;
select * from customers;
SELECT * FROM customers LIMIT 2;
SELECT * FROM invoices LIMIT 2;
SELECT * FROM transations LIMIT 2;
SHOW DATABASES;
SHOW TABLES;

select * from transations
where state_transation = 'Pendiente';

select * from transations
where mount_transation > 100000 limit 3;

select * from transations
where use_platform in ('nequi');

select * from transations
where date_hour_transation between '2024-06-01' and '2024-06-30' limit 2;

select * from transations as t
where t.use_platform in ('Daviplata') and t.state_transation = 'Pendiente';

select * from transations as t
where t.ID_transation LIKE 'TXN0%';

select * from transations as t limit 5;

select * from transations
where state_transation = 'Fallida'
limit 3;

select * from transations
order by mount_transation ASC; -- DESC

select * from transations
order by date_hour_transation ASC;

select state_transation, count(*) AS total
from transations
group by state_transation;

select use_platform, count(*) as total
from transations group by use_platform
having total > 10;

select * from invoices;
select t.ID_transation, t.mount_transation, ID_bill, mount_bill
from transations t
JOIN invoices f ON MONTH(STR_TO_DATE(t.date_hour_transation, '%Y-%m-%d %H:%i:%s')) = 
       MONTH(STR_TO_DATE(CONCAT(f.periodo_facturacion, '-01'), '%Y-%m-%d'))
    AND ABS(t.mount_transation - f.monto_facturado) < 500;
    

select 'Transacción'  as tipo, mount_transation as monto from transations
UNION
select 'Factura', mount_bill from invoices
order by monto DESC;
