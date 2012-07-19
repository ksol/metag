module MetaHelper
  class Hooks
    def self.init
      ActiveSupport.on_load(:action_view) do
        require 'meta_helper/tag'
        ::ActionView::Base.send :include, MetaHelper::Tag
      end
    end
  end
end
