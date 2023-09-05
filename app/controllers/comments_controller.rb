class CommentsController < ApplicationController
  def index
    @comments = policy_scope(Comment)
  end
end
