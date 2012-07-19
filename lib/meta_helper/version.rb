module MetaHelper
  VERSION = '0.1'
end

if !!defined?(Rails)
  require "meta_helper/railtie"
end
