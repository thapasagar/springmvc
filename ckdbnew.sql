/* TASKS BELOW*/

DROP DATABASE IF EXISTS CKDB;

CREATE DATABASE IF NOT EXISTS CKDB;

USE CKDB;

CREATE TABLE `COUNTRY` (
    `COUNTRY_ID` 	VARCHAR(6) NOT NULL PRIMARY KEY,
	`COUNTRY_NAME` 	CHAR(30) NOT NULL,
	`COUNTRY_ABB` 	CHAR(3) NOT NULL UNIQUE
	
);


CREATE TABLE `STATES` (
    `STATE_ID` VARCHAR(8) NOT NULL PRIMARY KEY,
    `STATE_ABB` CHAR(2) 		NOT NULL,
	`STATE_NAME` VARCHAR(30) 	NOT NULL,
	`COUNTRY_ID` VARCHAR(6) 	NOT NULL,
	FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY(COUNTRY_ID)
);


CREATE TABLE CKSTORE (
  STORE_ID  		VARCHAR(11) NOT NULL PRIMARY KEY ,
  STORE_NAME    	VARCHAR(50) NOT NULL,
  STORE_STREET   	VARCHAR(50) NOT NULL,
  STORE_SUITE		VARCHAR(25) ,
  STORE_CITY        CHAR(25) NOT NULL,
  STATE_ID       	VARCHAR(8) NOT NULL,
  FOREIGN KEY (STATE_ID) REFERENCES STATES(STATE_ID)
);

CREATE TABLE CKMEMBER (
  MEMBER_ID  	VARCHAR(10) NOT NULL PRIMARY KEY ,
  USERNAME		VARCHAR(25)    NOT NULL UNIQUE,
  EMAIL    		VARCHAR(25)    NOT NULL UNIQUE,
  MEMBERSHIP_DATE  DATETIME   ,
  LAST_NAME     CHAR(30),
  FIRST_NAME    CHAR(30),
  PHONE         VARCHAR(25),
  PREFERRED_STORE VARCHAR(11),
  FOREIGN KEY (PREFERRED_STORE) REFERENCES CKSTORE(STORE_ID)
);



CREATE TABLE CKMEMBER_ADDRESS(
  MEMBER_ID  	VARCHAR(10) NOT NULL PRIMARY KEY,
  STREET        	VARCHAR(35),
  CITY          	CHAR(25),
   ZIP           	INTEGER(10),
  STATE_ID       	VARCHAR(8),
  COUNTRY_ID		VARCHAR(6),
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID),
   FOREIGN KEY (STATE_ID) REFERENCES STATES(STATE_ID)
);


CREATE TABLE CKMEMBER_PERSONAL_DETAILS (
  MEMBER_ID  		VARCHAR(10)  NOT NULL PRIMARY KEY ,
  MIN_INCOME      	INTEGER(10),
  MAX_INCOME		INTEGER(10),
  GENDER	    	CHAR(6),
  DOB_DAY		   	INTEGER(2),
  DOB_MONTH		   	CHAR(10),
  MARITIAL_STATUS 	CHAR(10),
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID)
);


CREATE TABLE PURCHASE_HISTORY (
  MEMBER_ID  		VARCHAR(10) NOT NULL ,
  STORE_ID          VARCHAR(11),
  UPC_CODE        	VARCHAR(15),
  ITEM_PRICE        DECIMAL(10,2),
  PURCHASE_DATE		DATETIME,
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID),
  FOREIGN KEY (STORE_ID) REFERENCES CKSTORE(STORE_ID)
);



CREATE TABLE LOGIN_INFO (
  USERNAME 		VARCHAR(20) NOT NULL PRIMARY KEY,
  PASSWORD 		VARCHAR(255) NOT NULL,
  FOREIGN KEY (USERNAME) REFERENCES CKMEMBER(USERNAME)
);


CREATE TABLE `EMAIL_PREFERENCE` (
  MEMBER_ID 			VARCHAR(10) NOT NULL,
  SUBSCRIPTION			VARCHAR(30) NOT NULL,
  FOREIGN KEY (MEMBER_ID) REFERENCES CKMEMBER(MEMBER_ID)
);


INSERT INTO COUNTRY (COUNTRY_ID,COUNTRY_NAME,COUNTRY_ABB) 
VALUES 
('CID001','United States', 'USA'),
('CID002','Canada','CAN'),
('CID003','Mexico','MEX');


INSERT INTO STATES (STATE_ID,STATE_NAME,STATE_ABB,COUNTRY_ID) 
VALUES 
('SID00101','Alabama','AL','CID001'),
('SID00102','Alaska','AK','CID001'),
('SID00103','Arizona','AZ','CID001'),
('SID00104','Arkansas','AR','CID001'),
('SID00105','California','CA','CID001'),
('SID00106','Colorado','CO','CID001'),
('SID00107','Connecticut','CT','CID001'),
('SID00108','Delaware','DE','CID001'),
('SID00109','District of Columbia','DC','CID001'),
('SID00110','Florida','FL','CID001'),
('SID00111','Georgia','GA','CID001'),
('SID00112','Hawaii','HI','CID001'),
('SID00113','Idaho','ID','CID001'),
('SID00114','Illinois','IL','CID001'),
('SID00115','Indiana','IN','CID001'),
('SID00116','Iowa','IA','CID001'),
('SID00117','Kansas','KS','CID001'),
('SID00118','Kentucky','KY','CID001'),
('SID00119','Louisiana','LA','CID001'),
('SID00120','Maine','ME','CID001'),
('SID00121','Montana','MT','CID001'),
('SID00122','Nebraska','NE','CID001'),
('SID00123','Nevada','NV','CID001'),
('SID00124','New Hampshire','NH','CID001'),
('SID00125','New Jersey','NJ','CID001'),
('SID00126','New Mexico','NM','CID001'),
('SID00127','New York','NY','CID001'),
('SID00128','North Carolina','NC','CID001'),
('SID00129','North Dakota','ND','CID001'),
('SID00130','Ohio','OH','CID001'),
('SID00131','Oklahoma','OK','CID001'),
('SID00132','Oregon','OR','CID001'),
('SID00133','Maryland','MD','CID001'),
('SID00134','Massachusetts','MA','CID001'),
('SID00135','Michigan','MI','CID001'),
('SID00136','Minnesota','MN','CID001'),
('SID00137','Mississippi','MS','CID001'),
('SID00138','Missouri','MO','CID001'),
('SID00139','Pennsylvania','PA','CID001'),
('SID00140','Rhode Island','RI','CID001'),
('SID00141','South Carolina','SC','CID001'),
('SID00142','South Dakota','SD','CID001'),
('SID00143','Tennessee','TN','CID001'),
('SID00144','Texas','TX','CID001'),
('SID00145','Utah','UT','CID001'),
('SID00146','Vermont','VT','CID001'),
('SID00147','Virginia','VA','CID001'),
('SID00148','Washington','WA','CID001'),
('SID00149','West Virginia','WV','CID001'),
('SID00150','Wisconsin','WI','CID001'),
('SID00151','Wyoming','WY','CID001'),
('SID00201','Alberta','AB','CID002'),
('SID00202','British Columbia','BC','CID002'),
('SID00203','Manitoba','MB','CID002'),
('SID00204','New Brunswick','NB','CID002'),
('SID00205','Newfoundland and Labrador','NL','CID002'),
('SID00206','Northwest Territories','NT','CID002'),
('SID00207','Nova Scotia','NS','CID002'),
('SID00208','Nunavut','NU','CID002'),
('SID00209','Ontario','ON','CID002'),
('SID00210','Prince Edward Island','PE','CID002'),
('SID00211','Quebec','QC','CID002'),
('SID00212','Saskatchewan','SK','CID002'),
('SID00213','Yukon','YT','CID002');



INSERT INTO CKSTORE (STORE_ID,STORE_NAME,STORE_STREET,STORE_SUITE,STORE_CITY,STATE_ID)
VALUES
('STR00144001','katy mills','5000 katy mills circle','suite 358','katy','SID00144'),
('STR00144002','rio grande valley premium outlets','5501 east expressway 83','suite 208','mercedes','SID00144'),
('STR00144003','tanger outlets texas city','5885 gulf freeway','suite 245','texas city','SID00144'),
('STR00144004','grand prairie premium outlets','2950 west interstate 20','suite 615','grand prairie','SID00144'),
('STR00144005','rio grande valley premium outlets','5001 east expwy 83','suite #431','mercedes','SID00144'),
('STR00144006','allen premium outlets','820 west stacy rd','suite 131','allen','SID00144'),
('STR00144007','san marcos premium outlets','3939 ih-35 south','suite 1390','san marcos','SID00144'),
('STR00144008','the outlet shoppes of el paso','7051 south desert blvd','suite e581','canutillo','SID00144'),
('STR00144009','houston premium outlets','29300 hempstead rd','suite #807','cypress','SID00144'),
('STR00144010','round rock premium outlets','4401 north ih-35','suite 499','round rock','SID00144'),
('STR00144011','tanger outlets','4015 interstate 35 south','ste. 507','san marcos','SID00144'),
('STR00144012','houston premium outlets','29300 hempstead rd','suite 601','cypress','SID00144'),
('STR00105001','camarillo premium outlets','740 e. ventura blvd','suite 410','camarillo','SID00105'),
('STR00105002','gilroy premium outlets','681 leavesley road','suite a045','gilroy','SID00105'),
('STR00105003','vacaville premium outlets','321 nut tree road','suite 311g','vacaville','SID00105'),
('STR00105004','the outlets at orange','20 city blvd west','suite 511','orange','SID00105'),
('STR00105005','san francisco premium outlers','2774 livermore outlets drive','suite 2650','livermore','SID00105'),
('STR00105006','outlets at tejon','5701 outlets at tejon pwy','suite 950','arvin','SID00105'),
('STR00105007','outlets at san clemente','101 west avenida vista hermosa','suite #400','san clemente','SID00105'),
('STR00105008','camarillo premium outlets','740 e. ventura blvd','suite 958','camarillo','SID00105'),
('STR00105009','citadel outlets','100 citadel drive','suite 452','city of commerce','SID00105'),
('STR00105010','carlsbad premium outlets','5630 paseo del norte','suite #114d','carlsbad','SID00105'),
('STR00105011','carlsbad premium outlets','5620 paseo del norte','suite 133-a','carlsbad','SID00105'),
('STR00105012','the outlets at orange','20 city blvd. west','suite #610','orange','SID00105'),
('STR00105013','vacaville premium outlets','321 nut tree road','suite 374','vacaville','SID00105'),
('STR00105014','ontario mills','1 mills circle','suite 820a','ontario','SID00105'),
('STR00105015','napa premium outlets','629 factory stores drive','suite 705','napa','SID00105'),
('STR00105016','gilroy premium outlets','681 leavesley road','suite b250','gilroy','SID00105'),
('STR00105017','tulare outlet center','1407 retherford street','suite e20','tulare','SID00105'),
('STR00105018','costa mesa retail store','3333 bristol st ste 302',null,'costa mesa','SID00105'),
('STR00105019','glendale retail store','250 americana way',null,'glendale','SID00105'),
('STR00105020','las americas premium outlets','4211 camino de la plaza','suite 180','san diego','SID00105'),
('STR00105021','folsom premium outlets','13000 folsom blvd','suite 502','folsom','SID00105'),
('STR00105022','citadel outlets','100 citadel drive','suite 602','city of commerce','SID00105'),
('STR00105023','camarillo premium outlets','740 e. ventura boulevard','suite 824','camarillo','SID00105'),
('STR00105024','great mall of bay area','447 great mall dr','suite 534','milpitas','SID00105'),
('STR00105025','las americas premium outlets','4245 camino de la plaza','suite #300','san ysidro','SID00105'),
('STR00105026','great mall','447 great mall dr',null,'milpitas','SID00105'),
('STR00105027','san francisco premium outlet','3020 livermore outlets drive',null,'livermore','SID00105'),
('STR00105028','pismo beach premium outlets','333 five cities dr','suite 105','pismo beach','SID00105'),
('STR00105029','tanger outlets','2796 tanger way','suite 210','barstow','SID00105'),
('STR00105030','desert hills premium outlets','48400 seminole drive','suite 182','cabazon','SID00105');



INSERT INTO CKMEMBER (MEMBER_ID, USERNAME, EMAIL , MEMBERSHIP_DATE, LAST_NAME, FIRST_NAME, PHONE, PREFERRED_STORE)
VALUES ("PM10000001", "sagar", "sthapa@gmail.com", '2015/01/03/', "Thapa", "sagar", null, 'STR00105030');

INSERT INTO LOGIN_INFO ( USERNAME,  PASSWORD )
VALUES ("sagar", md5("thapa") )
;
