class HomeController < ApplicationController
  def index
  	if current_user.has_role? 'admin'
  		render '/home/index_admin'

  	elsif current_user.has_role? 'teacher'
  		render '/home/index_teacher'

  	elsif current_user.has_role? 'student'
  		render '/home/index_student'

  	elsif current_user.has_role? 'secretary'
  		render '/home/index_secretary'

  	elsif current_user.has_role? 'parent'
  		render '/home/index_parent'

  	end


  end
end
