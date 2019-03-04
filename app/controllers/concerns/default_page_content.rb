module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_title
    end

    def set_title
        @page_title = "Port | My Portolio Web"
        @seo_keywords = "Taimoor Hassan portfolio"
    end
    
end