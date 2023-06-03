
rule PUA_VULN_Driver_OTi_otipcibussys_KernelModeDriverToAccessPhysicalMemoryAndPorts_46v8 {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - d5a642329cce4df94b8dc1ba9660ae34.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "4e3eb5b9bce2fd9f6878ae36288211f0997f6149aa8c290ed91228ba4cdfae80"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]0048006100720064007700610072006500200041006300630065007300730020004400720069007600650072 } /* FileDescription Hardware Access Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004f00540069 } /* CompanyName OTi */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0031002e0031003000300030002e0030002e0031 } /* FileVersion 1.1000.0.1 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0031002e0031003000300030002e0030002e0031 } /* ProductVersion 1.1000.0.1 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006f0074006900700063006900620075007300360034002e007300790073 } /* InternalName otipcibus64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004b00650072006e0065006c0020004d006f00640065002000440072006900760065007200200054006f002000410063006300650073007300200050006800790073006900630061006c0020004d0065006d006f0072007900200041006e006400200050006f007200740073 } /* ProductName Kernel Mode Driver To Access Physical Memory And Ports */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006f0074006900700063006900620075007300360034002e007300790073 } /* OriginalFilename otipcibus64.sys */
	condition:
		all of them
}
