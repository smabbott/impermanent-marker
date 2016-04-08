###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

page "/index.html", :layout => "landing"

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  set :haml, { :ugly => true, :format => :html5 }
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# s3_sync TODO:
# Configuration variables specific to each project
#------------------------------------------------------------------------
AWS_BUCKET                      = 'impermanentmarker.com'

# Variables: Sent in on CLI by rake task via ENV
#------------------------------------------------------------------------
AWS_ACCESS_KEY                  = ENV['AWS_ACCESS_KEY']
AWS_SECRET                      = ENV['AWS_SECRET']

# https://github.com/fredjean/middleman-s3_sync
activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = "impermanentmarker.com" # The name of the S3 bucket you are targeting. This is globally unique.
  s3_sync.aws_access_key_id          = ENV['AWS_ACCESS_KEY']
  s3_sync.aws_secret_access_key      = ENV['AWS_SECRET']
  s3_sync.delete                     = false # We delete stray files by default.
end


set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
