/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define(
        "jabatan",
        {
            id: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                primaryKey: true,
                primaryKey: true,
                comment: "null",
                autoIncrement: true
            },
            namaJabatan: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            jmlGajiPokok: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            upahLembur: {
                type: DataTypes.INTEGER(11),
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
            tableName: "jabatan"
        }
    );
};
