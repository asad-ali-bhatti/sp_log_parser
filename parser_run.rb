#!/usr/bin/env ruby

class ArgumentNotFound < StandardError; end

raise ArgumentNotFound if ARGV[0].nil?

log_file_path = ARGV[0]
