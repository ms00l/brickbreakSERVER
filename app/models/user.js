const mongoose = require('mongoose')
const reqNum = {
  type: Number,
  required: false
}

const scoresSchema = new mongoose.Schema(
  {
    value: reqNum
  },
  {
    timestamps: true
  }
)
const userSchema = new mongoose.Schema(
  {
    email: {
      type: String,
      required: true,
      unique: true
    },
    score: [scoresSchema],
    hashedPassword: {
      type: String,
      required: true
    },
    token: String
  },
  {
    timestamps: true,
    toObject: {
      // remove `hashedPassword` field when we call `.toObject`
      transform: (_doc, user) => {
        delete user.hashedPassword
        return user
      }
    }
  }
)

module.exports = mongoose.model('User', userSchema)
