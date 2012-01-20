Ext.define 'Rwiki.view.tab.PageTab',
  extend: 'Ext.Container'
  alias: 'widget.rwikiPageTab'

  closable: true
  page: null

  constructor: (options = {}) ->
    @setPage(options.page)
    @callParent([options])

  getPage: ->
    @page

  setPage: (page) ->
    @page = page

    @title = @page.get('text')
    @html = @page.get('body')
