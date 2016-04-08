import RiotControl from 'riotcontrol'

import StoryListStore from './story-list-store'
import './story-list.tag'

const store = new StoryListStore()

RiotControl.addStore(store)
