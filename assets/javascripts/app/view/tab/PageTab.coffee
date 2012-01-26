Ext.define 'Geeki.view.tab.PageTab',
  extend: 'Ext.Panel'
  alias: 'widget.geekiPageTab'

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

  updateContent: (content) ->
    Ext.get(@getId()).update(content)
