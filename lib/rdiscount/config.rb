class RDiscount
  module Config
    extend self

    OPTIONS = [
      :smart,
      :filter_styles,
      :filter_html,
      :fold_lines,
      :footnotes,
      :generate_toc,
      :no_image,
      :no_links,
      :no_tables,
      :strict,
      :autolink,
      :safelink,
      :no_pseudo_protocols,
      :no_superscript,
      :no_strikethrough
    ]

    OPTIONS.each do |option|
      define_method "#{option}=" do |value|
        instance_variable_set("@#{option}", value)
      end
      define_method "#{option}" do
        instance_variable_get("@#{option}")
      end
    end

  end
end
