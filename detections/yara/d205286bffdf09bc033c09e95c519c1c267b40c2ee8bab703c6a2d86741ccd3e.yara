
rule PUA_VULN_Driver_BIOSTARGroup_IOdriver_BIOSTARIOdriver_564U {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - b10b210c5944965d0dc85e70a0b19a42.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "d205286bffdf09bc033c09e95c519c1c267b40c2ee8bab703c6a2d86741ccd3e"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0049002f004f00200049006e00740065007200660061006300650020006400720069007600650072002000660069006c0065 } /* FileDescription I/O Interface driver file */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00420049004f0053005400410052002000470072006f00750070 } /* CompanyName BIOSTAR Group */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310030002e0030002e0031003900300031002e0031003100300030 } /* FileVersion 10.0.1901.1100 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310030002e0030002e0031003900300031002e0031003100300030 } /* ProductVersion 10.0.1901.1100 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]0049002f004f0020006400720069007600650072 } /* InternalName I/O driver */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00420049004f005300540041005200200049002f004f0020006400720069007600650072 } /* ProductName BIOSTAR I/O driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00420053005f005200430049004f00360034002e007300790073 } /* OriginalFilename BS_RCIO64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280063002900200032003000310038002d0032003000310039002000420049004f0053005400410052002000470072006f00750070 } /* LegalCopyright Copyright (c) 2018-2019 BIOSTAR Group */
	condition:
		all of them
}
