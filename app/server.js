const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.json({ foo: process.env.FOO })
})

app.listen(3000, () => {
  console.log('Running on port 3000')
})
