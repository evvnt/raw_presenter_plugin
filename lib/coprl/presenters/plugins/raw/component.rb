require 'coprl/presenters/dsl/components/event_base'

module Coprl
  module Presenters
    module Plugins
      module Raw
        class Component < DSL::Components::EventBase
          DEFAULT_POSITION = :center

          attr_accessor :content


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
