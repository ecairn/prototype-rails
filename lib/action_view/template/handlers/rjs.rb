module ActionView
  module Template::Handlers
    class RJS
      # Default format used by RJS.
      class_attribute :default_format
      self.default_format = :js

      def call(template, source)
        "update_page do |page|;#{source}\nend"
      end
    end
  end
end

