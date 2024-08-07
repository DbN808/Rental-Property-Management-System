CREATE USER DARSH IDENTIFIED BY DAR123;
CREATE USER ACHYUT IDENTIFIED BY ACH123;
CREATE USER SARTHAK IDENTIFIED BY SAR123;
CREATE USER MICHEAL IDENTIFIED BY MIC456;
CREATE USER RACHEAL IDENTIFIED BY RAC456;
CREATE USER KHUSHI IDENTIFIED BY KHU456;
CREATE USER PARTHVI IDENTIFIED BY PAR789;
CREATE USER LUCIFER IDENTIFIED BY LUC789;
CREATE USER SHIRLEY IDENTIFIED BY SHI789;
CREATE USER LAUREN IDENTIFIED BY LAU012;
CREATE USER MARTHA IDENTIFIED BY MAR012;
CREATE USER JEREMY IDENTIFIED BY JER012;
CREATE USER GABRIEL IDENTIFIED BY GAB345;
CREATE USER SOPHIA IDENTIFIED BY SOP345;


GRANT CREATE SESSION TO DARSH;
GRANT CREATE SESSION TO ACHYUT;
GRANT CREATE SESSION TO SARTHAK;
GRANT CREATE SESSION TO MICHEAL;
GRANT CREATE SESSION TO RACHEAL;
GRANT CREATE SESSION TO KHUSHI;
GRANT CREATE SESSION TO PARTHVI;
GRANT CREATE SESSION TO LUCIFER;
GRANT CREATE SESSION TO SHIRLEY;
GRANT CREATE SESSION TO LAUREN;
GRANT CREATE SESSION TO MARTHA;
GRANT CREATE SESSION TO JEREMY;
GRANT CREATE SESSION TO GABRIEL;
GRANT CREATE SESSION TO SOPHIA;

GRANT dba TO DARSH;

GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USERS TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.LOGIN TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO DARSH;

GRANT SELECT, UPDATE ON SYS.USERS TO DARSH;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO DARSH;
GRANT SELECT, UPDATE ON SYS.LOGIN TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO DARSH;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO DARSH;



GRANT SELECT, UPDATE ON SYS.USERS TO ACHYUT;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO ACHYUT;
GRANT SELECT, UPDATE ON SYS.LOGIN TO ACHYUT;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO ACHYUT;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO ACHYUT;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO ACHYUT;



GRANT SELECT, UPDATE ON SYS.USERS TO SARTHAK;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO SARTHAK;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SARTHAK;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO SARTHAK;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO SARTHAK;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SARTHAK;



GRANT SELECT, UPDATE ON SYS.USERS TO MICHEAL;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO MICHEAL;
GRANT SELECT, UPDATE ON SYS.LOGIN TO MICHEAL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO MICHEAL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO MICHEAL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO MICHEAL;



GRANT SELECT, UPDATE ON SYS.USERS TO RACHEAL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO RACHEAL;
GRANT SELECT, UPDATE ON SYS.LOGIN TO RACHEAL;
GRANT SELECT, INSERT ON SYS.PROPERTY TO RACHEAL;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO RACHEAL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO RACHEAL;



GRANT SELECT, UPDATE ON SYS.USERS TO KHUSHI;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO KHUSHI;
GRANT SELECT, UPDATE ON SYS.LOGIN TO KHUSHI;
GRANT SELECT, INSERT ON SYS.PROPERTY TO KHUSHI;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO KHUSHI;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO KHUSHI;



GRANT SELECT, UPDATE ON SYS.USERS TO PARTHVI;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO PARTHVI;
GRANT SELECT, UPDATE ON SYS.LOGIN TO PARTHVI;
GRANT SELECT, INSERT ON SYS.PROPERTY TO PARTHVI;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO PARTHVI;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO PARTHVI;



GRANT SELECT, UPDATE ON SYS.USERS TO LUCIFER;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO LUCIFER;
GRANT SELECT, UPDATE ON SYS.LOGIN TO LUCIFER;
GRANT SELECT, INSERT ON SYS.PROPERTY TO LUCIFER;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO LUCIFER;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO LUCIFER;

GRANT SELECT, UPDATE ON SYS.USERS TO LUCIFER;
GRANT SELECT, UPDATE ON SYS.USER_PHONE TO LUCIFER;
GRANT SELECT, UPDATE ON SYS.LOGIN TO LUCIFER;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO LUCIFER;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO LUCIFER;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO LUCIFER;



GRANT SELECT, UPDATE ON SYS.USERS TO SHIRLEY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO SHIRLEY;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SHIRLEY;
GRANT SELECT, INSERT ON SYS.PROPERTY TO SHIRLEY;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO SHIRLEY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SHIRLEY;

GRANT SELECT, UPDATE ON SYS.USERS TO SHIRLEY;
GRANT SELECT, UPDATE ON SYS.USER_PHONE TO SHIRLEY;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SHIRLEY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO SHIRLEY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO SHIRLEY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SHIRLEY;



GRANT SELECT, UPDATE ON SYS.USERS TO LAUREN;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO LAUREN;
GRANT SELECT, UPDATE ON SYS.LOGIN TO LAUREN;
GRANT SELECT, INSERT ON SYS.PROPERTY TO LAUREN;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO LAUREN;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO LAUREN;

GRANT SELECT, UPDATE ON SYS.USERS TO LAUREN;
GRANT SELECT, UPDATE ON SYS.USER_PHONE TO LAUREN;
GRANT SELECT, UPDATE ON SYS.LOGIN TO LAUREN;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO LAUREN;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO LAUREN;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO LAUREN;



GRANT SELECT, UPDATE ON SYS.USERS TO MARTHA;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO MARTHA;
GRANT SELECT, UPDATE ON SYS.LOGIN TO MARTHA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO MARTHA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO MARTHA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO MARTHA;

GRANT SELECT, UPDATE ON SYS.USERS TO MARTHA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO MARTHA;
GRANT SELECT, UPDATE ON SYS.LOGIN TO MARTHA;
GRANT SELECT, INSERT ON SYS.PROPERTY TO MARTHA;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO MARTHA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO MARTHA;



GRANT SELECT, UPDATE ON SYS.USERS TO JEREMY;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO JEREMY;
GRANT SELECT, UPDATE ON SYS.LOGIN TO JEREMY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO JEREMY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO JEREMY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO JEREMY;

GRANT SELECT, UPDATE ON SYS.USERS TO JEREMY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO JEREMY;
GRANT SELECT, UPDATE ON SYS.LOGIN TO JEREMY;
GRANT SELECT, INSERT ON SYS.PROPERTY TO JEREMY;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO JEREMY;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO JEREMY;



GRANT SELECT, UPDATE ON SYS.USERS TO GABRIEL;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO GABRIEL;
GRANT SELECT, UPDATE ON SYS.LOGIN TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO GABRIEL;

GRANT SELECT, UPDATE ON SYS.USERS TO GABRIEL;
GRANT SELECT, UPDATE ON SYS.USER_PHONE TO GABRIEL;
GRANT SELECT, UPDATE ON SYS.LOGIN TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO GABRIEL;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO GABRIEL;



GRANT SELECT, UPDATE ON SYS.USERS TO SOPHIA;
GRANT SELECT, UPDATE ON SYS.USER_PHONE TO SOPHIA;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SOPHIA;

GRANT SELECT, UPDATE ON SYS.USERS TO SOPHIA;
GRANT SELECT, DELETE, INSERT, UPDATE ON SYS.USER_PHONE TO SOPHIA;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROPERTY TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_OWNED TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SOPHIA;

GRANT SELECT, UPDATE ON SYS.USERS TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.USER_PHONE TO SOPHIA;
GRANT SELECT, UPDATE ON SYS.LOGIN TO SOPHIA;
GRANT SELECT, INSERT ON SYS.PROPERTY TO SOPHIA;
GRANT SELECT, INSERT ON SYS.PROP_OWNED TO SOPHIA;
GRANT SELECT, INSERT, UPDATE, DELETE ON SYS.PROP_RENTED TO SOPHIA;




GRANT EXECUTE ON SYS.GetPropertyRecord TO DARSH;
GRANT EXECUTE ON SYS.GetTenantDetails TO DARSH;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO DARSH;
GRANT EXECUTE ON SYS.GetRentHistory TO DARSH;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO DARSH;
GRANT EXECUTE ON SYS.CreateNewUser TO DARSH;


GRANT EXECUTE ON SYS.GetPropertyRecord TO ACHYUT;
GRANT EXECUTE ON SYS.GetTenantDetails TO ACHYUT;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO ACHYUT;
GRANT EXECUTE ON SYS.GetRentHistory TO ACHYUT;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO ACHYUT;
GRANT EXECUTE ON SYS.CreateNewUser TO ACHYUT;


GRANT EXECUTE ON SYS.GetPropertyRecord TO SARTHAK;
GRANT EXECUTE ON SYS.GetTenantDetails TO SARTHAK;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO SARTHAK;
GRANT EXECUTE ON SYS.GetRentHistory TO SARTHAK;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO SARTHAK;
GRANT EXECUTE ON SYS.CreateNewUser TO SARTHAK;


GRANT EXECUTE ON SYS.GetPropertyRecord TO MICHEAL;
GRANT EXECUTE ON SYS.GetTenantDetails TO MICHEAL;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO MICHEAL;
GRANT EXECUTE ON SYS.GetRentHistory TO MICHEAL;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO MICHEAL;
GRANT EXECUTE ON SYS.CreateNewUser TO MICHEAL;


GRANT EXECUTE ON SYS.GetPropertyRecord TO RACHEAL;
GRANT EXECUTE ON SYS.GetTenantDetails TO RACHEAL;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO RACHEAL;
GRANT EXECUTE ON SYS.GetRentHistory TO RACHEAL;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO RACHEAL;
GRANT EXECUTE ON SYS.CreateNewUser TO RACHEAL;


GRANT EXECUTE ON SYS.GetPropertyRecord TO KHUSHI;
GRANT EXECUTE ON SYS.GetTenantDetails TO KHUSHI;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO KHUSHI;
GRANT EXECUTE ON SYS.GetRentHistory TO KHUSHI;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO KHUSHI;
GRANT EXECUTE ON SYS.CreateNewUser TO KHUSHI;


GRANT EXECUTE ON SYS.GetPropertyRecord TO PARTHVI;
GRANT EXECUTE ON SYS.GetTenantDetails TO PARTHVI;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO PARTHVI;
GRANT EXECUTE ON SYS.GetRentHistory TO PARTHVI;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO PARTHVI;
GRANT EXECUTE ON SYS.CreateNewUser TO PARTHVI;


GRANT EXECUTE ON SYS.GetPropertyRecord TO LUCIFER;
GRANT EXECUTE ON SYS.GetTenantDetails TO LUCIFER;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO LUCIFER;
GRANT EXECUTE ON SYS.GetRentHistory TO LUCIFER;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO LUCIFER;
GRANT EXECUTE ON SYS.CreateNewUser TO LUCIFER;


GRANT EXECUTE ON SYS.GetPropertyRecord TO SHIRLEY;
GRANT EXECUTE ON SYS.GetTenantDetails TO SHIRLEY;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO SHIRLEY;
GRANT EXECUTE ON SYS.GetRentHistory TO SHIRLEY;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO SHIRLEY;
GRANT EXECUTE ON SYS.CreateNewUser TO SHIRLEY;


GRANT EXECUTE ON SYS.GetPropertyRecord TO LAUREN;
GRANT EXECUTE ON SYS.GetTenantDetails TO LAUREN;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO LAUREN;
GRANT EXECUTE ON SYS.GetRentHistory TO LAUREN;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO LAUREN;
GRANT EXECUTE ON SYS.CreateNewUser TO LAUREN;


GRANT EXECUTE ON SYS.GetPropertyRecord TO MARTHA;
GRANT EXECUTE ON SYS.GetTenantDetails TO MARTHA;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO MARTHA;
GRANT EXECUTE ON SYS.GetRentHistory TO MARTHA;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO MARTHA;
GRANT EXECUTE ON SYS.CreateNewUser TO MARTHA;


GRANT EXECUTE ON SYS.GetPropertyRecord TO JEREMY;
GRANT EXECUTE ON SYS.GetTenantDetails TO JEREMY;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO JEREMY;
GRANT EXECUTE ON SYS.GetRentHistory TO JEREMY;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO JEREMY;
GRANT EXECUTE ON SYS.CreateNewUser TO JEREMY;


GRANT EXECUTE ON SYS.GetPropertyRecord TO GABRIEL;
GRANT EXECUTE ON SYS.GetTenantDetails TO GABRIEL;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO GABRIEL;
GRANT EXECUTE ON SYS.GetRentHistory TO GABRIEL;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO GABRIEL;
GRANT EXECUTE ON SYS.CreateNewUser TO GABRIEL;


GRANT EXECUTE ON SYS.GetPropertyRecord TO SOPHIA;
GRANT EXECUTE ON SYS.GetTenantDetails TO SOPHIA;
GRANT EXECUTE ON SYS.SearchPropertyForRent TO SOPHIA;
GRANT EXECUTE ON SYS.GetRentHistory TO SOPHIA;
GRANT EXECUTE ON SYS.InsertPropertyRecord TO SOPHIA;
GRANT EXECUTE ON SYS.CreateNewUser TO SOPHIA;

