# encoding: utf-8

require 'typogruby'

module Nanoc::Typogruby

  class Filter < Nanoc::Filter

    identifier :typogruby

    def run(content, params={})
      ::Typogruby.improve(content)
    end

  end

end
