class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :colours
      t.integer :happy_little_trees
      t.boolean :cabin
      t.string :river_size
      t.integer :snowy_mountains
      t.integer :critters

      t.timestamps
    end
  end
end
