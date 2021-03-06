import riot from 'riot'

export default function StoryListStore() {
  riot.observable(this)

  this.stories = [{ title: 'Initial story', desc: 'Some few words', created: '2016-01-02' }]

  this.on('stories_create_success', story => {
    this.stories = this.stories.concat([ story ])
    this.trigger('stories_changed', this.stories)
  })

  this.on('stories_init', _ => {
    this.trigger('stories_changed', this.stories)
  })

}
