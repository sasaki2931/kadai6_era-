class CreateFacebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :facebooks do |t|
      t.string :title
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
