const mongoose = require('mongoose')

const profileSchema = new mongoose.Schema(
  {
    username: {
      type: String,
      required: false
    },
    first: {
      type: String,
      required: false
    },
    last: {
      type: String,
      required: false
    },
    owner: {
      type: mongoose.Schema.Types.ObjectId,
      ref: 'User',
      required: true
    }
  },
  {
    timestamps: true
  }
)

module.exports = mongoose.model('Profile', profileSchema)
