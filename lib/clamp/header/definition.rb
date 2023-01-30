# frozen_string_literal: true

module Clamp
  module Heading
    class Definition

      def initialize(title, options)
        @title = title
      end

      attr_reader :title

      def help_header
        "\n" + title
      end

      def hidden?
        @hidden ||= false
      end

      # Not an option
      def handles?(_)
        false
      end

      # Not a subcommand
      def is_called?(_)
        false
      end
    end
  end
end
