require 'meta_helper/tag'

module MetaHelper
  class Railtie < ::Rails::Railtie
    initializer 'meta-helper.initialize' do
      ::ActionView::Base.send :include, MetaHelper::Tag
    end
  end
end
