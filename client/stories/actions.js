import RiotControl from 'riotcontrol'

export function create(story) {
  // TODO: impl api save
  RiotControl.trigger('stories_create_success', story)
}
