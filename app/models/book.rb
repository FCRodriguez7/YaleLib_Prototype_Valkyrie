class Book < Valkyrie::Resource
  attribute :id, Valkyrie::Types::ID.optional
  attribute :creator, Valkyrie::Types::String
  attribute :title, Valkyrie::Types::Set
end