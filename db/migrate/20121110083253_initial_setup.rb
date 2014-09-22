class InitialSetup < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string  :name
      t.integer :tag_num
    end

    create_table :reviewers do |t|
      t.string :name
      t.string :phone
      t.string :email
    end

    create_table :reviews do |t|
      t.integer :subject_id
      t.integer :reviewer_id

      t.integer :rating
    end

    create_table :descriptions do |t|
      t.string  :description
    end

    create_table :descriptions_reviews do |t|
      t.integer :review_id
      t.integer :description_id
    end

    create_table :varietals do |t|
      t.string  :varietal
    end

    create_table :reviews_varietals do |t|
      t.integer :review_id
      t.integer :varietal_id
    end
  end
end
