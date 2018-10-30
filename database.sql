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
	ID int not null auto_increment,
    CMPT int not null,
    EDTN varchar(250),
    STGE varchar(250),
    LOCL int,
    VSTR int,
    DTTM datetime,
    STUS int,
    
    primary key (ID)
);  

insert into tbldoebetwebevent(cmpt,edtn, stge, locl, vstr, dttm, stus) 
values (1,'Apertura 2018', 'Jornada 2', 1, 2, '2018-07-28 21:00:00.000000', 1);

insert into tbldoebetwebevent(cmpt,edtn, stge, locl, vstr, dttm, stus) 
values (1,'Apertura 2018', 'Jornada 1', 2, 1, '2018-07-27 20:00:00.000000', 1);

insert into tbldoebetwebevent(cmpt,edtn, stge, locl, vstr, dttm, stus) 
values (1,'Apertura 2018', 'Jornada 3', 1, 2, '2018-07-29 13:30:00.000000', 1);

insert into tbldoebetwebevent(cmpt,edtn, stge, locl, vstr, dttm, stus) 
values (1,'Apertura 2018', 'Jornada 4', 2, 1, '2018-08-02 15:30:00.000000', 1);

insert into tbldoebetwebevent(cmpt,edtn, stge, locl, vstr, dttm, stus) 
values (1,'Apertura 2018', 'Jornada 5', 1, 2, '2018-07-03 19:30:00.000000', 1);

*/
select * from tbldoebetwebcompetition

select e.id, s.fnme, c.fnme, e.edtn, e.stge, e.dttm,l.snme,l.logo,l.stad,v.snme,v.logo from tbldoebetwebevent e, tbldoebetwebcompetition c, tbldoebetwebsport s, tbldoebetwebteam l, tbldoebetwebteam v
where  e.cmpt = c.id and c.spot = s.snme and l.id = e.locl and v.id = e.vstr
      and c.snme = 'LMX' and e.stus = 1 order by dttm desc;





