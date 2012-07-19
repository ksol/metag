module MetaHelper
	def meta_tag(*args)
    # Handle options
    options = args.pop if args.last.is_a?(Hash)
    options = (options || {}).reverse_merge(separator: ':')

    # Meta tag attributes
    attrs = {}
    attrs[:content] = args.pop
    attrs[:property] = args.map(&:to_s).join(options[:separator])

    tag :meta, attrs
  end
end
