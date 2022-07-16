require_relative 'raw_block/component'

module Coprl
  module Presenters
    module Plugins
      module RawBlock
        module DSLComponents

          def raw_block(content, **attributes, &block)
            self << RawBlock::Component.new(content, parent: self, **attributes, &block)
          end

        end

        module WebClientComponents
          def view_dir_raw_block(pom)
            File.join(__dir__, '../../../..', 'views', 'components')
          end

          def render_raw_block(comp, render:, components:, index:)
            render.call :erb, :raw_block, views: view_dir_raw_block(comp),
                        locals: { comp: comp, components: components, index: index}
          end
        end
      end
    end
  end
end
