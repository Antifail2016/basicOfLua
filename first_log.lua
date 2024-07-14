local test = {
	["test"] = function(x)
		local y = print("Hello, "..x)
		return y
	end
}

test["test"]("Exam")


