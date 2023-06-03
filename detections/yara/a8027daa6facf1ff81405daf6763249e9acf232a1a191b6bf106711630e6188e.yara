
rule PUA_VULN_Driver_TrendMicroInc_TmCommsys_AEGIS_4ZGN {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 2ddd3c0e23bc0fd63702910c597298b4.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "a8027daa6facf1ff81405daf6763249e9acf232a1a191b6bf106711630e6188e"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005400720065006e0064004d006900630072006f00200043006f006d006d006f006e0020004d006f00640075006c0065 } /* FileDescription TrendMicro Common Module */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]005400720065006e00640020004d006900630072006f00200049006e0063002e } /* CompanyName Trend Micro Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0032002e0035002e0030002e0031003100320031 } /* FileVersion 2.5.0.1121 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e0035 } /* ProductVersion 2.5 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0054006d0043006f006d006d002e007300790073 } /* InternalName TmComm.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00410045004700490053 } /* ProductName AEGIS */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]0054006d0043006f006d006d002e007300790073 } /* OriginalFilename TmComm.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000300035002d00320030003000380020005400720065006e00640020004d006900630072006f00200049006e0063006f00720070006f00720061007400650064002e00200041006c006c0020007200690067006800740073002000720065007300650072007600650064002e } /* LegalCopyright Copyright (C) 2005-2008 Trend Micro Incorporated. All rights reserved. */
	condition:
		all of them
}
