class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    
    #overwrite method
    
end