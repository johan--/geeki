Ext.define 'Rwiki.controller.tab.TabPanel',
  extend: 'Ext.app.Controller'

  views: [
    'tree.TreePanel'
    'tab.TabPanel'
  ],

  refs: [
      ref: 'tabPanel'
      selector: 'rwikiTabPanel'
    ,
      ref: 'treePanel'
      selector: 'rwikiTreePanel'
  ]

  init: ->
    console.log('TabPanel#init', arguments)

    @control ->
      rwikiTabPanel:
        tabchange: (tabPanel, tab, oldTab) ->
          console.log('TabPanel#tabchange', arguments)
          treePanel = @getTreePanel();
          treePanel.getSelectionModel().select(tab.getPage());

        add: (tabPanel, tab) ->
          console.log('TabPanel#add', arguments)
