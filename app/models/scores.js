const mongoose = require('mongoose')

const scoresSchema = new mongoose.Schema({
  highest: {
    type: Number,
    required: false
  },
  current: {
    type: Number,
    required: false
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Scores', scoresSchema)
