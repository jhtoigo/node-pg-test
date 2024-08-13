const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = process.env.PORT || 3000;

// Configuração para PostgreSQL
const pgPool = new Pool({
  connectionString: process.env.PG_CONNECTION_STRING,
});

app.get('/pg-check', async (req, res) => {
    try {
      const client = await pgPool.connect();
  
      // Query para obter o nome do banco de dados e o endereço do servidor
      const serverInfoQuery = `
        SELECT 
          inet_server_addr() AS server_ip, 
          current_database() AS database_name,
          now() AS current_time
      `;
      const result = await client.query(serverInfoQuery);
  
      client.release();
  
      // Retornar as informações
      res.send(`Connected to database: ${result.rows[0].database_name} on server: ${result.rows[0].server_ip} at ${result.rows[0].current_time}`);
    } catch (err) {
      res.status(500).send(`PostgreSQL connection error: ${err.message}`);
    }
  });
  

app.listen(port, () => {
  console.log(`App running on port ${port}`);
})