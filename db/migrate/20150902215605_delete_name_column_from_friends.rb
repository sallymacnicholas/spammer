class DeleteNameColumnFromFriends < ActiveRecord::Migration
  def change
  	remove_column :friends, :name
  end
end
