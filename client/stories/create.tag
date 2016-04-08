import * as actions from './actions'
import css from './create.css'
import * as utils from './utils'

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
    const created = utils.formatCreateDate()

    actions.create({ title, desc, created })
  }
</story-form>
