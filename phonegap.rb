# -----------------------------------------------------------------
# Phonegap Extension
# -----------------------------------------------------------------

module Phonegap
  class << self
    def registered(app)
      app.set :css_dir, 'stylesheets'
      app.set :js_dir, 'javascripts'
      app.set :images_dir, 'images'
      
      app.set :phonegap_dir, ''

      app.after_build do |builder|
        builder.run('rm -R ' << phonegap_dir << '/www')
        builder.run('mv build ' << phonegap_dir << '/www')
        # builder.run('./' << phonegap_dir << '/cordova/build')
      end
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:phonegap, Phonegap)