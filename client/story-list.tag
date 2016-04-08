import RiotControl from 'riotcontrol'

import css from './story-list.css'

<story-list>
  <ul class={css.root}>
    <li class={css.item} each={stories}>
      <div class={css.title}>{title}</div>
      <div class={css.desc}>{desc}</div>
    </li>
  </ul>

  this.css = { ...css, ...opts.css }
  this.stories = []

  this.on('mount', _ => {
    RiotControl.trigger('stories_init')
  })

  RiotControl.on('stories_add_success', stories => {
    this.update({ stories })
  })

  RiotControl.on('stories_changed', stories => {
    this.update({ stories })
  })

  // this.stories = [
  //   {
  //     title: 'Cheese Gifts',
  //     desc: 'For the longest time, our children thought that cheese was something you got for Christmas or a birthday.  We had a slim grocery budget, so we didn\'t buy expensive food.  We just never bought cheese.  After we paid off our debt, and I bought a block of cheese, I noticed and so did my son, who asked, "Dad, who gave you the present?", meaning the cheese.  I hear stories of people buying extravagant things with food stamps.  I like the feeling of this better: even in the life essentials and even when the standard of living around you encourages you to live just as high on that standard, taking control of your appetite and your budget and holding the line.',
  //     created: '2016-04-05'
  //   },
  //   {
  //     title: 'The Public Media Center',
  //     desc: 'We very rarely bought books or movies.  We didn\'t fill up our Kindles -- we didn\'t have any.  We didn\'t fill up our bookshelves -- we had gotten a couple from Walmart.  We visited the library usually more than once a week.  We made a good habit out of it and still plough through many books with our children.  I still hear about a cool book someone\'s reading at work and jump on the Internet to place a hold for it at our library.  The library is amazingly willing to procure new titles that you request as well.  The same went for movies.  We very rarely went to the theatre.  We\'d hear about new movies and wait until their impending DVD release.  Then we\'d jump in the hold line for the library\'s copy and often wait about 6 months for the hot title.',
  //     created: '2016-03-05'
  //   },
  //   {
  //     title: 'Finding Coins',
  //     desc: 'We really did collect money from every place we could find it.  I had laundry money that I had hauled around from college.  We kept it in the jar and added to it.  When we got anxious and wanted to see the debt amount drop even more, we\'d empty it out, take it to the bank, and use it to pay down the debt.',
  //     created: '2016-03-05'
  //   },
  //   {
  //     title: 'In Search of Free',
  //     desc: 'We really enjoyed very little extra spending money.  So we were really suckers for anyone that offered us a deal.  If a salesman came to our door and said, "Hey, listen to our 2 hour monologue on why you should buy a water softener.", we\'d do it for the $25 Texas Roadhouse gift certificate payoff.  It was worth it.  We had earned it.',
  //     created: '2016-03-05'
  //   },
  //   {
  //     title: 'Early Morning Family Trips',
  //     desc: 'For years we had only one car.  We made it work.  Since we had a few small children and just when car, we had to haul everyone around whenever mom *and* dad had somewhere to go.  When I went to the work in the morning, I\'d often take the car and leave it in the parking lot.  My wife would be at home all day without a car.  She usually said she didn\'t mind.  Obviously, she was a very good sport about it.  She walked a lot of places with the children.  If she did need it, she\'d get to wake up when I woke up and drive me to work or the train station and then drive everyone else back home to eat breakfast in the early hours of the morning.',
  //     created: '2016-03-05'
  //   }
  // ]

</story-list>
