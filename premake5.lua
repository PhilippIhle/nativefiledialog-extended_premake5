project "nativefiledialog-extended"
	kind "StaticLib"
	language "C++"
	cppdialect "C++23"

	targetdir (nativefiledialog_targetdir)
	objdir (nativefiledialog_objdir)

	includedirs "src/include"

	filter "system:windows"
		files "src/nfd_win.cpp"
	
	buildoptions "/W0"
	
	filter "configurations:Debug*"
		runtime "Debug"
		symbols "on"
		staticruntime "on"

	filter "configurations:Dev*"
		runtime "Release"
		optimize "on"