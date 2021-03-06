ThinkingSphinx::Index.define :article, :with => :active_record do
  indexes content
  indexes :name, :sortable => true
  indexes comments.content, :as => :comment_content
  indexes author.first_name, :as => :author_name
  has author_id, created_at
end