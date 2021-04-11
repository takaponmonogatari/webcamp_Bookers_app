class ChangeBlogsToTrashBooks < ActiveRecord::Migration[5.2]
  def change
    rename_table :blogs, :books
  end
end
