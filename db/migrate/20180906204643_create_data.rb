class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data, id: :uuid do |t|
      t.string :name
      t.jsonb :value

      t.timestamps
    end
  end
end
