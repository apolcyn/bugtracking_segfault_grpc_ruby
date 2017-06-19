# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: munic/type/utils/struct.proto

require 'google/protobuf'

require 'google/type/latlng_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "munic.type.utils.Struct" do
    map :struct_fields, :string, :message, 1, "munic.type.utils.Value"
  end
  add_message "munic.type.utils.Value" do
    oneof :kind do
      optional :integer_value, :int64, 1
      optional :double_value, :double, 2
      optional :string_value, :string, 3
      optional :bool_value, :bool, 4
      optional :struct_value, :message, 5, "munic.type.utils.Struct"
      optional :list_value, :message, 6, "munic.type.utils.ListValue"
      optional :latlng_value, :message, 7, "google.type.LatLng"
      optional :bytes_value, :bytes, 8
    end
  end
  add_message "munic.type.utils.ListValue" do
    repeated :values, :message, 1, "munic.type.utils.Value"
  end
end

module Munic
  module Type
    module Utils
      Struct = Google::Protobuf::DescriptorPool.generated_pool.lookup("munic.type.utils.Struct").msgclass
      Value = Google::Protobuf::DescriptorPool.generated_pool.lookup("munic.type.utils.Value").msgclass
      ListValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("munic.type.utils.ListValue").msgclass
    end
  end
end