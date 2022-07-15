require_relative 'raw/component'

module Coprl
  module Presenters
    module Plugins
      module Raw
        module DSLComponents

          def raw_block(content, **attributes, &block)
            self << Raw::Component.new(content, parent: self, **attributes, &block)
          end

        end

        module WebClientComponents
          def view_dir_raw(pom)
            File.join(__dir__, '../../../..', 'views', 'components')
          end

          def render_raw(pom, render:)
            render.call :erb, :raw_block, views: view_dir_raw(pom)
          end
        end
      end
    end
  end
end
