// import database
const db = require("../config/database");

// membuat class News
class News {

	/** 
	 * Mendapatkan data berita berdasarkan id
	*/
	static find(id) {
		return new Promise((resolve, reject) => {

			/** 
			 * SQL Query
			*/
			const sql = `SELECT * FROM news WHERE id = ${id}`;

			/**
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.length == 0) {
					reject({ message: "Data tidak ditemukan", status: 404 });
				} else {
					resolve(
						{
							message: `Menampilkan data berita dengan id ${id}`,
							data: result
						}
					);
				}
			});
		});
	}

	/** 
	 * Mendapatkan semua data berita
	*/
	static findAll() {
		return new Promise((resolve, reject) => {

			const sql = "SELECT * FROM news";

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.length == 0) {
					reject({ message: "Data tidak ditemukan", status: 404 });
				} else {
					resolve({
						message: "Menampilkan semua data berita",
						data: result
					});
				}
			})
		});
	}

	/** 
	 * Menyimpan data berita
	*/
	static store(data) {
		return new Promise((resolve, reject) => {
			/** 
			 * Sql Query
			*/
			const sql = `INSERT INTO news (title, author, content, url, url_image, published_at, category, timestamp) VALUES 
			('${data.title}', '${data.author}', 
			'${data.content}', '${data.url}', 
			'${data.url_image}', '${data.published_at}', 
			'${data.category}', '${data.timestamp}')`;

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				// console.log();
				if (err) {
					reject({ message: "All fields must be filled correctly", status: 422 });
				} else {
					resolve({ message: "Data berhasil disimpan", data: result, status: 201 });
				}
			})
		});
	}

	/** 
	 * Mengupdate data berita
	*/
	static update(id, data) {
		return new Promise((resolve, reject) => {
			/** 
			 * Sql Query
			*/
			const sql = `UPDATE news SET title = '${data.title}', author = '${data.author}', content = '${data.content}', url = '${data.url}', url_image = '${data.url_image}', published_at = '${data.published_at}', category = '${data.category}', timestamp = '${data.timestamp}' WHERE id = ${id}`;

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.affectedRows == 0) {
					reject({ message: "Resource not found", status: 404 });
				} else {
					resolve({ message: "Data berhasil diubah", data: result, status: 200 });
				}
			})
		});
	}

	/** 
	 * Menghapus data berita
	*/
	static destroy(id) {
		return new Promise((resolve, reject) => {
			/** 
			 * Sql Query
			*/
			const sql = `DELETE FROM news WHERE id = ${id}`;

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.affectedRows == 0) {
					reject({ message: "Resource not found", status: 404 });
				} else {
					resolve({ message: "Data berhasil dihapus", data: result, status: 200 });
				}
			})
		});
	}

	/** 
	 * Mencari data berita
	*/
	static search(keyword) {
		return new Promise((resolve, reject) => {
			/** 
			 * Sql Query
			*/
			const sql = `SELECT * FROM news WHERE title LIKE '%${keyword}%' OR content LIKE '%${keyword}%'`;

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.length == 0) {
					reject({ message: "Resource not found", status: 404 });
				} else {
					resolve({ message: "Hasil pencaharian", data: result, status: 200 });
				}
			})
		});
	}

	/** 
	 * Mencari data berita berdasarkan kategori
	*/

	static findByCategory(category) {
		return new Promise((resolve, reject) => {
			/** 
			 * Sql Query
			*/
			const sql = `SELECT * FROM news WHERE category = '${category}'`;

			/** 
			 * Send query to database
			*/
			db.query(sql, (err, result) => {
				if (result.length == 0) {
					reject({ message: "Resource not found", status: 404 });
				} else {
					resolve({ message: `Hasil pencaharian kategori ${category}`, data: result, status: 200 });
				}
			})
		});
	}
}

// export class News
module.exports = News;
