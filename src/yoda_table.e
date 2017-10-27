note
	description: "Summary description for {YODA_TABLE}."
	author: "Joel Barmettler"
	date: "$25.10.17$"
	revision: "$27.10.2017$"

class
	YODA_TABLE

	inherit
		YODA_ELEMENT

	create
		make

	feature {ANY}
		--name and documents shall be public, allow access for everybody
		content: ARRAY2[YODA_ELEMENT]


	feature {ANY}
		make(u_content: ARRAY2[YODA_ELEMENT])
			--some fancy comment
			require
				placeholder: True
				u_content /= void
				u_content.count > 0
			do
				--comment what is done
			ensure
				is_valid: validate(CURRENT, agent {VALIDATOR}.validate_table(?))
				placeholder: True
			end



		render(render_obj: RENDERER; nesting: INTEGER): STRING
			--some fancy comment
			require else
				placeholder: True
			do
				--comment what is done
			ensure then
				placeholder: True
			end


	invariant
		placeholder: True

end
