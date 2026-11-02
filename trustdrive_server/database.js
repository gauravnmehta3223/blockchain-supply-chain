const { Pool } = require("pg");

const pool = new Pool({
    user: process.env.PGUSER || "postgres",
    password: process.env.PGPASSWORD,
    host: process.env.PGHOST || "localhost",
    port: Number(process.env.PGPORT) || 5433,
    database: process.env.PGDATABASE || "miniproject",
})

module.exports = pool;