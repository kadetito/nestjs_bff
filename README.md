# Insurance

## author rafa@rafapenya.com

Este proyecto está usando Sequelize para conectar a una BBDD MySQL, pero puede ser modificado para usar Postgress de manera sencilla. Para el uso de MongoDB o GraphQL es necesario cambiar el sistema de conexion y mapeado.

1. Install backend

   ```
   yarn install
   ```

2. Fill and rename (.env.template to .env) environment file for database connect

3. Start docker container

   ```
   docker-compose up -d
   ```

4. Start develope mode
   ```
   start:dev:docker
   ```
5. En los directorios src/client y src/polizas/siniestros se hallan dos ejemplos sobre uso de este backend.

   - src/client:
     Muestra una conexión a una bdd local/remota levantada en docker. Se ataca directamente a las tablas de la bbdd MySQL
   - src/polizas/siniestros:
     Muestra cómo atacar una API externa usando Nest como Backend for frontend (BFF). En este caso, el frontend iría escogiendo los datos de el BFF que a su vez está llamando a la API, esto ayuda a separar front y back de manera más eficaz y actúa como filtro, pudiendo definir los mapeados del frontend de manera independiente si es necesario.
