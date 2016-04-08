import RiotControl from 'riotcontrol'

import StoryListStore from './store'
import './index.tag'

const store = new StoryListStore()

RiotControl.addStore(store)
