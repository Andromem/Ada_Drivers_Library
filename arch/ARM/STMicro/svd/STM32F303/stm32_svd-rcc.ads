--  This spec has been automatically generated from STM32F303.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSITRIM_Field is HAL.UInt5;
   subtype CR_HSICAL_Field is HAL.UInt8;

   --  Clock control register
   type CR_Register is record
      --  Internal High Speed clock enable
      HSION          : Boolean := True;
      --  Read-only. Internal High Speed clock ready flag
      HSIRDY         : Boolean := True;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Internal High Speed clock trimming
      HSITRIM        : CR_HSITRIM_Field := 16#10#;
      --  Read-only. Internal High Speed clock Calibration
      HSICAL         : CR_HSICAL_Field := 16#0#;
      --  External High Speed clock enable
      HSEON          : Boolean := False;
      --  Read-only. External High Speed clock ready flag
      HSERDY         : Boolean := False;
      --  External High Speed clock Bypass
      HSEBYP         : Boolean := False;
      --  Clock Security System enable
      CSSON          : Boolean := False;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  PLL enable
      PLLON          : Boolean := False;
      --  Read-only. PLL clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSITRIM        at 0 range 3 .. 7;
      HSICAL         at 0 range 8 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CFGR_SW_Field is HAL.UInt2;
   subtype CFGR_SWS_Field is HAL.UInt2;
   subtype CFGR_HPRE_Field is HAL.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is HAL.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : HAL.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_PLLSRC_Field is HAL.UInt2;
   subtype CFGR_PLLMUL_Field is HAL.UInt4;
   subtype CFGR_MCO_Field is HAL.UInt3;

   --  Clock configuration register (RCC_CFGR)
   type CFGR_Register is record
      --  System clock Switch
      SW             : CFGR_SW_Field := 16#0#;
      --  Read-only. System Clock Switch Status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  AHB prescaler
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  APB Low speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  PLL entry clock source
      PLLSRC         : CFGR_PLLSRC_Field := 16#0#;
      --  HSE divider for PLL entry
      PLLXTPRE       : Boolean := False;
      --  PLL Multiplication Factor
      PLLMUL         : CFGR_PLLMUL_Field := 16#0#;
      --  USB prescaler
      USBPRES        : Boolean := False;
      --  I2S external clock source selection
      I2SSRC         : Boolean := False;
      --  Microcontroller clock output
      MCO            : CFGR_MCO_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Read-only. Microcontroller Clock Output Flag
      MCOF           : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PLLSRC         at 0 range 15 .. 16;
      PLLXTPRE       at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      USBPRES        at 0 range 22 .. 22;
      I2SSRC         at 0 range 23 .. 23;
      MCO            at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      MCOF           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Clock interrupt register (RCC_CIR)
   type CIR_Register is record
      --  Read-only. LSI Ready Interrupt flag
      LSIRDYF        : Boolean := False;
      --  Read-only. LSE Ready Interrupt flag
      LSERDYF        : Boolean := False;
      --  Read-only. HSI Ready Interrupt flag
      HSIRDYF        : Boolean := False;
      --  Read-only. HSE Ready Interrupt flag
      HSERDYF        : Boolean := False;
      --  Read-only. PLL Ready Interrupt flag
      PLLRDYF        : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Read-only. Clock Security System Interrupt flag
      CSSF           : Boolean := False;
      --  LSI Ready Interrupt Enable
      LSIRDYIE       : Boolean := False;
      --  LSE Ready Interrupt Enable
      LSERDYIE       : Boolean := False;
      --  HSI Ready Interrupt Enable
      HSIRDYIE       : Boolean := False;
      --  HSE Ready Interrupt Enable
      HSERDYIE       : Boolean := False;
      --  PLL Ready Interrupt Enable
      PLLRDYIE       : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Write-only. LSI Ready Interrupt Clear
      LSIRDYC        : Boolean := False;
      --  Write-only. LSE Ready Interrupt Clear
      LSERDYC        : Boolean := False;
      --  Write-only. HSI Ready Interrupt Clear
      HSIRDYC        : Boolean := False;
      --  Write-only. HSE Ready Interrupt Clear
      HSERDYC        : Boolean := False;
      --  Write-only. PLL Ready Interrupt Clear
      PLLRDYC        : Boolean := False;
      --  unspecified
      Reserved_21_22 : HAL.UInt2 := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  APB2 peripheral reset register (RCC_APB2RSTR)
   type APB2RSTR_Register is record
      --  SYSCFG and COMP reset
      SYSCFGRST      : Boolean := False;
      --  unspecified
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  TIM1 timer reset
      TIM1RST        : Boolean := False;
      --  SPI 1 reset
      SPI1RST        : Boolean := False;
      --  TIM8 timer reset
      TIM8RST        : Boolean := False;
      --  USART1 reset
      USART1RST      : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TIM15 timer reset
      TIM15RST       : Boolean := False;
      --  TIM16 timer reset
      TIM16RST       : Boolean := False;
      --  TIM17 timer reset
      TIM17RST       : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1RST        at 0 range 11 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      TIM8RST        at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB1 peripheral reset register (RCC_APB1RSTR)
   type APB1RSTR_Register is record
      --  Timer 2 reset
      TIM2RST        : Boolean := False;
      --  Timer 3 reset
      TIM3RST        : Boolean := False;
      --  Timer 14 reset
      TIM4RST        : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Timer 6 reset
      TIM6RST        : Boolean := False;
      --  Timer 7 reset
      TIM7RST        : Boolean := False;
      --  unspecified
      Reserved_6_10  : HAL.UInt5 := 16#0#;
      --  Window watchdog reset
      WWDGRST        : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI2 reset
      SPI2RST        : Boolean := False;
      --  SPI3 reset
      SPI3RST        : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  USART 2 reset
      USART2RST      : Boolean := False;
      --  USART3 reset
      USART3RST      : Boolean := False;
      --  UART 4 reset
      UART4RST       : Boolean := False;
      --  UART 5 reset
      UART5RST       : Boolean := False;
      --  I2C1 reset
      I2C1RST        : Boolean := False;
      --  I2C2 reset
      I2C2RST        : Boolean := False;
      --  USB reset
      USBRST         : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  CAN reset
      CANRST         : Boolean := False;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Power interface reset
      PWRRST         : Boolean := False;
      --  DAC interface reset
      DACRST         : Boolean := False;
      --  I2C3 reset
      I2C3RST        : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      UART4RST       at 0 range 19 .. 19;
      UART5RST       at 0 range 20 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      USBRST         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CANRST         at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      I2C3RST        at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  AHB Peripheral Clock enable register (RCC_AHBENR)
   type AHBENR_Register is record
      --  DMA1 clock enable
      DMAEN          : Boolean := False;
      --  DMA2 clock enable
      DMA2EN         : Boolean := False;
      --  SRAM interface clock enable
      SRAMEN         : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  FLITF clock enable
      FLITFEN        : Boolean := True;
      --  FMC clock enable
      FMCEN          : Boolean := False;
      --  CRC clock enable
      CRCEN          : Boolean := False;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  IO port H clock enable
      IOPHEN         : Boolean := False;
      --  I/O port A clock enable
      IOPAEN         : Boolean := False;
      --  I/O port B clock enable
      IOPBEN         : Boolean := False;
      --  I/O port C clock enable
      IOPCEN         : Boolean := False;
      --  I/O port D clock enable
      IOPDEN         : Boolean := False;
      --  I/O port E clock enable
      IOPEEN         : Boolean := False;
      --  I/O port F clock enable
      IOPFEN         : Boolean := False;
      --  I/O port G clock enable
      IOPGEN         : Boolean := False;
      --  Touch sensing controller clock enable
      TSCEN          : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  ADC1 and ADC2 clock enable
      ADC12EN        : Boolean := False;
      --  ADC3 and ADC4 clock enable
      ADC34EN        : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      DMAEN          at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      SRAMEN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FLITFEN        at 0 range 4 .. 4;
      FMCEN          at 0 range 5 .. 5;
      CRCEN          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      IOPHEN         at 0 range 16 .. 16;
      IOPAEN         at 0 range 17 .. 17;
      IOPBEN         at 0 range 18 .. 18;
      IOPCEN         at 0 range 19 .. 19;
      IOPDEN         at 0 range 20 .. 20;
      IOPEEN         at 0 range 21 .. 21;
      IOPFEN         at 0 range 22 .. 22;
      IOPGEN         at 0 range 23 .. 23;
      TSCEN          at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      ADC12EN        at 0 range 28 .. 28;
      ADC34EN        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  APB2 peripheral clock enable register (RCC_APB2ENR)
   type APB2ENR_Register is record
      --  SYSCFG clock enable
      SYSCFGEN       : Boolean := False;
      --  unspecified
      Reserved_1_10  : HAL.UInt10 := 16#0#;
      --  TIM1 Timer clock enable
      TIM1EN         : Boolean := False;
      --  SPI 1 clock enable
      SPI1EN         : Boolean := False;
      --  TIM8 Timer clock enable
      TIM8EN         : Boolean := False;
      --  USART1 clock enable
      USART1EN       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  TIM15 timer clock enable
      TIM15EN        : Boolean := False;
      --  TIM16 timer clock enable
      TIM16EN        : Boolean := False;
      --  TIM17 timer clock enable
      TIM17EN        : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_10  at 0 range 1 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      TIM8EN         at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  APB1 peripheral clock enable register (RCC_APB1ENR)
   type APB1ENR_Register is record
      --  Timer 2 clock enable
      TIM2EN         : Boolean := False;
      --  Timer 3 clock enable
      TIM3EN         : Boolean := False;
      --  Timer 4 clock enable
      TIM4EN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Timer 6 clock enable
      TIM6EN         : Boolean := False;
      --  Timer 7 clock enable
      TIM7EN         : Boolean := False;
      --  unspecified
      Reserved_6_10  : HAL.UInt5 := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : Boolean := False;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  SPI 2 clock enable
      SPI2EN         : Boolean := False;
      --  SPI 3 clock enable
      SPI3EN         : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  USART 2 clock enable
      USART2EN       : Boolean := False;
      --  USART 3 clock enable
      USART3EN       : Boolean := False;
      --  USART 4 clock enable
      USART4EN       : Boolean := False;
      --  USART 5 clock enable
      USART5EN       : Boolean := False;
      --  I2C 1 clock enable
      I2C1EN         : Boolean := False;
      --  I2C 2 clock enable
      I2C2EN         : Boolean := False;
      --  USB clock enable
      USBEN          : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  CAN clock enable
      CANEN          : Boolean := False;
      --  DAC2 interface clock enable
      DAC2EN         : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Power interface clock enable
      PWREN          : Boolean := False;
      --  DAC interface clock enable
      DACEN          : Boolean := False;
      --  I2C3 clock enable
      I2C3EN         : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      Reserved_6_10  at 0 range 6 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      USART4EN       at 0 range 19 .. 19;
      USART5EN       at 0 range 20 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      USBEN          at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CANEN          at 0 range 25 .. 25;
      DAC2EN         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      I2C3EN         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype BDCR_LSEDRV_Field is HAL.UInt2;
   subtype BDCR_RTCSEL_Field is HAL.UInt2;

   --  Backup domain control register (RCC_BDCR)
   type BDCR_Register is record
      --  External Low Speed oscillator enable
      LSEON          : Boolean := False;
      --  Read-only. External Low Speed oscillator ready
      LSERDY         : Boolean := False;
      --  External Low Speed oscillator bypass
      LSEBYP         : Boolean := False;
      --  LSE oscillator drive capability
      LSEDRV         : BDCR_LSEDRV_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  RTC clock enable
      RTCEN          : Boolean := False;
      --  Backup domain software reset
      BDRST          : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Control/status register (RCC_CSR)
   type CSR_Register is record
      --  Internal low speed oscillator enable
      LSION         : Boolean := False;
      --  Read-only. Internal low speed oscillator ready
      LSIRDY        : Boolean := False;
      --  unspecified
      Reserved_2_23 : HAL.UInt22 := 16#0#;
      --  Remove reset flag
      RMVF          : Boolean := False;
      --  Option byte loader reset flag
      OBLRSTF       : Boolean := False;
      --  PIN reset flag
      PINRSTF       : Boolean := True;
      --  POR/PDR reset flag
      PORRSTF       : Boolean := True;
      --  Software reset flag
      SFTRSTF       : Boolean := False;
      --  Independent watchdog reset flag
      IWDGRSTF      : Boolean := False;
      --  Window watchdog reset flag
      WWDGRSTF      : Boolean := False;
      --  Low-power reset flag
      LPWRRSTF      : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION         at 0 range 0 .. 0;
      LSIRDY        at 0 range 1 .. 1;
      Reserved_2_23 at 0 range 2 .. 23;
      RMVF          at 0 range 24 .. 24;
      OBLRSTF       at 0 range 25 .. 25;
      PINRSTF       at 0 range 26 .. 26;
      PORRSTF       at 0 range 27 .. 27;
      SFTRSTF       at 0 range 28 .. 28;
      IWDGRSTF      at 0 range 29 .. 29;
      WWDGRSTF      at 0 range 30 .. 30;
      LPWRRSTF      at 0 range 31 .. 31;
   end record;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5 := 16#0#;
      --  FMC reset
      FMCRST         : Boolean := False;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  I/O port H reset
      IOPHRST        : Boolean := False;
      --  I/O port A reset
      IOPARST        : Boolean := False;
      --  I/O port B reset
      IOPBRST        : Boolean := False;
      --  I/O port C reset
      IOPCRST        : Boolean := False;
      --  I/O port D reset
      IOPDRST        : Boolean := False;
      --  I/O port E reset
      IOPERST        : Boolean := False;
      --  I/O port F reset
      IOPFRST        : Boolean := False;
      --  Touch sensing controller reset
      IOPGRST        : Boolean := False;
      --  Touch sensing controller reset
      TSCRST         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  ADC1 and ADC2 reset
      ADC12RST       : Boolean := False;
      --  ADC3 and ADC4 reset
      ADC34RST       : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      FMCRST         at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      IOPHRST        at 0 range 16 .. 16;
      IOPARST        at 0 range 17 .. 17;
      IOPBRST        at 0 range 18 .. 18;
      IOPCRST        at 0 range 19 .. 19;
      IOPDRST        at 0 range 20 .. 20;
      IOPERST        at 0 range 21 .. 21;
      IOPFRST        at 0 range 22 .. 22;
      IOPGRST        at 0 range 23 .. 23;
      TSCRST         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      ADC12RST       at 0 range 28 .. 28;
      ADC34RST       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CFGR2_PREDIV_Field is HAL.UInt4;
   subtype CFGR2_ADC12PRES_Field is HAL.UInt5;
   subtype CFGR2_ADC34PRES_Field is HAL.UInt5;

   --  Clock configuration register 2
   type CFGR2_Register is record
      --  PREDIV division factor
      PREDIV         : CFGR2_PREDIV_Field := 16#0#;
      --  ADC1 and ADC2 prescaler
      ADC12PRES      : CFGR2_ADC12PRES_Field := 16#0#;
      --  ADC3 and ADC4 prescaler
      ADC34PRES      : CFGR2_ADC34PRES_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      PREDIV         at 0 range 0 .. 3;
      ADC12PRES      at 0 range 4 .. 8;
      ADC34PRES      at 0 range 9 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CFGR3_USART1SW_Field is HAL.UInt2;
   subtype CFGR3_USART2SW_Field is HAL.UInt2;
   subtype CFGR3_USART3SW_Field is HAL.UInt2;
   subtype CFGR3_UART4SW_Field is HAL.UInt2;
   subtype CFGR3_UART5SW_Field is HAL.UInt2;

   --  Clock configuration register 3
   type CFGR3_Register is record
      --  USART1 clock source selection
      USART1SW       : CFGR3_USART1SW_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  I2C1 clock source selection
      I2C1SW         : Boolean := False;
      --  I2C2 clock source selection
      I2C2SW         : Boolean := False;
      --  I2C3 clock source selection
      I2C3SW         : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Timer1 clock source selection
      TIM1SW         : Boolean := False;
      --  Timer8 clock source selection
      TIM8SW         : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  USART2 clock source selection
      USART2SW       : CFGR3_USART2SW_Field := 16#0#;
      --  USART3 clock source selection
      USART3SW       : CFGR3_USART3SW_Field := 16#0#;
      --  UART4 clock source selection
      UART4SW        : CFGR3_UART4SW_Field := 16#0#;
      --  UART5 clock source selection
      UART5SW        : CFGR3_UART5SW_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR3_Register use record
      USART1SW       at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      I2C1SW         at 0 range 4 .. 4;
      I2C2SW         at 0 range 5 .. 5;
      I2C3SW         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TIM1SW         at 0 range 8 .. 8;
      TIM8SW         at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      USART2SW       at 0 range 16 .. 17;
      USART3SW       at 0 range 18 .. 19;
      UART4SW        at 0 range 20 .. 21;
      UART5SW        at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR       : aliased CR_Register;
      --  Clock configuration register (RCC_CFGR)
      CFGR     : aliased CFGR_Register;
      --  Clock interrupt register (RCC_CIR)
      CIR      : aliased CIR_Register;
      --  APB2 peripheral reset register (RCC_APB2RSTR)
      APB2RSTR : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register (RCC_APB1RSTR)
      APB1RSTR : aliased APB1RSTR_Register;
      --  AHB Peripheral Clock enable register (RCC_AHBENR)
      AHBENR   : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register (RCC_APB2ENR)
      APB2ENR  : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register (RCC_APB1ENR)
      APB1ENR  : aliased APB1ENR_Register;
      --  Backup domain control register (RCC_BDCR)
      BDCR     : aliased BDCR_Register;
      --  Control/status register (RCC_CSR)
      CSR      : aliased CSR_Register;
      --  AHB peripheral reset register
      AHBRSTR  : aliased AHBRSTR_Register;
      --  Clock configuration register 2
      CFGR2    : aliased CFGR2_Register;
      --  Clock configuration register 3
      CFGR3    : aliased CFGR3_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR       at 16#0# range 0 .. 31;
      CFGR     at 16#4# range 0 .. 31;
      CIR      at 16#8# range 0 .. 31;
      APB2RSTR at 16#C# range 0 .. 31;
      APB1RSTR at 16#10# range 0 .. 31;
      AHBENR   at 16#14# range 0 .. 31;
      APB2ENR  at 16#18# range 0 .. 31;
      APB1ENR  at 16#1C# range 0 .. 31;
      BDCR     at 16#20# range 0 .. 31;
      CSR      at 16#24# range 0 .. 31;
      AHBRSTR  at 16#28# range 0 .. 31;
      CFGR2    at 16#2C# range 0 .. 31;
      CFGR3    at 16#30# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => System'To_Address (16#40021000#);

end STM32_SVD.RCC;