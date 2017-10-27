note
	description: "Deferred component of the decorator."
	author: "Marius H�gger"
	date: "$26.10.2017$"
	revision: "$27.10.2017$"

deferred class
	TEXT_DECORATOR

inherit
	TEXT_INTERFACE
		redefine
			render
		end

feature {NONE}
	component: YODA_TEXT

feature {NONE}
	make_style(u_component: like component)
			-- Set `component' to `u_component'.
		require
			u_component_not_void: u_component /= Void
		do
			--component := u_component
		ensure
			component_set: component = u_component
		end

feature
	render(render_obj: RENDERER; nesting: INTEGER): STRING
		do
			--add_style(component.render)
		end

feature
	style_render(render_obj: RENDERER; nesting: INTEGER): STRING
		require else
			placeholder: True
		do
			--calls render_obj with self and nesting as arguments
			--recieves STRING with rendered text inc. tags.
		ensure then
			placeholder: True
		end




invariant
	component_not_void: component /= void

end
