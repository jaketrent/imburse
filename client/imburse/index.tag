<imburse>
  <div class={ cssClassName }>
    <h1>This is a { text }</h1>
  </div>
  declare var opts:any;
  this.css = opts.css
  console.log('opts', opts.css)

  this.cssClassName = opts.css.root

  var text: string = 'Big2 Riot'
  this.text = text
</imburse>
