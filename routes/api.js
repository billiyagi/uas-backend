// import NewsController
const NewsController = require('../controllers/NewsController');
// import express
const express = require("express");

// membuat object router
const router = express.Router();

/**
 * Membuat routing
 */
router.get("/", (req, res) => {
  res.send("Hello News API Express");
});

// Routing News
router.get("/news", NewsController.index);
router.get("/news/:id", NewsController.show);
router.post("/news", NewsController.store);
router.put("/news/:id", NewsController.update);
router.delete("/news/:id", NewsController.destroy);
router.get('/news/search/:title', NewsController.search)
router.get('/news/category/:category', NewsController.category)

// export router
module.exports = router;
