class ChangeTableInformationForSongs < ActiveRecord::Migration[5.0]
  def up 
    change_table :songs do |t|
      t.string :name 
    end
  end

  def down 
    change_table :songs do |t|
      t.change :nameL
    end
  end
end
