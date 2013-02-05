# -----------------------------------------------------------------
# Phonegap Extension Config
# -----------------------------------------------------------------
require "phonegap"

activate :phonegap

# Set this to the path of your Phonegap project
# set :phonegap_dir, '../'


# -----------------------------------------------------------------
# Middleman Build Config
# -----------------------------------------------------------------
configure :build do
  ignore 'images/*.psd'
  ignore 'stylesheets/lib/*'
  ignore 'stylesheets/vendor/*'
  ignore 'javascripts/lib/*'
  ignore 'javascripts/vendor/*'

  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end
