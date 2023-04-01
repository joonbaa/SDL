project "SDL"
	kind "StaticLib"
	language "C"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs
    {
	    "src",
    }

	files
	{
		"src/*.c",
        "src/*.h",

        "src/atomic/*.c",

        "src/audio/*.c",
        "src/audio/*.h",

        "src/cpuinfo/*.c",

        "src/dynapi/*.c",
        "src/dynapi/*.h",

        "src/events/blank_cursor.h",
        "src/events/default_cursor.h",
        "src/events/imKStoUCS.c",
        "src/events/imKStoUCS.h",
        "src/events/SDL_clipboardevents.c",
        "src/events/SDL_clipboardevents_c.h",
        "src/events/SDL_displayevents.c",
        "src/events/SDL_displayevents_c.h",
        "src/events/SDL_dropevents.c",
        "src/events/SDL_dropevents_c.h",
        "src/events/SDL_events.c",
        "src/events/SDL_events_c.h",
        "src/events/SDL_gesture.c",
        "src/events/SDL_gesture_c.h",
        "src/events/SDL_keyboard.c",
        "src/events/SDL_keyboard_c.h",
        "src/events/SDL_keysym_to_scancode.c",
        "src/events/SDL_keysym_to_scancode_c.h",
        "src/events/SDL_mouse.c",
        "src/events/SDL_mouse_c.h",
        "src/events/SDL_quit.c",
        "src/events/SDL_scancode_tables.c",
        "src/events/SDL_scancode_tables_c.h",
        "src/events/SDL_touch.c",
        "src/events/SDL_touch_c.h",

        "src/file/SDL_rwops.c",

        "src/haptic/*.c",
        "src/haptic/*.h",

        "src/hidapi/*.c",
        "src/hidapi/*.h",

        "src/joystick/*.c",
        "src/joystick/*.h",

        "src/libm/*.c",
        "src/libm/*.h",

        "src/locale/*.c",
        "src/locale/*.h",

        "src/misc/*.c",
        "src/misc/*.h",

        "src/power/*.c",
        "src/power/*.h",

        "src/render/*.c",
        "src/render/*.h",
        "src/render/software/*.c",
        "src/render/software/*.h",
        "src/render/opengl/*.c",
        "src/render/opengl/*.h",

        "src/sensor/*.c",
        "src/sensor/*.h",

        "src/stdlib/*.c",
        "src/stdlib/*.h",

        "src/test/*.c",
        "src/test/*.h",

        "src/thread/*.c",
        "src/thread/*.h",

        "src/timer/*.c",
        "src/timer/*.h",

        "src/video/*.c",
        "src/video/*.h",
	}

	filter "system:windows"
		systemversion "latest"

		files
		{
            "src/audio/directsound/*.c",
            "src/audio/directsound/*.h",

            "src/core/windows/*.h",
            "src/core/windows/*.c",

            "src/events/SDL_windowsevents.*",
            "src/events/scancodes_windows.h",

            "src/filesystem/windows/SDL_sysfilesystem.c",

            "src/haptic/windows/*.c",
            "src/haptic/windows/*.h",

            "src/hidapi/windows/hid.c",

            "src/joystick/windows/*.c",
            "src/joystick/windows/*.h",

            "src/loadso/windows/*.c",

            "src/locale/windows/*.c",
            "src/locale/windows/*.h",

            "src/main/windows/*.c",
            "src/main/windows/*.h",

            "src/misc/windows/*.c",
            "src/misc/windows/*.h",

            "src/power/windows/*.c",
            "src/power/windows/*.h",

            "src/sensor/windows/*.c",
            "src/sensor/windows/*.h",

            "src/thread/windows/*.c",
            "src/thread/windows/*.h",

            "src/timer/windows/*.c",
            "src/timer/windows/*.h",

            "src/video/windows/*.c",
            "src/video/windows/*.h",
		}

		defines 
		{
			"_CRT_SECURE_NO_WARNINGS"
		}

		links
		{

		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
