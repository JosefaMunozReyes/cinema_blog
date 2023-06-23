class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :nombre
      t.string :sinapsis
      t.string :director

      t.timestamps
    end
  end
end
