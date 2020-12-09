class CreateNewzs < ActiveRecord::Migration[6.0]
  def change
    create_table :newzs do |t|
      t.string :name
      t.string :title
      t.date :publish_date
      t.text :body

      t.timestamps
    end
  end
end
