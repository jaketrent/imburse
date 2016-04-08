import RiotControl from 'riotcontrol'

import css from './story-form.css'

<story-form>
  <div class={css.root}>
    <form onsubmit={ handleSubmit }>
      <button>Submit</button>
    </form>
  </div>

  this.css = { ...css, ...opts.css }

  handleSubmit(evt) {
    evt.preventDefault()
    RiotControl.trigger('stories_add', { title: 'Some story', desc: 'A lot of words', created: '2016-01-01' })
  }
</story-form>
