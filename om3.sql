use om;
 create table teacher(
     T_id varchar(20),
     T_name varchar(30),
     C_id varchar(30),
     city varchar(30),
     salary varchar(30),
     subject varchar(30)
 );
 insert into teacher VALUES("T-101","Shrutika","C-15","Nagpur", "25000", "DBMS" );
 insert into teacher VALUES("T-102", "Aysishi", "C-52","Bhandara", "20000", "TOC");
 insert into teacher VALUES("T-103", "Tanvi", "C-53","Bhandara", "20000", "SE");
 insert into teacher VALUES("T-104", "Ruchita", "C-54","Nagpur", "25000", "CG");
 
 select * from teacher;

 select T_name from teacher where subject = 'DBMS';
 select subject from teacher where  subject like '%s';
 
 update  teacher set city = 'Nagpur ' where T_id ="T-104" and C_id = "C-54" ;

 select * from teacher;
 select * from teacher order by salary desc;