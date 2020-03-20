class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.string :show
      t.string :channel
      t.string :timing

      t.timestamps
    end
  end
end
