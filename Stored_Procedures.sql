create or replace procedure GetPropertyRecord(ownerID in number) as
prop_id number(10);
floors number(3);
t_area number(4);
p_area number(4);
construction_year number(4);
door number;
street char(25);
city char(15);
state char(5);
pincode number;
percent_hike number(5);
rent number;
prop_type char(3);
total_bed number;
cursor printProp is
select PROPERTY_ID,TOTAL_FLOORS,TOTAL_AREA,PLINTH_AREA,CONST_YEAR,DOOR_NO,STREET,CITY,STATE,PINCODE,HIKE,RENT,PROP_TYPE,TOTAL_BED
from SYS.PROPERTY, SYS.PROP_OWNED where
AID=ownerID AND PID=PROPERTY_ID;
begin
dbms_output.put_line('PID		TF	TA	PA	YEAR	DOOR	STREET				CITY		STATE	CODE	HIKE	RENT	TYPE	BEDS');
dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------------------------------------');
open printProp;
loop
fetch printProp into prop_id,floors,t_area,p_area,construction_year,door,street,city,state,pincode,percent_hike,rent,prop_type,total_bed;
exit when printProp%notfound;
dbms_output.put_line(prop_id||CHR(9)||CHR(9)||floors||CHR(9)||t_area||CHR(9)||p_area||CHR(9)||construction_year||CHR(9)||door||CHR(9)||street||CHR(9)||city||CHR(9)||state||CHR(9)||pincode||CHR(9)||percent_hike||CHR(9)||rent||CHR(9)||prop_type||CHR(9)||total_bed);
end loop;
close printProp;
end;
/



create or replace procedure GetTenantDetails(propID in number) as
aadhaar_id number(12);
name char(10);
age number;	
door number;
street char(25);
city char(15);
state char(5);
pincode number(6);
cursor printTenant is
SELECT AADHAAR_ID, NAME, AGE, DOOR_NO, STREET, CITY, STATE, PINCODE FROM SYS.USERS WHERE AADHAAR_ID IN (SELECT AID FROM SYS.PROP_RENTED WHERE PID = propID AND START_DATE<(SELECT CURRENT_DATE from DUAL) AND END_DATE>(select CURRENT_DATE from DUAL));
begin
dbms_output.put_line('TENANT_ID		NAME		AGE	DOOR	STREET				CITY		STATE	CODE');
dbms_output.put_line('--------------------------------------------------------------------------------------------------------------------------');
open printTenant;
loop
fetch printTenant into aadhaar_id,name,age,door,street,city,state,pincode;
exit when printTenant%notfound;
dbms_output.put_line(aadhaar_id||CHR(9)||CHR(9)||name||CHR(9)||age||CHR(9)||door||CHR(9)||street||CHR(9)||city||CHR(9)||state||CHR(9)||pincode);
end loop;
close printTenant;
end;
/



create or replace procedure SearchPropertyForRent(cityname in char) as
owner_id number;
prop_id number(10);
floors number(3);
t_area number(4);
p_area number(4);
construction_year number(4);
door number;
street char(25);
city char(15);
state char(5);
pincode number;
percent_hike number(5);
rent number;
prop_type char(3);
total_bed number;
cursor searchRentProp is
(select AID, PROPERTY_ID,TOTAL_FLOORS,TOTAL_AREA,PLINTH_AREA,CONST_YEAR,DOOR_NO,STREET,CITY,STATE,PINCODE,HIKE,RENT,PROP_TYPE,TOTAL_BED from SYS.PROPERTY, SYS.PROP_OWNED where PID=PROPERTY_ID AND CITY=cityname)
MINUS
(select PO.AID,PROPERTY_ID,TOTAL_FLOORS,TOTAL_AREA,PLINTH_AREA,CONST_YEAR,DOOR_NO,STREET,CITY,STATE,PINCODE,HIKE,RENT,PROP_TYPE,TOTAL_BED from SYS.PROPERTY, SYS.PROP_RENTED PR, SYS.PROP_OWNED PO where PR.PID=PROPERTY_ID AND PO.PID = PROPERTY_ID AND CITY=cityname AND START_DATE<(SELECT CURRENT_DATE from DUAL) AND END_DATE>(select CURRENT_DATE from DUAL));
begin
dbms_output.put_line('OWNER_ID		PID		TF	TA	PA	YEAR	DOOR	STREET				CITY		STATE	CODE	HIKE	RENT	TYPE	BEDS');
dbms_output.put_line('------------------------------------------------------------------------------------------------------------------------------------------------------------------------------');
open searchRentProp;
loop
fetch searchRentProp into owner_id,prop_id,floors,t_area,p_area,construction_year,door,street,city,state,pincode,percent_hike,rent,prop_type,total_bed;
exit when searchRentProp%notfound;
dbms_output.put_line(owner_id||CHR(9)||CHR(9)||prop_id||CHR(9)||CHR(9)||floors||CHR(9)||t_area||CHR(9)||p_area||CHR(9)||construction_year||CHR(9)||door||CHR(9)||street||CHR(9)||city||CHR(9)||state||CHR(9)||pincode||CHR(9)||percent_hike||CHR(9)||rent||CHR(9)||prop_type||CHR(9)||total_bed);
end loop;
close searchRentProp;
end;
/



create or replace procedure GetRentHistory(p_id in number) as
tenant_id number;
prop_id number;
startDate date;
endDate date;
rent number;
cursor getRentHistory is
select AID, PID, START_DATE, END_DATE, RENT from SYS.PROPERTY, SYS.PROP_RENTED where PID=PROPERTY_ID AND PID=p_id ORDER BY START_DATE DESC;
begin
dbms_output.put_line('TENANT_ID		PROP_ID		START_DATE	END_DATE	RENT');
dbms_output.put_line('-------------------------------------------------------------------------------');
open getRentHistory;
loop
fetch getRentHistory into tenant_id,prop_id,startDate,endDate,rent;
exit when getRentHistory%notfound;
dbms_output.put_line(tenant_id||CHR(9)||CHR(9)||prop_id||CHR(9)||CHR(9)||startDate||CHR(9)||endDate||CHR(9)||rent);
end loop;
close getRentHistory;
end;
/



CREATE OR REPLACE PROCEDURE InsertPropertyRecord(AID IN NUMBER, PID IN NUMBER, FLOORS IN NUMBER, TA IN NUMBER, PA IN NUMBER, YR IN NUMBER, DOOR IN NUMBER, STREET IN CHAR, CITY IN CHAR, STATE IN CHAR, PINCODE IN NUMBER, HIKE IN NUMBER, RENT IN NUMBER, P_TYPE IN NUMBER, BED IN NUMBER) AS
CURRENT CHAR(10);
ID NUMBER;
M NUMBER;
BEGIN
SELECT USER INTO CURRENT FROM DUAL;
SELECT AID INTO ID FROM SYS.LOGIN WHERE USER_NAME = CURRENT;
SELECT M_FLAG INTO M FROM SYS.USERS WHERE AADHAAR_ID = AID;
IF (ID = AID) THEN
	UPDATE SYS.USERS SET O_FLAG = 1 WHERE AADHAAR_ID = AID;
	INSERT INTO SYS.PROPERTY VALUES(PID, FLOORS, TA, PA, YR, DOOR, STREET, CITY, STATE, PINCODE, HIKE, RENT, P_TYPE, BED);
	INSERT INTO SYS.PROP_OWNED VALUES(AID, PID);
ELSIF (M = 1) THEN
	UPDATE SYS.USERS SET O_FLAG = 1 WHERE AADHAAR_ID = AID;
	INSERT INTO SYS.PROPERTY VALUES(PID, FLOORS, TA, PA, YR, DOOR, STREET, CITY, STATE, PINCODE, HIKE, RENT, P_TYPE, BED);
	INSERT INTO SYS.PROP_OWNED VALUES(AID, PID);
ELSE
	DBMS_OUTPUT.PUT_LINE('INSERT NOT POSSIBLE.');
END IF;
END;
/



create or replace procedure CreateNewUser(AID IN NUMBER, NAME IN VARCHAR2, AGE IN NUMBER, DOOR IN NUMBER, STREET IN VARCHAR2, CITY IN VARCHAR2, STATE IN VARCHAR2, PINCODE IN NUMBER, O_FLAG IN NUMBER, T_FLAG IN NUMBER, M_FLAG IN NUMBER, SU_FLAG IN NUMBER, PHONE IN NUMBER, U_NAME IN VARCHAR, PASS IN VARCHAR) as 
CURRENT char(10);
UN char(10); 
SU NUMBER;
checkFlag number;
lv_stmt varchar2(100);
lv_stmt0 varchar2(100);
lv_stmt1 varchar2(100);
lv_stmtO varchar2(100);
lv_stmtT varchar2(100);
lv_stmtM varchar2(100);
lv_stmtSU varchar2(100);

cursor getName is
select USER_NAME from SYS.LOGIN;
BEGIN
checkFlag:=1;
open getName;
loop
	fetch getName into UN;
	exit when getName%notfound;
	IF(UN = U_NAME) THEN
		checkFlag:=0;
	END IF;
end loop;
close getName;

CURRENT := USER;
SELECT SU_FLAG INTO SU FROM SYS.USERS, SYS.LOGIN WHERE AADHAAR_ID = AID AND USER_NAME = CURRENT;
IF (SU = 0) THEN
	DBMS_OUTPUT.PUT_LINE('CURRENT USER CANNOT CREATE A NEW USER.');
ELSIF (checkFlag = 0) THEN
	DBMS_OUTPUT.PUT_LINE('USER_NAME ALREADY TAKEN.');
ELSE
	lv_stmt0 := 'CREATE USER ' || U_NAME || ' IDENTIFIED BY ' || PASS;
	EXECUTE IMMEDIATE ( lv_stmt0 ); 
	
	lv_stmt1 := 'GRANT CREATE SESSION TO ' || U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt1 );

	INSERT INTO SYS.USERS VALUES(AID, NAME, AGE, DOOR, STREET, CITY, STATE, PINCODE, O_FLAG, T_FLAG, M_FLAG, SU_FLAG);
	INSERT INTO SYS.USER_PHONE VALUES(AID, PHONE);
	INSERT INTO SYS.LOGIN VALUES(AID, U_NAME, PASS);
	
	IF (O_FLAG = 1) THEN
		lv_stmtO := 'GRANT SELECT, UPDATE ON SYS.USERS TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
		lv_stmtO := 'GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
		lv_stmtO := 'GRANT SELECT, UPDATE ON SYS.LOGIN TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
		lv_stmtO := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
		lv_stmtO := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
		lv_stmtO := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtO );
	END IF;
	IF (T_FLAG = 1) THEN
		lv_stmtT := 'GRANT SELECT, UPDATE ON SYS.USERS TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
		lv_stmtT := 'GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
		lv_stmtT := 'GRANT SELECT, UPDATE ON SYS.LOGIN TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
		lv_stmtT := 'GRANT SELECT, INSERT ON SYS.PROPERTY TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
		lv_stmtT := 'GRANT SELECT, INSERT ON SYS.PROP_OWNED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
		lv_stmtT := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtT );
	END IF;
	IF (M_FLAG = 1) THEN
		lv_stmtM := 'GRANT SELECT, UPDATE ON SYS.USERS TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
		lv_stmtM := 'GRANT SELECT, UPDATE ON SYS.USER_PHONE TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
		lv_stmtM := 'GRANT SELECT, UPDATE ON SYS.LOGIN TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
		lv_stmtM := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
		lv_stmtM := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
		lv_stmtM := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtM );
	END IF;
	IF (SU_FLAG = 1) THEN
		lv_stmtSU := 'GRANT SELECT, UPDATE, INSERT, DELETE ON SYS.USERS TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
		lv_stmtSU := 'GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
		lv_stmtSU := 'GRANT SELECT, UPDATE, INSERT, DELETE ON SYS.LOGIN TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
		lv_stmtSU := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
		lv_stmtSU := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
		lv_stmtSU := 'GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO ' || U_NAME;
		EXECUTE IMMEDIATE ( lv_stmtSU );
	END IF;
	
	lv_stmt := 'GRANT EXECUTE ON SYS.GetPropertyRecord TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	lv_stmt := 'GRANT EXECUTE ON SYS.GetTenantDetails TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	lv_stmt := 'GRANT EXECUTE ON SYS.SearchPropertyForRent TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	lv_stmt := 'GRANT EXECUTE ON SYS.GetRentHistory TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	lv_stmt := 'GRANT EXECUTE ON SYS.InsertPropertyRecord TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	lv_stmt := 'GRANT EXECUTE ON SYS.CreateNewUser TO '|| U_NAME;
	EXECUTE IMMEDIATE ( lv_stmt );
	
END IF;
END;
/




