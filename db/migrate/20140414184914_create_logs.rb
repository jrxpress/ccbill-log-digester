class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :operation_type
      t.string :date
      t.string :username
      t.string :second_date
      t.string :ip

      t.timestamps
    end
  end
end
