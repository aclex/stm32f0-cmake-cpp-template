function(add_bin_executable TARGET)
	if(EXECUTABLE_OUTPUT_PATH)
		set(FILENAME "${EXECUTABLE_OUTPUT_PATH}/${TARGET}")
	else()
		set(FILENAME "${TARGET}")
	endif()
	add_custom_target(${TARGET}.bin ALL COMMAND ${CMAKE_OBJCOPY} -Obinary ${FILENAME} ${FILENAME}.bin)
	add_dependencies(${TARGET}.bin ${TARGET})
endfunction()

function(add_hex_executable TARGET)
	if(EXECUTABLE_OUTPUT_PATH)
		set(FILENAME "${EXECUTABLE_OUTPUT_PATH}/${TARGET}")
	else()
		set(FILENAME "${TARGET}")
	endif()
	add_custom_target(${TARGET}.hex ALL COMMAND ${CMAKE_OBJCOPY} -Oihex ${FILENAME} ${FILENAME}.hex)
	add_dependencies(${TARGET}.hex ${TARGET})
endfunction()
