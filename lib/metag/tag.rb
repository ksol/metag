module Metag #:nodoc:
  module Tag
    def meta_tag(*args)
      # Handle options
      options = args.pop if args.last.is_a?(Hash)
      options = (options || {}).reverse_merge(separator: ':')

      # Ensure the presence of at least 2 args (property & content)
      if (size = args.size) < 2
        raise ArgumentError, "wrong number of arguments(#{size} for 2)"
      end

      # Meta tag attributes
      attrs = {}
      attrs[:content] = args.pop
      attrs[:property] = args.map(&:to_s).join(options[:separator])

      tag :meta, attrs
    end
  end
end
