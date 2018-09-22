class ApplicationController < ActionController::Base
    prepend_view_path Rails.root.join('frontend') # Tells Controllers where to find .erb files
    
end
