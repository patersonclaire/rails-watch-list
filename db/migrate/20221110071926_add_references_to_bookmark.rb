# frozen_string_literal: true

# adding references to Bookmark model
class AddReferencesToBookmark < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :list, foreign_key: true
    add_reference :bookmarks, :movie, foreign_key: true
  end
end
