class RemoveNamelFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :nameL, :string
  end
end
