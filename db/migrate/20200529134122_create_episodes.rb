class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :air_date
      t.string :genre
      t.string :synopsis
      t.integer :episode_number

      t.timestamps
    end
  end
end
