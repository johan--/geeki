Ext.define 'Rwiki.view.tab.PageTab',
  extend: 'Ext.tab.Tab'
  alias: 'widget.rwikiPageTab'

  page: null

  constructor: (options) ->
    @page = options.page

    options.title = @page.get('text')
    options.text = @page.get('body')

    @callParent([options])

  getPage: ->
    @page
