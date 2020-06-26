--************************************************************************
--**    MODEL   :       package_timing.vhd                              **
--**    COMPANY :       Cypress Semiconductor                           **
--**    REVISION:       1.0 (Created new timing package model)          **
--************************************************************************
library IEEE, std;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use std.textio.all;

--****************************************************************

package package_timing is

    ------------------------------------------------------------------------------------------------
    -- Read Cycle timing
    ------------------------------------------------------------------------------------------------
    constant tRC   : time := 10 ns; --   Read Cycle Time
    constant tAA   : time := 10 ns; --   Address to Data Valid
    constant tOHA  : time := 3 ns;  --   Data Hold from Address Change
    constant tACE  : time := 10 ns; --   Random access CEb Low to Data Valid
    constant tDOE  : time := 5 ns;  --   OE Low to Data Valid
    constant tLZOE : time := 0 ns;  --   OE Low to LOW Z
    constant tHZOE : time := 5 ns;  --   OE High to HIGH Z
    constant tLZCE : time := 3 ns;  --   CEb LOW to LOW Z
    constant tHZCE : time := 5 ns;  --   CEb HIGH to HIGH Z

    constant tDBE  : time := 5 ns; --   BHE/BLE LOW to Data Valid
    constant tLZBE : time := 0 ns; --   BHE/BLE LOW to LOW Z
    constant tHZBE : time := 6 ns; --   BHE/BLE HIGH to HIGH Z

    ------------------------------------------------------------------------------------------------
    -- Write Cycle timing
    ------------------------------------------------------------------------------------------------
    constant tWC  : time := 10 ns; --   Write Cycle Time
    constant tSCE : time := 8 ns;  --   CEb LOW to Write End

    constant tAW : time := 8 ns; --   Address Setup to Write End
    constant tSA : time := 0 ns; --   Address Setup to Write Start
    constant tHA : time := 0 ns; --   Address Hold from Write End

    constant tPWE : time := 7 ns; --   WEb pulse width

    constant tSD : time := 5 ns; --   Data Setup to Write End
    constant tHD : time := 0 ns; --   Data Hold from Write End

    constant tBW : time := 7 ns; --   BHE BLE Setup to Write End

    constant tLZWE : time := 3 ns; --   WEb Low to High Z
    constant tHZWE : time := 5 ns; --   WEb High to Low Z

end package_timing;
package body package_timing is

end package_timing;