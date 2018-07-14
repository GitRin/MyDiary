class CreateWhatadays < ActiveRecord::Migration[5.2]
  def change
    create_table :whatadays do |t|
      t.string :when
      t.string :how

      t.timestamps
    end
  end
end
