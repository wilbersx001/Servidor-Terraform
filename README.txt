ingresar al contendor de php-fpm:  docker exec -it ejerciciodocker-php-fpm-1 bash
instalar mysql para php: docker-php-ext-install mysqli
salir

ingresar contendor mariadb: docker exec -it ejerciciodocker-mariadb-1 mysql -u root -p (O CON EL USUARIO QUE DESEES O EL YA CREADO EN EL DOCKER-COMPOSE)
para ver si la base de datos se encuentra creada: SHOW DATABASES.
si se encuentra creada: {
    use nombre_de_la_base_de_datos;
    para ver si tiene la tabla: SHOW tables;
    si no la tiene:CREATE TABLE dato (id INT PRIMARY KEY, nombre VARCHAR(50), apellido VARCHAR(50));
    si la tiene, no te preocupes de eso;
}
si no se encuentra crada: CREATE DATABASES nombre_de_la_base_de_datos;
para ver si tiene la tabla: SHOW tables;
    si no la tiene:CREATE TABLE dato (id INT PRIMARY KEY, nombre VARCHAR(50), apellido VARCHAR(50));

 INSERT INTO dato (id, nombre, apellido) VALUES (1, 'Wilbert', 'Apellido');


 te vas a la terminal de donde corriste el docker-COMPOSE up y pones el siguiente comando docker-compose restart