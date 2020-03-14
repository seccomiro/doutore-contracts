class ApplicationController < ActionController::Base
  def set_pdf_header
    def render_header_footer(type)
      compiled = ERB.new(File.read("#{Rails.root}/app/views/reports/#{type}.html.erb")).result(binding)
      file = Tempfile.new(["#{type}", ".html"])
      file.write(compiled)
      file.rewind
      file.path
    end

    PDFKit.configure do |config|
      config.default_options = {
        encoding: "UTF-8",
        dpi: "300",
        margin_top: "30",
        margin_bottom: "23",
        margin_left: "10",
        margin_right: "10",
        header_spacing: "0",
        footer_spacing: "2",
        quiet: true,
        page_size: "A4",
        header_html: render_header_footer("header"),
        footer_html: render_header_footer("footer"),
      }
    end
  end
end
