const gaji = require("../models/index").gaji;
const jabatan = require("../models/index").jabatan;
const karyawan = require("../models/index").karyawan;

gaji.belongsTo(karyawan, { foreignKey: "idKaryawan" });
karyawan.belongsTo(jabatan, { foreignKey: "idJabatan" });

exports.getGaji = async (req, res) => {
	try {
		const data = await gaji.findAll({
			include: karyawan
		});
		if (data) {
			res.status(200).json({
				data: data
			});
		}
	} catch (err) {
		res.status(500).json({
			status: "error",
			messages: err.message,
			data: {}
		});
	}
};

exports.getGajiFull = async (req, res) => {
	try {
		const data = await gaji.findAll({
			include: {
				model: karyawan,
				include: {
					model: jabatan
				}
			}
		});
		if (data) {
			res.status(200).json({
				data: data
			});
		}
	} catch (err) {
		res.status(500).json({
			status: "error",
			messages: err.message,
			data: {}
		});
	}
};
