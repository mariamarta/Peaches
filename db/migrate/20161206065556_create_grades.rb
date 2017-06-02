class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.decimal :score
      t.decimal :total
      t.decimal :weight
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
