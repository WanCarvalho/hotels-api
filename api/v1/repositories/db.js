import Sequelize from "sequelize";

// estabelece conexão com banco de dados através da sequelize ORM
const sequelize = new Sequelize(
    process.env.POSTGRES_DB_NAME,
    process.env.POSTGRES_DB_USERNAME,
    process.env.POSTGRES_DB_PASSWORD, {
        
    dialect: 'postgres',
    define: {
        timestamps: false
    },
});

export default sequelize;