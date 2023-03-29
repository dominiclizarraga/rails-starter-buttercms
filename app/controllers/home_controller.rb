class HomeController < ApplicationController
    def show
        @page_data = OpenStruct.new(seo: OpenStruct.new(title: 'Customers',
            description: 'Customers'),
            breadcrumbs: helpers.breadcrumbs(title: 'HomePage', crumbs: [
                   { title: 'HomePage', url: root_path },
                   { title: 'HomePage', url: nil }
                 ]))

      @homepage = ButterCMS::Page.get('*', 'homepage').data.fields
      #   debugger
    end

    def tinyhouse
        @page_data = OpenStruct.new(seo: OpenStruct.new(title: 'Tiny house',
            description: 'Tiny house'),
            breadcrumbs: helpers.breadcrumbs(title: 'Tiny house', crumbs: [
                   { title: 'Tiny house', url: root_path },
                   { title: 'Tiny house', url: nil }
                 ]))
    
      @tinyhouse = ButterCMS::Page.get('*', 'tinyhouse').data.fields
      #   debugger
    end
end