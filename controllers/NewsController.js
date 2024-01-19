// import Model News
const News = require("../models/News");
const { query, validationResult, body } = require('express-validator');

// buat class NewsController
class NewsController {

	/** 
	 * Mendapatkan semua data berita
	*/
	async index(req, res) {

		// get all data news
		try {
			const news = await News.findAll();
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}

	}

	/** 
	 * Mendapatkan data berita berdasarkan id
	*/
	async show(req, res) {

		// get data news
		try {
			const news = await News.find(req.params.id);
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}
	}

	/** 
	 * Menyimpan data berita
	*/
	async store(req, res) {
		// simpan data news
		try {
			const news = await News.store(req.body);
			// create response data
			res.status(201).json(news);
		} catch (error) {
			// Send Error response
			res.status(422).json(error);
		}
	}

	/** 
	 * Mengupdate data berita
	*/
	async update(req, res) {
		// update data news
		try {
			const news = await News.update(req.params.id, req.body);
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}
	}

	/** 
	 * Menghapus data berita
	*/
	async destroy(req, res) {

		// delete data news
		try {
			const news = await News.destroy(req.params.id);
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}


	}

	/** 
	 * Mencari data berita
	*/
	async search(req, res) {
		// delete data news
		try {
			const news = await News.search(req.params.title);
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}
	}

	/** 
	 * Mencari data berita berdasarkan category
	*/
	async category(req, res) {
		// delete data news
		try {
			const news = await News.findByCategory(req.params.category);
			// create response data
			res.status(200).json(news);
		} catch (error) {
			// Send Error response
			res.status(404).json(error);
		}
	}
}

// membuat object NewsController
const newsController = new NewsController();

// export object NewsController
module.exports = newsController;
