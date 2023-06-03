
rule PUA_VULN_Driver_NovellInc_NovellXTier_5aiq {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - f690bfc0799e51a626ba3931960c3173.bin, 3bf217f8ef018ca5ea20947bfdfc0a4d.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "904e0f7d485a98e8497d5ec6dd6e6e1cf0b8d8e067fb64a9e09790af3c8c9d5a"
		hash = "cf3180f5308af002ac5d6fd5b75d1340878c375f0aebc3157e3bcad6322b7190"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004e006f00760065006c006c00200043006c00690065006e007400200050006f00720074006100620069006c0069007400790020004c0061007900650072 } /* FileDescription Novell Client Portability Layer */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004e006f00760065006c006c002c00200049006e0063002e } /* CompanyName Novell, Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0033002e0031002e0036002e0030 } /* FileVersion 3.1.6.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0033002e0031002e0036 } /* ProductVersion 3.1.6 */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004e006f00760065006c006c002000580054006900650072 } /* ProductName Novell XTier */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004e00490043004d002e005300590053 } /* OriginalFilename NICM.SYS */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]00280043002900200043006f007000790072006900670068007400200032003000300030002d0032003000300038002c0020004e006f00760065006c006c002c00200049006e0063002e00200041006c006c0020005200690067006800740073002000520065007300650072007600650064002e } /* LegalCopyright (C) Copyright 2000-2008, Novell, Inc. All Rights Reserved. */
	condition:
		all of them
}
