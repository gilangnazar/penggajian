/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define(
        "gaji",
        {
            id: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                primaryKey: true,
                primaryKey: true,
                comment: "null",
                autoIncrement: true
            },
            idKaryawan: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null",
                references: {
                    model: "karyawan",
                    key: "id"
                }
            },
            gajiKotor: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            jmlLembur: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            pajak: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            totalTunjangan: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            gajiBersih: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null"
            },
            bulan: {
                type: DataTypes.STRING(25),
                allowNull: false,
                comment: "null"
            },
            tahun: {
                type: DataTypes.STRING(10),
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
            tableName: "gaji"
        }
    );
};
