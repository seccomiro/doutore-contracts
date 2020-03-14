class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :title
      t.references :clinic, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
