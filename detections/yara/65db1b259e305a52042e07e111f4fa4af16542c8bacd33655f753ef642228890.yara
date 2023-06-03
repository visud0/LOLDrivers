
rule PUA_VULN_Driver_PhoenixTechnologiesLtd_PHLASHNT_WinPhlash_6EqA {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - e9e786bdba458b8b4f9e93d034f73d00.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "65db1b259e305a52042e07e111f4fa4af16542c8bacd33655f753ef642228890"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]005300570069006e0046006c006100730068002000440072006900760065007200200066006f0072002000570069006e0064006f007700730020004e0054 } /* FileDescription SWinFlash Driver for Windows NT */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00500068006f0065006e0069007800200054006500630068006e006f006c006f0067006900650073002c0020004c00740064002e } /* CompanyName Phoenix Technologies, Ltd. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0036002e0031002e0030 } /* FileVersion 1.6.1.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0036002e0031002e0030 } /* ProductVersion 1.6.1.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00500048004c004100530048004e0054 } /* InternalName PHLASHNT */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00570069006e00500068006c006100730068 } /* ProductName WinPhlash */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00500048004c004100530048004e0054002e005300590053 } /* OriginalFilename PHLASHNT.SYS */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]002800630029002000500068006f0065006e0069007800200054006500630068006e006f006c006f0067006900650073002c0020004c00740064002e00200032003000300030002d0032003000300033 } /* LegalCopyright (c) Phoenix Technologies, Ltd. 2000-2003 */
	condition:
		all of them
}
