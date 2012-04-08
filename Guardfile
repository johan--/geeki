group :frontend do
  guard 'jasmine', :phantomjs_bin => './phantomjs', :specdoc => :always, :console => :always do
    watch(%r{app/assets/javascripts/.+(js\.coffee|js)}) { "spec/javascripts" }
    watch(%r{spec/javascripts/.+(js\.coffee|js)}) { "spec/javascripts" }
  end
end
