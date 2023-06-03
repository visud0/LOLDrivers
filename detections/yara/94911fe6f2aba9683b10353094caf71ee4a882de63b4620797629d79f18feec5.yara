
rule PUA_VULN_Driver_AVGTechnologiesCZsro_aswArPot_AVGInternetSecuritySystem_8d9r {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 9496585198d726000ea505abc39dbfe9.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "94911fe6f2aba9683b10353094caf71ee4a882de63b4620797629d79f18feec5"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00410056004700200041006e0074006900200052006f006f0074006b00690074 } /* FileDescription AVG Anti Rootkit */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00410056004700200054006500630068006e006f006c006f006700690065007300200043005a002c00200073002e0072002e006f002e } /* CompanyName AVG Technologies CZ, s.r.o. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00320030002e0034002e00380033002e0030 } /* FileVersion 20.4.83.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00320030002e0034002e00380033002e0030 } /* ProductVersion 20.4.83.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006100730077004100720050006f0074 } /* InternalName aswArPot */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00410056004700200049006e007400650072006e00650074002000530065006300750072006900740079002000530079007300740065006d0020 } /* ProductName AVG Internet Security System  */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006100730077004100720050006f0074002e007300790073 } /* OriginalFilename aswArPot.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000320030002000410056004700200054006500630068006e006f006c006f006700690065007300200043005a002c00200073002e0072002e006f002e } /* LegalCopyright Copyright (C) 2020 AVG Technologies CZ, s.r.o. */
	condition:
		all of them
}
