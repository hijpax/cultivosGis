drop table if exists Public."maiz12007";

create table Public.""(gid integer,DEPARTAMENTO varchar(100), SUPERFICIE_SEMBRADA numeric(10,2), SUPERFICIE_SEMBRADA_CON_SEMILLA_MEJORADA numeric(10,2), SUPERFICIE_COSECHADA_PARA_GRANO_Y_SEMILLA numeric(10,2), SUPERFICIE_COSECHADA_PARA_FORRAJE_VERDE_Mz numeric(10,2), SUPERFICIE_COSECHADA_PARA_ELOTE_Mz numeric(10,2),PRODUCCIÓN_PARA_GRANO_Y_SEMILLA_QQ integer, PRODUCCIÓN_PARA_FORRAJE_VERDE_TM integer, PRODUCCIÓN_PARA_ELOTE_CIENTOS integer,ANIO integer ,ORIGEN_DATOS varchar(150), shape_leng numeric(15,12),shape_area numeric(16,14),geom geometry)

copy Public."municipios2008maiz" from 'C:\bd\municipios2008maiz.csv' delimiter ',' csv header;

select * from Public."municipios"

create table municipios2008maiz2 as select * from municipios2008maiz as f inner join municipios on f.gid=municipios.id;

drop table if exists frijol18;
drop table if exists frijol07;
drop table if exists comparacionfrijol;
create table frijol18 as select gid as id,departamento, superficie_total_mz as super2018, rendimiento_total_qq_mz as rendimiento2018,producción_total_qq as prod2018, geom from frijol2018;
create table frijol07 as select gid,superficie_total_mz as super2007, rendimiento_total_qq_mz as rendimiento2007,producción_total_qq as prod2007 from frijol2007;
create table comparacionfrijol as select * from frijol18 as f inner join frijol07 on f.id=frijol07.gid;