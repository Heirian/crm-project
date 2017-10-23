# frozen_string_literal: true

# Fix Kaminari x WillPaginate incompatibility

if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        def per(value = nil)
          per_page(value)
        end

        def total_count
          count
        end
      end
    end
    module CollectionMethods
      alias num_pages total_pages
    end
  end
end