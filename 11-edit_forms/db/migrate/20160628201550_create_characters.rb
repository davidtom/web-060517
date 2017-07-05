class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :tv_show_id
      t.integer :actor_id
    end
  end
end
