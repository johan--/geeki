Ext.define 'Geeki.store.PageNodes',
  extend: 'Ext.data.TreeStore'
  model: 'Geeki.model.PageNode'

  autoLoad: true
  proxy:
    url: '/data/tree.json'
    type: 'ajax'
