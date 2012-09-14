# Metag

This gem provides ActionView helpers to ease the use of `meta` tags.
It also provides helpers ready to use for
[Open Graph tags](https://developers.facebook.com/docs/opengraph/objects/)
and [Twitter Cards tags](https://dev.twitter.com/docs/cards).

## Usage

Several helpers are available :

### meta_tag

Generic helper. The last argument given (exception made of hashes)
will be used as `content`, while the others will be joined in order
to form the `property`. You can pass `separator: ':'` as last argument
to change the default separator (which is ':').

```ruby
meta_tag :name, :value
=> "<meta content=\"value\" property=\"name\" />"

meta_tag :name, :of, :my, :property, :value
=> "<meta content=\"value\" property=\"name:of:my:property\" />"

meta_tag :name, :of, :my, :property, :value, separator: '/'
=> "<meta content=\"value\" property=\"name/of/my/property\" />"
````

### Variants

Three others helpers are available: `facebook_tag`, `opengraph_tag`,
and `twitter_tag` (they're respectively aliased to `fb_tag`, `og_tag`,
and `tw_tag`). They're just sugar for `meta_tag` with the first argument
set as `fb`, `og`, and `twitter` respectively.

## Questions, Feedback
Feel free to ping me on Twitter (@ksol).

## Contributing
I don't think there's a lot much to do on this, but hey. If you have any idea
of improvement, or anything else, you can use the issues. Or you can just
fork, fix, then send me a pull request.

## Copyright
See MIT.md for further details.
