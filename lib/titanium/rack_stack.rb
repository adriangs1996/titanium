# frozen_string_literal: true

module Titanium
  # This is what holds the whole
  # middleware stack for the titanium framework
  class RackStack
    # @return [Array<MiddlewareInterface>]
    def middlewares
      @middlewares ||= []
    end

    # Add a new middleware to the end of the stack. Conditionally
    # can insert the middleware in a given position.
    def use(middleware, at: nil)
      if at.nil?
        middlewares.append(middleware)
      else
        middlewares.insert(at, middleware)
      end
    end

    # Give the amount of middlewares currently present in the stack.
    # Useful fo ordering
    def count
      middlewares.count
    end

    # Factory method to configure the stack of middlewares
    # to be used by the application
    def self.config(&block)
      stack = new
      block.call(stack)
      stack
    end

    private

    def initialize; end
  end
end
