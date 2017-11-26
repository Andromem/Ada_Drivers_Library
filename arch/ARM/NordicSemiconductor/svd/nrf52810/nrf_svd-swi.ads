--  Copyright (c) 2010 - 2017, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52810.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package NRF_SVD.SWI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Software interrupt 0
   type SWI_Peripheral is record
      --  Unused.
      UNUSED : aliased HAL.UInt32;
   end record
     with Volatile;

   for SWI_Peripheral use record
      UNUSED at 0 range 0 .. 31;
   end record;

   --  Software interrupt 0
   SWI0_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40014000#);

   --  Software interrupt 1
   SWI1_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40015000#);

   --  Software interrupt 2
   SWI2_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  Software interrupt 3
   SWI3_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40017000#);

   --  Software interrupt 4
   SWI4_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40018000#);

   --  Software interrupt 5
   SWI5_Periph : aliased SWI_Peripheral
     with Import, Address => System'To_Address (16#40019000#);

end NRF_SVD.SWI;
