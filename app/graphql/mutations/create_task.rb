module Mutations
  class CreateTask < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :task, Types::TaskType, null: true

    argument :body, String, required: true
    argument :title, String, required: true

    def resolve(params)
      task = Task.create!(params)
      {
        task: task
      }
    end

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
  end
end
