#!/usr/bin/env ruby

require 'feedzirra'
ATOM_FEED_URL = 'http://www.brotips.com/recent.atom'
puts Feedzirra::Feed.fetch_and_parse(ATOM_FEED_URL).entries.first.content.gsub('<br>', '').gsub("\n", ' ').split('. ').map {|s| s.slice(0, 1).capitalize + s.slice(1..-1)}.join('. ')