Ext.define 'Rwiki.view.tab.PageTab',
  extend: 'Ext.tab.Tab'
  alias: 'widget.rwikiPageTab'

  page: null

  constructor: (options) ->
    @setPage(options.page)
    @callParent([options])

  getPage: ->
    @page

  setPage: (page) ->
    @page = page

    @title = @page.get('text')
    @setText(@page.get('body'))
