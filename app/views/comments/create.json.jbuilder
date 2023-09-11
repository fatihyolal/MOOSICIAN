if @comment.persisted?
  json.form render(partial: "comments/form", formats: :html, locals: {comment: Comment.new, post: @post})
  json.inserted_item render(partial: "comments/comment", formats: :html, locals: {comment: @comment})
else
  json.form render(partial: "comments/form", formats: :html, locals: {comment: @comment, post: @post})
end
