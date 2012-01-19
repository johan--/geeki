Ext.define 'Rwiki.model.Page',
  extend: 'Ext.data.Model'

  statics:
    currentPage: null

    setCurrentPage: (page) ->
      @currentPage = page

    getCurrentPage: ->
      @currentPage

  fields: [
    { name: 'id', type: 'int' },
    { name: 'text', type: 'string' },
    { name: 'body', type: 'string' }
  ]

  idProperty: 'id'
  proxy:
    url: '/pages'
    type: 'rest'
    format: 'json'
