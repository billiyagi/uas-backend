const { body, validationResult } = require('express-validator');

const createNewsValidator = [
    body('title').notEmpty(),
    body('content').notEmpty(),
    body('category').notEmpty(),
    body('author').notEmpty(),
    body('url_image').notEmpty(),
    body('url').notEmpty(),
    body('published_at').notEmpty(),
    body('timestamp').notEmpty(), (req, res, next) => {
        const errors = validationResult(req);
        if (errors.isEmpty()) {
            res.status(422).json({ errors: errors.array() });
        }
        next();
    }
]
module.exports = {
    createNewsValidator
}