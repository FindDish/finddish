class CreateEstablecimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :establecimientos do |t|
      t.string :nombre
      t.string :especialidad
      t.string :email
      t.integer :calificacion
      t.string :direccion
      t.string :rif
      t.integer :telefono

      t.timestamps
    end

     create_table :platillos do |t|
      t.belongs_to :establecimiento, foreign_key: true
      t.string :nombre
      t.string :ingrediente
      t.integer :precio

      t.timestamps
    end

  end
end
