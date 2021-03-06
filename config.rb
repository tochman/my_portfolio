require 'extensions/build_cleaner'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end


helpers do
  def git_url(repo)
    "https://github.com/#{repo}"
  end

  def image_url(url)
    url.nil? ? 'http://placehold.it/200x200&text=Project' : url
  end
end

activate :directory_indexes

# Build-specific configuration
configure :build do
  activate :relative_assets
  activate :build_cleaner
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
