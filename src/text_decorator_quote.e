note
	description: "Applies the styling to make the content look like a quote. (Actual implementations are in the _RENDERER classes)"
	author: "Marius H�gger"
	date: "$26.10.2017$"
	revision: "$15.11.2017$"

class
	TEXT_DECORATOR_QUOTE

inherit
	TEXT_DECORATOR
		redefine
			render
		end

create
	make_style

feature
	render(renderer: RENDERER; nesting: INTEGER): STRING
		-- Apply�render_quote renderer to TEXT_DECORATOR_QUOTE.
		require else
			renderer_exists: renderer /= Void
			valid_number_of_nesting: nesting >= 0
		do
    		Result := renderer.render_qoute(current, nesting)
		ensure then
    		result_exists: attached result
		end

end
