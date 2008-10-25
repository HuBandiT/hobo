module HoboFields

  class MarkdownString < RawMarkdownString
    include SanitizeHtml

    HoboFields.register_type(:markdown, self)
    
    def to_html(xmldoctype = true)
      blank? ? "" : sanitize(BlueCloth.new(self).to_html)
    end

  end

end
