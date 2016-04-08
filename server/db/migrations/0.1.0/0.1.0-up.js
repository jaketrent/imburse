exports.up = (db, options, done) => {
  db.createStoriesTable((err, result) => {
    if (err) console.error('Error in stories table create', err)
    else console.log('Created stories table.')
    done(err)
  })
}
