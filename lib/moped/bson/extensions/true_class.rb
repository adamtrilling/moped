module Moped
  module BSON
    # @private
    module Extensions
      module TrueClass
        def __bson_dump__(io, key)
          io << Types::BOOLEAN
          io << key
          io << NULL_BYTE
          io << Types::TRUE
        end

        def __safe_options__
          { safe: true }
        end
      end
    end
  end
end
