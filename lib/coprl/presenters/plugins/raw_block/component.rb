require 'coprl/presenters/dsl/components/event_base'

module Coprl
  module Presenters
    module Plugins
      module RawBlock
        class Component < DSL::Components::EventBase
          attr_reader :content

          def initialize(content, **attribs, &block)
            super(type: :raw_block, **attribs, &block)
            @content = content

            expand!
          end
        end
      end
    end
  end
end
