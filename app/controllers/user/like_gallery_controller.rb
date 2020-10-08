class User::LikeGalleryController < User::BaseController

  def create
    current_user.favorites.create(favoratable_id: params[:favoratable_id], favoratable_type: params[:favoratable_type])
  end

  def destroy
    current_user.favorites.find_by(favoratable_id: params[:favoratable_id], favoratable_type: params[:favoratable_type])&.destroy
  end
end
