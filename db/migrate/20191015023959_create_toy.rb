class CreateToy < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.text :picture
      t.date :date_posted
      t.string :user
    end
  end
end
