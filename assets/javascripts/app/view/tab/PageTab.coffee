Ext.define 'Rwiki.view.tab.PageTab',
  extend: 'Ext.tab.Tab'
  alias: 'widget.rwikiPageTab'

  page: null

  constructor: (options) ->
    @setPage(options.page)
    @callParent([options])

  show: ->
    Ext.get(@getId()).insertHtml(@page.get('body'))
    @callParent()

  getPage: ->
    @page

  setPage: (page) ->
    @page = page

    @title = @page.get('text')
