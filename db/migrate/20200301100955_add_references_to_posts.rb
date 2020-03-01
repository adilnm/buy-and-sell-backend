class AddReferencesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user
    add_reference :posts, :category
  end
end
