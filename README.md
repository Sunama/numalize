# Numalize

Numalize is gem for localize and delocalize numbers for various language. and below is list of available languages. if your language is not available please fork it and create pull request, thanks.

* English
* Thai

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'numalize'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numalize

## Usage

```ruby
text1 = "Thai's numbers: ๑๒๓๔๕๖๗๘๙๐ (Equal to 1234567890)"
text2 = "เอกสารหมายเลข ๕ เลขที่กำกับ ๒๓/๖ ออก ณ วันที่ ๗ กุมภาพันธ์ ๒๕๕๗"

text1 = Numalize.delocalize text1
text2 = Numalize.delocalize text2

puts text1
# Output => "Thai's numbers: 1234567890 (Equal to 1234567890)"

puts text2
# Output => "เอกสารหมายเลข 5 เลขที่กำกับ 23/6 ออก ณ วันที่ 7 กุมภาพันธ์ 2557"

text1 = Numalize.localize(text1).to "thai"
text2 = Numalize.localize(text2).to "thai"

puts text1
# Output => "Thai's numbers: ๑๒๓๔๕๖๗๘๙๐ (Equal to ๑๒๓๔๕๖๗๘๙๐)"

puts text2
"เอกสารหมายเลข ๕ เลขที่กำกับ ๒๓/๖ ออก ณ วันที่ ๗ กุมภาพันธ์ ๒๕๕๗"
```

## Contributing

1. Fork it ( https://github.com/Sunama/numalize/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
