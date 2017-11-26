--  This spec has been automatically generated from MKE15Z7.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.FGPIOD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input/Output
   type FGPIOD_Peripheral is record
      --  Port Data Output Register
      PDOR : aliased HAL.UInt32;
      --  Port Set Output Register
      PSOR : aliased HAL.UInt32;
      --  Port Clear Output Register
      PCOR : aliased HAL.UInt32;
      --  Port Toggle Output Register
      PTOR : aliased HAL.UInt32;
      --  Port Data Input Register
      PDIR : aliased HAL.UInt32;
      --  Port Data Direction Register
      PDDR : aliased HAL.UInt32;
   end record
     with Volatile;

   for FGPIOD_Peripheral use record
      PDOR at 16#0# range 0 .. 31;
      PSOR at 16#4# range 0 .. 31;
      PCOR at 16#8# range 0 .. 31;
      PTOR at 16#C# range 0 .. 31;
      PDIR at 16#10# range 0 .. 31;
      PDDR at 16#14# range 0 .. 31;
   end record;

   --  General Purpose Input/Output
   FGPIOD_Periph : aliased FGPIOD_Peripheral
     with Import, Address => System'To_Address (16#F80000C0#);

end NRF_SVD.FGPIOD;