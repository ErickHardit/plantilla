/*
create table TBLDOEBETWEBAPPUSER
(
	ID int not null auto_increment,
    USER varchar(15) not null,
    PWSS char(32) not null,
    UNME varchar(250) not null,
    FNME varchar(250) not null,
    GNDR char(1) not null,
    BTDY date not null,
    COTY varchar(50) not null,
    CITY varchar(250)not null,
    CDPT char(5) not null,
    EMIL varchar(250) not null,
    MOBL varchar(15) not null,
    
    primary key(ID)
)
*/
select * from tbldoebetwebappuser;

/*
create table tbldoebetwebsport
(
	ID int not null auto_increment,
    SNME char(3) not null,
    FNME varchar(50) not null,
    primary key (ID)
);

insert into tbldoebetwebsport(snme, fnme) values ('FTB', 'Futbol');
insert into tbldoebetwebsport(snme, fnme) values ('BLC', 'Baloncesto');
insert into tbldoebetwebsport(snme, fnme) values ('BSB', 'Beisbol');
insert into tbldoebetwebsport(snme, fnme) values ('FTA', 'Futbol Americano');


create table tbldoebetwebcompetition
(
	ID int not null auto_increment,
    SNME char(3) not null,
    FNME varchar(250) not null,
    SPOT char(3) not null,
    LOGO varchar(250) not null, 
    primary key (ID)
);

insert into tbldoebetwebcompetition (snme, fnme, logo, spot) values ('LMX', 'Liga MX', 'liga_mx.jpg', 'FTB');
insert into tbldoebetwebcompetition (snme, fnme, logo, spot) values ('MXF', 'Liga MX Femenil', '','FTB');
insert into tbldoebetwebcompetition (snme, fnme, logo, spot) values ('AMX', 'Ascenso MX', '','FTB');
insert into tbldoebetwebcompetition (snme, fnme, logo, spot) values ('CMX', 'Copa MX', '', 'FTB');
insert into tbldoebetwebcompetition (snme, fnme, logo, spot) values ('SMX', 'Seleccion Mexicana', '', 'FTB');



create table tbldoebetwebteam
(
	ID int not null auto_increment,
    SNME varchar(50) not null,
    FNME varchar(250) not null,
    STAD varchar(250) not null,
    COTY varchar(50) not null,
    SPOT char(3) not null,
    LOGO varchar(250) not null,    
    primary key (ID)
);

insert into tbldoebetwebteam(snme, fnme, stad, coty, spot, logo)
values('Chivas', 'Club Deportivo Guadalajara', 'Estadio Akron', 'MX', 'FTB', 'chivas.png' );

insert into tbldoebetwebteam(snme, fnme, stad, coty, spot, logo)
values('Cruz Azul', 'Club Deportivo Cruz Azul', 'Estadio Azteca', 'MX', 'FTB', 'cruzazul.png' );



create table tbldoebetwebevent
(

);


*/





