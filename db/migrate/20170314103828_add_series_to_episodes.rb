class AddSeriesToEpisodes < ActiveRecord::Migration[5.0]
  def change
    add_reference :episodes, :series, foreign_key: true
  end
end
