class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      has_one_attached:image

      t.timestamps
    end
  end
end
