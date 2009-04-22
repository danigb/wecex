
module ActionView
  module Helpers

    module FormHelper
      def radio_answer(object_name, method, key, scope)
        content_tag(:label, '&nbsp;') +
        radio_button(object_name, method, key) +
        content_tag(:span, I18n.t(key, :scope => [:encuesta, scope]))
      end
    end

    class FormBuilder
      def radio_answer(method, key, scope)
        @template.radio_answer(@object_name, method, key, scope)
      end
    end
  end
end