module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_task, mutation: Mutations::CreateTask
    field :delete_task, mutation: Mutations::DeleteTask
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
