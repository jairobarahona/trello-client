# encoding: utf-8

module Trello   # :nodoc:
  class Client  # :nodoc:

    #
    # Trello::Client::Action object
    #
    # See https://trello.com/docs/api/action/index.html
    #
    class Action

      #
      # Initialize Trello::Client::Action
      #
      # Params:
      # +action+:: Hash'ified JSON action or JSON string
      #
      def initialize(action)
        @action = action.kind_of?(Hash) ? action : MultiJson.decode(action)
        yield self if block_given?
        self
      end

      #
      # Get Trello::Client::Action property
      #
      def[](key)
        @action[key]
      end

      #
      # String representation.
      #
      def to_s
        @action.to_s
      end

    end # class Action

  end # class Client
end   # module Trello

