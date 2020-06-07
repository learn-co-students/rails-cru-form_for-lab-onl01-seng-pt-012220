class ChangeSpellingInSongsDbForName < ActiveRecord::Migration[5.0]
  def change
    change_table :songs do |t|
      t.change :nameL, :name 
    end
  end
end
