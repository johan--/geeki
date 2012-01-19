Ext.define 'Rwiki.model.PageNode',
  extend: 'Ext.data.Model'

  fields: [
    { name: 'id', type: 'int' },
    { name: 'text', type: 'string' }
  ]

  isRoot: ->
    @id == 1
