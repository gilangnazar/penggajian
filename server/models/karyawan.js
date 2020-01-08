/* jshint indent: 2 */

module.exports = function(sequelize, DataTypes) {
    return sequelize.define(
        "karyawan",
        {
            id: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                primaryKey: true,
                primaryKey: true,
                comment: "null",
                autoIncrement: true
            },
            namaKaryawan: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            alamat: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            noHp: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            tempatLahir: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            tanggalLahir: {
                type: DataTypes.DATEONLY,
                allowNull: false,
                comment: "null"
            },
            jk: {
                type: DataTypes.ENUM("Perempuan", "Laki-laki"),
                allowNull: false,
                comment: "null"
            },
            idJabatan: {
                type: DataTypes.INTEGER(11),
                allowNull: false,
                comment: "null",
                references: {
                    model: "jabatan",
                    key: "id"
                }
            },
            status: {
                type: DataTypes.STRING(50),
                allowNull: false,
                comment: "null"
            },
            jmlAnak: {
                type: DataTypes.INTEGER(2),
                allowNull: true,
                comment: "null"
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
            tableName: "karyawan"
        }
    );
};
