require('dotenv').config()

var pool = require('./db/config')

/*
 * Create new random sensor inputs periodically.
 */
const inputSensorData = async () => {
  try {
    const client = await pool.connect()
    const lahans = await client.query('SELECT id FROM lahan;')
    const ids = (lahans) ? lahans.rows : null
    const cuacaEnum = ['Cerah', 'Berawan', 'Hujan']
    ids.map(async id => {
      const payload = [
        id.id,
        Math.floor(Math.random() * 50), // C
        Math.floor(Math.random() * 100), // %
        Math.floor(Math.random() * 5000) + 5000, // Cd/m2
        Math.floor(Math.random() * 10), // m/s
        cuacaEnum[Math.floor(Math.random() * 3)]
      ]
      await client.query(`INSERT INTO data_sensor (id_lahan, suhu, kelembaban, cahaya, angin, cuaca, waktu)
                          VALUES ($1, $2, $3, $4, $5, $6, CURRENT_TIMESTAMP)`, payload)
    })
    console.log('Data updated at ' + new Date(Date.now()).toLocaleString())
    client.release()
  } catch (err) {
    console.error(err)
    console.log('Error: ' + err + ' at ' + new Date(Date.now()).toLocaleString())
  }
}

inputSensorData()
