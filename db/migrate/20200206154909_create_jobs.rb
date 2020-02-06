class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.belongs_to :speciality
      t.belongs_to :doctor
      t.timestamps
    end
  end
end
