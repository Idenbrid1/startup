class CreatePressses < ActiveRecord::Migration[6.0]
  def change
    create_table :pressses do |t|
      t.string :title
      t.date :press_date
      t.text :body

      t.timestamps
    end
  end
end
