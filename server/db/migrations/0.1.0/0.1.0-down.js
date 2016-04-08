exports.up = (db, options, done) => {
  db.dropStoriesTable((err, result) => {
    if (err) console.error('Error in stories table delete', err)
    else console.log('Deleted stories table.')
    done(err)
  })
}
