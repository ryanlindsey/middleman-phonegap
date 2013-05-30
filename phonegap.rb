# -----------------------------------------------------------------
# PhoneGap Extension
# -----------------------------------------------------------------

module Phonegap
  class << self
    def registered(app)
      app.set :build_dir, 'middleman_build'
      app.set :css_dir, 'stylesheets'
      app.set :js_dir, 'javascripts'
      app.set :images_dir, 'images'

      app.after_build do |builder|
        commands = %w(
          rm\ -R\ www
          mv\ middleman_build\ www
          ./cordova/build
          ./cordova/emulate
        )
        builder.run(commands.join(' && '))
      end
    end
    alias :included :registered
  end
end

::Middleman::Extensions.register(:phonegap, Phonegap)
