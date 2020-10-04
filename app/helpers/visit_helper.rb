module VisitHelper
	def last_visit_label(visit)
		if visit.last_visited
			"Last Visit: "
		else
			"Never visited! (on record.)"
		end
	end

	def format_last_visit(visit)
		if visit.last_visited
			visit.last_visited.strftime("%A %d - %b ")
		else
			""
		end
	end
end
