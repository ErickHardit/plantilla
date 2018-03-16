select * from tbl_encuesta
select * from tbl_tel_enc where telefono = 5527379136
select * from tbl_historial where telefono = 5527379136

update tbl_tel_enc set estatus = 'D', res_p1 = 0, res_p2 = 0, res_p3 = 0, res_p4 = 0, res_p5 = 0 ,fecha = current,  last_response = current
where telefono = 5527379136 and id_encuesta = 3

select * from tbl_respuestas where id_pregunta = 13

select * from tbl_pregunta where id_encuesta = 3

select * from tbl_enviomasivo
select max(id_envio) from tbl_enviomasivo


 insert into tbl_enviomasivo (id_encuesta, nombre_archivo, fecha, region, motivo, sistema, estatus, total) values (0, 'a',  today, 0, 3, 3, 1, 0)
 select * from tbl_enviomasivo
 
 select * from tbl_encuesta
select * from tbl_respuestas
select * from tbl_motivo
select * from tbl_sistemas
select * from tbl_user_encuestas
insert into tbl_user_encuestas(id_registro, usuario, roll,estatus) 
values(0, 62215, '1',1)

/*
CREATE TABLE tbl_se_customerexperience_usuario
(
	id SERIAL PRIMARY KEY,
	numero_empleado VARCHAR(20),
	rol INTEGER,
	estatus INTEGER
)
*/
--INSERT INTO tbl_se_customerexperience_usuario (id, numero_empleado, rol, estatus) values (0, 'EX11481', 1, 1)
--DROP TABLE tbl_se_customerexperience_usuario
--select * from tbl_se_customerexperience_usuario


/*
CREATE TABLE tbl_se_customerexperience_baseusuarios
(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(35),
	contenido BYTE,
	registro DATETIME YEAR TO SECOND,
	usuario VARCHAR(20),
	estatus INTEGER	
)
*/
-- DROP TABLE tbl_sunc_ce_baseusuarios
-- SELECT * FROM tbl_se_customerexperience_baseusuarios

/*
CREATE TABLE tbl_se_customerexperience_envio
(
	id SERIAL PRIMARY KEY,
	inicio  DATETIME YEAR TO SECOND,
	registro  DATETIME YEAR TO SECOND,
	usuario_registro VARCHAR(20),
	usuario_vobo VARCHAR(20),
	vobo INTEGER,
	estatus INTEGER,
	id_baseusuarios INTEGER,
	id_encuesta INTEGER
)
*/
-- DROP TABLE tbl_se_customerexperience_envio;
--select * from tbl_se_customerexperience_envio;
-- insert into tbl_sunc_ce_envio(id,inicio, registro,usuario_registro,vobo,estatus,id_baseusuarios, id_encuesta) values(0, current, current, 'EX11481',0,1,1,4);


/*
CREATE TABLE tbl_se_customerexperience_sistema
(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	estatus INTEGER
)
*/
--select * from tbl_se_customerexperience_sistema

/*
CREATE TABLE tbl_se_customerexperience_motivo
(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	estatus INTEGER,
	id_sistema INTEGER
)
*/
-- SELECT * FROM tbl_se_customerexperience_motivo
-- DROP TABLE tbl_se_customerexperience_motivo




CREATE TABLE tbl_se_customerexperience_encuesta
(
   id SERIAL PRIMARY KEY NOT NULL,
   nombre varchar(250) NOT NULL,
   descripcion varchar(250) NOT NULL,
   tipo_vigencia integer,
   cantidad_vigencia integer,
   prioridad integer,
   fecha date,
   estatus integer,
   id_sistema integer,
   id_motivo integer
)
SELECT * FROM tbl_se_customerexperience_encuesta




CREATE TABLE "svied00"."tbl_pregunta"
(
   id_pregunta integer PRIMARY KEY NOT NULL,
   orden integer,
   fecha date,
   estatus integer,
   id_encuesta integer,
   tipopregunta integer,
   enviar_promosion integer,
   pregunta text
)
;
CREATE UNIQUE INDEX 298_405 ON "svied00"."tbl_pregunta"
(
  pregunta,
  id_pregunta
)
;


CREATE TABLE "svied00"."tbl_respuestas"
(
   id_respuestas integer PRIMARY KEY NOT NULL,
   respuesta varchar(250) NOT NULL,
   fecha date,
   estatus integer,
   id_pregunta integer,
   ir_a_pregunta integer,
   dicc_resp varchar(250) NOT NULL,
   dicc_resp_id varchar(250)
)
;
CREATE UNIQUE INDEX 301_415 ON "svied00"."tbl_respuestas"(id_respuestas)
;




create table tbl_plantillajee6_usuario
(
	id serial primary key not null,
	nombre varchar(15),
	contrasenia varchar(25),
	rol integer
)