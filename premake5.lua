function include_glad(path)
	includedirs (path .. "/include")
	links "glad"
end

project "glad"
	location (path.join(_WORKING_DIR, "_out/build/%{prj.name}"))
	kind "StaticLib"
	language "C"

	files { "src/glad.c" }

	includedirs "include"
