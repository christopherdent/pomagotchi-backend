class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :happiness
      t.string :weight
      t.integer :age
      t.string :picture_url

      t.timestamps
    end
  end
end
