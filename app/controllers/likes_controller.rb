class LikesController < ApplicationController
  def index
    @likes = policy_scope(Like)
  end
end
