# -----------------------------------------------------------------
# Phonegap Extension
# -----------------------------------------------------------------
require "phonegap"

activate :phonegap


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
end
