require 'extensions/build_cleaner'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end



# Build-specific configuration
configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
