/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define(
        "admin",
        {
            id: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                primaryKey: true,
                primaryKey: true,
                comment: "null",
                autoIncrement: true
            },
            username: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            password: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            createdAt: {
                type: DataTypes.DATEONLY,
                allowNull: false,
                comment: "null"
            },
            updatedAt: {
                type: DataTypes.DATEONLY,
                allowNull: false,
                comment: "null"
            }
        },
        {
            freezeTableName: true,
            tableName: "admin"
        }
    );
};
