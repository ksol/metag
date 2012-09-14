require 'metag/tag'

module Metag
  class Railtie < ::Rails::Railtie
    initializer 'meta-helper.initialize' do
      ActionView::Base.send :include, MetaHelper::Tag
    end
  end
end
