import { config } from 'dotenv'

config()

module.exports = {
  dbCreds: {
    db: process.env.DB,
    host: process.env.HOST,
    user: process.env.USER,
    port: process.env.PORT,
    password: process.env.PASSWORD
  }
}
