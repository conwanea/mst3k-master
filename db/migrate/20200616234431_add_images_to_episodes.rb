class AddImagesToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :movie_poster, :string
    add_column :episodes, :episode_poster, :string
  end
end

