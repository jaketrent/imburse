import css from './story-list.css'

<story-list>
  <ul class={css.root}>
    <li class={css.item} each={items}>
      <div class={css.title}>{title}</div>
      <div class={css.desc}>{desc}</div>
    </li>
  </ul>

  this.css = { ...css, ...opts.css }

  this.items = [
    {
      title: 'Cheese Gifts',
      desc: 'For the longest time, our children thought that cheese was something you got for Christmas or a birthday.  We had a slim grocery budget, so we didn\'t buy expensive food.  We just never bought cheese.  After we paid off our debt, and I bought a block of cheese, I noticed and so did my son, who asked, "Dad, who gave you the present?", meaning the cheese.  I hear stories of people buying extravagant things with food stamps.  I like the feeling of this better: even in the life essentials and even when the standard of living around you encourages you to live just as high on that standard, taking control of your appetite and your budget and holding the line.',
      created: '2016-04-05'
    },
    {
      title: 'The Public Media Center',
      desc: 'We very rarely bought books or movies.  We didn\'t fill up our Kindles -- we didn\'t have any.  We didn\'t fill up our bookshelves -- we had gotten a couple from Walmart.  We visited the library usually more than once a week.  We made a good habit out of it and still plough through many books with our children.  I still hear about a cool book someone\'s reading at work and jump on the Internet to place a hold for it at our library.  The library is amazingly willing to procure new titles that you request as well.  The same went for movies.  We very rarely went to the theatre.  We\'d hear about new movies and wait until their impending DVD release.  Then we\'d jump in the hold line for the library\'s copy and often wait about 6 months for the hot title.',
      created: '2016-03-05'
    }
  ]

</story-list>
