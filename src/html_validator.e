note
	description: "Concrete validator that validates the concrete elements in terms of the constraints given by html."
	author: "Joel Barmettler"
	date: "$25.10.17$"
	revision: "$27.10.2017$"

class
	HTML_VALIDATOR

	inherit
		VALIDATOR

	feature {ANY}
		validate_text(element: YODA_TEXT): BOOLEAN
			--validates a YODA_TEXT whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check if the text does contain any closing preventing-tags that would mess up our structure.
				--if it does, raise an exception
				--check if the text contains any from us defined tags like {{u}}.
				--if it does, delete them
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end


		validate_table(element: YODA_TABLE): BOOLEAN
			--validates a YODA_TABLE whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check if all table entries are of valid type
				--check if table has at least one entries
				--raise acception otherwise
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end


		validate_list(element: YODA_LIST): BOOLEAN
			--validates a YODA_LIST whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check if all table entries are of valid type
				--check if list has at least one entries
				--raise acception otherwise
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end


		validate_link(element: YODA_LINK): BOOLEAN
			--validates a YODA_LINK whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check whether the link is external
				--if it does, see whether it corresponds to a RegEx of a valid Link
				--if it does, add http:// to make it (when not already there), else raie an exception
				--check whether the link is internal
				--if it does, check whether the provided file has a valid name (does not contain any points, like file.one etc.
				--if not, raise an exception
				--check whether link is e-mail
				--if it is, check whether it matches RegEx of a valid E-Mail
				--if it does not, raise an exception
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end


		validate_image(element: YODA_IMAGE): BOOLEAN
			--validates a YODA_IMAGE whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check whether the image is a valid link on the internet via RegEx
				--If it is not, raise an exception
				--check whether the image is local
				--check whether the local image is on a relatively defined path
				--if it is not, raise an exception
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end

		validate_snippet(element: YODA_SNIPPET): BOOLEAN
			--validates a YODA_SNIPPET whether it's content is conforming with the HTML text rules. Returns True if so, False otherwise
			require
				element_not_empty: attached element
			do
				--check whether snippet contains tags like </HTML> or </body> that would lead to messed up output
				--if so, throw an exception
				--return True when no exception occured allong the way
			ensure
				returnes_true: Result = True
			end

end
