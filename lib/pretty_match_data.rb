require 'term/ansicolor'
class MatchData
  include Term::ANSIColor

  def to_s
    match = self[0].dup
    to_a[1..-1].each do |capture|
      match.gsub!(capture) { |s| underline { send(_next_color) { s } } }
    end
    pre_match + underline { match } + post_match
  end

  def _next_color
    @_color ||= %w(red green yellow blue magenta cyan).map { |c| "on_#{c}".to_sym }
    @_color.push @_color.shift
    @_color[0]
  end
end