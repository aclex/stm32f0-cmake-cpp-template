set(BLINK_SOURCES
	main.cpp
	)

add_executable(blink ${BLINK_SOURCES} ${SYSTEM_SOURCES})
target_link_libraries(blink firmware)

add_bin_executable(blink)
add_hex_executable(blink)
