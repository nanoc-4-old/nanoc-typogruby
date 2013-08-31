# encoding: utf-8

require 'helper'

class Nanoc::Typogruby::FilterTest < Minitest::Test

  def test_filter
    # Get filter
    filter = ::Nanoc::Typogruby::Filter.new

    # Run filter
    a = '"Typogruby makes HTML look smarter &amp; better, don\'t you think?"'
    b = '<span class="dquo">&#8220;</span>Typogruby makes <span class="caps">HTML</span> look smarter <span class="amp">&amp;</span> better, don&#8217;t you&nbsp;think?&#8221;'
    result = filter.run(a)
    assert_equal(b, result)
  end

end
