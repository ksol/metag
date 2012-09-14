require 'metag/tag'

module Metag
  class Railtie < ::Rails::Railtie
    initializer 'meta-helper.initialize' do
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, Metag::Tag
      end
    end
  end
end
