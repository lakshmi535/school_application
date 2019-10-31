class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :stuname
      t.string :section
      t.integer :telugu
      t.integer :english
      t.integer :hindi

      t.timestamps
    end
  end
end
