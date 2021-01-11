class CreateIRmains < ActiveRecord::Migration[6.0]
  def change
    create_table :i_rmains do |t|
      t.date :ir_date
      t.string :title
      t.text :ir_file

      t.timestamps
    end
  end
end
