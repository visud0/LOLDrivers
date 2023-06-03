
rule PUA_VULN_Driver_WiseCleanercom_WiseUnlosys_WiseUnlo_yv3A {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 356bda2bf0f6899a2c08b2da3ec69f13.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "358ac54be252673841a1d65bfc2fb6d549c1a4c877fa7f5e1bfa188f30375d69"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00570069007300650055006e006c006f } /* FileDescription WiseUnlo */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00570069007300650043006c00650061006e00650072002e0063006f006d } /* CompanyName WiseCleaner.com */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0030002e0032002e00310033 } /* FileVersion 1.0.2.13 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0030002e0032002e00310033 } /* ProductVersion 1.0.2.13 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00570069007300650055006e006c006f002e007300790073 } /* InternalName WiseUnlo.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069007300650055006e006c006f } /* ProductName WiseUnlo */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00570069007300650055006e006c006f002e007300790073 } /* OriginalFilename WiseUnlo.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000a900200032003000310035 } /* LegalCopyright Copyright © 2015 */
	condition:
		all of them
}
