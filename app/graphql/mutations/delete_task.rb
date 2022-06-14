module Mutations
  class DeleteTask < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :task, Types::TaskType, null: true

    argument :id, Int, required: true

    def resolve(params)
      task = Task.find(params[:id]).destroy
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
