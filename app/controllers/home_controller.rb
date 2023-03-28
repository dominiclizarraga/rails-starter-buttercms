class HomeController < ApplicationController
    def show
      @homepage = ButterCMS::Page.get('*', 'homepage').data.fields
    end
end