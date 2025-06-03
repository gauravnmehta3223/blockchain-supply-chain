const { Pool } = require("pg");

const pool = new Pool({
    user: "postgres",
    password: "REMOVED_PASSWORD",
    host: "localhost",
    port: 5433,
    database: "miniproject",
})

module.exports = pool;