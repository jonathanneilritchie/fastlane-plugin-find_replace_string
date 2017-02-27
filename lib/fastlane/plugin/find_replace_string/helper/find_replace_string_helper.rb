module Fastlane
  module Helper
    class FindReplaceStringHelper
      # class methods that you define here become available in your action
      # as `Helper::FindReplaceStringHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the find_replace_string plugin helper!")
      end
    end
  end
end
