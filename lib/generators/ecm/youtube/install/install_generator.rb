module Ecm
  module Youtube
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc 'Nothing to do at the moment'

        source_root File.expand_path('../templates', __FILE__)

        # def generate_initializer
        #   copy_file 'initializer.rb', 'config/initializers/ecm_youtube.rb'
        # end

        # def generate_routes
        #   inject_into_file 'config/routes.rb', before: "\nend" do
        #     File.read(File.join(File.expand_path('../templates', __FILE__), 'routes.source'))
        #   end
        # end
      end
    end
  end
end
