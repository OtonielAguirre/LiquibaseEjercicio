# Ejercicios capacitación

```XML
<!-- Generar una tabla en Sql Server -->
<changeSet author="javierrodriguez" id="180119-01">
	<createTable tableName="C_PRUEBA">
		<column name="ID" type="INT">
			<constraints nullable="true" primaryKey="false" unique="false"/>
		</column>
		<column name="DS_NAME" type="VARCHAR(50)">
			<constraints nullable="true" primaryKey="false" unique="false"/>
		</column>
	</createTable>
</changeSet>

<!-- Generara una nueva tabla -->
<changeSet author="user (generated)" id="1679107794007-1">
        <createTable tableName="EMPLOYEES">
            <column autoIncrement="true" name="IDEMPLOYEES" type="INT">
                <constraints nullable="false" primaryKey="true" primaryKeyName="CONSTRAINT_4"/>
            </column>
            <column name="NAMEEMPLOYEE" type="VARCHAR(50)">
                <constraints nullable="false"/>
            </column>
            <column name="EMAILEMPLOYEE" type="VARCHAR(50)"/>
            <column name="PHONEEMPLOYEE" type="INT">
                <constraints nullable="false"/>
            </column>
            <column name="ADDRESSEMPLOYEE" type="VARCHAR(50)"/>
        </createTable>
</changeSet>

<!-- Generara una segunda tabla -->
<changeSet author="user (generated)" id="1679107794007-2">
        <createTable tableName="STORE">
            <column autoIncrement="true" name="IDSTORE" type="INT">
                <constraints nullable="false" primaryKey="true" primaryKeyName="CONSTRAINT_4B"/>
            </column>
            <column name="NAMESTORE" type="VARCHAR(50)">
                <constraints nullable="false"/>
            </column>
            <column name="ADDRESSSTORE" type="VARCHAR(50)"/>
            <column name="TYPESTORE" type="VARCHAR(50)"/>
            <column name="CITY" type="VARCHAR(30)"/>
            <column name="PHONESTORE" type="INT">
                <constraints nullable="false"/>
            </column>
        </createTable>
    </changeSet>

 <!--Generar Stored Procedure-->
<changeSet author="user (generated)" id="1679107794007-3">
	<createProcedure encoding="utf8" procedureName="spConsulta">
		CREATE PROCEDURE spConsulta
          AS
          BEGIN
            SELECT * FROM Store
          END;
    </createProcedure>
</changeSet>


<!-- Rollback -->
<!--
liquibase --changeLogFile="changesets\dbChangeLogEjercicioSQLIntegration.xml" rollbackCount 1  
-->

<!-- Changelog de una bd existente -->
<!--
liquibase --changeLogFile="changesets/dbChangeLogEjercicioSQL.xml" generateChangeLog
-->

<!-- Create table by hand -->
<!--
create table Employees(
    IdEmployees int primary key auto_increment not null ,
    nameEmployee varchar(50) not null,
    emailEmployee nvarchar(50),
    phoneEmployee int not null,
    addressEmployee nvarchar(50)
);
-->

<!-- Diferencias entre bd -->
<!--
liquibase --changeLogFile="changesets/dbChangeLogEjercicioSQLIntegration.xml" diffChangeLog
-->

```

[Regresar](http://devtools.certum.com/bitbucket/projects/ARQ/repos/liquibase/browse)