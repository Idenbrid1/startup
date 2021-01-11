class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :title
      t.date :publication_date
      t.text :body

      t.timestamps
    end
  end
end
