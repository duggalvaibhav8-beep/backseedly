require('dotenv').config();

// Cloudinary image-upload feature removed.
// Keep a compatible stub to avoid breaking callers.
const uploadImg = (fileBuffer, publicId) => {
    // Previously uploaded to Cloudinary; now disabled.
    // Return null so controllers can continue without an image URL.
    return Promise.resolve(null);
};

module.exports = {
    uploadImg
};
