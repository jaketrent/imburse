import RiotControl from 'riotcontrol'

import css from './create.css'

function formatCreateDate(date = new Date()) {
  return `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`
}

<story-form>
  <div class={css.root}>
    <form onsubmit={ handleSubmit }>
      <label for="title" class={css.label}>
        Title
        <input id="title" name="title" class={css.input} />
      </label>
      <label for="desc" class={css.label}>
        Description
        <textarea id="desc" name="desc" class={css.inputDesc}></textarea>
      </label>
      <button>Submit</button>
    </form>
  </div>

  this.css = { ...css, ...opts.css }

  handleSubmit(evt) {
    evt.preventDefault()
    const title = document.getElementById('title').value
    const desc = document.getElementById('desc').value
    const created = formatCreateDate()

    RiotControl.trigger('stories_add', { title, desc, created })
  }
</story-form>
