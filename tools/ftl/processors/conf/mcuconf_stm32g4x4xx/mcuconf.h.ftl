[#ftl]
[#--
    ChibiOS - Copyright (C) 2006..2019 Giovanni Di Sirio.

    This file is part of ChibiOS.

    ChibiOS is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    ChibiOS is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
  --]
[@pp.dropOutputFile /]
[#import "/@lib/libutils.ftl" as utils /]
[#import "/@lib/liblicense.ftl" as license /]
[@pp.changeOutputFile name="mcuconf.h" /]
/*
[@license.EmitLicenseAsText /]
*/

/*
 * STM32G4xx drivers configuration.
 * The following settings override the default settings present in
 * the various device driver implementation headers.
 * Note that the settings for each driver only have effect if the whole
 * driver is enabled in halconf.h.
 *
 * IRQ priorities:
 * 15...0       Lowest...Highest.
 *
 * DMA priorities:
 * 0...3        Lowest...Highest.
 */

#ifndef MCUCONF_H
#define MCUCONF_H

#define STM32G4xx_MCUCONF
#define STM32G473_MCUCONF
#define STM32G483_MCUCONF
#define STM32G474_MCUCONF
#define STM32G484_MCUCONF

/*
 * HAL driver system settings.
 */
#define STM32_NO_INIT                       ${doc.STM32_NO_INIT!"FALSE"}
#define STM32_VOS                           ${doc.STM32_VOS!"STM32_VOS_RANGE1"}
#define STM32_PWR_CR2                       ${doc.STM32_PWR_CR2!"(STM32_PLS_LEV0 | STM32_PVDE_DISABLED)"}
#define STM32_HSI16_ENABLED                 ${doc.STM32_HSI16_ENABLED!"TRUE"}
#define STM32_HSI48_ENABLED                 ${doc.STM32_HSI48_ENABLED!"TRUE"}
#define STM32_HSE_ENABLED                   ${doc.STM32_HSE_ENABLED!"TRUE"}
#define STM32_LSI_ENABLED                   ${doc.STM32_LSI_ENABLED!"FALSE"}
#define STM32_LSE_ENABLED                   ${doc.STM32_LSE_ENABLED!"TRUE"}
#define STM32_SW                            ${doc.STM32_SW!"STM32_SW_PLLRCLK"}
#define STM32_PLLSRC                        ${doc.STM32_PLLSRC!"STM32_PLLSRC_HSE"}
#define STM32_PLLM_VALUE                    ${doc.STM32_PLLM_VALUE!"6"}
#define STM32_PLLN_VALUE                    ${doc.STM32_PLLN_VALUE!"85"}
#define STM32_PLLPDIV_VALUE                 ${doc.STM32_PLLPDIV_VALUE!"0"}
#define STM32_PLLP_VALUE                    ${doc.STM32_PLLP_VALUE!"7"}
#define STM32_PLLQ_VALUE                    ${doc.STM32_PLLQ_VALUE!"8"}
#define STM32_PLLR_VALUE                    ${doc.STM32_PLLR_VALUE!"2"}
#define STM32_HPRE                          ${doc.STM32_HPRE!"STM32_HPRE_DIV1"}
#define STM32_PPRE1                         ${doc.STM32_PPRE1!"STM32_PPRE1_DIV2"}
#define STM32_PPRE2                         ${doc.STM32_PPRE2!"STM32_PPRE2_DIV1"}
#define STM32_MCOSEL                        ${doc.STM32_MCOSEL!"STM32_MCOSEL_NOCLOCK"}
#define STM32_MCOPRE                        ${doc.STM32_MCOPRE!"STM32_MCOPRE_DIV1"}
#define STM32_LSCOSEL                       ${doc.STM32_LSCOSEL!"STM32_LSCOSEL_NOCLOCK"}

/*
 * Peripherals clock sources.
 */
#define STM32_USART1SEL                     ${doc.STM32_USART1SEL!"STM32_USART1SEL_SYSCLK"}
#define STM32_USART2SEL                     ${doc.STM32_USART2SEL!"STM32_USART2SEL_SYSCLK"}
#define STM32_USART3SEL                     ${doc.STM32_USART3SEL!"STM32_USART3SEL_SYSCLK"}
#define STM32_UART4SEL                      ${doc.STM32_UART4SEL!"STM32_UART4SEL_SYSCLK"}
#define STM32_UART5SEL                      ${doc.STM32_UART5SEL!"STM32_UART5SEL_SYSCLK"}
#define STM32_LPUART1SEL                    ${doc.STM32_LPUART1SEL!"STM32_LPUART1SEL_PCLK1"}
#define STM32_I2C1SEL                       ${doc.STM32_I2C1SEL!"STM32_I2C1SEL_PCLK1"}
#define STM32_I2C2SEL                       ${doc.STM32_I2C2SEL!"STM32_I2C2SEL_PCLK1"}
#define STM32_I2C3SEL                       ${doc.STM32_I2C3SEL!"STM32_I2C3SEL_PCLK1"}
#define STM32_I2C4SEL                       ${doc.STM32_I2C4SEL!"STM32_I2C4SEL_PCLK1"}
#define STM32_LPTIM1SEL                     ${doc.STM32_LPTIM1SEL!"STM32_LPTIM1SEL_PCLK1"}
#define STM32_SAI1SEL                       ${doc.STM32_SAI1SEL!"STM32_SAI1SEL_SYSCLK"}
#define STM32_I2S23SEL                      ${doc.STM32_I2S23SEL!"STM32_I2S23SEL_SYSCLK"}
#define STM32_FDCANSEL                      ${doc.STM32_FDCANSEL!"STM32_FDCANSEL_HSE"}
#define STM32_CLK48SEL                      ${doc.STM32_CLK48SEL!"STM32_CLK48SEL_HSI48"}
#define STM32_ADC12SEL                      ${doc.STM32_ADC12SEL!"STM32_ADC12SEL_PLLPCLK"}
#define STM32_ADC345SEL                     ${doc.STM32_ADC345SEL!"STM32_ADC345SEL_PLLPCLK"}
#define STM32_QSPISEL                       ${doc.STM32_QSPISEL!"STM32_QSPISEL_SYSCLK"}
#define STM32_RTCSEL                        ${doc.STM32_RTCSEL!"STM32_RTCSEL_NOCLOCK"}

/*
 * IRQ system settings.
 */
#define STM32_IRQ_EXTI0_PRIORITY            ${doc.STM32_IRQ_EXTI0_PRIORITY!"6"}
#define STM32_IRQ_EXTI1_PRIORITY            ${doc.STM32_IRQ_EXTI1_PRIORITY!"6"}
#define STM32_IRQ_EXTI2_PRIORITY            ${doc.STM32_IRQ_EXTI2_PRIORITY!"6"}
#define STM32_IRQ_EXTI3_PRIORITY            ${doc.STM32_IRQ_EXTI3_PRIORITY!"6"}
#define STM32_IRQ_EXTI4_PRIORITY            ${doc.STM32_IRQ_EXTI4_PRIORITY!"6"}
#define STM32_IRQ_EXTI5_9_PRIORITY          ${doc.STM32_IRQ_EXTI5_9_PRIORITY!"6"}
#define STM32_IRQ_EXTI10_15_PRIORITY        ${doc.STM32_IRQ_EXTI10_15_PRIORITY!"6"}

#define STM32_IRQ_TIM1_BRK_TIM15_PRIORITY   ${doc.STM32_IRQ_TIM1_BRK_TIM15_PRIORITY!"7"}
#define STM32_IRQ_TIM1_UP_TIM16_PRIORITY    ${doc.STM32_IRQ_TIM1_UP_TIM16_PRIORITY!"7"}
#define STM32_IRQ_TIM1_TRGCO_TIM17_PRIORITY ${doc.STM32_IRQ_TIM1_TRGCO_TIM17_PRIORITY!"7"}
#define STM32_IRQ_TIM1_CC_PRIORITY          ${doc.STM32_IRQ_TIM1_CC_PRIORITY!"7"}
#define STM32_IRQ_TIM2_PRIORITY             ${doc.STM32_IRQ_TIM2_PRIORITY!"7"}
#define STM32_IRQ_TIM3_PRIORITY             ${doc.STM32_IRQ_TIM3_PRIORITY!"7"}
#define STM32_IRQ_TIM4_PRIORITY             ${doc.STM32_IRQ_TIM4_PRIORITY!"7"}
#define STM32_IRQ_TIM5_PRIORITY             ${doc.STM32_IRQ_TIM5_PRIORITY!"7"}
#define STM32_IRQ_TIM6_PRIORITY             ${doc.STM32_IRQ_TIM6_PRIORITY!"7"}
#define STM32_IRQ_TIM7_PRIORITY             ${doc.STM32_IRQ_TIM7_PRIORITY!"7"}
#define STM32_IRQ_TIM8_UP_PRIORITY          ${doc.STM32_IRQ_TIM8_UP_PRIORITY!"7"}
#define STM32_IRQ_TIM8_CC_PRIORITY          ${doc.STM32_IRQ_TIM8_CC_PRIORITY!"7"}
#define STM32_IRQ_TIM20_UP_PRIORITY         ${doc.STM32_IRQ_TIM20_UP_PRIORITY!"7"}
#define STM32_IRQ_TIM20_CC_PRIORITY         ${doc.STM32_IRQ_TIM20_CC_PRIORITY!"7"}

#define STM32_IRQ_USART1_PRIORITY           ${doc.STM32_IRQ_USART1_PRIORITY!"3"}
#define STM32_IRQ_USART2_PRIORITY           ${doc.STM32_IRQ_USART2_PRIORITY!"3"}
#define STM32_IRQ_USART3_PRIORITY           ${doc.STM32_IRQ_USART3_PRIORITY!"3"}
#define STM32_IRQ_UART4_PRIORITY            ${doc.STM32_IRQ_UART4_PRIORITY!"3"}
#define STM32_IRQ_UART5_PRIORITY            ${doc.STM32_IRQ_UART5_PRIORITY!"3"}
#define STM32_IRQ_LPUART1_PRIORITY          ${doc.STM32_IRQ_LPUART1_PRIORITY!"3"}

/*
 * ADC driver system settings.
 */

/*
 * CAN driver system settings.
 */

/*
 * DAC driver system settings.
 */
#define STM32_DAC_DUAL_MODE                 ${doc.STM32_DAC_DUAL_MODE!"FALSE"}
#define STM32_DAC_USE_DAC1_CH1              ${doc.STM32_DAC_USE_DAC1_CH1!"FALSE"}
#define STM32_DAC_USE_DAC1_CH2              ${doc.STM32_DAC_USE_DAC1_CH2!"FALSE"}
#define STM32_DAC_USE_DAC2_CH1              ${doc.STM32_DAC_USE_DAC2_CH1!"FALSE"}
#define STM32_DAC_DAC1_CH1_IRQ_PRIORITY     ${doc.STM32_DAC_DAC1_CH1_IRQ_PRIORITY!"10"}
#define STM32_DAC_DAC1_CH2_IRQ_PRIORITY     ${doc.STM32_DAC_DAC1_CH2_IRQ_PRIORITY!"10"}
#define STM32_DAC_DAC2_CH1_IRQ_PRIORITY     ${doc.STM32_DAC_DAC2_CH1_IRQ_PRIORITY!"10"}
#define STM32_DAC_DAC1_CH1_DMA_PRIORITY     ${doc.STM32_DAC_DAC1_CH1_DMA_PRIORITY!"2"}
#define STM32_DAC_DAC1_CH2_DMA_PRIORITY     ${doc.STM32_DAC_DAC1_CH2_DMA_PRIORITY!"2"}
#define STM32_DAC_DAC2_CH1_DMA_PRIORITY     ${doc.STM32_DAC_DAC2_CH1_DMA_PRIORITY!"2"}
#define STM32_DAC_DAC1_CH1_DMA_STREAM       ${doc.STM32_DAC_DAC1_CH1_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_DAC_DAC1_CH2_DMA_STREAM       ${doc.STM32_DAC_DAC1_CH2_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_DAC_DAC2_CH1_DMA_STREAM       ${doc.STM32_DAC_DAC2_CH1_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}

/*
 * GPT driver system settings.
 */
#define STM32_GPT_USE_TIM1                  ${doc.STM32_GPT_USE_TIM1!"FALSE"}
#define STM32_GPT_USE_TIM2                  ${doc.STM32_GPT_USE_TIM2!"FALSE"}
#define STM32_GPT_USE_TIM3                  ${doc.STM32_GPT_USE_TIM3!"FALSE"}
#define STM32_GPT_USE_TIM4                  ${doc.STM32_GPT_USE_TIM4!"FALSE"}
#define STM32_GPT_USE_TIM5                  ${doc.STM32_GPT_USE_TIM5!"FALSE"}
#define STM32_GPT_USE_TIM6                  ${doc.STM32_GPT_USE_TIM6!"FALSE"}
#define STM32_GPT_USE_TIM7                  ${doc.STM32_GPT_USE_TIM7!"FALSE"}
#define STM32_GPT_USE_TIM8                  ${doc.STM32_GPT_USE_TIM8!"FALSE"}
#define STM32_GPT_USE_TIM15                 ${doc.STM32_GPT_USE_TIM15!"FALSE"}
#define STM32_GPT_USE_TIM16                 ${doc.STM32_GPT_USE_TIM16!"FALSE"}
#define STM32_GPT_USE_TIM17                 ${doc.STM32_GPT_USE_TIM17!"FALSE"}

/*
 * I2C driver system settings.
 */
#define STM32_I2C_USE_I2C1                  ${doc.STM32_I2C_USE_I2C1!"FALSE"}
#define STM32_I2C_USE_I2C2                  ${doc.STM32_I2C_USE_I2C2!"FALSE"}
#define STM32_I2C_USE_I2C3                  ${doc.STM32_I2C_USE_I2C3!"FALSE"}
#define STM32_I2C_USE_I2C4                  ${doc.STM32_I2C_USE_I2C4!"FALSE"}
#define STM32_I2C_BUSY_TIMEOUT              ${doc.STM32_I2C_BUSY_TIMEOUT!"50"}
#define STM32_I2C_I2C1_RX_DMA_STREAM        ${doc.STM32_I2C_I2C1_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C1_TX_DMA_STREAM        ${doc.STM32_I2C_I2C1_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C2_RX_DMA_STREAM        ${doc.STM32_I2C_I2C2_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C2_TX_DMA_STREAM        ${doc.STM32_I2C_I2C2_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C3_RX_DMA_STREAM        ${doc.STM32_I2C_I2C3_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C3_TX_DMA_STREAM        ${doc.STM32_I2C_I2C3_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C4_RX_DMA_STREAM        ${doc.STM32_I2C_I2C4_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C4_TX_DMA_STREAM        ${doc.STM32_I2C_I2C4_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_I2C_I2C1_IRQ_PRIORITY         ${doc.STM32_I2C_I2C1_IRQ_PRIORITY!"5"}
#define STM32_I2C_I2C2_IRQ_PRIORITY         ${doc.STM32_I2C_I2C2_IRQ_PRIORITY!"5"}
#define STM32_I2C_I2C3_IRQ_PRIORITY         ${doc.STM32_I2C_I2C3_IRQ_PRIORITY!"5"}
#define STM32_I2C_I2C4_IRQ_PRIORITY         ${doc.STM32_I2C_I2C4_IRQ_PRIORITY!"5"}
#define STM32_I2C_I2C1_DMA_PRIORITY         ${doc.STM32_I2C_I2C1_DMA_PRIORITY!"3"}
#define STM32_I2C_I2C2_DMA_PRIORITY         ${doc.STM32_I2C_I2C2_DMA_PRIORITY!"3"}
#define STM32_I2C_I2C3_DMA_PRIORITY         ${doc.STM32_I2C_I2C3_DMA_PRIORITY!"3"}
#define STM32_I2C_I2C4_DMA_PRIORITY         ${doc.STM32_I2C_I2C4_DMA_PRIORITY!"3"}
#define STM32_I2C_DMA_ERROR_HOOK(i2cp)      ${doc.STM32_I2C_DMA_ERROR_HOOK!"osalSysHalt(\"DMA failure\")"}

/*
 * ICU driver system settings.
 */
#define STM32_ICU_USE_TIM1                  ${doc.STM32_ICU_USE_TIM1!"FALSE"}
#define STM32_ICU_USE_TIM2                  ${doc.STM32_ICU_USE_TIM2!"FALSE"}
#define STM32_ICU_USE_TIM3                  ${doc.STM32_ICU_USE_TIM3!"FALSE"}
#define STM32_ICU_USE_TIM4                  ${doc.STM32_ICU_USE_TIM4!"FALSE"}
#define STM32_ICU_USE_TIM5                  ${doc.STM32_ICU_USE_TIM5!"FALSE"}
#define STM32_ICU_USE_TIM8                  ${doc.STM32_ICU_USE_TIM8!"FALSE"}
#define STM32_ICU_USE_TIM15                 ${doc.STM32_ICU_USE_TIM15!"FALSE"}

/*
 * PWM driver system settings.
 */
#define STM32_PWM_USE_ADVANCED              ${doc.STM32_PWM_USE_ADVANCED!"FALSE"}
#define STM32_PWM_USE_TIM1                  ${doc.STM32_PWM_USE_TIM1!"FALSE"}
#define STM32_PWM_USE_TIM2                  ${doc.STM32_PWM_USE_TIM2!"FALSE"}
#define STM32_PWM_USE_TIM3                  ${doc.STM32_PWM_USE_TIM3!"FALSE"}
#define STM32_PWM_USE_TIM4                  ${doc.STM32_PWM_USE_TIM4!"FALSE"}
#define STM32_PWM_USE_TIM5                  ${doc.STM32_PWM_USE_TIM5!"FALSE"}
#define STM32_PWM_USE_TIM8                  ${doc.STM32_PWM_USE_TIM8!"FALSE"}
#define STM32_PWM_USE_TIM15                 ${doc.STM32_PWM_USE_TIM15!"FALSE"}
#define STM32_PWM_USE_TIM16                 ${doc.STM32_PWM_USE_TIM16!"FALSE"}
#define STM32_PWM_USE_TIM17                 ${doc.STM32_PWM_USE_TIM17!"FALSE"}

/*
 * RTC driver system settings.
 */

/*
 * SDC driver system settings.
 */

/*
 * SERIAL driver system settings.
 */
#define STM32_SERIAL_USE_USART1             ${doc.STM32_SERIAL_USE_USART1!"FALSE"}
#define STM32_SERIAL_USE_USART2             ${doc.STM32_SERIAL_USE_USART2!"FALSE"}
#define STM32_SERIAL_USE_USART3             ${doc.STM32_SERIAL_USE_USART3!"FALSE"}
#define STM32_SERIAL_USE_UART4              ${doc.STM32_SERIAL_USE_UART4!"FALSE"}
#define STM32_SERIAL_USE_UART5              ${doc.STM32_SERIAL_USE_UART5!"FALSE"}
#define STM32_SERIAL_USE_LPUART1            ${doc.STM32_SERIAL_USE_LPUART1!"FALSE"}

/*
 * SPI driver system settings.
 */
#define STM32_SPI_USE_SPI1                  ${doc.STM32_SPI_USE_SPI1!"FALSE"}
#define STM32_SPI_USE_SPI2                  ${doc.STM32_SPI_USE_SPI2!"FALSE"}
#define STM32_SPI_USE_SPI3                  ${doc.STM32_SPI_USE_SPI3!"FALSE"}
#define STM32_SPI_USE_SPI4                  ${doc.STM32_SPI_USE_SPI4!"FALSE"}
#define STM32_SPI_SPI1_RX_DMA_STREAM        ${doc.STM32_SPI_SPI1_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI1_TX_DMA_STREAM        ${doc.STM32_SPI_SPI1_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI2_RX_DMA_STREAM        ${doc.STM32_SPI_SPI2_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI2_TX_DMA_STREAM        ${doc.STM32_SPI_SPI2_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI3_RX_DMA_STREAM        ${doc.STM32_SPI_SPI3_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI3_TX_DMA_STREAM        ${doc.STM32_SPI_SPI3_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI4_RX_DMA_STREAM        ${doc.STM32_SPI_SPI4_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI4_TX_DMA_STREAM        ${doc.STM32_SPI_SPI4_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI1_DMA_PRIORITY         ${doc.STM32_SPI_SPI1_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI2_DMA_PRIORITY         ${doc.STM32_SPI_SPI2_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI3_DMA_PRIORITY         ${doc.STM32_SPI_SPI3_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI4_DMA_PRIORITY         ${doc.STM32_SPI_SPI4_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI1_IRQ_PRIORITY         ${doc.STM32_SPI_SPI1_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI2_IRQ_PRIORITY         ${doc.STM32_SPI_SPI2_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI3_IRQ_PRIORITY         ${doc.STM32_SPI_SPI3_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI4_IRQ_PRIORITY         ${doc.STM32_SPI_SPI4_IRQ_PRIORITY!"10"}
#define STM32_SPI_DMA_ERROR_HOOK(spip)      ${doc.STM32_SPI_DMA_ERROR_HOOK!"osalSysHalt(\"DMA failure\")"}

/*
 * ST driver system settings.
 */
#define STM32_ST_IRQ_PRIORITY               ${doc.STM32_ST_IRQ_PRIORITY!"8"}
#define STM32_ST_USE_TIMER                  ${doc.STM32_ST_USE_TIMER!"2"}

/*
 * TRNG driver system settings.
 */

/*
 * UART driver system settings.
 */
#define STM32_UART_USE_USART1               ${doc.STM32_UART_USE_USART1!"FALSE"}
#define STM32_UART_USE_USART2               ${doc.STM32_UART_USE_USART2!"FALSE"}
#define STM32_UART_USE_USART3               ${doc.STM32_UART_USE_USART3!"FALSE"}
#define STM32_UART_USE_UART4                ${doc.STM32_UART_USE_UART4!"FALSE"}
#define STM32_UART_USE_UART5                ${doc.STM32_UART_USE_UART5!"FALSE"}
#define STM32_UART_USART1_RX_DMA_STREAM     ${doc.STM32_UART_USART1_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART1_TX_DMA_STREAM     ${doc.STM32_UART_USART1_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART2_RX_DMA_STREAM     ${doc.STM32_UART_USART2_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART2_TX_DMA_STREAM     ${doc.STM32_UART_USART2_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART3_RX_DMA_STREAM     ${doc.STM32_UART_USART3_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART3_TX_DMA_STREAM     ${doc.STM32_UART_USART3_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_UART4_RX_DMA_STREAM      ${doc.STM32_UART_UART4_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_UART4_TX_DMA_STREAM      ${doc.STM32_UART_UART4_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_UART5_RX_DMA_STREAM      ${doc.STM32_UART_UART5_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_UART5_TX_DMA_STREAM      ${doc.STM32_UART_UART5_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_UART_USART1_DMA_PRIORITY      ${doc.STM32_UART_USART1_DMA_PRIORITY!"0"}
#define STM32_UART_USART2_DMA_PRIORITY      ${doc.STM32_UART_USART2_DMA_PRIORITY!"0"}
#define STM32_UART_USART3_DMA_PRIORITY      ${doc.STM32_UART_USART3_DMA_PRIORITY!"0"}
#define STM32_UART_UART4_DMA_PRIORITY       ${doc.STM32_UART_UART4_DMA_PRIORITY!"0"}
#define STM32_UART_UART5_DMA_PRIORITY       ${doc.STM32_UART_UART5_DMA_PRIORITY!"0"}
#define STM32_UART_DMA_ERROR_HOOK(uartp)    ${doc.STM32_UART_DMA_ERROR_HOOK!"osalSysHalt(\"DMA failure\")"}

/*
 * USB driver system settings.
 */
#define STM32_USB_USE_USB1                  ${doc.STM32_USB_USE_USB1!"FALSE"}
#define STM32_USB_LOW_POWER_ON_SUSPEND      ${doc.STM32_USB_LOW_POWER_ON_SUSPEND!"FALSE"}
#define STM32_USB_USB1_HP_IRQ_PRIORITY      ${doc.STM32_USB_USB1_HP_IRQ_PRIORITY!"13"}
#define STM32_USB_USB1_LP_IRQ_PRIORITY      ${doc.STM32_USB_USB1_LP_IRQ_PRIORITY!"14"}

/*
 * WDG driver system settings.
 */
#define STM32_WDG_USE_IWDG                  ${doc.STM32_WDG_USE_IWDG!"FALSE"}

/*
 * WSPI driver system settings.
 */
#define STM32_WSPI_USE_QUADSPI1             ${doc.STM32_WSPI_USE_QUADSPI1!"FALSE"}
#define STM32_WSPI_QUADSPI1_DMA_STREAM      ${doc.STM32_WSPI_QUADSPI1_DMA_STREAM!"STM32_DMA_STREAM_ID(2, 7)"}

#endif /* MCUCONF_H */