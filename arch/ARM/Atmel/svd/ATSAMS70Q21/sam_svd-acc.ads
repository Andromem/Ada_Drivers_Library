--  This spec has been automatically generated from ATSAMS70Q21.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Analog Comparator Controller
package SAM_SVD.ACC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type ACC_CR_Register is record
      --  Write-only. Software Reset
      SWRST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_CR_Register use record
      SWRST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Selection for Minus Comparator Input
   type MR_SELMINUS_Field is
     (
      --  Select TS
      Ts,
      --  Select VREFP
      Vrefp,
      --  Select DAC0
      Dac0,
      --  Select DAC1
      Dac1,
      --  Select AFE0_AD0
      Afe0_Ad0,
      --  Select AFE0_AD1
      Afe0_Ad1,
      --  Select AFE0_AD2
      Afe0_Ad2,
      --  Select AFE0_AD3
      Afe0_Ad3)
     with Size => 3;
   for MR_SELMINUS_Field use
     (Ts => 0,
      Vrefp => 1,
      Dac0 => 2,
      Dac1 => 3,
      Afe0_Ad0 => 4,
      Afe0_Ad1 => 5,
      Afe0_Ad2 => 6,
      Afe0_Ad3 => 7);

   --  Selection For Plus Comparator Input
   type MR_SELPLUS_Field is
     (
      --  Select AFE0_AD0
      Afe0_Ad0,
      --  Select AFE0_AD1
      Afe0_Ad1,
      --  Select AFE0_AD2
      Afe0_Ad2,
      --  Select AFE0_AD3
      Afe0_Ad3,
      --  Select AFE0_AD4
      Afe0_Ad4,
      --  Select AFE0_AD5
      Afe0_Ad5,
      --  Select AFE1_AD0
      Afe1_Ad0,
      --  Select AFE1_AD1
      Afe1_Ad1)
     with Size => 3;
   for MR_SELPLUS_Field use
     (Afe0_Ad0 => 0,
      Afe0_Ad1 => 1,
      Afe0_Ad2 => 2,
      Afe0_Ad3 => 3,
      Afe0_Ad4 => 4,
      Afe0_Ad5 => 5,
      Afe1_Ad0 => 6,
      Afe1_Ad1 => 7);

   --  Analog Comparator Enable
   type MR_ACEN_Field is
     (
      --  Analog comparator disabled.
      Dis,
      --  Analog comparator enabled.
      En)
     with Size => 1;
   for MR_ACEN_Field use
     (Dis => 0,
      En => 1);

   --  Edge Type
   type MR_EDGETYP_Field is
     (
      --  Only rising edge of comparator output
      Rising,
      --  Falling edge of comparator output
      Falling,
      --  Any edge of comparator output
      Any)
     with Size => 2;
   for MR_EDGETYP_Field use
     (Rising => 0,
      Falling => 1,
      Any => 2);

   --  Invert Comparator Output
   type MR_INV_Field is
     (
      --  Analog comparator output is directly processed.
      Dis,
      --  Analog comparator output is inverted prior to being processed.
      En)
     with Size => 1;
   for MR_INV_Field use
     (Dis => 0,
      En => 1);

   --  Selection Of Fault Source
   type MR_SELFS_Field is
     (
      --  The CE flag is used to drive the FAULT output.
      Ce,
      --  The output of the analog comparator flag is used to drive the FAULT
      --  output.
      Output)
     with Size => 1;
   for MR_SELFS_Field use
     (Ce => 0,
      Output => 1);

   --  Fault Enable
   type MR_FE_Field is
     (
      --  The FAULT output is tied to 0.
      Dis,
      --  The FAULT output is driven by the signal defined by SELFS.
      En)
     with Size => 1;
   for MR_FE_Field use
     (Dis => 0,
      En => 1);

   --  Mode Register
   type ACC_MR_Register is record
      --  Selection for Minus Comparator Input
      SELMINUS       : MR_SELMINUS_Field := SAM_SVD.ACC.Ts;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Selection For Plus Comparator Input
      SELPLUS        : MR_SELPLUS_Field := SAM_SVD.ACC.Afe0_Ad0;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Analog Comparator Enable
      ACEN           : MR_ACEN_Field := SAM_SVD.ACC.Dis;
      --  Edge Type
      EDGETYP        : MR_EDGETYP_Field := SAM_SVD.ACC.Rising;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Invert Comparator Output
      INV            : MR_INV_Field := SAM_SVD.ACC.Dis;
      --  Selection Of Fault Source
      SELFS          : MR_SELFS_Field := SAM_SVD.ACC.Ce;
      --  Fault Enable
      FE             : MR_FE_Field := SAM_SVD.ACC.Dis;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_MR_Register use record
      SELMINUS       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SELPLUS        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ACEN           at 0 range 8 .. 8;
      EDGETYP        at 0 range 9 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      INV            at 0 range 12 .. 12;
      SELFS          at 0 range 13 .. 13;
      FE             at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Interrupt Enable Register
   type ACC_IER_Register is record
      --  Write-only. Comparison Edge
      CE            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IER_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Disable Register
   type ACC_IDR_Register is record
      --  Write-only. Comparison Edge
      CE            : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IDR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Mask Register
   type ACC_IMR_Register is record
      --  Read-only. Comparison Edge
      CE            : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_IMR_Register use record
      CE            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Interrupt Status Register
   type ACC_ISR_Register is record
      --  Read-only. Comparison Edge (cleared on read)
      CE            : Boolean;
      --  Read-only. Synchronized Comparator Output
      SCO           : Boolean;
      --  unspecified
      Reserved_2_30 : HAL.UInt29;
      --  Read-only. Flag Mask
      MASK          : Boolean;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ISR_Register use record
      CE            at 0 range 0 .. 0;
      SCO           at 0 range 1 .. 1;
      Reserved_2_30 at 0 range 2 .. 30;
      MASK          at 0 range 31 .. 31;
   end record;

   --  Current Selection
   type ACR_ISEL_Field is
     (
      --  Low-power option.
      Lopw,
      --  High-speed option.
      Hisp)
     with Size => 1;
   for ACR_ISEL_Field use
     (Lopw => 0,
      Hisp => 1);

   subtype ACC_ACR_HYST_Field is HAL.UInt2;

   --  Analog Control Register
   type ACC_ACR_Register is record
      --  Current Selection
      ISEL          : ACR_ISEL_Field := SAM_SVD.ACC.Lopw;
      --  Hysteresis Selection
      HYST          : ACC_ACR_HYST_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_ACR_Register use record
      ISEL          at 0 range 0 .. 0;
      HYST          at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEY_Field is
     (
      --  Reset value for the field
      Wpmr_Wpkey_Field_Reset,
      --  Writing any other value in this field aborts the write operation of
      --  the WPEN bit.Always reads as 0.
      Passwd)
     with Size => 24;
   for WPMR_WPKEY_Field use
     (Wpmr_Wpkey_Field_Reset => 0,
      Passwd => 4277059);

   --  Write Protection Mode Register
   type ACC_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEY_Field := Wpmr_Wpkey_Field_Reset;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   --  Write Protection Status Register
   type ACC_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS          : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACC_WPSR_Register use record
      WPVS          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Analog Comparator Controller
   type ACC_Peripheral is record
      --  Control Register
      CR   : aliased ACC_CR_Register;
      --  Mode Register
      MR   : aliased ACC_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased ACC_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased ACC_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased ACC_IMR_Register;
      --  Interrupt Status Register
      ISR  : aliased ACC_ISR_Register;
      --  Analog Control Register
      ACR  : aliased ACC_ACR_Register;
      --  Write Protection Mode Register
      WPMR : aliased ACC_WPMR_Register;
      --  Write Protection Status Register
      WPSR : aliased ACC_WPSR_Register;
   end record
     with Volatile;

   for ACC_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#24# range 0 .. 31;
      IDR  at 16#28# range 0 .. 31;
      IMR  at 16#2C# range 0 .. 31;
      ISR  at 16#30# range 0 .. 31;
      ACR  at 16#94# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
      WPSR at 16#E8# range 0 .. 31;
   end record;

   --  Analog Comparator Controller
   ACC_Periph : aliased ACC_Peripheral
     with Import, Address => ACC_Base;

end SAM_SVD.ACC;