# Unique header generation
require 'middleman-core/renderers/redcarpet'

$headers_history = {}

class UniqueHeadCounter < Middleman::Renderers::MiddlemanRedcarpetHTML
  def initialize
    super
  end

  def header(text, header_level)
    friendly_text = text.parameterize
    $headers_history[header_level] = text.parameterize

    if header_level > 1
      for i in (header_level - 1).downto(1)
        friendly_text.prepend("#{$headers_history[i]}-") if $headers_history.key?(i)
      end
    end

    return "<h#{header_level} id='#{friendly_text}'>#{text}</h#{header_level}>"
  end
end