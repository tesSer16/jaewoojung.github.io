 # frozen_string_literal: true
 
 module Jekyll
  module HideCustomBibtex
    def hideCustomBibtex(input)
	  keywords = @context.registers[:site].config['filtered_bibtex_keywords']

	  keywords.each do |keyword|
		input = input.gsub(/^.*#{keyword}.*$\n/, '')
	  end

      return input
    end
  end
  module Drops
    class PageDrop < Drop
      def sort
        @obj.data["sort"]
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::HideCustomBibtex)
