# frozen_string_literal: true

require 'active_support/concern'

module GrpcOpm
  # Adds the support for defining a document
  module Document
    extend ActiveSupport::Concern

    included do
      # Add a field
      def self.field(field_name)
        # We'll use something like this to track the fields
        # we've added - not sure on the architecture yet
        @grpc_opm_fields ||= Set.new
        @grpc_opm_fields << field_name

        attr_accessor field_name
      end
    end
  end
end
