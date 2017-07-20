class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :abv
      t.boolean :domestic

      t.timestamps
    end
  end
end
