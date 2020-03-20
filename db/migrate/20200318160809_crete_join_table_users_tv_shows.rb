class CreteJoinTableUsersTvShows < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :tv_shows , id: false do |t|
      # t.index [:user_id, :tv_show_id]
      # t.index [:tv_show_id, :user_id]
    end
  end
end
