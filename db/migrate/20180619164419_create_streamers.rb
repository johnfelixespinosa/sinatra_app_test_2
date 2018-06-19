class CreateStreamers < ActiveRecord::Migration
  def change
    create_table :streamers do |t|
      t.string :name
      t.string :url
    end
  end
end
