var pool = require('./db/db_config')

const sayHello = () => {
  console.log('Hello')
}
sayHello()

/* Update all products per hour. */
const inputSensorData = async () => {
  try {
    const client = await pool.connect()
    await client.query('INSERT INTO Price (product_id, price, time) VALUES (' + product.id + ', \'' + crawlResult.latest_price + '\', NOW());')
    console.log('Data updated at' + new Date(Date.now()).toLocaleString)
    client.release()
  } catch (err) {
    console.error(err)
    console.log('Error: ' + err)
  }
}
inputSensorData()
