var pool = require('./db/db_config')

const sayHello = () => {
  console.log('Hello')
}
sayHello()

/* Update all products per hour. */
const inputSensorData = async () => {
  try {
    const client = await pool.connect()
    const lahanz = await client.query('SELECT id FROM lahan;')
    const lahans = (lahanz) ? lahanz.rows : null
    const cuaca = ['cerah', 'berawan', 'hujan']
    
    lahans.map(async lahan => {
    const info = [
        lahan.id,
        math.floor(math.random()*50),
        math.floor(math.random()*50),
        math.floor(math.random()*50),
        math.floor(math.random()*50),
        math.floor(math.random()*50),
        math.floor(math.random()*50),
        cuaca[math.floor(math.random()*2)],
    ]
    await client.query('INSERT INTO data_sensor (id_lahan, suhu, kelembaban_udara, tekanan_udara, kecepatan_angin, kelembaban_tanah, intensitas_cahaya, cuaca, waktu) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, NOW())', info)
    }
    console.log('Data updated at' + new Date(Date.now()).toLocaleString)
    client.release()
  } catch (err) {
    console.error(err)
    console.log('Error: ' + err)
  }
}
inputSensorData()
