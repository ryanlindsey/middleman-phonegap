# -----------------------------------------------------------------
# Phonegap Extension
# -----------------------------------------------------------------

module Phonegap
  class << self
    def registered(app)
      app.set :css_dir, 'stylesheets'
      app.set :js_dir, 'javascripts'
      app.set :images_dir, 'images'

      app.after_build do |builder|
        builder.run('rm -R www && mv build www && ./cordova/build && ./cordova/emulate')
      end
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:phonegap, Phonegap)