# If you do not have OpenSSL installed, update
# the following line to use "http://" instead
source 'https://rubygems.org'

gem 'middleman' #, '>= 4.0.0'
gem 'middleman-livereload'
# gem 'middleman-compass', '>= 4.0.0'
gem "middleman-sprockets" #, "~> 4.0.0.rc"

# gem 'dotenv', '~> 2.1'

# Deploying to S3
gem 'middleman-aws'
# Even though already required by the middleman-aws gem, it appears middleman does not
#   pick up transitive dependency extensions early enough  to avoid the
#   "== Unknown Extension:" error.  Add these to your main project
#   (I wish this was unnecessary but don't know how to work around it)
gem 'middleman-s3_sync'
gem 'middleman-cloudfront'