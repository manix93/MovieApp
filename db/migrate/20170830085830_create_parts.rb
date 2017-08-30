class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.belongs_to :movie, index: true, optional: true
      t.belongs_to :actor, index: true, optional: true

      t.timestamps
    end
  end
end
