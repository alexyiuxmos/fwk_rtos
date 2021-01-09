cmake_minimum_required(VERSION 3.14)

#**********************
# Paths
#**********************
set(RTOS_DIR "$ENV{XMOS_AIOT_SDK_PATH}/modules/drivers/rtos")

set(OSAL_DIR "${RTOS_DIR}/osal")
set(GPIO_DIR "${RTOS_DIR}/gpio")
set(I2C_DIR "${RTOS_DIR}/i2c")
set(I2S_DIR "${RTOS_DIR}/i2s")
set(INTERTILE_DIR "${RTOS_DIR}/intertile")
set(MIC_ARRAY_DIR "${RTOS_DIR}/mic_array")
set(RPC_DIR "${RTOS_DIR}/rpc")
set(SPI_DIR "${RTOS_DIR}/spi")
set(QSPI_FLASH_DIR "${RTOS_DIR}/qspi_flash")
set(TRACE_DIR "${RTOS_DIR}/trace")
set(WIFI_DIR "${RTOS_DIR}/wifi")

if(NOT DEFINED RTOS_CMAKE_RTOS)
    set(RTOS_CMAKE_RTOS "FreeRTOS") # Only FreeRTOS is currently supported
endif()

if(NOT DEFINED RTOS_WIFI_CHIP)
    set(RTOS_WIFI_CHIP "sl_wf200") # only WiFi module currently supported
endif()

#********************************
# Gather rtos sources
#********************************
include("$ENV{XMOS_AIOT_SDK_PATH}/modules/rtos/${RTOS_CMAKE_RTOS}/kernel.cmake")

#********************************
# Gather OSAL sources
#********************************
set(THIS_LIB OSAL)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}"
)

unset(THIS_LIB)

#********************************
# Gather GPIO sources
#********************************
set(THIS_LIB GPIO)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
)

unset(THIS_LIB)

#********************************
# Gather I2C sources
#********************************
set(THIS_LIB I2C)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}" # TODO abstract FreeRTOS specific calls so this can be removed
)

unset(THIS_LIB)

#********************************
# Gather I2S sources
#********************************
set(THIS_LIB I2S)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}" # TODO abstract FreeRTOS specific calls so this can be removed
)

unset(THIS_LIB)

#********************************
# Gather intertile sources
#********************************
set(THIS_LIB INTERTILE)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}" # TODO abstract FreeRTOS specific calls so this can be removed
)

unset(THIS_LIB)

#********************************
# Gather mic array sources
#********************************
set(THIS_LIB MIC_ARRAY)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}" # TODO abstract FreeRTOS specific calls so this can be removed
)

unset(THIS_LIB)

#********************************
# Gather rpc sources
#********************************
set(THIS_LIB RPC)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/api"
)

unset(THIS_LIB)

#********************************
# Gather spi sources
#********************************
set(THIS_LIB SPI)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/${RTOS_CMAKE_RTOS}"
)

unset(THIS_LIB)

#********************************
# Gather qspi flash sources
#********************************
set(THIS_LIB QSPI_FLASH)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/api"
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/${RTOS_CMAKE_RTOS}"
)

unset(THIS_LIB)

#********************************
# Gather trace sources
#********************************
set(THIS_LIB TRACE)
set(${THIS_LIB}_FLAGS "-Os")

file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/*.c")

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

set(${THIS_LIB}_INCLUDES
    "${${THIS_LIB}_DIR}/${RTOS_CMAKE_RTOS}/api"
)

unset(THIS_LIB)

#********************************
# Gather wifi sources
#********************************
set(THIS_LIB WIFI)
set(${THIS_LIB}_FLAGS "-USL_WFX_USE_SECURE_LINK")

if(${RTOS_WIFI_CHIP} STREQUAL "sl_wf200")
    set(${THIS_LIB}_SOURCES
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/sl_wfx_host_spi.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/sl_wfx_host_task.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/sl_wfx_host.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/sl_wfx_iot_wifi.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/sl_wfx_network_interface.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/sl_wfx.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/bus/sl_wfx_bus.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/bus/sl_wfx_bus_spi.c"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/secure_link/sl_wfx_secure_link.c"
    )

    set(${THIS_LIB}_INCLUDES
        "${${THIS_LIB}_DIR}/api"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/bus"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/firmware"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/thirdparty/wfx-fullMAC-driver/wfx_fmac_driver/secure_link"
    )
else()
    file(GLOB_RECURSE ${THIS_LIB}_SOURCES "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}/*.c")

    set(${THIS_LIB}_INCLUDES
        "${${THIS_LIB}_DIR}/api"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}"
        "${${THIS_LIB}_DIR}/${RTOS_WIFI_CHIP}/${RTOS_CMAKE_RTOS}"
    )
endif()

set_source_files_properties(${${THIS_LIB}_SOURCES} PROPERTIES COMPILE_FLAGS ${${THIS_LIB}_FLAGS})

unset(THIS_LIB)

#**********************
# set user variables
#**********************
set(DRIVERS_RTOS_SOURCES
    ${KERNEL_SOURCES}
    ${OSAL_SOURCES}
    ${GPIO_SOURCES}
    ${I2C_SOURCES}
    ${I2S_SOURCES}
    ${INTERTILE_SOURCES}
    ${MIC_ARRAY_SOURCES}
    ${RPC_SOURCES}
    ${SPI_SOURCES}
    ${QSPI_FLASH_SOURCES}
    ${TRACE_SOURCES}
)

set(DRIVERS_RTOS_INCLUDES
    ${KERNEL_INCLUDES}
    ${OSAL_INCLUDES}
    ${GPIO_INCLUDES}
    ${I2C_INCLUDES}
    ${I2S_INCLUDES}
    ${INTERTILE_INCLUDES}
    ${MIC_ARRAY_INCLUDES}
    ${RPC_INCLUDES}
    ${SPI_INCLUDES}
    ${QSPI_FLASH_INCLUDES}
    ${TRACE_INCLUDES}
)

list(REMOVE_DUPLICATES DRIVERS_RTOS_SOURCES)
list(REMOVE_DUPLICATES DRIVERS_RTOS_INCLUDES)

set(DRIVERS_RTOS_NETWORKING_SOURCES
    ${KERNEL_NETWORKING_SOURCES}
    ${WIFI_SOURCES}
)

set(DRIVERS_RTOS_NETWORKING_INCLUDES
    ${KERNEL_NETWORKING_INCLUDES}
    ${WIFI_INCLUDES}
)

list(REMOVE_DUPLICATES DRIVERS_RTOS_NETWORKING_SOURCES)
list(REMOVE_DUPLICATES DRIVERS_RTOS_NETWORKING_INCLUDES)
