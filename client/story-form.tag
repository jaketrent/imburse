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
    console.log('submitted!')
  }
</story-form>
