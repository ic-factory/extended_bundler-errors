require "extended_bundler/errors/version"
require "extended_bundler/errors/formatter"
require "extended_bundler/backports"

require "bundler"
require "fileutils"
require "yaml"

module ExtendedBundler
  module Errors

    class << self
      # Registers the plugin and adds all needed hooks
      # Will call troubleshoot via the `after-install` hook if the install does not succeed
      def register
        return if defined?(@registered) && @registered
        @registered = true

        Bundler::Plugin.add_hook('after-install-all') do |spec_install|
          puts "Installation has finished1"
        end
      end

    end
  end
end
