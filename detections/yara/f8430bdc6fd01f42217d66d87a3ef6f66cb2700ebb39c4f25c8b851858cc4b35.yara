
rule PUA_VULN_Driver_SuperMicroComputerInc_superbmc_superbmc_7Ura {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 3473faea65fba5d4fbe54c0898a3c044.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "f8430bdc6fd01f42217d66d87a3ef6f66cb2700ebb39c4f25c8b851858cc4b35"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]007300750070006500720062006d0063 } /* FileDescription superbmc */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]005300750070006500720020004d006900630072006f00200043006f006d00700075007400650072002c00200049006e0063002e } /* CompanyName Super Micro Computer, Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0032002e0030002e0030002e0030 } /* FileVersion 2.0.0.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0032002e0030002e0030002e0030 } /* ProductVersion 2.0.0.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]007300750070006500720062006d0063 } /* InternalName superbmc */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]007300750070006500720062006d0063 } /* ProductName superbmc */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]007300750070006500720062006d0063002e007300790073 } /* OriginalFilename superbmc.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400280063002900200031003900390033002d00320030003100350020005300750070006500720020004d006900630072006f00200043006f006d00700075007400650072002c00200049006e0063002e } /* LegalCopyright Copyright(c) 1993-2015 Super Micro Computer, Inc. */
	condition:
		all of them
}
