class Users::RegistrationsController < Devise::RegistrationsController
 #layout 'application'
 before_filter :before_create_account, :only => [:create]
# expose(:plan){Plan.find_by_slug(params[:plan])}
 def new
  redirect_to user_dashboard_path if current_user
  resource = build_resource({})
  #resource.build_account
  #resource.account.build_subscription
  respond_with resource
 end

 def after_inactive_sign_up_path_for(resource)
   users_dashboard_path
 end

 def after_sign_up_path_for(resource)
   sign_in(resource)
   users_dashboard_path
 end

 private
 def before_create_account
 end


end


