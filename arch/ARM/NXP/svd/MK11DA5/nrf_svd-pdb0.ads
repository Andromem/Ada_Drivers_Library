--  Redistribution and use in source and binary forms, with or without modification,
--  are permitted provided that the following conditions are met:
--  o Redistributions of source code must retain the above copyright notice, this list
--  of conditions and the following disclaimer.
--  o Redistributions in binary form must reproduce the above copyright notice, this
--  list of conditions and the following disclaimer in the documentation and/or
--  other materials provided with the distribution.
--  o Neither the name of the copyright holder nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
--  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
--  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
--  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
--  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
--  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
--  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--  This spec has been automatically generated from MK11DA5.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

--  Programmable Delay Block
package NRF_SVD.PDB0 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Continuous Mode Enable
   type SC_CONT_Field is
     (
      --  PDB operation in One-Shot mode
      SC_CONT_Field_0,
      --  PDB operation in Continuous mode
      SC_CONT_Field_1)
     with Size => 1;
   for SC_CONT_Field use
     (SC_CONT_Field_0 => 0,
      SC_CONT_Field_1 => 1);

   --  Multiplication Factor Select for Prescaler
   type SC_MULT_Field is
     (
      --  Multiplication factor is 1.
      SC_MULT_Field_00,
      --  Multiplication factor is 10.
      SC_MULT_Field_01,
      --  Multiplication factor is 20.
      SC_MULT_Field_10,
      --  Multiplication factor is 40.
      SC_MULT_Field_11)
     with Size => 2;
   for SC_MULT_Field use
     (SC_MULT_Field_00 => 0,
      SC_MULT_Field_01 => 1,
      SC_MULT_Field_10 => 2,
      SC_MULT_Field_11 => 3);

   --  PDB Interrupt Enable
   type SC_PDBIE_Field is
     (
      --  PDB interrupt disabled.
      SC_PDBIE_Field_0,
      --  PDB interrupt enabled.
      SC_PDBIE_Field_1)
     with Size => 1;
   for SC_PDBIE_Field use
     (SC_PDBIE_Field_0 => 0,
      SC_PDBIE_Field_1 => 1);

   --  PDB Enable
   type SC_PDBEN_Field is
     (
      --  PDB disabled. Counter is off.
      SC_PDBEN_Field_0,
      --  PDB enabled.
      SC_PDBEN_Field_1)
     with Size => 1;
   for SC_PDBEN_Field use
     (SC_PDBEN_Field_0 => 0,
      SC_PDBEN_Field_1 => 1);

   --  Trigger Input Source Select
   type SC_TRGSEL_Field is
     (
      --  Trigger-In 0 is selected.
      SC_TRGSEL_Field_0000,
      --  Trigger-In 1 is selected.
      SC_TRGSEL_Field_0001,
      --  Trigger-In 2 is selected.
      SC_TRGSEL_Field_0010,
      --  Trigger-In 3 is selected.
      SC_TRGSEL_Field_0011,
      --  Trigger-In 4 is selected.
      SC_TRGSEL_Field_0100,
      --  Trigger-In 5 is selected.
      SC_TRGSEL_Field_0101,
      --  Trigger-In 6 is selected.
      SC_TRGSEL_Field_0110,
      --  Trigger-In 7 is selected.
      SC_TRGSEL_Field_0111,
      --  Trigger-In 8 is selected.
      SC_TRGSEL_Field_1000,
      --  Trigger-In 9 is selected.
      SC_TRGSEL_Field_1001,
      --  Trigger-In 10 is selected.
      SC_TRGSEL_Field_1010,
      --  Trigger-In 11 is selected.
      SC_TRGSEL_Field_1011,
      --  Trigger-In 12 is selected.
      SC_TRGSEL_Field_1100,
      --  Trigger-In 13 is selected.
      SC_TRGSEL_Field_1101,
      --  Trigger-In 14 is selected.
      SC_TRGSEL_Field_1110,
      --  Software trigger is selected.
      SC_TRGSEL_Field_1111)
     with Size => 4;
   for SC_TRGSEL_Field use
     (SC_TRGSEL_Field_0000 => 0,
      SC_TRGSEL_Field_0001 => 1,
      SC_TRGSEL_Field_0010 => 2,
      SC_TRGSEL_Field_0011 => 3,
      SC_TRGSEL_Field_0100 => 4,
      SC_TRGSEL_Field_0101 => 5,
      SC_TRGSEL_Field_0110 => 6,
      SC_TRGSEL_Field_0111 => 7,
      SC_TRGSEL_Field_1000 => 8,
      SC_TRGSEL_Field_1001 => 9,
      SC_TRGSEL_Field_1010 => 10,
      SC_TRGSEL_Field_1011 => 11,
      SC_TRGSEL_Field_1100 => 12,
      SC_TRGSEL_Field_1101 => 13,
      SC_TRGSEL_Field_1110 => 14,
      SC_TRGSEL_Field_1111 => 15);

   --  Prescaler Divider Select
   type SC_PRESCALER_Field is
     (
      --  Counting uses the peripheral clock divided by multiplication factor
      --  selected by MULT.
      SC_PRESCALER_Field_000,
      --  Counting uses the peripheral clock divided by twice of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_001,
      --  Counting uses the peripheral clock divided by four times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_010,
      --  Counting uses the peripheral clock divided by eight times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_011,
      --  Counting uses the peripheral clock divided by 16 times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_100,
      --  Counting uses the peripheral clock divided by 32 times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_101,
      --  Counting uses the peripheral clock divided by 64 times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_110,
      --  Counting uses the peripheral clock divided by 128 times of the
      --  multiplication factor selected by MULT.
      SC_PRESCALER_Field_111)
     with Size => 3;
   for SC_PRESCALER_Field use
     (SC_PRESCALER_Field_000 => 0,
      SC_PRESCALER_Field_001 => 1,
      SC_PRESCALER_Field_010 => 2,
      SC_PRESCALER_Field_011 => 3,
      SC_PRESCALER_Field_100 => 4,
      SC_PRESCALER_Field_101 => 5,
      SC_PRESCALER_Field_110 => 6,
      SC_PRESCALER_Field_111 => 7);

   --  DMA Enable
   type SC_DMAEN_Field is
     (
      --  DMA disabled.
      SC_DMAEN_Field_0,
      --  DMA enabled.
      SC_DMAEN_Field_1)
     with Size => 1;
   for SC_DMAEN_Field use
     (SC_DMAEN_Field_0 => 0,
      SC_DMAEN_Field_1 => 1);

   --  PDB Sequence Error Interrupt Enable
   type SC_PDBEIE_Field is
     (
      --  PDB sequence error interrupt disabled.
      SC_PDBEIE_Field_0,
      --  PDB sequence error interrupt enabled.
      SC_PDBEIE_Field_1)
     with Size => 1;
   for SC_PDBEIE_Field use
     (SC_PDBEIE_Field_0 => 0,
      SC_PDBEIE_Field_1 => 1);

   --  Load Mode Select
   type SC_LDMOD_Field is
     (
      --  The internal registers are loaded with the values from their buffers
      --  immediately after 1 is written to LDOK.
      SC_LDMOD_Field_00,
      --  The internal registers are loaded with the values from their buffers
      --  when the PDB counter reaches the MOD register value after 1 is
      --  written to LDOK.
      SC_LDMOD_Field_01,
      --  The internal registers are loaded with the values from their buffers
      --  when a trigger input event is detected after 1 is written to LDOK.
      SC_LDMOD_Field_10,
      --  The internal registers are loaded with the values from their buffers
      --  when either the PDB counter reaches the MOD register value or a
      --  trigger input event is detected, after 1 is written to LDOK.
      SC_LDMOD_Field_11)
     with Size => 2;
   for SC_LDMOD_Field use
     (SC_LDMOD_Field_00 => 0,
      SC_LDMOD_Field_01 => 1,
      SC_LDMOD_Field_10 => 2,
      SC_LDMOD_Field_11 => 3);

   --  Status and Control register
   type PDB0_SC_Register is record
      --  Load OK
      LDOK           : Boolean := False;
      --  Continuous Mode Enable
      CONT           : SC_CONT_Field := NRF_SVD.PDB0.SC_CONT_Field_0;
      --  Multiplication Factor Select for Prescaler
      MULT           : SC_MULT_Field := NRF_SVD.PDB0.SC_MULT_Field_00;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  PDB Interrupt Enable
      PDBIE          : SC_PDBIE_Field := NRF_SVD.PDB0.SC_PDBIE_Field_0;
      --  PDB Interrupt Flag
      PDBIF          : Boolean := False;
      --  PDB Enable
      PDBEN          : SC_PDBEN_Field := NRF_SVD.PDB0.SC_PDBEN_Field_0;
      --  Trigger Input Source Select
      TRGSEL         : SC_TRGSEL_Field := NRF_SVD.PDB0.SC_TRGSEL_Field_0000;
      --  Prescaler Divider Select
      PRESCALER      : SC_PRESCALER_Field :=
                        NRF_SVD.PDB0.SC_PRESCALER_Field_000;
      --  DMA Enable
      DMAEN          : SC_DMAEN_Field := NRF_SVD.PDB0.SC_DMAEN_Field_0;
      --  Write-only. Software Trigger
      SWTRIG         : Boolean := False;
      --  PDB Sequence Error Interrupt Enable
      PDBEIE         : SC_PDBEIE_Field := NRF_SVD.PDB0.SC_PDBEIE_Field_0;
      --  Load Mode Select
      LDMOD          : SC_LDMOD_Field := NRF_SVD.PDB0.SC_LDMOD_Field_00;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_SC_Register use record
      LDOK           at 0 range 0 .. 0;
      CONT           at 0 range 1 .. 1;
      MULT           at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      PDBIE          at 0 range 5 .. 5;
      PDBIF          at 0 range 6 .. 6;
      PDBEN          at 0 range 7 .. 7;
      TRGSEL         at 0 range 8 .. 11;
      PRESCALER      at 0 range 12 .. 14;
      DMAEN          at 0 range 15 .. 15;
      SWTRIG         at 0 range 16 .. 16;
      PDBEIE         at 0 range 17 .. 17;
      LDMOD          at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype PDB0_MOD_MOD_Field is HAL.UInt16;

   --  Modulus register
   type PDB0_MOD_Register is record
      --  PDB Modulus
      MOD_k          : PDB0_MOD_MOD_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_MOD_Register use record
      MOD_k          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDB0_CNT_CNT_Field is HAL.UInt16;

   --  Counter register
   type PDB0_CNT_Register is record
      --  Read-only. PDB Counter
      CNT            : PDB0_CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PDB0_IDLY_IDLY_Field is HAL.UInt16;

   --  Interrupt Delay register
   type PDB0_IDLY_Register is record
      --  PDB Interrupt Delay
      IDLY           : PDB0_IDLY_IDLY_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_IDLY_Register use record
      IDLY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDB Channel Pre-Trigger Enable
   type CHC10_EN_Field is
     (
      --  PDB channel's corresponding pre-trigger disabled.
      CHC10_EN_Field_0,
      --  PDB channel's corresponding pre-trigger enabled.
      CHC10_EN_Field_1)
     with Size => 8;
   for CHC10_EN_Field use
     (CHC10_EN_Field_0 => 0,
      CHC10_EN_Field_1 => 1);

   --  PDB Channel Pre-Trigger Output Select
   type CHC10_TOS_Field is
     (
      --  PDB channel's corresponding pre-trigger is in bypassed mode. The
      --  pre-trigger asserts one peripheral clock cycle after a rising edge is
      --  detected on selected trigger input source or software trigger is
      --  selected and SWTRIG is written with 1.
      CHC10_TOS_Field_0,
      --  PDB channel's corresponding pre-trigger asserts when the counter
      --  reaches the channel delay register and one peripheral clock cycle
      --  after a rising edge is detected on selected trigger input source or
      --  software trigger is selected and SETRIG is written with 1.
      CHC10_TOS_Field_1)
     with Size => 8;
   for CHC10_TOS_Field use
     (CHC10_TOS_Field_0 => 0,
      CHC10_TOS_Field_1 => 1);

   --  PDB Channel Pre-Trigger Back-to-Back Operation Enable
   type CHC10_BB_Field is
     (
      --  PDB channel's corresponding pre-trigger back-to-back operation
      --  disabled.
      CHC10_BB_Field_0,
      --  PDB channel's corresponding pre-trigger back-to-back operation
      --  enabled.
      CHC10_BB_Field_1)
     with Size => 8;
   for CHC10_BB_Field use
     (CHC10_BB_Field_0 => 0,
      CHC10_BB_Field_1 => 1);

   --  Channel n Control register 1
   type CHC_Register is record
      --  PDB Channel Pre-Trigger Enable
      EN             : CHC10_EN_Field := NRF_SVD.PDB0.CHC10_EN_Field_0;
      --  PDB Channel Pre-Trigger Output Select
      TOS            : CHC10_TOS_Field := NRF_SVD.PDB0.CHC10_TOS_Field_0;
      --  PDB Channel Pre-Trigger Back-to-Back Operation Enable
      BB             : CHC10_BB_Field := NRF_SVD.PDB0.CHC10_BB_Field_0;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHC_Register use record
      EN             at 0 range 0 .. 7;
      TOS            at 0 range 8 .. 15;
      BB             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PDB Channel Sequence Error Flags
   type CHS0_ERR_Field is
     (
      --  Sequence error not detected on PDB channel's corresponding
      --  pre-trigger.
      CHS0_ERR_Field_0,
      --  Sequence error detected on PDB channel's corresponding pre-trigger.
      --  ADCn block can be triggered for a conversion by one pre-trigger from
      --  PDB channel n. When one conversion, which is triggered by one of the
      --  pre-triggers from PDB channel n, is in progress, new trigger from PDB
      --  channel's corresponding pre-trigger m cannot be accepted by ADCn, and
      --  ERR[m] is set. Writing 0's to clear the sequence error flags.
      CHS0_ERR_Field_1)
     with Size => 8;
   for CHS0_ERR_Field use
     (CHS0_ERR_Field_0 => 0,
      CHS0_ERR_Field_1 => 1);

   subtype CHS_CF_Field is HAL.UInt8;

   --  Channel n Status register
   type CHS_Register is record
      --  PDB Channel Sequence Error Flags
      ERR            : CHS0_ERR_Field := NRF_SVD.PDB0.CHS0_ERR_Field_0;
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  PDB Channel Flags
      CF             : CHS_CF_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHS_Register use record
      ERR            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CF             at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CHDLY_DLY_Field is HAL.UInt16;

   --  Channel n Delay 0 register
   type CHDLY_Register is record
      --  PDB Channel Delay
      DLY            : CHDLY_DLY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHDLY_Register use record
      DLY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DAC Interval Trigger Enable
   type DACINTC_TOE_Field is
     (
      --  DAC interval trigger disabled.
      DACINTC_TOE_Field_0,
      --  DAC interval trigger enabled.
      DACINTC_TOE_Field_1)
     with Size => 1;
   for DACINTC_TOE_Field use
     (DACINTC_TOE_Field_0 => 0,
      DACINTC_TOE_Field_1 => 1);

   --  DAC External Trigger Input Enable
   type DACINTC_EXT_Field is
     (
      --  DAC external trigger input disabled. DAC interval counter is reset
      --  and started counting when a rising edge is detected on selected
      --  trigger input source or software trigger is selected and SWTRIG is
      --  written with 1.
      DACINTC_EXT_Field_0,
      --  DAC external trigger input enabled. DAC interval counter is bypassed
      --  and DAC external trigger input triggers the DAC interval trigger.
      DACINTC_EXT_Field_1)
     with Size => 1;
   for DACINTC_EXT_Field use
     (DACINTC_EXT_Field_0 => 0,
      DACINTC_EXT_Field_1 => 1);

   --  DAC Interval Trigger n Control register
   type PDB0_DACINTC_Register is record
      --  DAC Interval Trigger Enable
      TOE           : DACINTC_TOE_Field := NRF_SVD.PDB0.DACINTC_TOE_Field_0;
      --  DAC External Trigger Input Enable
      EXT           : DACINTC_EXT_Field := NRF_SVD.PDB0.DACINTC_EXT_Field_0;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_DACINTC_Register use record
      TOE           at 0 range 0 .. 0;
      EXT           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PDB0_DACINT_INT_Field is HAL.UInt16;

   --  DAC Interval n register
   type PDB0_DACINT_Register is record
      --  DAC Interval
      INT            : PDB0_DACINT_INT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_DACINT_Register use record
      INT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PDB Pulse-Out Enable
   type POEN_POEN_Field is
     (
      --  PDB Pulse-Out disabled
      POEN_POEN_Field_0,
      --  PDB Pulse-Out enabled
      POEN_POEN_Field_1)
     with Size => 8;
   for POEN_POEN_Field use
     (POEN_POEN_Field_0 => 0,
      POEN_POEN_Field_1 => 1);

   --  Pulse-Out n Enable register
   type PDB0_POEN_Register is record
      --  PDB Pulse-Out Enable
      POEN          : POEN_POEN_Field := NRF_SVD.PDB0.POEN_POEN_Field_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_POEN_Register use record
      POEN          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PDB0_PODLY_DLY2_Field is HAL.UInt16;
   subtype PDB0_PODLY_DLY1_Field is HAL.UInt16;

   --  Pulse-Out n Delay register
   type PDB0_PODLY_Register is record
      --  PDB Pulse-Out Delay 2
      DLY2 : PDB0_PODLY_DLY2_Field := 16#0#;
      --  PDB Pulse-Out Delay 1
      DLY1 : PDB0_PODLY_DLY1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDB0_PODLY_Register use record
      DLY2 at 0 range 0 .. 15;
      DLY1 at 0 range 16 .. 31;
   end record;

   --  Pulse-Out n Delay register
   type PDB0_PODLY_Registers is array (0 .. 1) of PDB0_PODLY_Register
     with Volatile;

   -----------------
   -- Peripherals --
   -----------------

   --  Programmable Delay Block
   type PDB0_Peripheral is record
      --  Status and Control register
      SC      : aliased PDB0_SC_Register;
      --  Modulus register
      MOD_k   : aliased PDB0_MOD_Register;
      --  Counter register
      CNT     : aliased PDB0_CNT_Register;
      --  Interrupt Delay register
      IDLY    : aliased PDB0_IDLY_Register;
      --  Channel n Control register 1
      CHC10   : aliased CHC_Register;
      --  Channel n Status register
      CHS0    : aliased CHS_Register;
      --  Channel n Delay 0 register
      CHDLY00 : aliased CHDLY_Register;
      --  Channel n Delay 1 register
      CHDLY10 : aliased CHDLY_Register;
      --  Channel n Control register 1
      CHC11   : aliased CHC_Register;
      --  Channel n Status register
      CHS1    : aliased CHS_Register;
      --  Channel n Delay 0 register
      CHDLY01 : aliased CHDLY_Register;
      --  Channel n Delay 1 register
      CHDLY11 : aliased CHDLY_Register;
      --  DAC Interval Trigger n Control register
      DACINTC : aliased PDB0_DACINTC_Register;
      --  DAC Interval n register
      DACINT  : aliased PDB0_DACINT_Register;
      --  Pulse-Out n Enable register
      POEN    : aliased PDB0_POEN_Register;
      --  Pulse-Out n Delay register
      PODLY   : aliased PDB0_PODLY_Registers;
   end record
     with Volatile;

   for PDB0_Peripheral use record
      SC      at 16#0# range 0 .. 31;
      MOD_k   at 16#4# range 0 .. 31;
      CNT     at 16#8# range 0 .. 31;
      IDLY    at 16#C# range 0 .. 31;
      CHC10   at 16#10# range 0 .. 31;
      CHS0    at 16#14# range 0 .. 31;
      CHDLY00 at 16#18# range 0 .. 31;
      CHDLY10 at 16#1C# range 0 .. 31;
      CHC11   at 16#38# range 0 .. 31;
      CHS1    at 16#3C# range 0 .. 31;
      CHDLY01 at 16#40# range 0 .. 31;
      CHDLY11 at 16#44# range 0 .. 31;
      DACINTC at 16#150# range 0 .. 31;
      DACINT  at 16#154# range 0 .. 31;
      POEN    at 16#190# range 0 .. 31;
      PODLY   at 16#194# range 0 .. 63;
   end record;

   --  Programmable Delay Block
   PDB0_Periph : aliased PDB0_Peripheral
     with Import, Address => PDB0_Base;

end NRF_SVD.PDB0;