class CreateDiretors < ActiveRecord::Migration[7.1]
  def change
    create_table :diretors do |t|
      t.string :name
      t.string :nationality
      t.datetime :birth_date
      t.references :genre, null: false, foreign_key: true, default: 0

      t.timestamps
    end
  end
end
