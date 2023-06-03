
rule PUA_VULN_Driver_Sysinternalswwwsysinternalscom_procexpsys_ProcessExplorer_8sVg {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - cec257dcac9e708cefb17f8984dd0a70.bin, 9b9d367cb53df0a2e0850760c840d016.bin, bf74d0706f5ab9c34067192260f4efb0.bin, 6ff59faea912903af0ba8e80e58612bc.bin, 318e309e11199ec69d8928c46a4d901b.bin, c69c292e0b76b25a5fa0e16136770e11.bin, 9beecfb3146f19400880da61476ef940.bin, f9d04e99e4cab90973226a4555bc6d57.bin, ad03f225247b58a57584b40a4d1746d3.bin, 9982da703f13140997e137b1e745a2e3.bin, 2e219df70fccb79351f0452cba86623e.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "88e2e6a705d3fb71b966d9fb46dc5a4b015548daf585fb54dfcd81dc0bd3ebdc"
		hash = "f29073dc99cb52fa890aae80037b48a172138f112474a1aecddae21179c93478"
		hash = "89b9823ed974a5b71de8468324d45b7e9d6dc914f93615ba86c6209b25b3cbf7"
		hash = "3503ea284b6819f9cb43b3e94c0bb1bf5945ccb37be6a898387e215197a4792a"
		hash = "d6827cd3a8f273a66ecc33bb915df6c7dea5cc1b8134b0c348303ef50db33476"
		hash = "e07211224b02aaf68a5e4b73fc1049376623793509d9581cdaee9e601020af06"
		hash = "c089a31ac95d41ed02d1e4574962f53376b36a9e60ff87769d221dc7d1a3ecfa"
		hash = "6e944ae1bfe43a8a7cd2ea65e518a30172ce8f31223bdfd39701b2cb41d8a9e7"
		hash = "59b09bd69923c0b3de3239e73205b1846a5f69043546d471b259887bb141d879"
		hash = "e3f2ee22dec15061919583e4beb8abb3b29b283e2bcb46badf2bfde65f5ea8dd"
		hash = "9d5ebd0f4585ec20a5fe3c5276df13ece5a2645d3d6f70cedcda979bd1248fc2"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* FileDescription Process Explorer */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]0053007900730069006e007400650072006e0061006c00730020002d0020007700770077002e0073007900730069006e007400650072006e0061006c0073002e0063006f006d } /* CompanyName Sysinternals - www.sysinternals.com */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]00310035002e00300030 } /* FileVersion 15.00 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]00310035002e00300030 } /* ProductVersion 15.00 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]00700072006f0063006500780070002e007300790073 } /* InternalName procexp.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00500072006f00630065007300730020004500780070006c006f007200650072 } /* ProductName Process Explorer */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]00700072006f0063006500780070002e005300790073 } /* OriginalFilename procexp.Sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f007000790072006900670068007400200028004300290020004d00610072006b002000520075007300730069006e006f007600690063006800200031003900390036002d0032003000310034 } /* LegalCopyright Copyright (C) Mark Russinovich 1996-2014 */
	condition:
		all of them
}
