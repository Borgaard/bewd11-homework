class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :user, index: true
      t.string :subject
      t.text :body
      t.string :status

      t.timestamps null: false
    end
  end
end
