module MetaHelper
  class Railtie < ::Rails::Railtie
    initializer 'meta-helper.initialize' do
      ::MetaHelper::Hooks.init
    end
  end
end
