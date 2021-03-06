note
	description: "Applies the styling to make the contet bold. (Actual implementations are in the _RENDERER classes)"
	author: "Marius H�gger"
	date: "$26.10.2017$"
	revision: "$15.11.2017$"

class
	TEXT_DECORATOR_BOLD

inherit
	TEXT_DECORATOR
		redefine
			render
		end


create
	make_style


feature {ANY}
	render(renderer: RENDERER; nesting: INTEGER): STRING
		--Apply�render_bold renderer to TEXT_DECORATOR_BOLD.
		do
    		Result := renderer.render_bold(current, nesting)
		end

end
