require 'metag/tag'
require 'metag/sugar'

module Metag
  class Railtie < ::Rails::Railtie
    initializer 'meta-helper.initialize' do
      ActiveSupport.on_load(:action_view) do
        ::ActionView::Base.send :include, Metag::Tag
        ::ActionView::Base.send :include, Metag::Sugar
      end
    end
  end
end
