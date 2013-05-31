class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :tel
      t.text :message

      t.timestamps
    end
  end
end
