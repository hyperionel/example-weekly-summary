class CreateJoinTableUsersGroups < ActiveRecord::Migration[7.2]
  def change
    create_join_table :users, :groups do |t|
      t.index :user_id
      t.index :group_id
    end
  end
end
