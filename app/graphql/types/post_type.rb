class Types::PostType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: false
  field :user, Types::UserType, null: false

  def user
    BatchLoader.for(object.user_id).batch do |user_ids, loader|
      User.where(id: user_ids).each { |user| loader.call(user.id, user) }
    end
  end
end
