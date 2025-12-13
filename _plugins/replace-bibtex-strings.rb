module Jekyll
  module ReplaceBibtexStrings
    def replaceBibtexStrings(input)
      return input if input.nil? || input.empty?
      
      # Define the string mappings from the BibTeX file
      string_map = {
        'apj' => 'Astrophysical Journal',
        'apjs' => 'Astrophysical Journal Supplement',
        'mnras' => 'Monthly Notices of the Royal Astronomical Society',
        'pasj' => 'Publications of the Astronomical Society of Japan',
        'jaavso' => 'Journal of the American Association of Variable Star Observers'
      }
      
      result = input.dup
      
      # Replace {\stringname} patterns
      string_map.each do |key, value|
        # Match {\stringname} (with both braces) - must come first
        result = result.gsub(/\{\\#{key}\}/, value)
        # Match {\stringname (with opening brace but missing closing brace)
        # Negative lookahead ensures we don't match if followed by }
        result = result.gsub(/\{\\#{key}(?!\})/, value)
        # Match \stringname (without braces) if needed
        result = result.gsub(/\\#{key}\b/, value)
        # Match plain stringname (without backslash or braces) as whole word
        # Negative lookbehind ensures we don't match if preceded by backslash
        result = result.gsub(/(?<!\\)\b#{key}\b/, value)
      end
      
      return result
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReplaceBibtexStrings)
