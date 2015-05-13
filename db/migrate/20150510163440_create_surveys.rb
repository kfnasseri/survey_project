class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :customer_feeling
      t.string :customer_product
      t.text :customer_issue
      t.boolean :issue_resolved

      t.timestamps null: false
    end
  end
end
