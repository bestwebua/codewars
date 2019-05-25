=begin
Heavy Metal Umlauts by Vladislav Trotsenko.

Your retro heavy metal band, VÄxën, originally started as kind of a joke, just because why would anyone
want to use the crappy foosball table in your startup's game room when they could be rocking out at top
volume in there instead? Yes, a joke, but now all the top tech companies are paying you top dollar to
play at their conferences and big product-release events. And just as how in the early days of the
Internet companies were naming everything "i"-this and "e"-that, now that VÄxënmänïä has conquered the
tech world, any company that doesn't use Hëävÿ Mëtäl Ümläüts in ëvëry pössïblë pläcë is looking
hopelessly behind the times.

Here's a little cheatsheet that will help you write your function to replace the so-last-year letters
a-e-i-o-u-and-sometimes-y with the following totally rocking letters:

A = Ä = \u00c4     E = Ë = \u00cb     I = Ï = \u00cf
O = Ö = \u00d6     U = Ü = \u00dc     Y = Ÿ = \u0178
a = ä = \u00e4     e = ë = \u00eb     i = ï = \u00ef
o = ö = \u00f6     u = ü = \u00fc     y = ÿ = \u00f
=end

def heavy_metal_umlauts(boring_text)
	symbolic = { 'A'=>"\u00c4", 'a'=>"\u00e4", 'E'=>"\u00cb", 'e'=>"\u00eb", 'O'=>"\u00d6", 'o'=>"\u00f6", 'U'=>"\u00dc", 'u'=>"\u00fc", 'I'=>"\u00cf", 'i'=>"\u00ef", 'Y'=>"\u0178", 'y'=>"\u00ff" }
 	boring_text.chars.map { |char| symbolic.has_key?(char) ? char = symbolic[char] : char }.join
end

heavy_metal_umlauts('Announcing the Macbook Air Guitar')

=begin
Super refactoring code:
def heavy_metal_umlauts(boring_text)
	boring_text.tr("aeiouyAEIOUY","\u00e4\u00eb\u00ef\u00f6\u00fc\u00ff\u00c4\u00cb\u00cf\u00d6\u00dc\u0178")
end
=end