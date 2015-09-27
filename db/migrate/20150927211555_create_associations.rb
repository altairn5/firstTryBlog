class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.string :user
      t.string :article

      t.timestamps null: false
    end
  end
end
