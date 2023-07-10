# frozen_string_literal: true

module Titanium

  # This is the base class for all the middlewares.
  # This serves as a typing interface for declaring middlewares
  class MiddlewareInterface

    # @return [Rack::Response]
    # @param [Rack::Request] request
    def call(request)
      raise NotImplementedError, "Must implement call on #{self.class}"
    end

  end
end
