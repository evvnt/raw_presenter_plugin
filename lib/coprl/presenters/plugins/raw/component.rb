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
            @content = validate_content(content)

            expand!
          end

          private

          def validate_content(content)
            return if valid_html?(content)

            raise_parameter_validation "The given string doesn't seem like a valid HTML block"
          end
        end
      end
    end
  end
end
