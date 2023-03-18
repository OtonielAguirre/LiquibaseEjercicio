--liquibase formatted sql


--changeset rene.becerra:1 labels:example-label context:example-context
--comment: Employees Table. Punto 3 del ejercicio
create table Employees(
    IdEmployees int primary key auto_increment not null ,
    nameEmployee varchar(50) not null,
    emailEmployee nvarchar(50),
    phoneEmployee int not null,
    addressEmployee nvarchar(50)
    )

--changeset rene.becerra:2 labels:example-label context:example-context
--comment: Store Table. Punto 5 del ejercicio
create table Store (
    IdStore int primary key auto_increment not null,
    nameStore varchar(50) not null,
    addressStore varchar(50),
    typeStore varchar(50),
    city varchar(30),
    phoneStore int  not null
)

--changeset rene.becerra:3 labels:example-label context:example-context
--comment: Store Procedure Consulta. Punto 7 del ejercicio
CREATE PROCEDURE spConsulta
AS
BEGIN
    select * from Store;
END
