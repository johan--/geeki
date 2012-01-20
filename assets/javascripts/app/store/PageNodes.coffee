Ext.define 'Rwiki.store.PageNodes',
  extend: 'Ext.data.TreeStore'
  model: 'Rwiki.model.PageNode'

  proxy:
    url: '/data/tree.json'
    type: 'ajax'
