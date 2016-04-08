import RiotControl from 'riotcontrol'

import StoryListStore from './store'
import './list.tag'

const store = new StoryListStore()

RiotControl.addStore(store)
