# STM32CubeProgrammer
board_runner_args(stm32cubeprogrammer "--port=swd" "--reset-mode=hw")

# OpenOCD with ST-LINK
board_runner_args(openocd "--config=board/st_nucleo_f4.cfg")

# J-Link
board_runner_args(jlink "--device=STM32F446RE" "--speed=4000")

# Flashing runners
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
