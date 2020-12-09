class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.date :notice_date
      t.text :body

      t.timestamps
    end
  end
end
