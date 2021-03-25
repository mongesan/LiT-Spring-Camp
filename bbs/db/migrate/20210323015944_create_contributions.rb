class CreateContributions < ActiveRecord::Migration[6.1]
  def change
    create_table :contributions do |t|
      t.string :name
      t.text :body
      t.timestamps null: false
    end
  end
end
