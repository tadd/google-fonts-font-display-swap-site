DEPRECATED
==========

The issue google/fonts#358 was closed because now we can use
`display=swap` parameter of Google Fonts API.
https://developers.google.com/fonts/docs/getting_started#use_font-display

We're all happy, my repos is now deprecated and archived.
Thank you Google guys!

Google Fonts `font-display: swap;` site
=======================================

Temporary (foolish) workaround for
https://github.com/google/fonts/issues/358 .

Builds CSS that is identical with CSS of Google Fonts except
`font-display: swap;` injection.  That's all.

Only Netlify is presumed currently, but this is really simple script,
so you may be able to use in others.

## Usage

1. Set environment variable `FAMILY`.  This is passed as `family`
   parameter of Google Fonts API.
2. Just run `bundle exec ruby build.rb`.
3. You've got nifty CSS file at `public/google-fonts.css`.
4. Load generated CSS at your pages and feel happiness with no
   whiteout of characters!

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/tadd/google-fonts-font-display-swap-site .
