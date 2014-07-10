class CreatePotentialclients < ActiveRecord::Migration
  def change
    create_table :potentialclients do |t|
      t.string :email
      t.string :fullname
      t.string :worktype
      t.string :budget

      t.timestamps
    end
  end
end
