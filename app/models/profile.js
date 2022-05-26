const mongoose = require('mongoose')

const reqNum = {
  type: Number,
  required: true
}

const scoresSchema = new mongoose.Schema({
  value: reqNum
}, {
  timestamps: true
})

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
    score: [scoresSchema],
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
