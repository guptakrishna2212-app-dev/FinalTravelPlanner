class LikeController<ApplicationController
  def likebyuser
    uid = session.fetch(:user_id)
    p_name = params.fetch("place_name")
    @user = User.all.where({:id => uid}).at(0)

    @user_name = @user.username

    like = Like.new
    like.user_id = uid
    like.destination_id = Destination.all.where({:place_name => p_name}).at(0).id
    like.save

    redirect_to("/users/#{@user_name}")
  end
  
end
