class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :title
      t.date :media_date
      t.text :body

      t.timestamps
    end
  end
end
