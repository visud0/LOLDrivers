
rule PUA_VULN_Driver_AVGTechnologiesCZsro_aswArPotsys_AVGInternetSecuritySystem_3uzh {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 045ef7a39288ba1f4b8d6eca43def44f.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "6e0aa67cfdbe27a059cbd066443337f81c5b6d37444d14792d1c765d9d122dcf"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00410056004700200061006e0074006900200072006f006f0074006b00690074 } /* FileDescription AVG anti rootkit */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00410056004700200054006500630068006e006f006c006f006700690065007300200043005a002c00200073002e0072002e006f002e } /* CompanyName AVG Technologies CZ, s.r.o. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310039002e0036002e0034003200330035002e0030 } /* FileVersion 19.6.4235.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310039002e0036002e0034003200330035002e0030 } /* ProductVersion 19.6.4235.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006100730077004100720050006f0074002e007300790073 } /* InternalName aswArPot.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00410056004700200049006e007400650072006e00650074002000530065006300750072006900740079002000530079007300740065006d0020 } /* ProductName AVG Internet Security System  */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006100730077004100720050006f0074002e007300790073 } /* OriginalFilename aswArPot.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000310039002000410056004700200054006500630068006e006f006c006f006700690065007300200043005a002c00200073002e0072002e006f002e } /* LegalCopyright Copyright (C) 2019 AVG Technologies CZ, s.r.o. */
	condition:
		all of them
}
