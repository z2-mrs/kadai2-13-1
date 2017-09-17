class CreateExapmles < ActiveRecord::Migration[5.0]
  def change
    create_table :exapmles do |t|
      t.string :name
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
