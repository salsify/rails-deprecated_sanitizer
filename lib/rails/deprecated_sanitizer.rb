require "rails/deprecated_sanitizer/version"
require "rails/deprecated_sanitizer/html-scanner"
require "rails/deprecated_sanitizer/railtie" if defined?(Rails::Railtie)
require "active_support/core_ext/module/remove_method"

module Rails
  module DeprecatedSanitizer
    extend self

    def full_sanitizer
      HTMLDeprecated::FullSanitizer
    end

    def link_sanitizer
      HTMLDeprecated::LinkSanitizer
    end

    def white_list_sanitizer
      HTMLDeprecated::WhiteListSanitizer
    end

    def safe_list_sanitizer
      HTMLDeprecated::WhiteListSanitizer
    end
  end
end
