! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Resume_Child_After_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1796
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_176:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_175:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_174:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_173:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_172:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_168:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_166:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_165:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_164:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_163:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_162:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_161:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_160:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_159:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_158:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_157:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_155:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_154:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_153:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_152:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_151:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_150:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_149:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_148:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_145:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_143:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_141:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_140:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_139:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_138:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_137:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_136:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_135:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_134:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_133:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_132:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_131:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_130:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_129:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_128:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_108:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_107:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_106:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_105:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_104:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_98:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_93:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_92:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_89:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_88:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_87:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_86:
	.word	22			! length
	.ascii	"    File Descriptors:\n"
	.align
_StringConst_85:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_84:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_83:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_81:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_80:
	.word	6			! length
	.ascii	"thread"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_69:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_68:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_67:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_66:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_63:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_62:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_61:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_60:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_59:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_58:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_57:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_55:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_53:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_43:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_42:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_41:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_40:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_38:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_37:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_13:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_12:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_11:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_10:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_9:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_6:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_3:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_1:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xf335ffec,r4		! myHashVal = -214564884
	cmp	r3,r4
	be	_Label_190
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_190:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_191
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_191
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_191
_Label_191:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_189_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_192 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=new_PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   if intIsZero (new_PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_193 = new_PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_193 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_194 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_194 = new_PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_195 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-56]
!   _temp_196 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_195  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open_file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   if intIsZero (new_PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = new_PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_197 = _temp_198		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (open_file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_199 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=open_file  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   if intIsZero (new_PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_201 = new_PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_202 = _temp_201 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_200 = *_temp_202  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_200 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_203 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_203 [999 ] into _temp_204
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_204		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	32,r13		! source line 32
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   if intIsZero (new_PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_205 = new_PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_206 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_206 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_207
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_208
	.word	8
	.word	4
	.word	_Label_209
	.word	-12
	.word	4
	.word	_Label_210
	.word	-16
	.word	4
	.word	_Label_211
	.word	-20
	.word	4
	.word	_Label_212
	.word	-24
	.word	4
	.word	_Label_213
	.word	-28
	.word	4
	.word	_Label_214
	.word	-32
	.word	4
	.word	_Label_215
	.word	-36
	.word	4
	.word	_Label_216
	.word	-40
	.word	4
	.word	_Label_217
	.word	-44
	.word	4
	.word	_Label_218
	.word	-48
	.word	4
	.word	_Label_219
	.word	-52
	.word	4
	.word	_Label_220
	.word	-56
	.word	4
	.word	_Label_221
	.word	-60
	.word	4
	.word	_Label_222
	.word	-64
	.word	4
	.word	_Label_223
	.word	-68
	.word	4
	.word	_Label_224
	.word	-72
	.word	4
	.word	_Label_225
	.word	-76
	.word	4
	.word	_Label_226
	.word	-80
	.word	4
	.word	_Label_227
	.word	-84
	.word	4
	.word	_Label_228
	.word	-88
	.word	4
	.word	_Label_229
	.word	-92
	.word	4
	.word	0
_Label_207:
	.ascii	"StartUserProcess\0"
	.align
_Label_208:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_224:
	.byte	'P'
	.ascii	"new_PCB\0"
	.align
_Label_225:
	.byte	'P'
	.ascii	"open_file\0"
	.align
_Label_226:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_229:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3800:
	push	r0
	sub	r1,1,r1
	bne	_Label_3800
	mov	39,r13		! source line 39
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=new_thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_231 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-16]
!   if intIsZero (new_thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_231  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_232 = _function_189_StartUserProcess
	set	_function_189_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (new_thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_232  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_233
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	0
_Label_233:
	.ascii	"InitFirstProcess\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"new_thread\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_238 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3802:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3802
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_242 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_243 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_242  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   _temp_244 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_245 = _temp_244 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_245 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3803:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3803
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_247 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_248 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_249 = _function_188_IdleFunction
	set	_function_188_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_250 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_251
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_252
	.word	-12
	.word	4
	.word	_Label_253
	.word	-16
	.word	4
	.word	_Label_254
	.word	-20
	.word	4
	.word	_Label_255
	.word	-24
	.word	4
	.word	_Label_256
	.word	-28
	.word	4
	.word	_Label_257
	.word	-32
	.word	4
	.word	_Label_258
	.word	-36
	.word	4
	.word	_Label_259
	.word	-40
	.word	4
	.word	_Label_260
	.word	-44
	.word	4
	.word	_Label_261
	.word	-48
	.word	4
	.word	_Label_262
	.word	-52
	.word	4
	.word	_Label_263
	.word	-56
	.word	4
	.word	_Label_264
	.word	-60
	.word	4
	.word	0
_Label_251:
	.ascii	"InitializeScheduler\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_188_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
	mov	79,r13		! source line 79
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0WH",r10
_Label_265:
!	jmp	_Label_266
_Label_266:
	mov	89,r13		! source line 89
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_268 else goto _Label_269
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_269
	jmp	_Label_268
_Label_268:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_271
_Label_269:
! ELSE...
	mov	94,r13		! source line 94
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_271:
! END WHILE...
	jmp	_Label_265
_Label_267:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_IdleFunction:
	.word	_sourceFileName
	.word	_Label_272
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	0
_Label_272:
	.ascii	"IdleFunction\0"
	.align
_Label_273:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_275:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3805:
	push	r0
	sub	r1,1,r1
	bne	_Label_3805
	mov	101,r13		! source line 101
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_278 ) then goto _Label_277		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_277
!	jmp	_Label_276
_Label_276:
! THEN...
	mov	118,r13		! source line 118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_280 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_280 [0 ] into _temp_281
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_279 = _temp_281		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_277:
! ASSIGNMENT STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_282 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0WH",r10
_Label_283:
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_287 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_286  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_286 then goto _Label_285 else goto _Label_284
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_284
	jmp	_Label_285
_Label_284:
	mov	131,r13		! source line 131
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_288 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_289 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_283
_Label_285:
! IF STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_292 ) then goto _Label_291		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_291
!	jmp	_Label_290
_Label_290:
! THEN...
	mov	137,r13		! source line 137
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_294 [0 ] into _temp_295
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_293 = _temp_295		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_296 = *_temp_297  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_296) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _temp_296 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_291:
! RETURN STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_299
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_300
	.word	8
	.word	4
	.word	_Label_301
	.word	-16
	.word	4
	.word	_Label_302
	.word	-20
	.word	4
	.word	_Label_303
	.word	-24
	.word	4
	.word	_Label_304
	.word	-28
	.word	4
	.word	_Label_305
	.word	-32
	.word	4
	.word	_Label_306
	.word	-36
	.word	4
	.word	_Label_307
	.word	-40
	.word	4
	.word	_Label_308
	.word	-44
	.word	4
	.word	_Label_309
	.word	-48
	.word	4
	.word	_Label_310
	.word	-52
	.word	4
	.word	_Label_311
	.word	-9
	.word	1
	.word	_Label_312
	.word	-56
	.word	4
	.word	_Label_313
	.word	-60
	.word	4
	.word	_Label_314
	.word	-64
	.word	4
	.word	_Label_315
	.word	-68
	.word	4
	.word	_Label_316
	.word	-72
	.word	4
	.word	_Label_317
	.word	-76
	.word	4
	.word	_Label_318
	.word	-80
	.word	4
	.word	0
_Label_299:
	.ascii	"Run\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_311:
	.byte	'C'
	.ascii	"_temp_286\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	144,r13		! source line 144
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_319 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0SE",r10
!   _temp_320 = _function_187_ThreadPrintShort
	set	_function_187_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_321 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_320  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_322
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_323
	.word	-12
	.word	4
	.word	_Label_324
	.word	-16
	.word	4
	.word	_Label_325
	.word	-20
	.word	4
	.word	_Label_326
	.word	-24
	.word	4
	.word	0
_Label_322:
	.ascii	"PrintReadyList\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_326:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_327  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_329 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_328 = *_temp_329  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	173,r13		! source line 173
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_330 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	175,r13		! source line 175
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_332
	.word	-12
	.word	4
	.word	_Label_333
	.word	-16
	.word	4
	.word	_Label_334
	.word	-20
	.word	4
	.word	_Label_335
	.word	-24
	.word	4
	.word	_Label_336
	.word	-28
	.word	4
	.word	_Label_337
	.word	-32
	.word	4
	.word	0
_Label_331:
	.ascii	"ThreadStartMain\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_337:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	191,r13		! source line 191
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0SE",r10
!   _temp_338 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_339 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	198,r13		! source line 198
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_340
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_341
	.word	-12
	.word	4
	.word	_Label_342
	.word	-16
	.word	4
	.word	_Label_343
	.word	-20
	.word	4
	.word	0
_Label_340:
	.ascii	"ThreadFinish\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_343:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3809:
	push	r0
	sub	r1,1,r1
	bne	_Label_3809
	mov	203,r13		! source line 203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_344 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_346		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_346
!	jmp	_Label_345
_Label_345:
! THEN...
	mov	214,r13		! source line 214
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_347 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_346:
! CALL STATEMENT...
!   _temp_350 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	_Label_361
	.word	-36
	.word	4
	.word	_Label_362
	.word	-40
	.word	4
	.word	0
_Label_353:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_362:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	226,r13		! source line 226
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_364		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_364
!	jmp	_Label_363
_Label_363:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_365
_Label_364:
! ELSE...
	mov	245,r13		! source line 245
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_365:
! RETURN STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_366
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-12
	.word	4
	.word	0
_Label_366:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_367:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_368:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_187_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	687,r13		! source line 687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_372		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_372
!   _temp_371 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_373
_Label_372:
!   _temp_371 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_373:
!   if _temp_371 then goto _Label_370 else goto _Label_369
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_369
	jmp	_Label_370
_Label_369:
! THEN...
	mov	696,r13		! source line 696
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_374 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_370:
! CALL STATEMENT...
!   _temp_375 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_377 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_376 = *_temp_377  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_378 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	702,r13		! source line 702
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_387 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_386 = *_temp_387  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_381
	cmp	r1,2
	be	_Label_382
	cmp	r1,3
	be	_Label_383
	cmp	r1,4
	be	_Label_384
	cmp	r1,5
	be	_Label_385
	jmp	_Label_379
! CASE 1...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 2...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 3...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 4...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 5...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_380
! DEFAULT CASE...
_Label_379:
! CALL STATEMENT...
!   _temp_393 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	719,r13		! source line 719
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_380:
! CALL STATEMENT...
!   _temp_394 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_395 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_396 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_397
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_398
	.word	8
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-24
	.word	4
	.word	_Label_402
	.word	-28
	.word	4
	.word	_Label_403
	.word	-32
	.word	4
	.word	_Label_404
	.word	-36
	.word	4
	.word	_Label_405
	.word	-40
	.word	4
	.word	_Label_406
	.word	-44
	.word	4
	.word	_Label_407
	.word	-48
	.word	4
	.word	_Label_408
	.word	-52
	.word	4
	.word	_Label_409
	.word	-56
	.word	4
	.word	_Label_410
	.word	-60
	.word	4
	.word	_Label_411
	.word	-64
	.word	4
	.word	_Label_412
	.word	-68
	.word	4
	.word	_Label_413
	.word	-72
	.word	4
	.word	_Label_414
	.word	-76
	.word	4
	.word	_Label_415
	.word	-9
	.word	1
	.word	_Label_416
	.word	-80
	.word	4
	.word	0
_Label_397:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_398:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_415:
	.byte	'C'
	.ascii	"_temp_371\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_186_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	1072,r13		! source line 1072
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_417 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-12
	.word	4
	.word	0
_Label_418:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	29,r1
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	1082,r13		! source line 1082
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_421 = *_temp_422  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _temp_421 + 28
	load	[r14+-104],r1
	add	r1,28,r1
	store	r1,[r14+-96]
!   Data Move: *_temp_423 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1095,r13		! source line 1095
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: oldProcess = *_temp_424  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_425 = *_temp_426  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_425) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _temp_425 + 24
	load	[r14+-88],r1
	add	r1,24,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_427 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-80],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_428 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_429 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1100,r13		! source line 1100
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   if intIsZero (oldProcess) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = oldProcess + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_430 = _temp_431		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-68]
!   _temp_432 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_430  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_433 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=oldProcess  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_438 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_439 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_438  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-116]
_Label_434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_439 then goto _Label_437		
	load	[r14+-116],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_437
_Label_435:
	mov	1103,r13		! source line 1103
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0IF",r10
!   if intIsZero (oldProcess) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = oldProcess + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_443 [i ] into _temp_444
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_442 = *_temp_444  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_442) then goto _Label_441
	load	[r14+-44],r1
	cmp	r1,r0
	be	_Label_441
!	jmp	_Label_440
_Label_440:
! THEN...
	mov	1105,r13		! source line 1105
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0SE",r10
!   if intIsZero (oldProcess) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_446 = oldProcess + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_446 [i ] into _temp_447
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_445 = *_temp_447  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_448 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_445  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   if intIsZero (oldProcess) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = oldProcess + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_449 [i ] into _temp_450
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_450 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_441:
!   Increment the FOR-LOOP index variable and jump back
_Label_436:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_434
! END FOR
_Label_437:
! CALL STATEMENT...
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_451
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_452
	.word	8
	.word	4
	.word	_Label_453
	.word	-12
	.word	4
	.word	_Label_454
	.word	-16
	.word	4
	.word	_Label_455
	.word	-20
	.word	4
	.word	_Label_456
	.word	-24
	.word	4
	.word	_Label_457
	.word	-28
	.word	4
	.word	_Label_458
	.word	-32
	.word	4
	.word	_Label_459
	.word	-36
	.word	4
	.word	_Label_460
	.word	-40
	.word	4
	.word	_Label_461
	.word	-44
	.word	4
	.word	_Label_462
	.word	-48
	.word	4
	.word	_Label_463
	.word	-52
	.word	4
	.word	_Label_464
	.word	-56
	.word	4
	.word	_Label_465
	.word	-60
	.word	4
	.word	_Label_466
	.word	-64
	.word	4
	.word	_Label_467
	.word	-68
	.word	4
	.word	_Label_468
	.word	-72
	.word	4
	.word	_Label_469
	.word	-76
	.word	4
	.word	_Label_470
	.word	-80
	.word	4
	.word	_Label_471
	.word	-84
	.word	4
	.word	_Label_472
	.word	-88
	.word	4
	.word	_Label_473
	.word	-92
	.word	4
	.word	_Label_474
	.word	-96
	.word	4
	.word	_Label_475
	.word	-100
	.word	4
	.word	_Label_476
	.word	-104
	.word	4
	.word	_Label_477
	.word	-108
	.word	4
	.word	_Label_478
	.word	-112
	.word	4
	.word	_Label_479
	.word	-116
	.word	4
	.word	0
_Label_451:
	.ascii	"ProcessFinish\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_478:
	.byte	'P'
	.ascii	"oldProcess\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	1598,r13		! source line 1598
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_480
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_480:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	1616,r13		! source line 1616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0IF",r10
!   _temp_484 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_485 = _temp_484 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_483 = *_temp_485  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_483 == 0 then goto _Label_482		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_482
!	jmp	_Label_481
_Label_481:
! THEN...
	mov	1628,r13		! source line 1628
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0SE",r10
!   _temp_487 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_488 = _temp_487 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_486 = *_temp_488  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_486) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_482:
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_489
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_490
	.word	-12
	.word	4
	.word	_Label_491
	.word	-16
	.word	4
	.word	_Label_492
	.word	-20
	.word	4
	.word	_Label_493
	.word	-24
	.word	4
	.word	_Label_494
	.word	-28
	.word	4
	.word	_Label_495
	.word	-32
	.word	4
	.word	0
_Label_489:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_496
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_496:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3816:
	push	r0
	sub	r1,1,r1
	bne	_Label_3816
	mov	1648,r13		! source line 1648
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1655,r13		! source line 1655
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3817:
	push	r0
	sub	r1,1,r1
	bne	_Label_3817
	mov	1660,r13		! source line 1660
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_500 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	1672,r13		! source line 1672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	1684,r13		! source line 1684
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1691,r13		! source line 1691
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	1696,r13		! source line 1696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	1708,r13		! source line 1708
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_512 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_515 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_185_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3823:
	push	r0
	sub	r1,1,r1
	bne	_Label_3823
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_518 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_519 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_523 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_522 = *_temp_523  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_522 == 0 then goto _Label_521		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_521
!	jmp	_Label_520
_Label_520:
! THEN...
	mov	1743,r13		! source line 1743
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_525 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_524 = *_temp_525  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_524) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_526
_Label_521:
! ELSE...
	mov	1745,r13		! source line 1745
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_527 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_526:
! SEND STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_529
	.word	8
	.word	4
	.word	_Label_530
	.word	-12
	.word	4
	.word	_Label_531
	.word	-16
	.word	4
	.word	_Label_532
	.word	-20
	.word	4
	.word	_Label_533
	.word	-24
	.word	4
	.word	_Label_534
	.word	-28
	.word	4
	.word	_Label_535
	.word	-32
	.word	4
	.word	_Label_536
	.word	-36
	.word	4
	.word	0
_Label_528:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1779,r13		! source line 1779
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3825
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_537
_Label_3825:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_537
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_537
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_551,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_551:
	jmp	_Label_543	! 1:	
	jmp	_Label_550	! 2:	
	jmp	_Label_540	! 3:	
	jmp	_Label_539	! 4:	
	jmp	_Label_542	! 5:	
	jmp	_Label_541	! 6:	
	jmp	_Label_544	! 7:	
	jmp	_Label_545	! 8:	
	jmp	_Label_546	! 9:	
	jmp	_Label_547	! 10:	
	jmp	_Label_548	! 11:	
	jmp	_Label_549	! 12:	
! CASE 4...
_Label_539:
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   Call the function
	mov	1781,r13		! source line 1781
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_540:
! CALL STATEMENT...
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_541:
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_542:
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_543:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_544:
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_545:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_546:
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_557  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_547:
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_548:
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_549:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_550:
! CALL STATEMENT...
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_537:
! CALL STATEMENT...
!   _temp_560 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_561 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1812,r13		! source line 1812
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_538:
! RETURN STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_562
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_563
	.word	8
	.word	4
	.word	_Label_564
	.word	12
	.word	4
	.word	_Label_565
	.word	16
	.word	4
	.word	_Label_566
	.word	20
	.word	4
	.word	_Label_567
	.word	24
	.word	4
	.word	_Label_568
	.word	-12
	.word	4
	.word	_Label_569
	.word	-16
	.word	4
	.word	_Label_570
	.word	-20
	.word	4
	.word	_Label_571
	.word	-24
	.word	4
	.word	_Label_572
	.word	-28
	.word	4
	.word	_Label_573
	.word	-32
	.word	4
	.word	_Label_574
	.word	-36
	.word	4
	.word	_Label_575
	.word	-40
	.word	4
	.word	_Label_576
	.word	-44
	.word	4
	.word	_Label_577
	.word	-48
	.word	4
	.word	0
_Label_562:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_567:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	1827,r13		! source line 1827
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_578
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_579
	.word	8
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	1833,r13		! source line 1833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1835,r13		! source line 1835
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_581
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_582
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_583
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_583:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	74,r1
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
	mov	1846,r13		! source line 1846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0AS",r10
	mov	1855,r13		! source line 1855
	mov	"\0\0SE",r10
!   _temp_584 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-264]
!   Send message GetANewProcess
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   _temp_585 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-260]
!   Send message GetANewThread
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   if intIsZero (newPcb) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = newPcb + 24
	load	[r14+-268],r1
	add	r1,24,r1
	store	r1,[r14+-256]
!   Data Move: *_temp_586 = newThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-256],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
!   if intIsZero (newPcb) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = newPcb + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-252]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_589 = *_temp_590  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_589) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _temp_589 + 12
	load	[r14+-244],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_588 = *_temp_591  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   Data Move: *_temp_587 = _temp_588  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r14+-252],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = newThread + 76
	load	[r14+-272],r1
	add	r1,76,r1
	store	r1,[r14+-232]
!   Data Move: *_temp_592 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-232],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: *_temp_593 = newPcb  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-228],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = newThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-220]
!   Move address of _temp_595 [0 ] into _temp_596
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_594 = _temp_596		(4 bytes)
	load	[r14+-216],r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! FOR STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_601 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-212]
!   Calculate and save the FOR-LOOP ending value
!   _temp_602 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-208]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_601  (sizeInBytes=4)
	load	[r14+-212],r1
	store	r1,[r14+-280]
_Label_597:
!   Perform the FOR-LOOP termination test
!   if i > _temp_602 then goto _Label_600		
	load	[r14+-280],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_600
_Label_598:
	mov	1867,r13		! source line 1867
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_606 = *_temp_607  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_606) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _temp_606 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_608 [i ] into _temp_609
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   Data Move: _temp_605 = *_temp_609  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_605) then goto _Label_604
	load	[r14+-204],r1
	cmp	r1,r0
	be	_Label_604
!	jmp	_Label_603
_Label_603:
! THEN...
	mov	1869,r13		! source line 1869
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
!   if intIsZero (newPcb) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = newPcb + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-184]
!   Move address of _temp_610 [i ] into _temp_611
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 124
	load	[r14+-172],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_615 [i ] into _temp_616
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-160]
!   Data Move: _temp_612 = *_temp_616  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   Data Move: *_temp_611 = _temp_612  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r14+-180],r2
	store	r1,[r2]
! END IF...
_Label_604:
!   Increment the FOR-LOOP index variable and jump back
_Label_599:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_597
! END FOR
_Label_600:
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-156]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = newThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-148]
!   Move address of _temp_619 [999 ] into _temp_620
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   _temp_618 = _temp_620		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_617 = _temp_618  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0SE",r10
!   if intIsZero (newPcb) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = newPcb + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_621 = _temp_622		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-140]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_624 = *_temp_625  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = _temp_624 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   _temp_627 = _temp_626 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Data Move: _temp_623 = *_temp_627  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   _temp_628 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=12  value=_temp_621  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_623  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_633 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_639 = _temp_638 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Data Move: _temp_635 = *_temp_639  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   _temp_634 = _temp_635 - 1		(int)
	load	[r14+-100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_633  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-280]
_Label_629:
!   Perform the FOR-LOOP termination test
!   if i > _temp_634 then goto _Label_632		
	load	[r14+-280],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_632
_Label_630:
	mov	1876,r13		! source line 1876
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_640 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=currentFrameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_643 = *_temp_644  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_643) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _temp_643 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newFrameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newFrameAddr  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=currentFrameAddr  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0IF",r10
	mov	1881,r13		! source line 1881
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _temp_648 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_646 else goto _Label_647
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_647
	jmp	_Label_646
_Label_646:
! THEN...
	mov	1882,r13		! source line 1882
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_651 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_654
_Label_647:
! ELSE...
	mov	1884,r13		! source line 1884
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0SE",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_655 = *_temp_656  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_655) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = _temp_655 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_654:
!   Increment the FOR-LOOP index variable and jump back
_Label_631:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_629
! END FOR
_Label_632:
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-292]
! SEND STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_658 = _P_Kernel_Resume_Child_After_Fork
	set	_P_Kernel_Resume_Child_After_Fork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_658  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   if intIsZero (newPcb) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = newPcb + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_659 = *_temp_660  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_659  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_661
	.word	0		! total size of parameters
	.word	296		! frame size = 296
	.word	_Label_662
	.word	-12
	.word	4
	.word	_Label_663
	.word	-16
	.word	4
	.word	_Label_664
	.word	-20
	.word	4
	.word	_Label_665
	.word	-24
	.word	4
	.word	_Label_666
	.word	-28
	.word	4
	.word	_Label_667
	.word	-32
	.word	4
	.word	_Label_668
	.word	-36
	.word	4
	.word	_Label_669
	.word	-40
	.word	4
	.word	_Label_670
	.word	-44
	.word	4
	.word	_Label_671
	.word	-48
	.word	4
	.word	_Label_672
	.word	-52
	.word	4
	.word	_Label_673
	.word	-56
	.word	4
	.word	_Label_674
	.word	-60
	.word	4
	.word	_Label_675
	.word	-64
	.word	4
	.word	_Label_676
	.word	-68
	.word	4
	.word	_Label_677
	.word	-72
	.word	4
	.word	_Label_678
	.word	-76
	.word	4
	.word	_Label_679
	.word	-80
	.word	4
	.word	_Label_680
	.word	-84
	.word	4
	.word	_Label_681
	.word	-88
	.word	4
	.word	_Label_682
	.word	-92
	.word	4
	.word	_Label_683
	.word	-96
	.word	4
	.word	_Label_684
	.word	-100
	.word	4
	.word	_Label_685
	.word	-104
	.word	4
	.word	_Label_686
	.word	-108
	.word	4
	.word	_Label_687
	.word	-112
	.word	4
	.word	_Label_688
	.word	-116
	.word	4
	.word	_Label_689
	.word	-120
	.word	4
	.word	_Label_690
	.word	-124
	.word	4
	.word	_Label_691
	.word	-128
	.word	4
	.word	_Label_692
	.word	-132
	.word	4
	.word	_Label_693
	.word	-136
	.word	4
	.word	_Label_694
	.word	-140
	.word	4
	.word	_Label_695
	.word	-144
	.word	4
	.word	_Label_696
	.word	-148
	.word	4
	.word	_Label_697
	.word	-152
	.word	4
	.word	_Label_698
	.word	-156
	.word	4
	.word	_Label_699
	.word	-160
	.word	4
	.word	_Label_700
	.word	-164
	.word	4
	.word	_Label_701
	.word	-168
	.word	4
	.word	_Label_702
	.word	-172
	.word	4
	.word	_Label_703
	.word	-176
	.word	4
	.word	_Label_704
	.word	-180
	.word	4
	.word	_Label_705
	.word	-184
	.word	4
	.word	_Label_706
	.word	-188
	.word	4
	.word	_Label_707
	.word	-192
	.word	4
	.word	_Label_708
	.word	-196
	.word	4
	.word	_Label_709
	.word	-200
	.word	4
	.word	_Label_710
	.word	-204
	.word	4
	.word	_Label_711
	.word	-208
	.word	4
	.word	_Label_712
	.word	-212
	.word	4
	.word	_Label_713
	.word	-216
	.word	4
	.word	_Label_714
	.word	-220
	.word	4
	.word	_Label_715
	.word	-224
	.word	4
	.word	_Label_716
	.word	-228
	.word	4
	.word	_Label_717
	.word	-232
	.word	4
	.word	_Label_718
	.word	-236
	.word	4
	.word	_Label_719
	.word	-240
	.word	4
	.word	_Label_720
	.word	-244
	.word	4
	.word	_Label_721
	.word	-248
	.word	4
	.word	_Label_722
	.word	-252
	.word	4
	.word	_Label_723
	.word	-256
	.word	4
	.word	_Label_724
	.word	-260
	.word	4
	.word	_Label_725
	.word	-264
	.word	4
	.word	_Label_726
	.word	-268
	.word	4
	.word	_Label_727
	.word	-272
	.word	4
	.word	_Label_728
	.word	-276
	.word	4
	.word	_Label_729
	.word	-280
	.word	4
	.word	_Label_730
	.word	-284
	.word	4
	.word	_Label_731
	.word	-288
	.word	4
	.word	_Label_732
	.word	-292
	.word	4
	.word	0
_Label_661:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_726:
	.byte	'P'
	.ascii	"newPcb\0"
	.align
_Label_727:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"currentFrameAddr\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"newFrameAddr\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
! 
! ===============  FUNCTION Resume_Child_After_Fork  ===============
! 
_P_Kernel_Resume_Child_After_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Resume_Child_After_Fork,r1
	push	r1
	mov	17,r1
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_737 [0 ] into _temp_738
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_736 = _temp_738		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_739 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_740 [14 ] into _temp_741
!     make sure index expr is >= 0
	mov	14,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: initUserStackTop = *_temp_741  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_742 [999 ] into _temp_743
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   initSystemStackTop = _temp_743		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=init_user_pc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Resume_Child_After_Fork:
	.word	_sourceFileName
	.word	_Label_744
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_745
	.word	8
	.word	4
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-24
	.word	4
	.word	_Label_750
	.word	-28
	.word	4
	.word	_Label_751
	.word	-32
	.word	4
	.word	_Label_752
	.word	-36
	.word	4
	.word	_Label_753
	.word	-40
	.word	4
	.word	_Label_754
	.word	-44
	.word	4
	.word	_Label_755
	.word	-48
	.word	4
	.word	_Label_756
	.word	-52
	.word	4
	.word	_Label_757
	.word	-56
	.word	4
	.word	_Label_758
	.word	-60
	.word	4
	.word	_Label_759
	.word	-64
	.word	4
	.word	0
_Label_744:
	.ascii	"Resume_Child_After_Fork\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"init_user_pc\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_3831:
	push	r0
	sub	r1,1,r1
	bne	_Label_3831
	mov	1913,r13		! source line 1913
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_764 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_765 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_764  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_760:
!   Perform the FOR-LOOP termination test
!   if i > _temp_765 then goto _Label_763		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_763
_Label_761:
	mov	1918,r13		! source line 1918
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   _temp_771 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_772 = _temp_771 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_772 [i ] into _temp_773
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_774 = _temp_773 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_770 = *_temp_774  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_770 != processID then goto _Label_767		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_769
_Label_769:
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_777 = _temp_776 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_777 [i ] into _temp_778
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_779 = _temp_778 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_775 = *_temp_779  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _temp_781 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_780 = *_temp_783  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_775 != _temp_780 then goto _Label_767		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_768
_Label_768:
!   _temp_785 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_786 = _temp_785 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_786 [i ] into _temp_787
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_788 = _temp_787 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_784 = *_temp_788  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_784 == 3 then goto _Label_767		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
	mov	1920,r13		! source line 1920
	mov	"\0\0SE",r10
!   _temp_790 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_791 = _temp_790 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_791 [i ] into _temp_792
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_789 = _temp_792		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_793 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=exitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_767:
!   Increment the FOR-LOOP index variable and jump back
_Label_762:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_760
! END FOR
_Label_763:
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_794
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	_Label_799
	.word	-24
	.word	4
	.word	_Label_800
	.word	-28
	.word	4
	.word	_Label_801
	.word	-32
	.word	4
	.word	_Label_802
	.word	-36
	.word	4
	.word	_Label_803
	.word	-40
	.word	4
	.word	_Label_804
	.word	-44
	.word	4
	.word	_Label_805
	.word	-48
	.word	4
	.word	_Label_806
	.word	-52
	.word	4
	.word	_Label_807
	.word	-56
	.word	4
	.word	_Label_808
	.word	-60
	.word	4
	.word	_Label_809
	.word	-64
	.word	4
	.word	_Label_810
	.word	-68
	.word	4
	.word	_Label_811
	.word	-72
	.word	4
	.word	_Label_812
	.word	-76
	.word	4
	.word	_Label_813
	.word	-80
	.word	4
	.word	_Label_814
	.word	-84
	.word	4
	.word	_Label_815
	.word	-88
	.word	4
	.word	_Label_816
	.word	-92
	.word	4
	.word	_Label_817
	.word	-96
	.word	4
	.word	_Label_818
	.word	-100
	.word	4
	.word	_Label_819
	.word	-104
	.word	4
	.word	_Label_820
	.word	-108
	.word	4
	.word	_Label_821
	.word	-112
	.word	4
	.word	_Label_822
	.word	-116
	.word	4
	.word	_Label_823
	.word	-120
	.word	4
	.word	0
_Label_794:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	67,r1
_Label_3832:
	push	r0
	sub	r1,1,r1
	bne	_Label_3832
	mov	1929,r13		! source line 1929
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-212,r4
	mov	23,r3
_Label_3833:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3833
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-212]
! SEND STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0SE",r10
!   _temp_825 = &newAddrSpace
	add	r14,-212,r1
	store	r1,[r14+-116]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0AS",r10
	mov	1946,r13		! source line 1946
	mov	"\0\0SE",r10
!   _temp_826 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-112]
!   _temp_827 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_828 = *_temp_829  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_828) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = _temp_828 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_826  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_827  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=fileToStr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! IF STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0IF",r10
!   if fileToStr != -1 then goto _Label_832		(int)
	load	[r14+-224],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	1948,r13		! source line 1948
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_833 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-92]
!   _temp_834 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open_file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0IF",r10
!   if intIsZero (open_file) then goto _Label_835
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_835
	jmp	_Label_836
_Label_835:
! THEN...
	mov	1953,r13		! source line 1953
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_836:
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
	mov	1955,r13		! source line 1955
	mov	"\0\0SE",r10
!   _temp_837 = &newAddrSpace
	add	r14,-212,r1
	store	r1,[r14+-84]
!   if intIsZero (open_file) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! SEND STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_838 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=open_file  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0IF",r10
!   if initUserPC != -1 then goto _Label_840		(int)
	load	[r14+-216],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_840
!	jmp	_Label_839
_Label_839:
! THEN...
	mov	1959,r13		! source line 1959
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_841
_Label_840:
! ELSE...
	mov	1961,r13		! source line 1961
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_843 = *_temp_844  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_843) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _temp_843 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   _temp_842 = _temp_845		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-76]
!   _temp_846 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_842  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_848 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_847 = *_temp_848  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_847) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_849 = _temp_847 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_849 = newAddrSpace  (sizeInBytes=92)
	add	r14,-212,r5
	load	[r14+-48],r4
	mov	23,r3
_Label_3834:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3834
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_852 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_851 = *_temp_852  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_851) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_853 = _temp_851 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_854 = _temp_853 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_850 = *_temp_854  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_850 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_855 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_855 [999 ] into _temp_856
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_856		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! SEND STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   _temp_857 = &newAddrSpace
	add	r14,-212,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_858 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_858 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CE",r10
	call	BecomeUserThread
! END IF...
_Label_841:
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_859
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_860
	.word	8
	.word	4
	.word	_Label_861
	.word	-12
	.word	4
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-20
	.word	4
	.word	_Label_864
	.word	-24
	.word	4
	.word	_Label_865
	.word	-28
	.word	4
	.word	_Label_866
	.word	-32
	.word	4
	.word	_Label_867
	.word	-36
	.word	4
	.word	_Label_868
	.word	-40
	.word	4
	.word	_Label_869
	.word	-44
	.word	4
	.word	_Label_870
	.word	-48
	.word	4
	.word	_Label_871
	.word	-52
	.word	4
	.word	_Label_872
	.word	-56
	.word	4
	.word	_Label_873
	.word	-60
	.word	4
	.word	_Label_874
	.word	-64
	.word	4
	.word	_Label_875
	.word	-68
	.word	4
	.word	_Label_876
	.word	-72
	.word	4
	.word	_Label_877
	.word	-76
	.word	4
	.word	_Label_878
	.word	-80
	.word	4
	.word	_Label_879
	.word	-84
	.word	4
	.word	_Label_880
	.word	-88
	.word	4
	.word	_Label_881
	.word	-92
	.word	4
	.word	_Label_882
	.word	-96
	.word	4
	.word	_Label_883
	.word	-100
	.word	4
	.word	_Label_884
	.word	-104
	.word	4
	.word	_Label_885
	.word	-108
	.word	4
	.word	_Label_886
	.word	-112
	.word	4
	.word	_Label_887
	.word	-116
	.word	4
	.word	_Label_888
	.word	-120
	.word	4
	.word	_Label_889
	.word	-212
	.word	92
	.word	_Label_890
	.word	-216
	.word	4
	.word	_Label_891
	.word	-220
	.word	4
	.word	_Label_892
	.word	-224
	.word	4
	.word	_Label_893
	.word	-248
	.word	24
	.word	_Label_894
	.word	-252
	.word	4
	.word	_Label_895
	.word	-256
	.word	4
	.word	_Label_896
	.word	-260
	.word	4
	.word	0
_Label_859:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_860:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_889:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_890:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_891:
	.byte	'P'
	.ascii	"open_file\0"
	.align
_Label_892:
	.byte	'I'
	.ascii	"fileToStr\0"
	.align
_Label_893:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_894:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_895:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_896:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_3835:
	push	r0
	sub	r1,1,r1
	bne	_Label_3835
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_897 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0AS",r10
	mov	1985,r13		! source line 1985
	mov	"\0\0SE",r10
!   _temp_898 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-44]
!   _temp_899 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_900 = *_temp_901  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_900) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _temp_900 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_898  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_899  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=fileToStr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0IF",r10
!   if fileToStr != -1 then goto _Label_904		(int)
	load	[r14+-52],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_904
!	jmp	_Label_903
_Label_903:
! THEN...
	mov	1987,r13		! source line 1987
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_904:
! CALL STATEMENT...
!   _temp_905 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_906 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_907 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_908 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_909
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_910
	.word	8
	.word	4
	.word	_Label_911
	.word	-12
	.word	4
	.word	_Label_912
	.word	-16
	.word	4
	.word	_Label_913
	.word	-20
	.word	4
	.word	_Label_914
	.word	-24
	.word	4
	.word	_Label_915
	.word	-28
	.word	4
	.word	_Label_916
	.word	-32
	.word	4
	.word	_Label_917
	.word	-36
	.word	4
	.word	_Label_918
	.word	-40
	.word	4
	.word	_Label_919
	.word	-44
	.word	4
	.word	_Label_920
	.word	-48
	.word	4
	.word	_Label_921
	.word	-52
	.word	4
	.word	_Label_922
	.word	-76
	.word	24
	.word	0
_Label_909:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_921:
	.byte	'I'
	.ascii	"fileToStr\0"
	.align
_Label_922:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	31,r1
_Label_3836:
	push	r0
	sub	r1,1,r1
	bne	_Label_3836
	mov	2001,r13		! source line 2001
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
	mov	2009,r13		! source line 2009
	mov	"\0\0SE",r10
!   _temp_923 = &strBuffer
	add	r14,-104,r1
	store	r1,[r14+-76]
!   _temp_924 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_926 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_925 = *_temp_926  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_925) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_927 = _temp_925 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_923  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_924  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=ret  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0IF",r10
!   if ret >= 0 then goto _Label_929		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_929
!	jmp	_Label_928
_Label_928:
! THEN...
	mov	2016,r13		! source line 2016
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_929:
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   fileDescriptorIdx = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-112]
! FOR STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_934 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_935 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_934  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-108]
_Label_930:
!   Perform the FOR-LOOP termination test
!   if i > _temp_935 then goto _Label_933		
	load	[r14+-108],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_933
_Label_931:
	mov	2020,r13		! source line 2020
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_936 = *_temp_937  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _temp_936 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_938 [i ] into _temp_939
!     make sure index expr is >= 0
	load	[r14+-108],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: openFile = *_temp_939  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_940
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_940
	jmp	_Label_941
_Label_940:
! THEN...
	mov	2023,r13		! source line 2023
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   fileDescriptorIdx = i		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
! BREAK STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0BR",r10
	jmp	_Label_933
! END IF...
_Label_941:
!   Increment the FOR-LOOP index variable and jump back
_Label_932:
!   i = i + 1
	load	[r14+-108],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
	jmp	_Label_930
! END FOR
_Label_933:
! IF STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_944
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_944
	jmp	_Label_942
_Label_944:
!   if fileDescriptorIdx != -1 then goto _Label_943		(int)
	load	[r14+-112],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_943
!	jmp	_Label_942
_Label_942:
! THEN...
	mov	2029,r13		! source line 2029
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_943:
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_945 = &strBuffer
	add	r14,-104,r1
	store	r1,[r14+-32]
!   _temp_946 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_945  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_947
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_947
	jmp	_Label_948
_Label_947:
! THEN...
	mov	2034,r13		! source line 2034
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_948:
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_949 = *_temp_950  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_949) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = _temp_949 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_951 [fileDescriptorIdx ] into _temp_952
!     make sure index expr is >= 0
	load	[r14+-112],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_952 = openFile  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIdx  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_953
	.word	4		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_954
	.word	8
	.word	4
	.word	_Label_955
	.word	-12
	.word	4
	.word	_Label_956
	.word	-16
	.word	4
	.word	_Label_957
	.word	-20
	.word	4
	.word	_Label_958
	.word	-24
	.word	4
	.word	_Label_959
	.word	-28
	.word	4
	.word	_Label_960
	.word	-32
	.word	4
	.word	_Label_961
	.word	-36
	.word	4
	.word	_Label_962
	.word	-40
	.word	4
	.word	_Label_963
	.word	-44
	.word	4
	.word	_Label_964
	.word	-48
	.word	4
	.word	_Label_965
	.word	-52
	.word	4
	.word	_Label_966
	.word	-56
	.word	4
	.word	_Label_967
	.word	-60
	.word	4
	.word	_Label_968
	.word	-64
	.word	4
	.word	_Label_969
	.word	-68
	.word	4
	.word	_Label_970
	.word	-72
	.word	4
	.word	_Label_971
	.word	-76
	.word	4
	.word	_Label_972
	.word	-80
	.word	4
	.word	_Label_973
	.word	-104
	.word	24
	.word	_Label_974
	.word	-108
	.word	4
	.word	_Label_975
	.word	-112
	.word	4
	.word	_Label_976
	.word	-116
	.word	4
	.word	0
_Label_953:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_954:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"ret\0"
	.align
_Label_973:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_974:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_975:
	.byte	'I'
	.ascii	"fileDescriptorIdx\0"
	.align
_Label_976:
	.byte	'P'
	.ascii	"openFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	73,r1
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
	mov	2043,r13		! source line 2043
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_979		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_979
	jmp	_Label_977
_Label_979:
!   if fileDesc <= 9 then goto _Label_978		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_978
!	jmp	_Label_977
_Label_977:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_980
_Label_978:
! ELSE...
	mov	2058,r13		! source line 2058
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_986 [fileDesc ] into _temp_987
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Data Move: _temp_983 = *_temp_987  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_983) then goto _Label_981
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	2059,r13		! source line 2059
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_988
_Label_982:
! ELSE...
	mov	2060,r13		! source line 2060
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_990		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	2061,r13		! source line 2061
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_990:
! END IF...
_Label_988:
! END IF...
_Label_980:
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_992 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_991 = *_temp_992  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_991) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _temp_991 + 124
	load	[r14+-224],r1
	add	r1,124,r1
	store	r1,[r14+-216]
!   Move address of _temp_993 [fileDesc ] into _temp_994
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-216],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-212]
!   Data Move: openFile = *_temp_994  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = openFile + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-208]
!   Data Move: nextPosInFile = *_temp_995  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_997 = openFile + 20
	load	[r14+-268],r1
	add	r1,20,r1
	store	r1,[r14+-200]
!   Data Move: _temp_996 = *_temp_997  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_996) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_998 = _temp_996 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-196]
!   Data Move: sizeOfFile = *_temp_998  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0WH",r10
_Label_999:
!	jmp	_Label_1000
_Label_1000:
	mov	2074,r13		! source line 2074
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0IF",r10
!   _temp_1004 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if _temp_1004 <= sizeOfFile then goto _Label_1003		(int)
	load	[r14+-192],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2077,r13		! source line 2077
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1003:
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   _temp_1007 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-260],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
!   if _temp_1007 <= sizeInBytes then goto _Label_1006		(int)
	load	[r14+-188],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-260],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1006:
! IF STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1009		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	2084,r13		! source line 2084
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0BR",r10
	jmp	_Label_1001
! END IF...
_Label_1009:
! IF STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1014		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1014
	jmp	_Label_1010
_Label_1014:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1017 = *_temp_1018  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _temp_1017 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   _temp_1020 = _temp_1019 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1016 = *_temp_1020  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   _temp_1015 = _temp_1016 - 1		(int)
	load	[r14+-180],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   if virtPage <= _temp_1015 then goto _Label_1013		(int)
	load	[r14+-252],r1
	load	[r14+-184],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1013
	jmp	_Label_1010
_Label_1013:
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1022 = *_temp_1023  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1022) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = _temp_1022 + 32
	load	[r14+-160],r1
	add	r1,32,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1021  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1021 then goto _Label_1012 else goto _Label_1010
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1010
	jmp	_Label_1012
_Label_1012:
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1026 = *_temp_1027  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = _temp_1026 + 32
	load	[r14+-148],r1
	add	r1,32,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1025  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1025 then goto _Label_1011 else goto _Label_1010
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1010
	jmp	_Label_1011
_Label_1010:
! THEN...
	mov	2091,r13		! source line 2091
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1011:
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-260],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-252],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1030		(int)
	load	[r14+-260],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	2100,r13		! source line 2100
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0BR",r10
	jmp	_Label_1001
! END IF...
_Label_1030:
! END WHILE...
	jmp	_Label_999
_Label_1001:
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-248],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = openFile + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1031  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = openFile + 20
	load	[r14+-268],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1032 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _temp_1032 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: sizeOfFile = *_temp_1034  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0WH",r10
_Label_1035:
!	jmp	_Label_1036
_Label_1036:
	mov	2112,r13		! source line 2112
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0IF",r10
!   _temp_1040 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1040 <= sizeOfFile then goto _Label_1039		(int)
	load	[r14+-120],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1039
!	jmp	_Label_1038
_Label_1038:
! THEN...
	mov	2115,r13		! source line 2115
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1039:
! IF STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0IF",r10
!   _temp_1043 = copiedSoFar + thisChunkSize		(int)
	load	[r14+-260],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1043 <= sizeInBytes then goto _Label_1042		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1042
!	jmp	_Label_1041
_Label_1041:
! THEN...
	mov	2118,r13		! source line 2118
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-260],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1042:
! IF STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1045		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	2122,r13		! source line 2122
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0BR",r10
	jmp	_Label_1037
! END IF...
_Label_1045:
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1050		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1050
	jmp	_Label_1046
_Label_1050:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1053 = *_temp_1054  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1053) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1055 = _temp_1053 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1056 = _temp_1055 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1052 = *_temp_1056  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1051 = _temp_1052 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1051 then goto _Label_1049		(int)
	load	[r14+-252],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1049
	jmp	_Label_1046
_Label_1049:
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1058 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1058) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _temp_1058 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1057  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1057 then goto _Label_1048 else goto _Label_1046
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1046
	jmp	_Label_1048
_Label_1048:
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1062 = *_temp_1063  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _temp_1062 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1061  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1061 then goto _Label_1047 else goto _Label_1046
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1046
	jmp	_Label_1047
_Label_1046:
! THEN...
	mov	2129,r13		! source line 2129
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1047:
! SEND STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1065 = *_temp_1066  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1065) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = _temp_1065 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
	mov	2135,r13		! source line 2135
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1072 = *_temp_1073  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1072) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _temp_1072 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1071  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1071 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-256],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   _temp_1075 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=synchReadStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunkSize		(int)
	load	[r14+-260],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-252],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1077		(int)
	load	[r14+-260],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1077
!	jmp	_Label_1076
_Label_1076:
! THEN...
	mov	2146,r13		! source line 2146
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0BR",r10
	jmp	_Label_1037
! END IF...
_Label_1077:
! END WHILE...
	jmp	_Label_1035
_Label_1037:
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = openFile + 16
	load	[r14+-268],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1078 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-260],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1079
	.word	12		! total size of parameters
	.word	292		! frame size = 292
	.word	_Label_1080
	.word	8
	.word	4
	.word	_Label_1081
	.word	12
	.word	4
	.word	_Label_1082
	.word	16
	.word	4
	.word	_Label_1083
	.word	-20
	.word	4
	.word	_Label_1084
	.word	-24
	.word	4
	.word	_Label_1085
	.word	-28
	.word	4
	.word	_Label_1086
	.word	-32
	.word	4
	.word	_Label_1087
	.word	-36
	.word	4
	.word	_Label_1088
	.word	-40
	.word	4
	.word	_Label_1089
	.word	-44
	.word	4
	.word	_Label_1090
	.word	-48
	.word	4
	.word	_Label_1091
	.word	-52
	.word	4
	.word	_Label_1092
	.word	-56
	.word	4
	.word	_Label_1093
	.word	-60
	.word	4
	.word	_Label_1094
	.word	-64
	.word	4
	.word	_Label_1095
	.word	-68
	.word	4
	.word	_Label_1096
	.word	-72
	.word	4
	.word	_Label_1097
	.word	-76
	.word	4
	.word	_Label_1098
	.word	-9
	.word	1
	.word	_Label_1099
	.word	-80
	.word	4
	.word	_Label_1100
	.word	-84
	.word	4
	.word	_Label_1101
	.word	-88
	.word	4
	.word	_Label_1102
	.word	-10
	.word	1
	.word	_Label_1103
	.word	-92
	.word	4
	.word	_Label_1104
	.word	-96
	.word	4
	.word	_Label_1105
	.word	-100
	.word	4
	.word	_Label_1106
	.word	-104
	.word	4
	.word	_Label_1107
	.word	-108
	.word	4
	.word	_Label_1108
	.word	-112
	.word	4
	.word	_Label_1109
	.word	-116
	.word	4
	.word	_Label_1110
	.word	-120
	.word	4
	.word	_Label_1111
	.word	-124
	.word	4
	.word	_Label_1112
	.word	-128
	.word	4
	.word	_Label_1113
	.word	-132
	.word	4
	.word	_Label_1114
	.word	-136
	.word	4
	.word	_Label_1115
	.word	-140
	.word	4
	.word	_Label_1116
	.word	-144
	.word	4
	.word	_Label_1117
	.word	-148
	.word	4
	.word	_Label_1118
	.word	-11
	.word	1
	.word	_Label_1119
	.word	-152
	.word	4
	.word	_Label_1120
	.word	-156
	.word	4
	.word	_Label_1121
	.word	-160
	.word	4
	.word	_Label_1122
	.word	-12
	.word	1
	.word	_Label_1123
	.word	-164
	.word	4
	.word	_Label_1124
	.word	-168
	.word	4
	.word	_Label_1125
	.word	-172
	.word	4
	.word	_Label_1126
	.word	-176
	.word	4
	.word	_Label_1127
	.word	-180
	.word	4
	.word	_Label_1128
	.word	-184
	.word	4
	.word	_Label_1129
	.word	-188
	.word	4
	.word	_Label_1130
	.word	-192
	.word	4
	.word	_Label_1131
	.word	-196
	.word	4
	.word	_Label_1132
	.word	-200
	.word	4
	.word	_Label_1133
	.word	-204
	.word	4
	.word	_Label_1134
	.word	-208
	.word	4
	.word	_Label_1135
	.word	-212
	.word	4
	.word	_Label_1136
	.word	-216
	.word	4
	.word	_Label_1137
	.word	-220
	.word	4
	.word	_Label_1138
	.word	-224
	.word	4
	.word	_Label_1139
	.word	-228
	.word	4
	.word	_Label_1140
	.word	-232
	.word	4
	.word	_Label_1141
	.word	-236
	.word	4
	.word	_Label_1142
	.word	-240
	.word	4
	.word	_Label_1143
	.word	-244
	.word	4
	.word	_Label_1144
	.word	-248
	.word	4
	.word	_Label_1145
	.word	-252
	.word	4
	.word	_Label_1146
	.word	-256
	.word	4
	.word	_Label_1147
	.word	-260
	.word	4
	.word	_Label_1148
	.word	-264
	.word	4
	.word	_Label_1149
	.word	-268
	.word	4
	.word	_Label_1150
	.word	-272
	.word	4
	.word	_Label_1151
	.word	-276
	.word	4
	.word	_Label_1152
	.word	-280
	.word	4
	.word	_Label_1153
	.word	-13
	.word	1
	.word	0
_Label_1079:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1080:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1081:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1082:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1098:
	.byte	'C'
	.ascii	"_temp_1061\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1102:
	.byte	'C'
	.ascii	"_temp_1057\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1118:
	.byte	'C'
	.ascii	"_temp_1025\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1122:
	.byte	'C'
	.ascii	"_temp_1021\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1144:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1145:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1146:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1147:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1148:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1149:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1150:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1152:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1153:
	.byte	'B'
	.ascii	"synchReadStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	50,r1
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	2157,r13		! source line 2157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1156		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1156
	jmp	_Label_1154
_Label_1156:
!   if fileDesc <= 9 then goto _Label_1155		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1155
!	jmp	_Label_1154
_Label_1154:
! THEN...
	mov	2172,r13		! source line 2172
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1157
_Label_1155:
! ELSE...
	mov	2173,r13		! source line 2173
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1161 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _temp_1161 + 124
	load	[r14+-144],r1
	add	r1,124,r1
	store	r1,[r14+-136]
!   Move address of _temp_1163 [fileDesc ] into _temp_1164
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Data Move: _temp_1160 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if intIsZero (_temp_1160) then goto _Label_1158
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1158
	jmp	_Label_1159
_Label_1158:
! THEN...
	mov	2174,r13		! source line 2174
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1165
_Label_1159:
! ELSE...
	mov	2175,r13		! source line 2175
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1167		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1167
!	jmp	_Label_1166
_Label_1166:
! THEN...
	mov	2176,r13		! source line 2176
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1167:
! END IF...
_Label_1165:
! END IF...
_Label_1157:
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-120]
!   addrSpace = _temp_1170		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1171 = *_temp_1172  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1171) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _temp_1171 + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-108]
!   Move address of _temp_1173 [fileDesc ] into _temp_1174
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Data Move: openFile = *_temp_1174  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   writtenSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = openFile + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: nextPosInFile = *_temp_1175  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = openFile + 20
	load	[r14+-172],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1176 = *_temp_1177  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1176) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1178 = _temp_1176 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFile = *_temp_1178  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-180]
! WHILE STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0WH",r10
_Label_1179:
!	jmp	_Label_1180
_Label_1180:
	mov	2190,r13		! source line 2190
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-160],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0IF",r10
!   _temp_1184 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-168],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1184 <= sizeOfFile then goto _Label_1183		(int)
	load	[r14+-84],r1
	load	[r14+-180],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1183
!	jmp	_Label_1182
_Label_1182:
! THEN...
	mov	2193,r13		! source line 2193
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-180],r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1183:
! IF STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0IF",r10
!   _temp_1187 = writtenSoFar + thisChunkSize		(int)
	load	[r14+-164],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1187 <= sizeInBytes then goto _Label_1186		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1186
!	jmp	_Label_1185
_Label_1185:
! THEN...
	mov	2196,r13		! source line 2196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - writtenSoFar		(int)
	load	[r14+16],r1
	load	[r14+-164],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1186:
! IF STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1189		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1189
!	jmp	_Label_1188
_Label_1188:
! THEN...
	mov	2199,r13		! source line 2199
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0BR",r10
	jmp	_Label_1181
! END IF...
_Label_1189:
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1194		(int)
	load	[r14+-156],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1194
	jmp	_Label_1190
_Label_1194:
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1197 = addrSpace + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1196 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   _temp_1195 = _temp_1196 - 1		(int)
	load	[r14+-72],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   if virtPage <= _temp_1195 then goto _Label_1193		(int)
	load	[r14+-156],r1
	load	[r14+-76],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1193
	jmp	_Label_1190
_Label_1193:
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1198  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1198 then goto _Label_1192 else goto _Label_1190
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1190
	jmp	_Label_1192
_Label_1192:
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1199  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1199 then goto _Label_1191 else goto _Label_1190
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1190
	jmp	_Label_1191
_Label_1190:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1191:
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-168],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   writtenSoFar = writtenSoFar + thisChunkSize		(int)
	load	[r14+-164],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if writtenSoFar != sizeInBytes then goto _Label_1201		(int)
	load	[r14+-164],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0BR",r10
	jmp	_Label_1181
! END IF...
_Label_1201:
! END WHILE...
	jmp	_Label_1179
_Label_1181:
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-152],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   writtenSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = openFile + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: nextPosInFile = *_temp_1202  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1204 = openFile + 20
	load	[r14+-172],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1203 = *_temp_1204  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1203) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = _temp_1203 + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: sizeOfFile = *_temp_1205  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-180]
! WHILE STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0WH",r10
_Label_1206:
!	jmp	_Label_1207
_Label_1207:
	mov	2222,r13		! source line 2222
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   thisChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-160],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! IF STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0IF",r10
!   _temp_1211 = nextPosInFile + thisChunkSize		(int)
	load	[r14+-168],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if _temp_1211 <= sizeOfFile then goto _Label_1210		(int)
	load	[r14+-48],r1
	load	[r14+-180],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1210
!	jmp	_Label_1209
_Label_1209:
! THEN...
	mov	2225,r13		! source line 2225
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   thisChunkSize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-180],r1
	load	[r14+-168],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1210:
! IF STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0IF",r10
!   _temp_1214 = writtenSoFar + thisChunkSize		(int)
	load	[r14+-164],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   if _temp_1214 <= sizeInBytes then goto _Label_1213		(int)
	load	[r14+-44],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1213
!	jmp	_Label_1212
_Label_1212:
! THEN...
	mov	2228,r13		! source line 2228
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   thisChunkSize = sizeInBytes - writtenSoFar		(int)
	load	[r14+16],r1
	load	[r14+-164],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
! END IF...
_Label_1213:
! IF STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0IF",r10
!   if thisChunkSize > 0 then goto _Label_1216		(int)
	load	[r14+-176],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1216
!	jmp	_Label_1215
_Label_1215:
! THEN...
	mov	2231,r13		! source line 2231
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0BR",r10
	jmp	_Label_1208
! END IF...
_Label_1216:
! IF STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1221		(int)
	load	[r14+-156],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1221
	jmp	_Label_1217
_Label_1221:
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = addrSpace + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1223 = *_temp_1224  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1222 = _temp_1223 - 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   if virtPage <= _temp_1222 then goto _Label_1220		(int)
	load	[r14+-156],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1220
	jmp	_Label_1217
_Label_1220:
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1225  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1225 then goto _Label_1219 else goto _Label_1217
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1217
	jmp	_Label_1219
_Label_1219:
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1226  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1226 then goto _Label_1218 else goto _Label_1217
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1217
	jmp	_Label_1218
_Label_1217:
! THEN...
	mov	2236,r13		! source line 2236
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1218:
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
	mov	2239,r13		! source line 2239
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1227  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   sourceAddr = _temp_1227 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-160],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_1228 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sourceAddr  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunkSize  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=synchWriteStatus  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunkSize		(int)
	load	[r14+-168],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   writtenSoFar = writtenSoFar + thisChunkSize		(int)
	load	[r14+-164],r1
	load	[r14+-176],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-164]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-156],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0IF",r10
!   if writtenSoFar != sizeInBytes then goto _Label_1230		(int)
	load	[r14+-164],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1230
!	jmp	_Label_1229
_Label_1229:
! THEN...
	mov	2246,r13		! source line 2246
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0BR",r10
	jmp	_Label_1208
! END IF...
_Label_1230:
! END WHILE...
	jmp	_Label_1206
_Label_1208:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1231 = openFile + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1231 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: writtenSoFar  (sizeInBytes=4)
	load	[r14+-164],r1
	store	r1,[r14+8]
	add	r15,204,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1232
	.word	12		! total size of parameters
	.word	200		! frame size = 200
	.word	_Label_1233
	.word	8
	.word	4
	.word	_Label_1234
	.word	12
	.word	4
	.word	_Label_1235
	.word	16
	.word	4
	.word	_Label_1236
	.word	-20
	.word	4
	.word	_Label_1237
	.word	-24
	.word	4
	.word	_Label_1238
	.word	-28
	.word	4
	.word	_Label_1239
	.word	-9
	.word	1
	.word	_Label_1240
	.word	-10
	.word	1
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	_Label_1244
	.word	-44
	.word	4
	.word	_Label_1245
	.word	-48
	.word	4
	.word	_Label_1246
	.word	-52
	.word	4
	.word	_Label_1247
	.word	-56
	.word	4
	.word	_Label_1248
	.word	-60
	.word	4
	.word	_Label_1249
	.word	-64
	.word	4
	.word	_Label_1250
	.word	-11
	.word	1
	.word	_Label_1251
	.word	-12
	.word	1
	.word	_Label_1252
	.word	-68
	.word	4
	.word	_Label_1253
	.word	-72
	.word	4
	.word	_Label_1254
	.word	-76
	.word	4
	.word	_Label_1255
	.word	-80
	.word	4
	.word	_Label_1256
	.word	-84
	.word	4
	.word	_Label_1257
	.word	-88
	.word	4
	.word	_Label_1258
	.word	-92
	.word	4
	.word	_Label_1259
	.word	-96
	.word	4
	.word	_Label_1260
	.word	-100
	.word	4
	.word	_Label_1261
	.word	-104
	.word	4
	.word	_Label_1262
	.word	-108
	.word	4
	.word	_Label_1263
	.word	-112
	.word	4
	.word	_Label_1264
	.word	-116
	.word	4
	.word	_Label_1265
	.word	-120
	.word	4
	.word	_Label_1266
	.word	-124
	.word	4
	.word	_Label_1267
	.word	-128
	.word	4
	.word	_Label_1268
	.word	-132
	.word	4
	.word	_Label_1269
	.word	-136
	.word	4
	.word	_Label_1270
	.word	-140
	.word	4
	.word	_Label_1271
	.word	-144
	.word	4
	.word	_Label_1272
	.word	-148
	.word	4
	.word	_Label_1273
	.word	-152
	.word	4
	.word	_Label_1274
	.word	-156
	.word	4
	.word	_Label_1275
	.word	-160
	.word	4
	.word	_Label_1276
	.word	-164
	.word	4
	.word	_Label_1277
	.word	-168
	.word	4
	.word	_Label_1278
	.word	-172
	.word	4
	.word	_Label_1279
	.word	-176
	.word	4
	.word	_Label_1280
	.word	-180
	.word	4
	.word	_Label_1281
	.word	-184
	.word	4
	.word	_Label_1282
	.word	-188
	.word	4
	.word	_Label_1283
	.word	-13
	.word	1
	.word	0
_Label_1232:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1233:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1234:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1239:
	.byte	'C'
	.ascii	"_temp_1226\0"
	.align
_Label_1240:
	.byte	'C'
	.ascii	"_temp_1225\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1199\0"
	.align
_Label_1251:
	.byte	'C'
	.ascii	"_temp_1198\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1273:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1274:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1275:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1276:
	.byte	'I'
	.ascii	"writtenSoFar\0"
	.align
_Label_1277:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1278:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1279:
	.byte	'I'
	.ascii	"thisChunkSize\0"
	.align
_Label_1280:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1281:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_1282:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_1283:
	.byte	'B'
	.ascii	"synchWriteStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	41,r1
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	2258,r13		! source line 2258
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_1284 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-164]
!   _temp_1285 = _temp_1284 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Send message Lock
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1292		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1292
	jmp	_Label_1286
_Label_1292:
!   if fileDesc <= 10 then goto _Label_1291		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1291
	jmp	_Label_1286
_Label_1291:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1295 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1294 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1294) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1296 = _temp_1294 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1296 [fileDesc ] into _temp_1297
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1293 = *_temp_1297  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1293) then goto _Label_1286
	load	[r14+-156],r1
	cmp	r1,r0
	be	_Label_1286
!	jmp	_Label_1290
_Label_1290:
!   if newCurrentPos >= -1 then goto _Label_1289		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1289
	jmp	_Label_1286
_Label_1289:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1302 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1301 = *_temp_1302  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_1301) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1303 = _temp_1301 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_1303 [fileDesc ] into _temp_1304
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   Data Move: _temp_1300 = *_temp_1304  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_1300) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = _temp_1300 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1299 = *_temp_1305  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1299) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = _temp_1299 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1298 = *_temp_1306  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if newCurrentPos <= _temp_1298 then goto _Label_1288		(int)
	load	[r14+12],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1288
	jmp	_Label_1286
_Label_1288:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1309 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1308 = *_temp_1309  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1308) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1310 = _temp_1308 + 124
	load	[r14+-96],r1
	add	r1,124,r1
	store	r1,[r14+-88]
!   Move address of _temp_1310 [fileDesc ] into _temp_1311
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Data Move: _temp_1307 = *_temp_1311  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1307) then goto _Label_1286
	load	[r14+-100],r1
	cmp	r1,r0
	be	_Label_1286
	jmp	_Label_1287
_Label_1286:
! THEN...
	mov	2270,r13		! source line 2270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_1312 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1313 = _temp_1312 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Send message Unlock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1287:
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1315 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1314 = *_temp_1315  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1314) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1316 = _temp_1314 + 124
	load	[r14+-72],r1
	add	r1,124,r1
	store	r1,[r14+-64]
!   Move address of _temp_1316 [fileDesc ] into _temp_1317
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: openFile = *_temp_1317  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-168]
! IF STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1320		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1320
	jmp	_Label_1318
_Label_1320:
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1323 = openFile + 20
	load	[r14+-168],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1322 = *_temp_1323  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1322) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1324 = _temp_1322 + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1321 = *_temp_1324  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if newCurrentPos <= _temp_1321 then goto _Label_1319		(int)
	load	[r14+12],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1319
!	jmp	_Label_1318
_Label_1318:
! THEN...
	mov	2277,r13		! source line 2277
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_1325 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_1326 = _temp_1325 + 4
	load	[r14+-40],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message Unlock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1327
_Label_1319:
! ELSE...
	mov	2279,r13		! source line 2279
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1329		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1329
!	jmp	_Label_1328
_Label_1328:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1331 = openFile + 20
	load	[r14+-168],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1330 = *_temp_1331  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = _temp_1330 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: newCurrentPos = *_temp_1332  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+12]
! END IF...
_Label_1329:
! END IF...
_Label_1327:
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1333 = openFile + 16
	load	[r14+-168],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1333 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_1334 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1335 = _temp_1334 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1336
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_1337
	.word	8
	.word	4
	.word	_Label_1338
	.word	12
	.word	4
	.word	_Label_1339
	.word	-12
	.word	4
	.word	_Label_1340
	.word	-16
	.word	4
	.word	_Label_1341
	.word	-20
	.word	4
	.word	_Label_1342
	.word	-24
	.word	4
	.word	_Label_1343
	.word	-28
	.word	4
	.word	_Label_1344
	.word	-32
	.word	4
	.word	_Label_1345
	.word	-36
	.word	4
	.word	_Label_1346
	.word	-40
	.word	4
	.word	_Label_1347
	.word	-44
	.word	4
	.word	_Label_1348
	.word	-48
	.word	4
	.word	_Label_1349
	.word	-52
	.word	4
	.word	_Label_1350
	.word	-56
	.word	4
	.word	_Label_1351
	.word	-60
	.word	4
	.word	_Label_1352
	.word	-64
	.word	4
	.word	_Label_1353
	.word	-68
	.word	4
	.word	_Label_1354
	.word	-72
	.word	4
	.word	_Label_1355
	.word	-76
	.word	4
	.word	_Label_1356
	.word	-80
	.word	4
	.word	_Label_1357
	.word	-84
	.word	4
	.word	_Label_1358
	.word	-88
	.word	4
	.word	_Label_1359
	.word	-92
	.word	4
	.word	_Label_1360
	.word	-96
	.word	4
	.word	_Label_1361
	.word	-100
	.word	4
	.word	_Label_1362
	.word	-104
	.word	4
	.word	_Label_1363
	.word	-108
	.word	4
	.word	_Label_1364
	.word	-112
	.word	4
	.word	_Label_1365
	.word	-116
	.word	4
	.word	_Label_1366
	.word	-120
	.word	4
	.word	_Label_1367
	.word	-124
	.word	4
	.word	_Label_1368
	.word	-128
	.word	4
	.word	_Label_1369
	.word	-132
	.word	4
	.word	_Label_1370
	.word	-136
	.word	4
	.word	_Label_1371
	.word	-140
	.word	4
	.word	_Label_1372
	.word	-144
	.word	4
	.word	_Label_1373
	.word	-148
	.word	4
	.word	_Label_1374
	.word	-152
	.word	4
	.word	_Label_1375
	.word	-156
	.word	4
	.word	_Label_1376
	.word	-160
	.word	4
	.word	_Label_1377
	.word	-164
	.word	4
	.word	_Label_1378
	.word	-168
	.word	4
	.word	0
_Label_1336:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1337:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1378:
	.byte	'P'
	.ascii	"openFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	17,r1
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
	mov	2290,r13		! source line 2290
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1381		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1381
	jmp	_Label_1379
_Label_1381:
!   if fileDesc <= 10 then goto _Label_1380		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1380
!	jmp	_Label_1379
_Label_1379:
! THEN...
	mov	2292,r13		! source line 2292
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1380:
! IF STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1386 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1385 = *_temp_1386  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1385) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = _temp_1385 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1387 [fileDesc ] into _temp_1388
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1384 = *_temp_1388  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1384) then goto _Label_1382
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1382
	jmp	_Label_1383
_Label_1382:
! THEN...
	mov	2295,r13		! source line 2295
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1383:
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _temp_1390 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1392 [fileDesc ] into _temp_1393
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1389 = *_temp_1393  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1394 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1389  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1395 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1395) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _temp_1395 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1397 [fileDesc ] into _temp_1398
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_1398 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1399
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1400
	.word	8
	.word	4
	.word	_Label_1401
	.word	-12
	.word	4
	.word	_Label_1402
	.word	-16
	.word	4
	.word	_Label_1403
	.word	-20
	.word	4
	.word	_Label_1404
	.word	-24
	.word	4
	.word	_Label_1405
	.word	-28
	.word	4
	.word	_Label_1406
	.word	-32
	.word	4
	.word	_Label_1407
	.word	-36
	.word	4
	.word	_Label_1408
	.word	-40
	.word	4
	.word	_Label_1409
	.word	-44
	.word	4
	.word	_Label_1410
	.word	-48
	.word	4
	.word	_Label_1411
	.word	-52
	.word	4
	.word	_Label_1412
	.word	-56
	.word	4
	.word	_Label_1413
	.word	-60
	.word	4
	.word	_Label_1414
	.word	-64
	.word	4
	.word	_Label_1415
	.word	-68
	.word	4
	.word	0
_Label_1399:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_184_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
	mov	2879,r13		! source line 2879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1416 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1416  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
!   _temp_1417 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1417) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1419 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1419) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1418 = *_temp_1419  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1417 = _temp_1418  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0AS",r10
!   _temp_1420 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1420) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1422) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1420 = _temp_1421  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0AS",r10
!   _temp_1423 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1423) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1425 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1425) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1424 = *_temp_1425  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1423 = _temp_1424  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1426
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1427
	.word	8
	.word	4
	.word	_Label_1428
	.word	12
	.word	4
	.word	_Label_1429
	.word	-16
	.word	4
	.word	_Label_1430
	.word	-9
	.word	1
	.word	_Label_1431
	.word	-20
	.word	4
	.word	_Label_1432
	.word	-24
	.word	4
	.word	_Label_1433
	.word	-10
	.word	1
	.word	_Label_1434
	.word	-28
	.word	4
	.word	_Label_1435
	.word	-32
	.word	4
	.word	_Label_1436
	.word	-11
	.word	1
	.word	_Label_1437
	.word	-36
	.word	4
	.word	_Label_1438
	.word	-12
	.word	1
	.word	_Label_1439
	.word	-40
	.word	4
	.word	_Label_1440
	.word	-44
	.word	4
	.word	0
_Label_1426:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1427:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1428:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1430:
	.byte	'C'
	.ascii	"_temp_1424\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1433:
	.byte	'C'
	.ascii	"_temp_1421\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1436:
	.byte	'C'
	.ascii	"_temp_1418\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1438:
	.byte	'C'
	.ascii	"_temp_1416\0"
	.align
_Label_1439:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1440:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_183_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_printFCB,r1
	push	r1
	mov	3,r1
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
	mov	2889,r13		! source line 2889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1442 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1441 = *_temp_1442  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_183_printFCB:
	.word	_sourceFileName
	.word	_Label_1443
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1444
	.word	8
	.word	4
	.word	_Label_1445
	.word	-12
	.word	4
	.word	_Label_1446
	.word	-16
	.word	4
	.word	0
_Label_1443:
	.ascii	"printFCB\0"
	.align
_Label_1444:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_182_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_printOpen,r1
	push	r1
	mov	4,r1
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
	mov	2894,r13		! source line 2894
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1447 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1448 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1449 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_182_printOpen:
	.word	_sourceFileName
	.word	_Label_1450
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1451
	.word	8
	.word	4
	.word	_Label_1452
	.word	-12
	.word	4
	.word	_Label_1453
	.word	-16
	.word	4
	.word	_Label_1454
	.word	-20
	.word	4
	.word	0
_Label_1450:
	.ascii	"printOpen\0"
	.align
_Label_1451:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1455
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1455:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1456
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1456:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
	mov	277,r13		! source line 277
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1458		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1458
!	jmp	_Label_1457
_Label_1457:
! THEN...
	mov	279,r13		! source line 279
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1459 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	279,r13		! source line 279
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1458:
! ASSIGNMENT STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1461
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	12
	.word	4
	.word	_Label_1464
	.word	-12
	.word	4
	.word	_Label_1465
	.word	-16
	.word	4
	.word	0
_Label_1461:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3845:
	push	r0
	sub	r1,1,r1
	bne	_Label_3845
	mov	287,r13		! source line 287
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1467		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1467
!	jmp	_Label_1466
_Label_1466:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1468 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	293,r13		! source line 293
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1467:
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1470		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1470
!	jmp	_Label_1469
_Label_1469:
! THEN...
	mov	297,r13		! source line 297
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_1471 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1472 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_1473 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1470:
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	_Label_1478
	.word	-20
	.word	4
	.word	_Label_1479
	.word	-24
	.word	4
	.word	_Label_1480
	.word	-28
	.word	4
	.word	_Label_1481
	.word	-32
	.word	4
	.word	0
_Label_1474:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1480:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1481:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3846:
	push	r0
	sub	r1,1,r1
	bne	_Label_3846
	mov	306,r13		! source line 306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	309,r13		! source line 309
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1483		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1483
!	jmp	_Label_1482
_Label_1482:
! THEN...
	mov	311,r13		! source line 311
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1484 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	311,r13		! source line 311
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1483:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1486		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1486
!	jmp	_Label_1485
_Label_1485:
! THEN...
	mov	315,r13		! source line 315
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0SE",r10
!   _temp_1487 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1486:
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1488
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1490
	.word	-12
	.word	4
	.word	_Label_1491
	.word	-16
	.word	4
	.word	_Label_1492
	.word	-20
	.word	4
	.word	0
_Label_1488:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1489:
	.ascii	"Pself\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1492:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1493
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1493:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1494
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1494:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3847:
	push	r0
	sub	r1,1,r1
	bne	_Label_3847
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1496
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1498
	.word	-12
	.word	4
	.word	0
_Label_1496:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1497:
	.ascii	"Pself\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3848:
	push	r0
	sub	r1,1,r1
	bne	_Label_3848
	mov	347,r13		! source line 347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1500		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1500
!	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	351,r13		! source line 351
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	351,r13		! source line 351
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1500:
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1505		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1505
!   _temp_1504 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1506
_Label_1505:
!   _temp_1504 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1506:
!   if _temp_1504 then goto _Label_1503 else goto _Label_1502
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1502
	jmp	_Label_1503
_Label_1502:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1507
_Label_1503:
! ELSE...
	mov	357,r13		! source line 357
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0SE",r10
!   _temp_1508 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1507:
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1509
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1511
	.word	-16
	.word	4
	.word	_Label_1512
	.word	-9
	.word	1
	.word	_Label_1513
	.word	-20
	.word	4
	.word	_Label_1514
	.word	-24
	.word	4
	.word	0
_Label_1509:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1510:
	.ascii	"Pself\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1512:
	.byte	'C'
	.ascii	"_temp_1504\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1514:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3849:
	push	r0
	sub	r1,1,r1
	bne	_Label_3849
	mov	365,r13		! source line 365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1516		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1516
!	jmp	_Label_1515
_Label_1515:
! THEN...
	mov	370,r13		! source line 370
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1517 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	370,r13		! source line 370
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1516:
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	372,r13		! source line 372
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0AS",r10
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_1518 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1520		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1520
!	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	375,r13		! source line 375
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1521 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1521 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_1522 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1523
_Label_1520:
! ELSE...
	mov	379,r13		! source line 379
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1523:
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1524
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1526
	.word	-12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-32
	.word	4
	.word	0
_Label_1524:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1525:
	.ascii	"Pself\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1530:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1531:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1534		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1534
!	jmp	_Label_1533
_Label_1533:
!   _temp_1532 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1535
_Label_1534:
!   _temp_1532 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1535:
!   ReturnResult: _temp_1532  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1536
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1537
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1538
	.word	-9
	.word	1
	.word	0
_Label_1536:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1537:
	.ascii	"Pself\0"
	.align
_Label_1538:
	.byte	'C'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1539
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1539:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1540
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1540:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	427,r13		! source line 427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1542
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1544
	.word	-12
	.word	4
	.word	0
_Label_1542:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1543:
	.ascii	"Pself\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	433,r13		! source line 433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0IF",r10
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1547  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1547 then goto _Label_1546 else goto _Label_1545
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1545
	jmp	_Label_1546
_Label_1545:
! THEN...
	mov	437,r13		! source line 437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1548 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	437,r13		! source line 437
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1546:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   _temp_1549 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1550
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-9
	.word	1
	.word	_Label_1556
	.word	-24
	.word	4
	.word	0
_Label_1550:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1555:
	.byte	'C'
	.ascii	"_temp_1547\0"
	.align
_Label_1556:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3853:
	push	r0
	sub	r1,1,r1
	bne	_Label_3853
	mov	449,r13		! source line 449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0IF",r10
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1559  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1559 then goto _Label_1558 else goto _Label_1557
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1557
	jmp	_Label_1558
_Label_1557:
! THEN...
	mov	454,r13		! source line 454
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1560 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1560  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	454,r13		! source line 454
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1558:
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_1561 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1563		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1563
!	jmp	_Label_1562
_Label_1562:
! THEN...
	mov	459,r13		! source line 459
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1564 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1564 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   _temp_1565 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1563:
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1566
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1568
	.word	12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	_Label_1571
	.word	-24
	.word	4
	.word	_Label_1572
	.word	-28
	.word	4
	.word	_Label_1573
	.word	-9
	.word	1
	.word	_Label_1574
	.word	-32
	.word	4
	.word	_Label_1575
	.word	-36
	.word	4
	.word	0
_Label_1566:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1567:
	.ascii	"Pself\0"
	.align
_Label_1568:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1573:
	.byte	'C'
	.ascii	"_temp_1559\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1575:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
	mov	471,r13		! source line 471
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1578  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1578 then goto _Label_1577 else goto _Label_1576
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1576
	jmp	_Label_1577
_Label_1576:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1579 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	472,r13		! source line 472
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1577:
! ASSIGNMENT STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0WH",r10
_Label_1580:
!	jmp	_Label_1581
_Label_1581:
	mov	475,r13		! source line 475
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
!   _temp_1583 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1584
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1584
	jmp	_Label_1585
_Label_1584:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0BR",r10
	jmp	_Label_1582
! END IF...
_Label_1585:
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1586 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1586 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0SE",r10
!   _temp_1587 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1580
_Label_1582:
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1588
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1590
	.word	12
	.word	4
	.word	_Label_1591
	.word	-16
	.word	4
	.word	_Label_1592
	.word	-20
	.word	4
	.word	_Label_1593
	.word	-24
	.word	4
	.word	_Label_1594
	.word	-28
	.word	4
	.word	_Label_1595
	.word	-9
	.word	1
	.word	_Label_1596
	.word	-32
	.word	4
	.word	_Label_1597
	.word	-36
	.word	4
	.word	0
_Label_1588:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1589:
	.ascii	"Pself\0"
	.align
_Label_1590:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1595:
	.byte	'C'
	.ascii	"_temp_1578\0"
	.align
_Label_1596:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1597:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1598
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1598:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1599
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1599:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3855:
	push	r0
	sub	r1,1,r1
	bne	_Label_3855
	mov	494,r13		! source line 494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_1600 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1600) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1600 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_1601 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1601 [0 ] into _temp_1602
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1602 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   _temp_1603 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1603 [999 ] into _temp_1604
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1604 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _temp_1605 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1605 [999 ] into _temp_1606
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1606		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   _temp_1607 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1609 = &_temp_1608
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1609 = _temp_1609 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1611:
!   Data Move: *_temp_1609 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1609 = _temp_1609 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1610 = _temp_1610 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1610) then goto _Label_1611
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1611
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1612 = &_temp_1608
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3856
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3856:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1607 = *_temp_1612  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3857:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3857
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_1613 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1615 = &_temp_1614
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1615 = _temp_1615 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1617:
!   Data Move: *_temp_1615 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1615 = _temp_1615 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1616 = _temp_1616 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1616) then goto _Label_1617
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1617
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1618 = &_temp_1614
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3858
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3858:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1613 = *_temp_1618  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3859:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3859
! RETURN STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1619
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	12
	.word	4
	.word	_Label_1622
	.word	-12
	.word	4
	.word	_Label_1623
	.word	-16
	.word	4
	.word	_Label_1624
	.word	-20
	.word	4
	.word	_Label_1625
	.word	-84
	.word	64
	.word	_Label_1626
	.word	-88
	.word	4
	.word	_Label_1627
	.word	-92
	.word	4
	.word	_Label_1628
	.word	-96
	.word	4
	.word	_Label_1629
	.word	-100
	.word	4
	.word	_Label_1630
	.word	-156
	.word	56
	.word	_Label_1631
	.word	-160
	.word	4
	.word	_Label_1632
	.word	-164
	.word	4
	.word	_Label_1633
	.word	-168
	.word	4
	.word	_Label_1634
	.word	-172
	.word	4
	.word	_Label_1635
	.word	-176
	.word	4
	.word	_Label_1636
	.word	-180
	.word	4
	.word	_Label_1637
	.word	-184
	.word	4
	.word	_Label_1638
	.word	-188
	.word	4
	.word	0
_Label_1619:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
	mov	513,r13		! source line 513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1639 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1639  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1641 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1640  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1642
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1644
	.word	12
	.word	4
	.word	_Label_1645
	.word	16
	.word	4
	.word	_Label_1646
	.word	-12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
	.word	0
_Label_1642:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1643:
	.ascii	"Pself\0"
	.align
_Label_1644:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	537,r13		! source line 537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1653 == _P_Kernel_currentThread then goto _Label_1652		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1652
!	jmp	_Label_1651
_Label_1651:
! THEN...
	mov	554,r13		! source line 554
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1654 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	554,r13		! source line 554
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1652:
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
	mov	560,r13		! source line 560
	mov	"\0\0SE",r10
!   _temp_1655 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1657		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1657
!	jmp	_Label_1656
_Label_1656:
! THEN...
	mov	565,r13		! source line 565
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1659		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1659
!	jmp	_Label_1658
_Label_1658:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1660 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	566,r13		! source line 566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1659:
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1662 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1661  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1657:
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1663
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1664
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1665
	.word	-12
	.word	4
	.word	_Label_1666
	.word	-16
	.word	4
	.word	_Label_1667
	.word	-20
	.word	4
	.word	_Label_1668
	.word	-24
	.word	4
	.word	_Label_1669
	.word	-28
	.word	4
	.word	_Label_1670
	.word	-32
	.word	4
	.word	_Label_1671
	.word	-36
	.word	4
	.word	_Label_1672
	.word	-40
	.word	4
	.word	_Label_1673
	.word	-44
	.word	4
	.word	0
_Label_1663:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1664:
	.ascii	"Pself\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1671:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1675		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1675
!	jmp	_Label_1674
_Label_1674:
! THEN...
	mov	590,r13		! source line 590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1676 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	590,r13		! source line 590
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1675:
! IF STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1679 == _P_Kernel_currentThread then goto _Label_1678		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1678
!	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	594,r13		! source line 594
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1680 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	594,r13		! source line 594
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1678:
! ASSIGNMENT STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0AS",r10
	mov	600,r13		! source line 600
	mov	"\0\0SE",r10
!   _temp_1681 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1682
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1682
	jmp	_Label_1683
_Label_1682:
! THEN...
	mov	602,r13		! source line 602
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1684 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	602,r13		! source line 602
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1683:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1685
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1687
	.word	-12
	.word	4
	.word	_Label_1688
	.word	-16
	.word	4
	.word	_Label_1689
	.word	-20
	.word	4
	.word	_Label_1690
	.word	-24
	.word	4
	.word	_Label_1691
	.word	-28
	.word	4
	.word	_Label_1692
	.word	-32
	.word	4
	.word	0
_Label_1685:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1686:
	.ascii	"Pself\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
	mov	609,r13		! source line 609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0IF",r10
!   _temp_1696 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1696 [0 ] into _temp_1697
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1695 = *_temp_1697  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1695 == 606348324 then goto _Label_1694		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1694
!	jmp	_Label_1693
_Label_1693:
! THEN...
	mov	616,r13		! source line 616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1698 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	616,r13		! source line 616
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1699
_Label_1694:
! ELSE...
	mov	617,r13		! source line 617
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0IF",r10
!   _temp_1703 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1703 [999 ] into _temp_1704
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1702 = *_temp_1704  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1702 == 606348324 then goto _Label_1701		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1701
!	jmp	_Label_1700
_Label_1700:
! THEN...
	mov	618,r13		! source line 618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1705 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	618,r13		! source line 618
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1701:
! END IF...
_Label_1699:
! RETURN STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1706
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	_Label_1712
	.word	-28
	.word	4
	.word	_Label_1713
	.word	-32
	.word	4
	.word	_Label_1714
	.word	-36
	.word	4
	.word	_Label_1715
	.word	-40
	.word	4
	.word	0
_Label_1706:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
	mov	624,r13		! source line 624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1716 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1717 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1719 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1720 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1720  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1725 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1726 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1725  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1721:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1726 then goto _Label_1724		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1724
_Label_1722:
	mov	637,r13		! source line 637
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1728 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1729 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1731 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1731 [i ] into _temp_1732
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1730 = *_temp_1732  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1733 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1735 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1735 [i ] into _temp_1736
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1734 = *_temp_1736  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1737 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1723:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1721
! END FOR
_Label_1724:
! CALL STATEMENT...
!   _temp_1738 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-116]
!   _temp_1739 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1739  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1740 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-108]
!   _temp_1742 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1742 [0 ] into _temp_1743
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1741 = _temp_1743		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1741  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	648,r13		! source line 648
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1746
	cmp	r1,2
	be	_Label_1747
	cmp	r1,3
	be	_Label_1748
	cmp	r1,4
	be	_Label_1749
	cmp	r1,5
	be	_Label_1750
	jmp	_Label_1744
! CASE 1...
_Label_1746:
! CALL STATEMENT...
!   _temp_1751 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1751  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0BR",r10
	jmp	_Label_1745
! CASE 2...
_Label_1747:
! CALL STATEMENT...
!   _temp_1752 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1752  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0BR",r10
	jmp	_Label_1745
! CASE 3...
_Label_1748:
! CALL STATEMENT...
!   _temp_1753 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0BR",r10
	jmp	_Label_1745
! CASE 4...
_Label_1749:
! CALL STATEMENT...
!   _temp_1754 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_1745
! CASE 5...
_Label_1750:
! CALL STATEMENT...
!   _temp_1755 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_1745
! DEFAULT CASE...
_Label_1744:
! CALL STATEMENT...
!   _temp_1756 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	665,r13		! source line 665
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1745:
! CALL STATEMENT...
!   _temp_1757 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1758 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1763 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1764 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1763  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1759:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1764 then goto _Label_1762		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1762
_Label_1760:
	mov	671,r13		! source line 671
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1765 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1766 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1766  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1767 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1769 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1769 [i ] into _temp_1770
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1768 = *_temp_1770  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1768  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1771 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1773 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1773 [i ] into _temp_1774
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1772 = *_temp_1774  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1772  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1775 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1761:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1759
! END FOR
_Label_1762:
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1776
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1778
	.word	-12
	.word	4
	.word	_Label_1779
	.word	-16
	.word	4
	.word	_Label_1780
	.word	-20
	.word	4
	.word	_Label_1781
	.word	-24
	.word	4
	.word	_Label_1782
	.word	-28
	.word	4
	.word	_Label_1783
	.word	-32
	.word	4
	.word	_Label_1784
	.word	-36
	.word	4
	.word	_Label_1785
	.word	-40
	.word	4
	.word	_Label_1786
	.word	-44
	.word	4
	.word	_Label_1787
	.word	-48
	.word	4
	.word	_Label_1788
	.word	-52
	.word	4
	.word	_Label_1789
	.word	-56
	.word	4
	.word	_Label_1790
	.word	-60
	.word	4
	.word	_Label_1791
	.word	-64
	.word	4
	.word	_Label_1792
	.word	-68
	.word	4
	.word	_Label_1793
	.word	-72
	.word	4
	.word	_Label_1794
	.word	-76
	.word	4
	.word	_Label_1795
	.word	-80
	.word	4
	.word	_Label_1796
	.word	-84
	.word	4
	.word	_Label_1797
	.word	-88
	.word	4
	.word	_Label_1798
	.word	-92
	.word	4
	.word	_Label_1799
	.word	-96
	.word	4
	.word	_Label_1800
	.word	-100
	.word	4
	.word	_Label_1801
	.word	-104
	.word	4
	.word	_Label_1802
	.word	-108
	.word	4
	.word	_Label_1803
	.word	-112
	.word	4
	.word	_Label_1804
	.word	-116
	.word	4
	.word	_Label_1805
	.word	-120
	.word	4
	.word	_Label_1806
	.word	-124
	.word	4
	.word	_Label_1807
	.word	-128
	.word	4
	.word	_Label_1808
	.word	-132
	.word	4
	.word	_Label_1809
	.word	-136
	.word	4
	.word	_Label_1810
	.word	-140
	.word	4
	.word	_Label_1811
	.word	-144
	.word	4
	.word	_Label_1812
	.word	-148
	.word	4
	.word	_Label_1813
	.word	-152
	.word	4
	.word	_Label_1814
	.word	-156
	.word	4
	.word	_Label_1815
	.word	-160
	.word	4
	.word	_Label_1816
	.word	-164
	.word	4
	.word	_Label_1817
	.word	-168
	.word	4
	.word	_Label_1818
	.word	-172
	.word	4
	.word	_Label_1819
	.word	-176
	.word	4
	.word	_Label_1820
	.word	-180
	.word	4
	.word	_Label_1821
	.word	-184
	.word	4
	.word	_Label_1822
	.word	-188
	.word	4
	.word	_Label_1823
	.word	-192
	.word	4
	.word	_Label_1824
	.word	-196
	.word	4
	.word	0
_Label_1776:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1777:
	.ascii	"Pself\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1823:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1825
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1825:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1826
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1826:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11477,r1
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
	mov	735,r13		! source line 735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0AS",r10
!   _temp_1827 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1829 = &_temp_1828
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1829 = _temp_1829 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1831 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3866:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3866
!   _temp_1831 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1833:
!   Data Move: *_temp_1829 = _temp_1831  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3867:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3867
!   _temp_1829 = _temp_1829 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1830 = _temp_1830 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1830) then goto _Label_1833
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1833
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1834 = &_temp_1828
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3868
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3868:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1827 = *_temp_1834  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3869:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3869
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadTableLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadTableLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1838 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_1839 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1844 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1845 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1844  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45908,r2
	store	r1,[r14+r2]
_Label_1840:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1845 then goto _Label_1843		
	set	-45908,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1843
_Label_1841:
	mov	756,r13		! source line 756
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0SE",r10
!   _temp_1846 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   _temp_1847 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1847 [i ] into _temp_1848
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1846  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0AS",r10
!   _temp_1849 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1849 [i ] into _temp_1850
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1851 = _temp_1850 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1851 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	759,r13		! source line 759
	mov	"\0\0SE",r10
!   _temp_1853 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1853 [i ] into _temp_1854
!     make sure index expr is >= 0
	set	-45908,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1852 = _temp_1854		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1855 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1852  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1842:
!   i = i + 1
	set	-45908,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45908,r2
	store	r1,[r14+r2]
	jmp	_Label_1840
! END FOR
_Label_1843:
! RETURN STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0RE",r10
	set	45912,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1856
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	_Label_1864
	.word	-36
	.word	4
	.word	_Label_1865
	.word	-40
	.word	4
	.word	_Label_1866
	.word	-44
	.word	4
	.word	_Label_1867
	.word	-48
	.word	4
	.word	_Label_1868
	.word	-52
	.word	4
	.word	_Label_1869
	.word	-56
	.word	4
	.word	_Label_1870
	.word	-60
	.word	4
	.word	_Label_1871
	.word	-64
	.word	4
	.word	_Label_1872
	.word	-68
	.word	4
	.word	_Label_1873
	.word	-72
	.word	4
	.word	_Label_1874
	.word	-76
	.word	4
	.word	_Label_1875
	.word	-80
	.word	4
	.word	_Label_1876
	.word	-84
	.word	4
	.word	_Label_1877
	.word	-4248
	.word	4164
	.word	_Label_1878
	.word	-4252
	.word	4
	.word	_Label_1879
	.word	-4256
	.word	4
	.word	_Label_1880
	.word	-45900
	.word	41644
	.word	_Label_1881
	.word	-45904
	.word	4
	.word	_Label_1882
	.word	-45908
	.word	4
	.word	0
_Label_1856:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1857:
	.ascii	"Pself\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1882:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3870:
	push	r0
	sub	r1,1,r1
	bne	_Label_3870
	mov	765,r13		! source line 765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1883 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1888 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1889 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1888  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1884:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1889 then goto _Label_1887		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1887
_Label_1885:
	mov	774,r13		! source line 774
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1890 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1891 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1893 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1893 [i ] into _temp_1894
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1892 = _temp_1894		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1886:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1884
! END FOR
_Label_1887:
! CALL STATEMENT...
!   _temp_1895 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0SE",r10
!   _temp_1896 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1897 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1896  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1898
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	-12
	.word	4
	.word	_Label_1901
	.word	-16
	.word	4
	.word	_Label_1902
	.word	-20
	.word	4
	.word	_Label_1903
	.word	-24
	.word	4
	.word	_Label_1904
	.word	-28
	.word	4
	.word	_Label_1905
	.word	-32
	.word	4
	.word	_Label_1906
	.word	-36
	.word	4
	.word	_Label_1907
	.word	-40
	.word	4
	.word	_Label_1908
	.word	-44
	.word	4
	.word	_Label_1909
	.word	-48
	.word	4
	.word	_Label_1910
	.word	-52
	.word	4
	.word	_Label_1911
	.word	-56
	.word	4
	.word	_Label_1912
	.word	-60
	.word	4
	.word	0
_Label_1898:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1911:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1912:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3871:
	push	r0
	sub	r1,1,r1
	bne	_Label_3871
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1913 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0WH",r10
_Label_1914:
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1917 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1915 else goto _Label_1916
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1916
	jmp	_Label_1915
_Label_1915:
	mov	796,r13		! source line 796
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1918 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1919 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1918  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1914
_Label_1916:
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1920 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   if intIsZero (threadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1921 = threadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1921 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1922 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0RE",r10
!   ReturnResult: threadPtr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1923
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1925
	.word	-12
	.word	4
	.word	_Label_1926
	.word	-16
	.word	4
	.word	_Label_1927
	.word	-20
	.word	4
	.word	_Label_1928
	.word	-24
	.word	4
	.word	_Label_1929
	.word	-28
	.word	4
	.word	_Label_1930
	.word	-32
	.word	4
	.word	_Label_1931
	.word	-36
	.word	4
	.word	_Label_1932
	.word	-40
	.word	4
	.word	0
_Label_1923:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1924:
	.ascii	"Pself\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1932:
	.byte	'P'
	.ascii	"threadPtr\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3872:
	push	r0
	sub	r1,1,r1
	bne	_Label_3872
	mov	811,r13		! source line 811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0SE",r10
!   _temp_1933 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1934 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1934 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1935 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_1936 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1937 = &threadFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1936  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0SE",r10
!   _temp_1938 = &threadTableLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	826,r13		! source line 826
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1939
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	12
	.word	4
	.word	_Label_1942
	.word	-12
	.word	4
	.word	_Label_1943
	.word	-16
	.word	4
	.word	_Label_1944
	.word	-20
	.word	4
	.word	_Label_1945
	.word	-24
	.word	4
	.word	_Label_1946
	.word	-28
	.word	4
	.word	_Label_1947
	.word	-32
	.word	4
	.word	0
_Label_1939:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1948
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1948:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1949
	.word	_sourceFileName
	.word	214		! line number
	.word	172		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1949:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_3873:
	push	r0
	sub	r1,1,r1
	bne	_Label_3873
	mov	839,r13		! source line 839
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3874:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3874
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1951 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0AS",r10
!   _temp_1952 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1954 = &_temp_1953
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1954 = _temp_1954 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1956:
!   Data Move: *_temp_1954 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1954 = _temp_1954 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1955 = _temp_1955 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1955) then goto _Label_1956
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1956
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1957 = &_temp_1953
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3875
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3875:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1952 = *_temp_1957  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3876:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3876
! RETURN STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1958
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1960
	.word	-12
	.word	4
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-64
	.word	44
	.word	_Label_1964
	.word	-68
	.word	4
	.word	_Label_1965
	.word	-72
	.word	4
	.word	_Label_1966
	.word	-76
	.word	4
	.word	0
_Label_1958:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1959:
	.ascii	"Pself\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	15,r1
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
	mov	851,r13		! source line 851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1967) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
!   _temp_1968 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Send message Print
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1969 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
! CALL STATEMENT...
!   _temp_1970 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0FO",r10
!   Calculate and save the address of the FOR-LOOP index variable
!   _temp_1976 = &i
	load	[r14+8],r1
	add	r1,168,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1975 = _temp_1976  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP starting value
!   _temp_1977 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1978 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: *_temp_1975 = _temp_1977  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-48],r2
	store	r1,[r2]
_Label_1971:
!   Perform the FOR-LOOP termination test
!   if * _temp_1975 > _temp_1978 then goto _Label_1974		
	load	[r14+-48],r1
	load	[r1],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1974
_Label_1972:
	mov	861,r13		! source line 861
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0IF",r10
!   _temp_1982 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Move address of _temp_1982 [i ] into _temp_1983
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_1981 = *_temp_1983  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_1981 == 0 then goto _Label_1980		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1980
!	jmp	_Label_1979
_Label_1979:
! THEN...
	mov	863,r13		! source line 863
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_1985 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1985 [i ] into _temp_1986
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1984 = *_temp_1986  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1984) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_1980:
!   Increment the FOR-LOOP index variable and jump back
_Label_1973:
	load	[r14+-48],r1
	load	[r1],r3
	add	r3,1,r3
	bvs	_runtimeErrorOverflow
	store	r3,[r1]
	jmp	_Label_1971
! END FOR
_Label_1974:
! CALL STATEMENT...
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1987
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	-12
	.word	4
	.word	_Label_1990
	.word	-16
	.word	4
	.word	_Label_1991
	.word	-20
	.word	4
	.word	_Label_1992
	.word	-24
	.word	4
	.word	_Label_1993
	.word	-28
	.word	4
	.word	_Label_1994
	.word	-32
	.word	4
	.word	_Label_1995
	.word	-36
	.word	4
	.word	_Label_1996
	.word	-40
	.word	4
	.word	_Label_1997
	.word	-44
	.word	4
	.word	_Label_1998
	.word	-48
	.word	4
	.word	_Label_1999
	.word	-52
	.word	4
	.word	_Label_2000
	.word	-56
	.word	4
	.word	_Label_2001
	.word	-60
	.word	4
	.word	_Label_2002
	.word	-64
	.word	4
	.word	0
_Label_1987:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
	mov	871,r13		! source line 871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2003 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2005 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2006 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2008		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2008
!	jmp	_Label_2007
_Label_2007:
! THEN...
	mov	881,r13		! source line 881
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2009 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2010
_Label_2008:
! ELSE...
	mov	882,r13		! source line 882
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2012		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2012
!	jmp	_Label_2011
_Label_2011:
! THEN...
	mov	883,r13		! source line 883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2013 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	883,r13		! source line 883
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2014
_Label_2012:
! ELSE...
	mov	884,r13		! source line 884
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2016		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2016
!	jmp	_Label_2015
_Label_2015:
! THEN...
	mov	885,r13		! source line 885
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2017 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2018
_Label_2016:
! ELSE...
	mov	887,r13		! source line 887
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2019 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2019  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	887,r13		! source line 887
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2018:
! END IF...
_Label_2014:
! END IF...
_Label_2010:
! CALL STATEMENT...
!   _temp_2020 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2021 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2022
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2024
	.word	-12
	.word	4
	.word	_Label_2025
	.word	-16
	.word	4
	.word	_Label_2026
	.word	-20
	.word	4
	.word	_Label_2027
	.word	-24
	.word	4
	.word	_Label_2028
	.word	-28
	.word	4
	.word	_Label_2029
	.word	-32
	.word	4
	.word	_Label_2030
	.word	-36
	.word	4
	.word	_Label_2031
	.word	-40
	.word	4
	.word	_Label_2032
	.word	-44
	.word	4
	.word	_Label_2033
	.word	-48
	.word	4
	.word	0
_Label_2022:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2023:
	.ascii	"Pself\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2034
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2034:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2035
	.word	_sourceFileName
	.word	235		! line number
	.word	1796		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2035:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	500,r1
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
	mov	904,r13		! source line 904
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   _temp_2036 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1996]
!   NEW ARRAY Constructor...
!   _temp_2038 = &_temp_2037
	add	r14,-1992,r1
	store	r1,[r14+-268]
!   _temp_2038 = _temp_2038 + 4
	load	[r14+-268],r1
	add	r1,4,r1
	store	r1,[r14+-268]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2040 = zeros  (sizeInBytes=172)
	add	r14,-260,r4
	mov	43,r3
_Label_3880:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3880
!   _temp_2040 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-260]
	mov	10,r1
	store	r1,[r14+-264]
_Label_2042:
!   Data Move: *_temp_2038 = _temp_2040  (sizeInBytes=172)
	add	r14,-260,r5
	load	[r14+-268],r4
	mov	43,r3
_Label_3881:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3881
!   _temp_2038 = _temp_2038 + 172
	load	[r14+-268],r1
	add	r1,172,r1
	store	r1,[r14+-268]
!   _temp_2039 = _temp_2039 + -1
	load	[r14+-264],r1
	add	r1,-1,r1
	store	r1,[r14+-264]
!   if intNotZero (_temp_2039) then goto _Label_2042
	load	[r14+-264],r1
	cmp	r1,r0
	bne	_Label_2042
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1992]
!   _temp_2043 = &_temp_2037
	add	r14,-1992,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1996],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3882
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3882:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2036 = *_temp_2043  (sizeInBytes=1724)
	load	[r14+-84],r5
	load	[r14+-1996],r4
	mov	431,r3
_Label_3883:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3883
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1728,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1728]
! ASSIGNMENT STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1748,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1748]
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1776,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1776]
! ASSIGNMENT STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1764,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1764]
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_2048 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0SE",r10
!   _temp_2049 = &aProcessDied
	load	[r14+8],r1
	add	r1,1776,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2050 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2055 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2056 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2055  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-2000]
_Label_2051:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2056 then goto _Label_2054		
	load	[r14+-2000],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2054
_Label_2052:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_2057 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2057 [i ] into _temp_2058
!     make sure index expr is >= 0
	load	[r14+-2000],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   _temp_2059 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2059 [i ] into _temp_2060
!     make sure index expr is >= 0
	load	[r14+-2000],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2061 = _temp_2060 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2061 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2063 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2063 [i ] into _temp_2064
!     make sure index expr is >= 0
	load	[r14+-2000],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2062 = _temp_2064		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2065 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2062  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2053:
!   i = i + 1
	load	[r14+-2000],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2000]
	jmp	_Label_2051
! END FOR
_Label_2054:
! ASSIGNMENT STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1792]
! RETURN STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0RE",r10
	add	r15,2004,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2066
	.word	4		! total size of parameters
	.word	2000		! frame size = 2000
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-32
	.word	4
	.word	_Label_2074
	.word	-36
	.word	4
	.word	_Label_2075
	.word	-40
	.word	4
	.word	_Label_2076
	.word	-44
	.word	4
	.word	_Label_2077
	.word	-48
	.word	4
	.word	_Label_2078
	.word	-52
	.word	4
	.word	_Label_2079
	.word	-56
	.word	4
	.word	_Label_2080
	.word	-60
	.word	4
	.word	_Label_2081
	.word	-64
	.word	4
	.word	_Label_2082
	.word	-68
	.word	4
	.word	_Label_2083
	.word	-72
	.word	4
	.word	_Label_2084
	.word	-76
	.word	4
	.word	_Label_2085
	.word	-80
	.word	4
	.word	_Label_2086
	.word	-84
	.word	4
	.word	_Label_2087
	.word	-88
	.word	4
	.word	_Label_2088
	.word	-260
	.word	172
	.word	_Label_2089
	.word	-264
	.word	4
	.word	_Label_2090
	.word	-268
	.word	4
	.word	_Label_2091
	.word	-1992
	.word	1724
	.word	_Label_2092
	.word	-1996
	.word	4
	.word	_Label_2093
	.word	-2000
	.word	4
	.word	0
_Label_2066:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2093:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	935,r13		! source line 935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2094 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2099 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2100 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2099  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2095:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2100 then goto _Label_2098		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2098
_Label_2096:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2102 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_2103 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2103 [i ] into _temp_2104
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2097:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2095
! END FOR
_Label_2098:
! CALL STATEMENT...
!   _temp_2105 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_2106 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2107 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2106  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2108
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2110
	.word	-12
	.word	4
	.word	_Label_2111
	.word	-16
	.word	4
	.word	_Label_2112
	.word	-20
	.word	4
	.word	_Label_2113
	.word	-24
	.word	4
	.word	_Label_2114
	.word	-28
	.word	4
	.word	_Label_2115
	.word	-32
	.word	4
	.word	_Label_2116
	.word	-36
	.word	4
	.word	_Label_2117
	.word	-40
	.word	4
	.word	_Label_2118
	.word	-44
	.word	4
	.word	_Label_2119
	.word	-48
	.word	4
	.word	_Label_2120
	.word	-52
	.word	4
	.word	_Label_2121
	.word	-56
	.word	4
	.word	0
_Label_2108:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2109:
	.ascii	"Pself\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2120:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
	mov	958,r13		! source line 958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	965,r13		! source line 965
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2122 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2127 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2128 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2127  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2123:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2128 then goto _Label_2126		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2126
_Label_2124:
	mov	967,r13		! source line 967
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2129 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2130 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2130 [i ] into _temp_2131
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2125:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2123
! END FOR
_Label_2126:
! CALL STATEMENT...
!   _temp_2132 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2132  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_2133 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2134 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2133  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2135
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2137
	.word	-12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	_Label_2141
	.word	-28
	.word	4
	.word	_Label_2142
	.word	-32
	.word	4
	.word	_Label_2143
	.word	-36
	.word	4
	.word	_Label_2144
	.word	-40
	.word	4
	.word	_Label_2145
	.word	-44
	.word	4
	.word	_Label_2146
	.word	-48
	.word	4
	.word	_Label_2147
	.word	-52
	.word	4
	.word	0
_Label_2135:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2146:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2147:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3886:
	push	r0
	sub	r1,1,r1
	bne	_Label_3886
	mov	980,r13		! source line 980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2148 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0WH",r10
_Label_2149:
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2152 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2150 else goto _Label_2151
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2151
	jmp	_Label_2150
_Label_2150:
	mov	990,r13		! source line 990
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_2153 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-32]
!   _temp_2154 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2153  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2149
_Label_2151:
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_2155 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrToPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2156 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2156 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1792],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1792],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1792]
! ASSIGNMENT STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2157 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2157 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_2158 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0RE",r10
!   ReturnResult: ptrToPCB  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2159
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2161
	.word	-12
	.word	4
	.word	_Label_2162
	.word	-16
	.word	4
	.word	_Label_2163
	.word	-20
	.word	4
	.word	_Label_2164
	.word	-24
	.word	4
	.word	_Label_2165
	.word	-28
	.word	4
	.word	_Label_2166
	.word	-32
	.word	4
	.word	_Label_2167
	.word	-36
	.word	4
	.word	_Label_2168
	.word	-40
	.word	4
	.word	_Label_2169
	.word	-44
	.word	4
	.word	0
_Label_2159:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2160:
	.ascii	"Pself\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2169:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	1006,r13		! source line 1006
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_2170 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2171 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2171 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2172 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_2173 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-20]
!   _temp_2174 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2173  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_2175 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2176
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2178
	.word	12
	.word	4
	.word	_Label_2179
	.word	-12
	.word	4
	.word	_Label_2180
	.word	-16
	.word	4
	.word	_Label_2181
	.word	-20
	.word	4
	.word	_Label_2182
	.word	-24
	.word	4
	.word	_Label_2183
	.word	-28
	.word	4
	.word	_Label_2184
	.word	-32
	.word	4
	.word	0
_Label_2176:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2177:
	.ascii	"Pself\0"
	.align
_Label_2178:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	44,r1
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_2185 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-172]
!   Send message Lock
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   foundParent = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! FOR STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2190 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2191 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2190  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-176]
_Label_2186:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2191 then goto _Label_2189		
	load	[r14+-176],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2189
_Label_2187:
	mov	1028,r13		! source line 1028
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0IF",r10
!   _temp_2196 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_2196 [i ] into _temp_2197
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   _temp_2198 = _temp_2197 + 16
	load	[r14+-152],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: _temp_2195 = *_temp_2198  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2200 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-140]
!   Data Move: _temp_2199 = *_temp_2200  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if _temp_2195 != _temp_2199 then goto _Label_2193		(int)
	load	[r14+-160],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bne	_Label_2193
!	jmp	_Label_2194
_Label_2194:
!   _temp_2202 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_2202 [i ] into _temp_2203
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   _temp_2204 = _temp_2203 + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-124]
!   Data Move: _temp_2201 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if _temp_2201 != 2 then goto _Label_2193		(int)
	load	[r14+-136],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2193
!	jmp	_Label_2192
_Label_2192:
! THEN...
	mov	1030,r13		! source line 1030
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   _temp_2205 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_2205 [i ] into _temp_2206
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   _temp_2207 = _temp_2206 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_2207 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-112],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_2209 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Move address of _temp_2209 [i ] into _temp_2210
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   _temp_2208 = _temp_2210		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   _temp_2211 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_2208  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2212 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-92]
!   _temp_2213 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_2212  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2193:
! IF STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0IF",r10
!   _temp_2218 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Move address of _temp_2218 [i ] into _temp_2219
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-76]
!   _temp_2220 = _temp_2219 + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2217 = *_temp_2220  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2222 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2221 = *_temp_2222  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2217 != _temp_2221 then goto _Label_2215		(int)
	load	[r14+-84],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bne	_Label_2215
!	jmp	_Label_2216
_Label_2216:
!   _temp_2224 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2224 [i ] into _temp_2225
!     make sure index expr is >= 0
	load	[r14+-176],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	172,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2226 = _temp_2225 + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2223 = *_temp_2226  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_2223 != 1 then goto _Label_2215		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2215
!	jmp	_Label_2214
_Label_2214:
! THEN...
	mov	1035,r13		! source line 1035
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0AS",r10
!   foundParent = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! END IF...
_Label_2215:
!   Increment the FOR-LOOP index variable and jump back
_Label_2188:
!   i = i + 1
	load	[r14+-176],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-176]
	jmp	_Label_2186
! END FOR
_Label_2189:
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   _temp_2229 = foundParent XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_2229 then goto _Label_2228 else goto _Label_2227
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2227
	jmp	_Label_2228
_Label_2227:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2230 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2231 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_2232 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-36]
!   _temp_2233 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2232  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_2234
_Label_2228:
! ELSE...
	mov	1043,r13		! source line 1043
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2235 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2235 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_2236 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-24]
!   _temp_2237 = &aProcessDied
	load	[r14+8],r1
	add	r1,1776,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2236  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2234:
! SEND STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0SE",r10
!   _temp_2238 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0RE",r10
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2239
	.word	8		! total size of parameters
	.word	176		! frame size = 176
	.word	_Label_2240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2241
	.word	12
	.word	4
	.word	_Label_2242
	.word	-16
	.word	4
	.word	_Label_2243
	.word	-20
	.word	4
	.word	_Label_2244
	.word	-24
	.word	4
	.word	_Label_2245
	.word	-28
	.word	4
	.word	_Label_2246
	.word	-32
	.word	4
	.word	_Label_2247
	.word	-36
	.word	4
	.word	_Label_2248
	.word	-40
	.word	4
	.word	_Label_2249
	.word	-44
	.word	4
	.word	_Label_2250
	.word	-9
	.word	1
	.word	_Label_2251
	.word	-48
	.word	4
	.word	_Label_2252
	.word	-52
	.word	4
	.word	_Label_2253
	.word	-56
	.word	4
	.word	_Label_2254
	.word	-60
	.word	4
	.word	_Label_2255
	.word	-64
	.word	4
	.word	_Label_2256
	.word	-68
	.word	4
	.word	_Label_2257
	.word	-72
	.word	4
	.word	_Label_2258
	.word	-76
	.word	4
	.word	_Label_2259
	.word	-80
	.word	4
	.word	_Label_2260
	.word	-84
	.word	4
	.word	_Label_2261
	.word	-88
	.word	4
	.word	_Label_2262
	.word	-92
	.word	4
	.word	_Label_2263
	.word	-96
	.word	4
	.word	_Label_2264
	.word	-100
	.word	4
	.word	_Label_2265
	.word	-104
	.word	4
	.word	_Label_2266
	.word	-108
	.word	4
	.word	_Label_2267
	.word	-112
	.word	4
	.word	_Label_2268
	.word	-116
	.word	4
	.word	_Label_2269
	.word	-120
	.word	4
	.word	_Label_2270
	.word	-124
	.word	4
	.word	_Label_2271
	.word	-128
	.word	4
	.word	_Label_2272
	.word	-132
	.word	4
	.word	_Label_2273
	.word	-136
	.word	4
	.word	_Label_2274
	.word	-140
	.word	4
	.word	_Label_2275
	.word	-144
	.word	4
	.word	_Label_2276
	.word	-148
	.word	4
	.word	_Label_2277
	.word	-152
	.word	4
	.word	_Label_2278
	.word	-156
	.word	4
	.word	_Label_2279
	.word	-160
	.word	4
	.word	_Label_2280
	.word	-164
	.word	4
	.word	_Label_2281
	.word	-168
	.word	4
	.word	_Label_2282
	.word	-172
	.word	4
	.word	_Label_2283
	.word	-176
	.word	4
	.word	_Label_2284
	.word	-10
	.word	1
	.word	0
_Label_2239:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2240:
	.ascii	"Pself\0"
	.align
_Label_2241:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2250:
	.byte	'C'
	.ascii	"_temp_2229\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2284:
	.byte	'B'
	.ascii	"foundParent\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	14,r1
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_2285 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0WH",r10
_Label_2286:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2290 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2289 = *_temp_2290  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2289 == 2 then goto _Label_2288		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2288
!	jmp	_Label_2287
_Label_2287:
	mov	1056,r13		! source line 1056
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_2291 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-40]
!   _temp_2292 = &aProcessDied
	load	[r14+8],r1
	add	r1,1776,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2291  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2286
_Label_2288:
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2293 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatus = *_temp_2293  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2294 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2294 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_2295 = &freeList
	load	[r14+8],r1
	add	r1,1764,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_2296 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-20]
!   _temp_2297 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1748,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2296  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_2298 = &processManagerLock
	load	[r14+8],r1
	add	r1,1728,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2299
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2301
	.word	12
	.word	4
	.word	_Label_2302
	.word	-12
	.word	4
	.word	_Label_2303
	.word	-16
	.word	4
	.word	_Label_2304
	.word	-20
	.word	4
	.word	_Label_2305
	.word	-24
	.word	4
	.word	_Label_2306
	.word	-28
	.word	4
	.word	_Label_2307
	.word	-32
	.word	4
	.word	_Label_2308
	.word	-36
	.word	4
	.word	_Label_2309
	.word	-40
	.word	4
	.word	_Label_2310
	.word	-44
	.word	4
	.word	_Label_2311
	.word	-48
	.word	4
	.word	_Label_2312
	.word	-52
	.word	4
	.word	_Label_2313
	.word	-56
	.word	4
	.word	0
_Label_2299:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2300:
	.ascii	"Pself\0"
	.align
_Label_2301:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2313:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2314
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2314:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2315
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2315:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2316 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2316  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_2318 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_2320 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_2322 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2327 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2328 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2327  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2323:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2328 then goto _Label_2326		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2326
_Label_2324:
	mov	1139,r13		! source line 1139
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2331 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2331) then goto _Label_2330
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2330
!	jmp	_Label_2329
_Label_2329:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2332 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1143,r13		! source line 1143
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2330:
!   Increment the FOR-LOOP index variable and jump back
_Label_2325:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2323
! END FOR
_Label_2326:
! RETURN STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2333
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2334
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	_Label_2341
	.word	-36
	.word	4
	.word	_Label_2342
	.word	-40
	.word	4
	.word	_Label_2343
	.word	-44
	.word	4
	.word	_Label_2344
	.word	-48
	.word	4
	.word	_Label_2345
	.word	-52
	.word	4
	.word	_Label_2346
	.word	-56
	.word	4
	.word	0
_Label_2333:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2334:
	.ascii	"Pself\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2346:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_2347 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2348 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2349 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2350 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_2351 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_2352 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2353
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2354
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2355
	.word	-12
	.word	4
	.word	_Label_2356
	.word	-16
	.word	4
	.word	_Label_2357
	.word	-20
	.word	4
	.word	_Label_2358
	.word	-24
	.word	4
	.word	_Label_2359
	.word	-28
	.word	4
	.word	_Label_2360
	.word	-32
	.word	4
	.word	0
_Label_2353:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2354:
	.ascii	"Pself\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1164,r13		! source line 1164
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_2361 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0WH",r10
_Label_2362:
!   if numberFreeFrames >= 1 then goto _Label_2364		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2364
!	jmp	_Label_2363
_Label_2363:
	mov	1175,r13		! source line 1175
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2365 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2366 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2365  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2362
_Label_2364:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_2367 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2368 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   _temp_2369 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2369		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2370
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2371
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2372
	.word	-12
	.word	4
	.word	_Label_2373
	.word	-16
	.word	4
	.word	_Label_2374
	.word	-20
	.word	4
	.word	_Label_2375
	.word	-24
	.word	4
	.word	_Label_2376
	.word	-28
	.word	4
	.word	_Label_2377
	.word	-32
	.word	4
	.word	_Label_2378
	.word	-36
	.word	4
	.word	_Label_2379
	.word	-40
	.word	4
	.word	0
_Label_2370:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2371:
	.ascii	"Pself\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2378:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2379:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1194,r13		! source line 1194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0SE",r10
!   _temp_2380 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0WH",r10
_Label_2381:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_2383		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2383
!	jmp	_Label_2382
_Label_2382:
	mov	1201,r13		! source line 1201
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_2384 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2385 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2384  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2381
_Label_2383:
! FOR STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2390 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2391 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2390  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_2386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2391 then goto _Label_2389		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2389
_Label_2387:
	mov	1204,r13		! source line 1204
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_2392 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=free_bit  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   _temp_2393 = free_bit * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddress = 1048576 + _temp_2393		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddress  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2388:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2386
! END FOR
_Label_2389:
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2394 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2394 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   _temp_2395 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2396
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2398
	.word	12
	.word	4
	.word	_Label_2399
	.word	16
	.word	4
	.word	_Label_2400
	.word	-12
	.word	4
	.word	_Label_2401
	.word	-16
	.word	4
	.word	_Label_2402
	.word	-20
	.word	4
	.word	_Label_2403
	.word	-24
	.word	4
	.word	_Label_2404
	.word	-28
	.word	4
	.word	_Label_2405
	.word	-32
	.word	4
	.word	_Label_2406
	.word	-36
	.word	4
	.word	_Label_2407
	.word	-40
	.word	4
	.word	_Label_2408
	.word	-44
	.word	4
	.word	_Label_2409
	.word	-48
	.word	4
	.word	_Label_2410
	.word	-52
	.word	4
	.word	_Label_2411
	.word	-56
	.word	4
	.word	0
_Label_2396:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2397:
	.ascii	"Pself\0"
	.align
_Label_2398:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2399:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2409:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2410:
	.byte	'I'
	.ascii	"free_bit\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"frameAddress\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	18,r1
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	1217,r13		! source line 1217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_2412 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2417 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2419 = *_temp_2420  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2418 = _temp_2419 - 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2417  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-64]
_Label_2413:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2418 then goto _Label_2416		
	load	[r14+-64],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2416
_Label_2414:
	mov	1224,r13		! source line 1224
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddress  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0AS",r10
!   _temp_2421 = frameAddress - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   bitN = _temp_2421 div 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   _temp_2422 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=bitN  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2415:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2413
! END FOR
_Label_2416:
! ASSIGNMENT STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2424 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2423 = *_temp_2424  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   numberFreeFrames = numberFreeFrames + _temp_2423		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2425 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_2426 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2427 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2426  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_2428 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2429
	.word	8		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2431
	.word	12
	.word	4
	.word	_Label_2432
	.word	-12
	.word	4
	.word	_Label_2433
	.word	-16
	.word	4
	.word	_Label_2434
	.word	-20
	.word	4
	.word	_Label_2435
	.word	-24
	.word	4
	.word	_Label_2436
	.word	-28
	.word	4
	.word	_Label_2437
	.word	-32
	.word	4
	.word	_Label_2438
	.word	-36
	.word	4
	.word	_Label_2439
	.word	-40
	.word	4
	.word	_Label_2440
	.word	-44
	.word	4
	.word	_Label_2441
	.word	-48
	.word	4
	.word	_Label_2442
	.word	-52
	.word	4
	.word	_Label_2443
	.word	-56
	.word	4
	.word	_Label_2444
	.word	-60
	.word	4
	.word	_Label_2445
	.word	-64
	.word	4
	.word	_Label_2446
	.word	-68
	.word	4
	.word	_Label_2447
	.word	-72
	.word	4
	.word	0
_Label_2429:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2430:
	.ascii	"Pself\0"
	.align
_Label_2431:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2445:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2446:
	.byte	'I'
	.ascii	"bitN\0"
	.align
_Label_2447:
	.byte	'I'
	.ascii	"frameAddress\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2448
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2448:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2449
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2449:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3895:
	push	r0
	sub	r1,1,r1
	bne	_Label_3895
	mov	1246,r13		! source line 1246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0AS",r10
!   _temp_2450 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2452 = &_temp_2451
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2452 = _temp_2452 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2454:
!   Data Move: *_temp_2452 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2452 = _temp_2452 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2453 = _temp_2453 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2453) then goto _Label_2454
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2454
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2455 = &_temp_2451
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3896
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3896:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2450 = *_temp_2455  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3897:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3897
! RETURN STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2456
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-104
	.word	84
	.word	_Label_2462
	.word	-108
	.word	4
	.word	0
_Label_2456:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2457:
	.ascii	"Pself\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	1256,r13		! source line 1256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2463 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2463  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2464 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2464  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2470 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2469  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2465:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2470 then goto _Label_2468		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2468
_Label_2466:
	mov	1263,r13		! source line 1263
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2471 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2471  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2473 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2473 [i ] into _temp_2474
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2472 = _temp_2474		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2475 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2477 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2477 [i ] into _temp_2478
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2476 = *_temp_2478  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2476  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2479 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2479  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2480 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2480  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2481 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2483) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2484 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2484  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0IF",r10
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2488) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2487  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2487) then goto _Label_2486
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	1274,r13		! source line 1274
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2490) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2489  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2489  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2491
_Label_2486:
! ELSE...
	mov	1276,r13		! source line 1276
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2492 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2492  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2491:
! CALL STATEMENT...
!   _temp_2493 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0IF",r10
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2496) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2494 else goto _Label_2495
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2495
	jmp	_Label_2494
_Label_2494:
! THEN...
	mov	1280,r13		! source line 1280
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2497 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2498
_Label_2495:
! ELSE...
	mov	1282,r13		! source line 1282
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2499 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2498:
! CALL STATEMENT...
!   _temp_2500 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0IF",r10
	mov	1285,r13		! source line 1285
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2503) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2501 else goto _Label_2502
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2502
	jmp	_Label_2501
_Label_2501:
! THEN...
	mov	1286,r13		! source line 1286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2504 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2505
_Label_2502:
! ELSE...
	mov	1288,r13		! source line 1288
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2506 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2505:
! CALL STATEMENT...
!   _temp_2507 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0IF",r10
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2510) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2508 else goto _Label_2509
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2509
	jmp	_Label_2508
_Label_2508:
! THEN...
	mov	1292,r13		! source line 1292
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2511 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2512
_Label_2509:
! ELSE...
	mov	1294,r13		! source line 1294
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2513 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2512:
! CALL STATEMENT...
!   _temp_2514 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2514  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0IF",r10
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2517) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2515 else goto _Label_2516
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2516
	jmp	_Label_2515
_Label_2515:
! THEN...
	mov	1298,r13		! source line 1298
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2518 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2519
_Label_2516:
! ELSE...
	mov	1300,r13		! source line 1300
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2520 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2519:
! CALL STATEMENT...
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2467:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2465
! END FOR
_Label_2468:
! RETURN STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2521
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2523
	.word	-12
	.word	4
	.word	_Label_2524
	.word	-16
	.word	4
	.word	_Label_2525
	.word	-20
	.word	4
	.word	_Label_2526
	.word	-24
	.word	4
	.word	_Label_2527
	.word	-28
	.word	4
	.word	_Label_2528
	.word	-32
	.word	4
	.word	_Label_2529
	.word	-36
	.word	4
	.word	_Label_2530
	.word	-40
	.word	4
	.word	_Label_2531
	.word	-44
	.word	4
	.word	_Label_2532
	.word	-48
	.word	4
	.word	_Label_2533
	.word	-52
	.word	4
	.word	_Label_2534
	.word	-56
	.word	4
	.word	_Label_2535
	.word	-60
	.word	4
	.word	_Label_2536
	.word	-64
	.word	4
	.word	_Label_2537
	.word	-68
	.word	4
	.word	_Label_2538
	.word	-72
	.word	4
	.word	_Label_2539
	.word	-76
	.word	4
	.word	_Label_2540
	.word	-80
	.word	4
	.word	_Label_2541
	.word	-84
	.word	4
	.word	_Label_2542
	.word	-88
	.word	4
	.word	_Label_2543
	.word	-92
	.word	4
	.word	_Label_2544
	.word	-96
	.word	4
	.word	_Label_2545
	.word	-100
	.word	4
	.word	_Label_2546
	.word	-104
	.word	4
	.word	_Label_2547
	.word	-108
	.word	4
	.word	_Label_2548
	.word	-112
	.word	4
	.word	_Label_2549
	.word	-116
	.word	4
	.word	_Label_2550
	.word	-120
	.word	4
	.word	_Label_2551
	.word	-124
	.word	4
	.word	_Label_2552
	.word	-128
	.word	4
	.word	_Label_2553
	.word	-132
	.word	4
	.word	_Label_2554
	.word	-136
	.word	4
	.word	_Label_2555
	.word	-140
	.word	4
	.word	_Label_2556
	.word	-144
	.word	4
	.word	_Label_2557
	.word	-148
	.word	4
	.word	_Label_2558
	.word	-152
	.word	4
	.word	_Label_2559
	.word	-156
	.word	4
	.word	_Label_2560
	.word	-160
	.word	4
	.word	_Label_2561
	.word	-164
	.word	4
	.word	_Label_2562
	.word	-168
	.word	4
	.word	0
_Label_2521:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2522:
	.ascii	"Pself\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2562:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3899:
	push	r0
	sub	r1,1,r1
	bne	_Label_3899
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
!   _temp_2565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2565 [entry ] into _temp_2566
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2564 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2563 = _temp_2564 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2563  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2567
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2569
	.word	12
	.word	4
	.word	_Label_2570
	.word	-12
	.word	4
	.word	_Label_2571
	.word	-16
	.word	4
	.word	_Label_2572
	.word	-20
	.word	4
	.word	_Label_2573
	.word	-24
	.word	4
	.word	0
_Label_2567:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2568:
	.ascii	"Pself\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3900:
	push	r0
	sub	r1,1,r1
	bne	_Label_3900
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0RE",r10
!   _temp_2576 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2576 [entry ] into _temp_2577
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2575 = *_temp_2577  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2574 = _temp_2575 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2574  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2578
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2580
	.word	12
	.word	4
	.word	_Label_2581
	.word	-12
	.word	4
	.word	_Label_2582
	.word	-16
	.word	4
	.word	_Label_2583
	.word	-20
	.word	4
	.word	_Label_2584
	.word	-24
	.word	4
	.word	0
_Label_2578:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2579:
	.ascii	"Pself\0"
	.align
_Label_2580:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_2585 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2585 [entry ] into _temp_2586
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2590 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2590 [entry ] into _temp_2591
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2589 = *_temp_2591  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2588 = _temp_2589 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2587 = _temp_2588 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2586 = _temp_2587  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2592
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2594
	.word	12
	.word	4
	.word	_Label_2595
	.word	16
	.word	4
	.word	_Label_2596
	.word	-12
	.word	4
	.word	_Label_2597
	.word	-16
	.word	4
	.word	_Label_2598
	.word	-20
	.word	4
	.word	_Label_2599
	.word	-24
	.word	4
	.word	_Label_2600
	.word	-28
	.word	4
	.word	_Label_2601
	.word	-32
	.word	4
	.word	_Label_2602
	.word	-36
	.word	4
	.word	0
_Label_2592:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2593:
	.ascii	"Pself\0"
	.align
_Label_2594:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2595:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3902:
	push	r0
	sub	r1,1,r1
	bne	_Label_3902
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0RE",r10
!   _temp_2606 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2606 [entry ] into _temp_2607
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2605 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2604 = _temp_2605 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2604) then goto _Label_2608
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2608
!   _temp_2603 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2609
_Label_2608:
!   _temp_2603 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2609:
!   ReturnResult: _temp_2603  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2610
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2612
	.word	12
	.word	4
	.word	_Label_2613
	.word	-16
	.word	4
	.word	_Label_2614
	.word	-20
	.word	4
	.word	_Label_2615
	.word	-24
	.word	4
	.word	_Label_2616
	.word	-28
	.word	4
	.word	_Label_2617
	.word	-9
	.word	1
	.word	0
_Label_2610:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2611:
	.ascii	"Pself\0"
	.align
_Label_2612:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2617:
	.byte	'C'
	.ascii	"_temp_2603\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3903:
	push	r0
	sub	r1,1,r1
	bne	_Label_3903
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0RE",r10
!   _temp_2621 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2621 [entry ] into _temp_2622
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2620 = *_temp_2622  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2619 = _temp_2620 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2619) then goto _Label_2623
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2623
!   _temp_2618 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2624
_Label_2623:
!   _temp_2618 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2624:
!   ReturnResult: _temp_2618  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2625
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2627
	.word	12
	.word	4
	.word	_Label_2628
	.word	-16
	.word	4
	.word	_Label_2629
	.word	-20
	.word	4
	.word	_Label_2630
	.word	-24
	.word	4
	.word	_Label_2631
	.word	-28
	.word	4
	.word	_Label_2632
	.word	-9
	.word	1
	.word	0
_Label_2625:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2626:
	.ascii	"Pself\0"
	.align
_Label_2627:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2632:
	.byte	'C'
	.ascii	"_temp_2618\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0RE",r10
!   _temp_2636 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2636 [entry ] into _temp_2637
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2635 = *_temp_2637  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2634 = _temp_2635 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2634) then goto _Label_2638
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2638
!   _temp_2633 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2639
_Label_2638:
!   _temp_2633 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2639:
!   ReturnResult: _temp_2633  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2640
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2642
	.word	12
	.word	4
	.word	_Label_2643
	.word	-16
	.word	4
	.word	_Label_2644
	.word	-20
	.word	4
	.word	_Label_2645
	.word	-24
	.word	4
	.word	_Label_2646
	.word	-28
	.word	4
	.word	_Label_2647
	.word	-9
	.word	1
	.word	0
_Label_2640:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2641:
	.ascii	"Pself\0"
	.align
_Label_2642:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2647:
	.byte	'C'
	.ascii	"_temp_2633\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	1364,r13		! source line 1364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0RE",r10
!   _temp_2651 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2651 [entry ] into _temp_2652
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2650 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2649 = _temp_2650 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2649) then goto _Label_2653
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2653
!   _temp_2648 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2654
_Label_2653:
!   _temp_2648 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2654:
!   ReturnResult: _temp_2648  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2655
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2656
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2657
	.word	12
	.word	4
	.word	_Label_2658
	.word	-16
	.word	4
	.word	_Label_2659
	.word	-20
	.word	4
	.word	_Label_2660
	.word	-24
	.word	4
	.word	_Label_2661
	.word	-28
	.word	4
	.word	_Label_2662
	.word	-9
	.word	1
	.word	0
_Label_2655:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2656:
	.ascii	"Pself\0"
	.align
_Label_2657:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2662:
	.byte	'C'
	.ascii	"_temp_2648\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
	mov	1373,r13		! source line 1373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   _temp_2663 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2663 [entry ] into _temp_2664
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2667 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2667 [entry ] into _temp_2668
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2666 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2665 = _temp_2666 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2664 = _temp_2665  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2669
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2671
	.word	12
	.word	4
	.word	_Label_2672
	.word	-12
	.word	4
	.word	_Label_2673
	.word	-16
	.word	4
	.word	_Label_2674
	.word	-20
	.word	4
	.word	_Label_2675
	.word	-24
	.word	4
	.word	_Label_2676
	.word	-28
	.word	4
	.word	_Label_2677
	.word	-32
	.word	4
	.word	0
_Label_2669:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2670:
	.ascii	"Pself\0"
	.align
_Label_2671:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
	mov	1382,r13		! source line 1382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   _temp_2678 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2678 [entry ] into _temp_2679
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2682 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2682 [entry ] into _temp_2683
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2681 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2680 = _temp_2681 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2679 = _temp_2680  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2684
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2686
	.word	12
	.word	4
	.word	_Label_2687
	.word	-12
	.word	4
	.word	_Label_2688
	.word	-16
	.word	4
	.word	_Label_2689
	.word	-20
	.word	4
	.word	_Label_2690
	.word	-24
	.word	4
	.word	_Label_2691
	.word	-28
	.word	4
	.word	_Label_2692
	.word	-32
	.word	4
	.word	0
_Label_2684:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2685:
	.ascii	"Pself\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	1391,r13		! source line 1391
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   _temp_2693 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2693 [entry ] into _temp_2694
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2697 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2697 [entry ] into _temp_2698
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2696 = *_temp_2698  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2695 = _temp_2696 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2694 = _temp_2695  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2699
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2701
	.word	12
	.word	4
	.word	_Label_2702
	.word	-12
	.word	4
	.word	_Label_2703
	.word	-16
	.word	4
	.word	_Label_2704
	.word	-20
	.word	4
	.word	_Label_2705
	.word	-24
	.word	4
	.word	_Label_2706
	.word	-28
	.word	4
	.word	_Label_2707
	.word	-32
	.word	4
	.word	0
_Label_2699:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2700:
	.ascii	"Pself\0"
	.align
_Label_2701:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _temp_2708 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2708 [entry ] into _temp_2709
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2712 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2712 [entry ] into _temp_2713
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2711 = *_temp_2713  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2710 = _temp_2711 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2709 = _temp_2710  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2714
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2715
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2716
	.word	12
	.word	4
	.word	_Label_2717
	.word	-12
	.word	4
	.word	_Label_2718
	.word	-16
	.word	4
	.word	_Label_2719
	.word	-20
	.word	4
	.word	_Label_2720
	.word	-24
	.word	4
	.word	_Label_2721
	.word	-28
	.word	4
	.word	_Label_2722
	.word	-32
	.word	4
	.word	0
_Label_2714:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2715:
	.ascii	"Pself\0"
	.align
_Label_2716:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   _temp_2723 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2723 [entry ] into _temp_2724
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2727 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2727 [entry ] into _temp_2728
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2726 = *_temp_2728  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2725 = _temp_2726 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2724 = _temp_2725  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2729
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2731
	.word	12
	.word	4
	.word	_Label_2732
	.word	-12
	.word	4
	.word	_Label_2733
	.word	-16
	.word	4
	.word	_Label_2734
	.word	-20
	.word	4
	.word	_Label_2735
	.word	-24
	.word	4
	.word	_Label_2736
	.word	-28
	.word	4
	.word	_Label_2737
	.word	-32
	.word	4
	.word	0
_Label_2729:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2730:
	.ascii	"Pself\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	1418,r13		! source line 1418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   _temp_2738 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2738 [entry ] into _temp_2739
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2742 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2742 [entry ] into _temp_2743
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2741 = *_temp_2743  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2740 = _temp_2741 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2739 = _temp_2740  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2744
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2746
	.word	12
	.word	4
	.word	_Label_2747
	.word	-12
	.word	4
	.word	_Label_2748
	.word	-16
	.word	4
	.word	_Label_2749
	.word	-20
	.word	4
	.word	_Label_2750
	.word	-24
	.word	4
	.word	_Label_2751
	.word	-28
	.word	4
	.word	_Label_2752
	.word	-32
	.word	4
	.word	0
_Label_2744:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2745:
	.ascii	"Pself\0"
	.align
_Label_2746:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0AS",r10
!   _temp_2753 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2753 [entry ] into _temp_2754
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2757 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2757 [entry ] into _temp_2758
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2756 = *_temp_2758  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2755 = _temp_2756 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2754 = _temp_2755  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2759
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2761
	.word	12
	.word	4
	.word	_Label_2762
	.word	-12
	.word	4
	.word	_Label_2763
	.word	-16
	.word	4
	.word	_Label_2764
	.word	-20
	.word	4
	.word	_Label_2765
	.word	-24
	.word	4
	.word	_Label_2766
	.word	-28
	.word	4
	.word	_Label_2767
	.word	-32
	.word	4
	.word	0
_Label_2759:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2760:
	.ascii	"Pself\0"
	.align
_Label_2761:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   _temp_2768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2768 [entry ] into _temp_2769
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2772 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2772 [entry ] into _temp_2773
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2771 = *_temp_2773  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2770 = _temp_2771 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2769 = _temp_2770  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2774
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2775
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2776
	.word	12
	.word	4
	.word	_Label_2777
	.word	-12
	.word	4
	.word	_Label_2778
	.word	-16
	.word	4
	.word	_Label_2779
	.word	-20
	.word	4
	.word	_Label_2780
	.word	-24
	.word	4
	.word	_Label_2781
	.word	-28
	.word	4
	.word	_Label_2782
	.word	-32
	.word	4
	.word	0
_Label_2774:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2775:
	.ascii	"Pself\0"
	.align
_Label_2776:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
	mov	1445,r13		! source line 1445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2784 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2784 [0 ] into _temp_2785
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2783 = _temp_2785		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2786 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2783  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2786  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2787
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2789
	.word	-12
	.word	4
	.word	_Label_2790
	.word	-16
	.word	4
	.word	_Label_2791
	.word	-20
	.word	4
	.word	_Label_2792
	.word	-24
	.word	4
	.word	0
_Label_2787:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2788:
	.ascii	"Pself\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
	mov	1456,r13		! source line 1456
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2793
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2793
	jmp	_Label_2794
_Label_2793:
! THEN...
	mov	1472,r13		! source line 1472
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2795
_Label_2794:
! ELSE...
	mov	1473,r13		! source line 1473
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2797		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2797
!	jmp	_Label_2796
_Label_2796:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2797:
! END IF...
_Label_2795:
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0WH",r10
_Label_2798:
!	jmp	_Label_2799
_Label_2799:
	mov	1480,r13		! source line 1480
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2802		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2802
!	jmp	_Label_2801
_Label_2801:
! THEN...
	mov	1482,r13		! source line 1482
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2803 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1482,r13		! source line 1482
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2802:
! IF STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0IF",r10
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2807) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2806  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2806 then goto _Label_2805 else goto _Label_2804
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2804
	jmp	_Label_2805
_Label_2804:
! THEN...
	mov	1486,r13		! source line 1486
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2808 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1486,r13		! source line 1486
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2805:
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
	mov	1489,r13		! source line 1489
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2810) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2809  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2809 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0WH",r10
_Label_2811:
!   if offset >= 8192 then goto _Label_2813		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2813
!	jmp	_Label_2812
_Label_2812:
	mov	1491,r13		! source line 1491
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2814 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2814  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2816		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2816
!	jmp	_Label_2815
_Label_2815:
! THEN...
	mov	1500,r13		! source line 1500
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2816:
! END WHILE...
	jmp	_Label_2811
_Label_2813:
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2798
_Label_2800:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2817
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2819
	.word	12
	.word	4
	.word	_Label_2820
	.word	16
	.word	4
	.word	_Label_2821
	.word	20
	.word	4
	.word	_Label_2822
	.word	-9
	.word	1
	.word	_Label_2823
	.word	-16
	.word	4
	.word	_Label_2824
	.word	-20
	.word	4
	.word	_Label_2825
	.word	-24
	.word	4
	.word	_Label_2826
	.word	-28
	.word	4
	.word	_Label_2827
	.word	-10
	.word	1
	.word	_Label_2828
	.word	-32
	.word	4
	.word	_Label_2829
	.word	-36
	.word	4
	.word	_Label_2830
	.word	-40
	.word	4
	.word	_Label_2831
	.word	-44
	.word	4
	.word	_Label_2832
	.word	-48
	.word	4
	.word	0
_Label_2817:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2818:
	.ascii	"Pself\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2821:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2822:
	.byte	'C'
	.ascii	"_temp_2814\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2827:
	.byte	'C'
	.ascii	"_temp_2806\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2831:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2832:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
	mov	1510,r13		! source line 1510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2833
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2833
	jmp	_Label_2834
_Label_2833:
! THEN...
	mov	1522,r13		! source line 1522
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2835
_Label_2834:
! ELSE...
	mov	1523,r13		! source line 1523
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2837		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2837
!	jmp	_Label_2836
_Label_2836:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2837:
! END IF...
_Label_2835:
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0WH",r10
_Label_2838:
!	jmp	_Label_2839
_Label_2839:
	mov	1528,r13		! source line 1528
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2844		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2844
	jmp	_Label_2841
_Label_2844:
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2846) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2845  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2845 then goto _Label_2843 else goto _Label_2841
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2841
	jmp	_Label_2843
_Label_2843:
	mov	1531,r13		! source line 1531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2848) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2847  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2847 then goto _Label_2842 else goto _Label_2841
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2841
	jmp	_Label_2842
_Label_2841:
! THEN...
	mov	1532,r13		! source line 1532
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2842:
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
	mov	1534,r13		! source line 1534
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2849  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2849 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0WH",r10
_Label_2851:
!   if offset >= 8192 then goto _Label_2853		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2853
!	jmp	_Label_2852
_Label_2852:
	mov	1535,r13		! source line 1535
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2854 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2854  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2856		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2856
!	jmp	_Label_2855
_Label_2855:
! THEN...
	mov	1542,r13		! source line 1542
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2856:
! END WHILE...
	jmp	_Label_2851
_Label_2853:
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2838
_Label_2840:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2857
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2859
	.word	12
	.word	4
	.word	_Label_2860
	.word	16
	.word	4
	.word	_Label_2861
	.word	20
	.word	4
	.word	_Label_2862
	.word	-9
	.word	1
	.word	_Label_2863
	.word	-16
	.word	4
	.word	_Label_2864
	.word	-20
	.word	4
	.word	_Label_2865
	.word	-24
	.word	4
	.word	_Label_2866
	.word	-10
	.word	1
	.word	_Label_2867
	.word	-28
	.word	4
	.word	_Label_2868
	.word	-11
	.word	1
	.word	_Label_2869
	.word	-32
	.word	4
	.word	_Label_2870
	.word	-36
	.word	4
	.word	_Label_2871
	.word	-40
	.word	4
	.word	_Label_2872
	.word	-44
	.word	4
	.word	0
_Label_2857:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2858:
	.ascii	"Pself\0"
	.align
_Label_2859:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2861:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2862:
	.byte	'C'
	.ascii	"_temp_2854\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2866:
	.byte	'C'
	.ascii	"_temp_2847\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2868:
	.byte	'C'
	.ascii	"_temp_2845\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2872:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	1552,r13		! source line 1552
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0IF",r10
	mov	1576,r13		! source line 1576
	mov	"\0\0SE",r10
!   _temp_2876 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2877) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2876  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2875  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2875 >= 4 then goto _Label_2874		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2874
!	jmp	_Label_2873
_Label_2873:
! THEN...
	mov	1579,r13		! source line 1579
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2874:
! IF STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2879		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	1584,r13		! source line 1584
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! ASSIGNMENT STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
	mov	1589,r13		! source line 1589
	mov	"\0\0SE",r10
!   _temp_2882 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2881 = _temp_2882 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2883 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2884) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2881  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2883  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2880  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2880  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2885
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2887
	.word	12
	.word	4
	.word	_Label_2888
	.word	16
	.word	4
	.word	_Label_2889
	.word	20
	.word	4
	.word	_Label_2890
	.word	-12
	.word	4
	.word	_Label_2891
	.word	-16
	.word	4
	.word	_Label_2892
	.word	-20
	.word	4
	.word	_Label_2893
	.word	-24
	.word	4
	.word	_Label_2894
	.word	-28
	.word	4
	.word	_Label_2895
	.word	-32
	.word	4
	.word	_Label_2896
	.word	-36
	.word	4
	.word	_Label_2897
	.word	-40
	.word	4
	.word	_Label_2898
	.word	-44
	.word	4
	.word	0
_Label_2885:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2886:
	.ascii	"Pself\0"
	.align
_Label_2887:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2888:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2889:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2898:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2899
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2899:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2900
	.word	_sourceFileName
	.word	310		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2900:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3918:
	push	r0
	sub	r1,1,r1
	bne	_Label_3918
	mov	2330,r13		! source line 2330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2901 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2331,r13		! source line 2331
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2903 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_2905 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2906
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2908
	.word	-12
	.word	4
	.word	_Label_2909
	.word	-16
	.word	4
	.word	_Label_2910
	.word	-20
	.word	4
	.word	_Label_2911
	.word	-24
	.word	4
	.word	_Label_2912
	.word	-28
	.word	4
	.word	0
_Label_2906:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2907:
	.ascii	"Pself\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3919:
	push	r0
	sub	r1,1,r1
	bne	_Label_3919
	mov	2346,r13		! source line 2346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0SE",r10
!   _temp_2913 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0WH",r10
_Label_2914:
!	jmp	_Label_2915
_Label_2915:
	mov	2360,r13		! source line 2360
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2917 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2917  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_2919 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2367,r13		! source line 2367
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2928 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2922
	cmp	r1,2
	be	_Label_2923
	cmp	r1,3
	be	_Label_2924
	cmp	r1,4
	be	_Label_2925
	cmp	r1,5
	be	_Label_2926
	cmp	r1,6
	be	_Label_2927
	jmp	_Label_2920
! CASE 1...
_Label_2922:
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2929 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2923:
! CALL STATEMENT...
!   _temp_2930 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2372,r13		! source line 2372
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2924:
! CALL STATEMENT...
!   _temp_2931 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2374,r13		! source line 2374
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2925:
! CALL STATEMENT...
!   _temp_2932 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2932  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2926:
! BREAK STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0BR",r10
	jmp	_Label_2921
! CASE 6...
_Label_2927:
! CALL STATEMENT...
!   _temp_2933 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2382,r13		! source line 2382
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2920:
! CALL STATEMENT...
!   _temp_2934 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2384,r13		! source line 2384
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2921:
! END WHILE...
	jmp	_Label_2914
_Label_2916:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2935
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2937
	.word	12
	.word	4
	.word	_Label_2938
	.word	16
	.word	4
	.word	_Label_2939
	.word	20
	.word	4
	.word	_Label_2940
	.word	-12
	.word	4
	.word	_Label_2941
	.word	-16
	.word	4
	.word	_Label_2942
	.word	-20
	.word	4
	.word	_Label_2943
	.word	-24
	.word	4
	.word	_Label_2944
	.word	-28
	.word	4
	.word	_Label_2945
	.word	-32
	.word	4
	.word	_Label_2946
	.word	-36
	.word	4
	.word	_Label_2947
	.word	-40
	.word	4
	.word	_Label_2948
	.word	-44
	.word	4
	.word	_Label_2949
	.word	-48
	.word	4
	.word	_Label_2950
	.word	-52
	.word	4
	.word	0
_Label_2935:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2936:
	.ascii	"Pself\0"
	.align
_Label_2937:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2938:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2393,r13		! source line 2393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2951
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2953
	.word	12
	.word	4
	.word	_Label_2954
	.word	16
	.word	4
	.word	_Label_2955
	.word	20
	.word	4
	.word	_Label_2956
	.word	24
	.word	4
	.word	0
_Label_2951:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2952:
	.ascii	"Pself\0"
	.align
_Label_2953:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2956:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3920:
	push	r0
	sub	r1,1,r1
	bne	_Label_3920
	mov	2419,r13		! source line 2419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0SE",r10
!   _temp_2957 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0WH",r10
_Label_2958:
!	jmp	_Label_2959
_Label_2959:
	mov	2432,r13		! source line 2432
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2961 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2962) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2961  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_2963 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2438,r13		! source line 2438
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2972 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2966
	cmp	r1,2
	be	_Label_2967
	cmp	r1,3
	be	_Label_2968
	cmp	r1,4
	be	_Label_2969
	cmp	r1,5
	be	_Label_2970
	cmp	r1,6
	be	_Label_2971
	jmp	_Label_2964
! CASE 1...
_Label_2966:
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_2973 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2967:
! CALL STATEMENT...
!   _temp_2974 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2974  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2443,r13		! source line 2443
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2968:
! CALL STATEMENT...
!   _temp_2975 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2975  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2445,r13		! source line 2445
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2969:
! CALL STATEMENT...
!   _temp_2976 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2447,r13		! source line 2447
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2970:
! BREAK STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0BR",r10
	jmp	_Label_2965
! CASE 6...
_Label_2971:
! CALL STATEMENT...
!   _temp_2977 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2453,r13		! source line 2453
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2964:
! CALL STATEMENT...
!   _temp_2978 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2455,r13		! source line 2455
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2965:
! END WHILE...
	jmp	_Label_2958
_Label_2960:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2979
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2980
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2981
	.word	12
	.word	4
	.word	_Label_2982
	.word	16
	.word	4
	.word	_Label_2983
	.word	20
	.word	4
	.word	_Label_2984
	.word	-12
	.word	4
	.word	_Label_2985
	.word	-16
	.word	4
	.word	_Label_2986
	.word	-20
	.word	4
	.word	_Label_2987
	.word	-24
	.word	4
	.word	_Label_2988
	.word	-28
	.word	4
	.word	_Label_2989
	.word	-32
	.word	4
	.word	_Label_2990
	.word	-36
	.word	4
	.word	_Label_2991
	.word	-40
	.word	4
	.word	_Label_2992
	.word	-44
	.word	4
	.word	_Label_2993
	.word	-48
	.word	4
	.word	_Label_2994
	.word	-52
	.word	4
	.word	0
_Label_2979:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2980:
	.ascii	"Pself\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2982:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2464,r13		! source line 2464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2995
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2997
	.word	12
	.word	4
	.word	_Label_2998
	.word	16
	.word	4
	.word	_Label_2999
	.word	20
	.word	4
	.word	_Label_3000
	.word	24
	.word	4
	.word	0
_Label_2995:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2996:
	.ascii	"Pself\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3000:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3001
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3001:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3002
	.word	_sourceFileName
	.word	333		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3002:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
	mov	2495,r13		! source line 2495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3003 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
!   _temp_3005 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_3008 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   _temp_3009 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3011 = &_temp_3010
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3011 = _temp_3011 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3013 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3922:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3922
!   _temp_3013 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3015:
!   Data Move: *_temp_3011 = _temp_3013  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3923:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3923
!   _temp_3011 = _temp_3011 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3012 = _temp_3012 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3012) then goto _Label_3015
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3015
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3016 = &_temp_3010
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3924
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3924:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3009 = *_temp_3016  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3925:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3925
! FOR STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3021 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3022 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3021  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3017:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3022 then goto _Label_3020		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3020
_Label_3018:
	mov	2512,r13		! source line 2512
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   _temp_3023 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3023 [i ] into _temp_3024
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3025 = _temp_3024 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3025 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_3026 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3026 [i ] into _temp_3027
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0SE",r10
!   _temp_3029 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3029 [i ] into _temp_3030
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3028 = _temp_3030		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3031 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3028  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3019:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3017
! END FOR
_Label_3020:
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
!   _temp_3034 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   _temp_3035 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3037 = &_temp_3036
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3037 = _temp_3037 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3039 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3926:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3926
!   _temp_3039 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3041:
!   Data Move: *_temp_3037 = _temp_3039  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3927:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3927
!   _temp_3037 = _temp_3037 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3038 = _temp_3038 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3038) then goto _Label_3041
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3041
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3042 = &_temp_3036
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3928
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3928:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3035 = *_temp_3042  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3929:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3929
! FOR STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3047 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3048 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3047  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3043:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3048 then goto _Label_3046		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3046
_Label_3044:
	mov	2524,r13		! source line 2524
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   _temp_3049 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3049 [i ] into _temp_3050
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3051 = _temp_3050 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3051 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_3053 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3053 [i ] into _temp_3054
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3052 = _temp_3054		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3055 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3052  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3045:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3043
! END FOR
_Label_3046:
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3930:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3930
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   _temp_3057 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3058 = _temp_3057 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3058 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
	mov	2536,r13		! source line 2536
	mov	"\0\0SE",r10
!   _temp_3059 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_3060 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3061
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3062
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3063
	.word	-12
	.word	4
	.word	_Label_3064
	.word	-16
	.word	4
	.word	_Label_3065
	.word	-20
	.word	4
	.word	_Label_3066
	.word	-24
	.word	4
	.word	_Label_3067
	.word	-28
	.word	4
	.word	_Label_3068
	.word	-32
	.word	4
	.word	_Label_3069
	.word	-36
	.word	4
	.word	_Label_3070
	.word	-40
	.word	4
	.word	_Label_3071
	.word	-44
	.word	4
	.word	_Label_3072
	.word	-48
	.word	4
	.word	_Label_3073
	.word	-52
	.word	4
	.word	_Label_3074
	.word	-56
	.word	4
	.word	_Label_3075
	.word	-60
	.word	4
	.word	_Label_3076
	.word	-64
	.word	4
	.word	_Label_3077
	.word	-68
	.word	4
	.word	_Label_3078
	.word	-72
	.word	4
	.word	_Label_3079
	.word	-100
	.word	28
	.word	_Label_3080
	.word	-104
	.word	4
	.word	_Label_3081
	.word	-108
	.word	4
	.word	_Label_3082
	.word	-392
	.word	284
	.word	_Label_3083
	.word	-396
	.word	4
	.word	_Label_3084
	.word	-400
	.word	4
	.word	_Label_3085
	.word	-404
	.word	4
	.word	_Label_3086
	.word	-408
	.word	4
	.word	_Label_3087
	.word	-412
	.word	4
	.word	_Label_3088
	.word	-416
	.word	4
	.word	_Label_3089
	.word	-420
	.word	4
	.word	_Label_3090
	.word	-424
	.word	4
	.word	_Label_3091
	.word	-428
	.word	4
	.word	_Label_3092
	.word	-432
	.word	4
	.word	_Label_3093
	.word	-436
	.word	4
	.word	_Label_3094
	.word	-440
	.word	4
	.word	_Label_3095
	.word	-444
	.word	4
	.word	_Label_3096
	.word	-448
	.word	4
	.word	_Label_3097
	.word	-452
	.word	4
	.word	_Label_3098
	.word	-456
	.word	4
	.word	_Label_3099
	.word	-460
	.word	4
	.word	_Label_3100
	.word	-500
	.word	40
	.word	_Label_3101
	.word	-504
	.word	4
	.word	_Label_3102
	.word	-508
	.word	4
	.word	_Label_3103
	.word	-912
	.word	404
	.word	_Label_3104
	.word	-916
	.word	4
	.word	_Label_3105
	.word	-920
	.word	4
	.word	_Label_3106
	.word	-924
	.word	4
	.word	_Label_3107
	.word	-928
	.word	4
	.word	_Label_3108
	.word	-932
	.word	4
	.word	_Label_3109
	.word	-936
	.word	4
	.word	_Label_3110
	.word	-940
	.word	4
	.word	_Label_3111
	.word	-944
	.word	4
	.word	0
_Label_3061:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3062:
	.ascii	"Pself\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3111:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
	mov	2542,r13		! source line 2542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0SE",r10
!   _temp_3112 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3113 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3113  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3118 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3119 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3118  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3114:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3119 then goto _Label_3117		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3117
_Label_3115:
	mov	2546,r13		! source line 2546
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3120 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3120  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3121 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3121  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_3122 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3122 [i ] into _temp_3123
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3116:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3114
! END FOR
_Label_3117:
! CALL STATEMENT...
!   _temp_3124 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3124  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_3125 = _function_183_printFCB
	set	_function_183_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3126 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3125  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2554,r13		! source line 2554
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3127 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3127  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3132 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3133 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3132  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3128:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3133 then goto _Label_3131		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3131
_Label_3129:
	mov	2556,r13		! source line 2556
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3134 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3134  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3135 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3135  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3137 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3137 [i ] into _temp_3138
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3136 = _temp_3138		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2560,r13		! source line 2560
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3139 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3139  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
!   _temp_3140 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3140 [i ] into _temp_3141
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3130:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3128
! END FOR
_Label_3131:
! CALL STATEMENT...
!   _temp_3142 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2564,r13		! source line 2564
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_3143 = _function_182_printOpen
	set	_function_182_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3144 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3143  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   _temp_3145 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3146
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3148
	.word	-12
	.word	4
	.word	_Label_3149
	.word	-16
	.word	4
	.word	_Label_3150
	.word	-20
	.word	4
	.word	_Label_3151
	.word	-24
	.word	4
	.word	_Label_3152
	.word	-28
	.word	4
	.word	_Label_3153
	.word	-32
	.word	4
	.word	_Label_3154
	.word	-36
	.word	4
	.word	_Label_3155
	.word	-40
	.word	4
	.word	_Label_3156
	.word	-44
	.word	4
	.word	_Label_3157
	.word	-48
	.word	4
	.word	_Label_3158
	.word	-52
	.word	4
	.word	_Label_3159
	.word	-56
	.word	4
	.word	_Label_3160
	.word	-60
	.word	4
	.word	_Label_3161
	.word	-64
	.word	4
	.word	_Label_3162
	.word	-68
	.word	4
	.word	_Label_3163
	.word	-72
	.word	4
	.word	_Label_3164
	.word	-76
	.word	4
	.word	_Label_3165
	.word	-80
	.word	4
	.word	_Label_3166
	.word	-84
	.word	4
	.word	_Label_3167
	.word	-88
	.word	4
	.word	_Label_3168
	.word	-92
	.word	4
	.word	_Label_3169
	.word	-96
	.word	4
	.word	_Label_3170
	.word	-100
	.word	4
	.word	_Label_3171
	.word	-104
	.word	4
	.word	_Label_3172
	.word	-108
	.word	4
	.word	_Label_3173
	.word	-112
	.word	4
	.word	_Label_3174
	.word	-116
	.word	4
	.word	0
_Label_3146:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3147:
	.ascii	"Pself\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3174:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	2569,r13		! source line 2569
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
!   _temp_3175 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3176
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3176
	jmp	_Label_3177
_Label_3176:
! THEN...
	mov	2586,r13		! source line 2586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3177:
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
!   _temp_3178 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0WH",r10
_Label_3179:
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_3182 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3180 else goto _Label_3181
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3181
	jmp	_Label_3180
_Label_3180:
	mov	2590,r13		! source line 2590
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_3183 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3184 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3183  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3179
_Label_3181:
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_3185 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3186 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3186 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3187 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3187 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3188 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3188 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   _temp_3189 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3190
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3191
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3192
	.word	12
	.word	4
	.word	_Label_3193
	.word	-12
	.word	4
	.word	_Label_3194
	.word	-16
	.word	4
	.word	_Label_3195
	.word	-20
	.word	4
	.word	_Label_3196
	.word	-24
	.word	4
	.word	_Label_3197
	.word	-28
	.word	4
	.word	_Label_3198
	.word	-32
	.word	4
	.word	_Label_3199
	.word	-36
	.word	4
	.word	_Label_3200
	.word	-40
	.word	4
	.word	_Label_3201
	.word	-44
	.word	4
	.word	_Label_3202
	.word	-48
	.word	4
	.word	_Label_3203
	.word	-52
	.word	4
	.word	_Label_3204
	.word	-56
	.word	4
	.word	0
_Label_3190:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3191:
	.ascii	"Pself\0"
	.align
_Label_3192:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3203:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3204:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
	mov	2604,r13		! source line 2604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3206		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3206
!	jmp	_Label_3205
_Label_3205:
! THEN...
	mov	2633,r13		! source line 2633
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3207 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2633,r13		! source line 2633
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3206:
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0WH",r10
_Label_3208:
!   if numFiles <= 0 then goto _Label_3210		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3210
!	jmp	_Label_3209
_Label_3209:
	mov	2641,r13		! source line 2641
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3211 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3211  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3212 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3212  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3213 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CA",r10
	call	_function_184_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3217 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3217 then goto _Label_3215		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3215
!	jmp	_Label_3216
_Label_3216:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3219
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_3218 = _temp_3219		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3218  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3214 else goto _Label_3215
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3215
	jmp	_Label_3214
_Label_3214:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0BR",r10
	jmp	_Label_3210
! END IF...
_Label_3215:
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3208
_Label_3210:
! IF STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3221		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3221
!	jmp	_Label_3220
_Label_3220:
! THEN...
	mov	2657,r13		! source line 2657
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3221:
! SEND STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0SE",r10
!   _temp_3222 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3227 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3228 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3227  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3223:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3228 then goto _Label_3226		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3226
_Label_3224:
	mov	2662,r13		! source line 2662
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   _temp_3229 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3229 [i ] into _temp_3230
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3230		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3234 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3233 = *_temp_3234  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3233 != start then goto _Label_3232		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3232
!	jmp	_Label_3231
_Label_3231:
! THEN...
	mov	2665,r13		! source line 2665
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3235 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3238 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3237 = *_temp_3238  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3236 = _temp_3237 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3235 = _temp_3236  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0SE",r10
!   _temp_3239 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3232:
!   Increment the FOR-LOOP index variable and jump back
_Label_3225:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3223
! END FOR
_Label_3226:
! WHILE STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0WH",r10
_Label_3240:
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_3243 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3241 else goto _Label_3242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3242
	jmp	_Label_3241
_Label_3241:
	mov	2672,r13		! source line 2672
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3244 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3245 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3244  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3240
_Label_3242:
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0AS",r10
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_3246 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0SE",r10
!   _temp_3247 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3248 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3248 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3249 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3249 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3250 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3250 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3255 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3254 = *_temp_3255  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3254 < 0 then goto _Label_3253		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3253
	jmp	_Label_3251
_Label_3253:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3256 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3256 ) then goto _Label_3252		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3252
!	jmp	_Label_3251
_Label_3251:
! THEN...
	mov	2685,r13		! source line 2685
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3257 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3257  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2685,r13		! source line 2685
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3252:
! RETURN STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3258
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3260
	.word	12
	.word	4
	.word	_Label_3261
	.word	-12
	.word	4
	.word	_Label_3262
	.word	-16
	.word	4
	.word	_Label_3263
	.word	-20
	.word	4
	.word	_Label_3264
	.word	-24
	.word	4
	.word	_Label_3265
	.word	-28
	.word	4
	.word	_Label_3266
	.word	-32
	.word	4
	.word	_Label_3267
	.word	-36
	.word	4
	.word	_Label_3268
	.word	-40
	.word	4
	.word	_Label_3269
	.word	-44
	.word	4
	.word	_Label_3270
	.word	-48
	.word	4
	.word	_Label_3271
	.word	-52
	.word	4
	.word	_Label_3272
	.word	-56
	.word	4
	.word	_Label_3273
	.word	-60
	.word	4
	.word	_Label_3274
	.word	-64
	.word	4
	.word	_Label_3275
	.word	-68
	.word	4
	.word	_Label_3276
	.word	-72
	.word	4
	.word	_Label_3277
	.word	-76
	.word	4
	.word	_Label_3278
	.word	-80
	.word	4
	.word	_Label_3279
	.word	-84
	.word	4
	.word	_Label_3280
	.word	-88
	.word	4
	.word	_Label_3281
	.word	-92
	.word	4
	.word	_Label_3282
	.word	-96
	.word	4
	.word	_Label_3283
	.word	-100
	.word	4
	.word	_Label_3284
	.word	-104
	.word	4
	.word	_Label_3285
	.word	-108
	.word	4
	.word	_Label_3286
	.word	-112
	.word	4
	.word	_Label_3287
	.word	-116
	.word	4
	.word	_Label_3288
	.word	-120
	.word	4
	.word	_Label_3289
	.word	-124
	.word	4
	.word	_Label_3290
	.word	-128
	.word	4
	.word	_Label_3291
	.word	-132
	.word	4
	.word	_Label_3292
	.word	-136
	.word	4
	.word	_Label_3293
	.word	-140
	.word	4
	.word	_Label_3294
	.word	-144
	.word	4
	.word	_Label_3295
	.word	-148
	.word	4
	.word	_Label_3296
	.word	-152
	.word	4
	.word	_Label_3297
	.word	-156
	.word	4
	.word	_Label_3298
	.word	-160
	.word	4
	.word	0
_Label_3258:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3259:
	.ascii	"Pself\0"
	.align
_Label_3260:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3292:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3293:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3294:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3295:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3296:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3297:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3298:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
	mov	2700,r13		! source line 2700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0IF",r10
!   _temp_3301 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3301 then goto _Label_3300		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3300
!	jmp	_Label_3299
_Label_3299:
! THEN...
	mov	2703,r13		! source line 2703
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3300:
! SEND STATEMENT...
	mov	2705,r13		! source line 2705
	mov	"\0\0SE",r10
!   _temp_3302 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
!   _temp_3303 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3304 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3304  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3305 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3308 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3307 = *_temp_3308  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3306 = _temp_3307 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3305 = _temp_3306  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3312 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3311 = *_temp_3312  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3311 > 0 then goto _Label_3310		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3310
!	jmp	_Label_3309
_Label_3309:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0SE",r10
!   _temp_3313 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0SE",r10
!   _temp_3314 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3315 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3314  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3316 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3319 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3318 = *_temp_3319  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3317 = _temp_3318 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3316 = _temp_3317  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3323 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3322 = *_temp_3323  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3322 > 0 then goto _Label_3321		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3321
!	jmp	_Label_3320
_Label_3320:
! THEN...
	mov	2714,r13		! source line 2714
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_3324 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0SE",r10
!   _temp_3325 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3326 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3325  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3321:
! END IF...
_Label_3310:
! SEND STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0SE",r10
!   _temp_3327 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3328
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3330
	.word	12
	.word	4
	.word	_Label_3331
	.word	-12
	.word	4
	.word	_Label_3332
	.word	-16
	.word	4
	.word	_Label_3333
	.word	-20
	.word	4
	.word	_Label_3334
	.word	-24
	.word	4
	.word	_Label_3335
	.word	-28
	.word	4
	.word	_Label_3336
	.word	-32
	.word	4
	.word	_Label_3337
	.word	-36
	.word	4
	.word	_Label_3338
	.word	-40
	.word	4
	.word	_Label_3339
	.word	-44
	.word	4
	.word	_Label_3340
	.word	-48
	.word	4
	.word	_Label_3341
	.word	-52
	.word	4
	.word	_Label_3342
	.word	-56
	.word	4
	.word	_Label_3343
	.word	-60
	.word	4
	.word	_Label_3344
	.word	-64
	.word	4
	.word	_Label_3345
	.word	-68
	.word	4
	.word	_Label_3346
	.word	-72
	.word	4
	.word	_Label_3347
	.word	-76
	.word	4
	.word	_Label_3348
	.word	-80
	.word	4
	.word	_Label_3349
	.word	-84
	.word	4
	.word	_Label_3350
	.word	-88
	.word	4
	.word	_Label_3351
	.word	-92
	.word	4
	.word	_Label_3352
	.word	-96
	.word	4
	.word	_Label_3353
	.word	-100
	.word	4
	.word	_Label_3354
	.word	-104
	.word	4
	.word	0
_Label_3328:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3329:
	.ascii	"Pself\0"
	.align
_Label_3330:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3327\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3326\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3354:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3935:
	push	r0
	sub	r1,1,r1
	bne	_Label_3935
	mov	2723,r13		! source line 2723
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3358 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3357 = *_temp_3358  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3357) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3359 = _temp_3357 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3359 ) then goto _Label_3356		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3356
!	jmp	_Label_3355
_Label_3355:
! THEN...
	mov	2729,r13		! source line 2729
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3364 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3363 = *_temp_3364  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3363) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3365 = _temp_3363 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3362 = *_temp_3365  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3362 >= 0 then goto _Label_3361		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3361
!	jmp	_Label_3360
_Label_3360:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3366 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3366  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2730,r13		! source line 2730
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3361:
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3368 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3367 = *_temp_3368  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3367) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3369 = _temp_3367 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3369 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3373 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3372 = *_temp_3373  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3372) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3374 = _temp_3372 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3371 = *_temp_3374  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3377 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3376 = *_temp_3377  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3376) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3378 = _temp_3376 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3375 = *_temp_3378  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3370 = _temp_3371 + _temp_3375		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3381 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3380 = *_temp_3381  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3380) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3382 = _temp_3380 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3379 = *_temp_3382  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3383 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3370  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3379  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3356:
! RETURN STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3384
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3386
	.word	12
	.word	4
	.word	_Label_3387
	.word	-12
	.word	4
	.word	_Label_3388
	.word	-16
	.word	4
	.word	_Label_3389
	.word	-20
	.word	4
	.word	_Label_3390
	.word	-24
	.word	4
	.word	_Label_3391
	.word	-28
	.word	4
	.word	_Label_3392
	.word	-32
	.word	4
	.word	_Label_3393
	.word	-36
	.word	4
	.word	_Label_3394
	.word	-40
	.word	4
	.word	_Label_3395
	.word	-44
	.word	4
	.word	_Label_3396
	.word	-48
	.word	4
	.word	_Label_3397
	.word	-52
	.word	4
	.word	_Label_3398
	.word	-56
	.word	4
	.word	_Label_3399
	.word	-60
	.word	4
	.word	_Label_3400
	.word	-64
	.word	4
	.word	_Label_3401
	.word	-68
	.word	4
	.word	_Label_3402
	.word	-72
	.word	4
	.word	_Label_3403
	.word	-76
	.word	4
	.word	_Label_3404
	.word	-80
	.word	4
	.word	_Label_3405
	.word	-84
	.word	4
	.word	_Label_3406
	.word	-88
	.word	4
	.word	_Label_3407
	.word	-92
	.word	4
	.word	_Label_3408
	.word	-96
	.word	4
	.word	_Label_3409
	.word	-100
	.word	4
	.word	_Label_3410
	.word	-104
	.word	4
	.word	_Label_3411
	.word	-108
	.word	4
	.word	0
_Label_3384:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3385:
	.ascii	"Pself\0"
	.align
_Label_3386:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3936:
	push	r0
	sub	r1,1,r1
	bne	_Label_3936
	mov	2742,r13		! source line 2742
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_3412 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3418		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3418
!   _temp_3417 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3419
_Label_3418:
!   _temp_3417 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3419:
!   if _temp_3417 then goto _Label_3416 else goto _Label_3413
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3413
	jmp	_Label_3416
_Label_3416:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3422 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3421 = *_temp_3422  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3421 == 0 then goto _Label_3423		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3423
!   _temp_3420 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3424
_Label_3423:
!   _temp_3420 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3424:
!   if _temp_3420 then goto _Label_3415 else goto _Label_3413
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3413
	jmp	_Label_3415
_Label_3415:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3427 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3426 = *_temp_3427  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3426) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3428 = _temp_3426 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3425 = *_temp_3428  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3425 >= 0 then goto _Label_3414		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3414
!	jmp	_Label_3413
_Label_3413:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3429 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3429  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2759,r13		! source line 2759
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3414:
! ASSIGNMENT STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3430  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0WH",r10
_Label_3431:
!   if numBytes <= 0 then goto _Label_3433		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3433
!	jmp	_Label_3432
_Label_3432:
	mov	2762,r13		! source line 2762
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3437 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3436 = *_temp_3437  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3436 == sector then goto _Label_3435		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3435
!	jmp	_Label_3434
_Label_3434:
! THEN...
	mov	2777,r13		! source line 2777
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3438) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3441 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3440 = *_temp_3441  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3439 = sector + _temp_3440		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3443 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3442 = *_temp_3443  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3444 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3439  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3442  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3445 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3445 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3446 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3446 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3435:
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3448 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3447 = *_temp_3448  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3447 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_3449 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3449  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3431
_Label_3433:
! SEND STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
!   _temp_3450 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3451
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3453
	.word	12
	.word	4
	.word	_Label_3454
	.word	16
	.word	4
	.word	_Label_3455
	.word	20
	.word	4
	.word	_Label_3456
	.word	24
	.word	4
	.word	_Label_3457
	.word	-16
	.word	4
	.word	_Label_3458
	.word	-20
	.word	4
	.word	_Label_3459
	.word	-24
	.word	4
	.word	_Label_3460
	.word	-28
	.word	4
	.word	_Label_3461
	.word	-32
	.word	4
	.word	_Label_3462
	.word	-36
	.word	4
	.word	_Label_3463
	.word	-40
	.word	4
	.word	_Label_3464
	.word	-44
	.word	4
	.word	_Label_3465
	.word	-48
	.word	4
	.word	_Label_3466
	.word	-52
	.word	4
	.word	_Label_3467
	.word	-56
	.word	4
	.word	_Label_3468
	.word	-60
	.word	4
	.word	_Label_3469
	.word	-64
	.word	4
	.word	_Label_3470
	.word	-68
	.word	4
	.word	_Label_3471
	.word	-72
	.word	4
	.word	_Label_3472
	.word	-76
	.word	4
	.word	_Label_3473
	.word	-80
	.word	4
	.word	_Label_3474
	.word	-84
	.word	4
	.word	_Label_3475
	.word	-88
	.word	4
	.word	_Label_3476
	.word	-92
	.word	4
	.word	_Label_3477
	.word	-96
	.word	4
	.word	_Label_3478
	.word	-100
	.word	4
	.word	_Label_3479
	.word	-104
	.word	4
	.word	_Label_3480
	.word	-9
	.word	1
	.word	_Label_3481
	.word	-10
	.word	1
	.word	_Label_3482
	.word	-108
	.word	4
	.word	_Label_3483
	.word	-112
	.word	4
	.word	_Label_3484
	.word	-116
	.word	4
	.word	_Label_3485
	.word	-120
	.word	4
	.word	_Label_3486
	.word	-124
	.word	4
	.word	_Label_3487
	.word	-128
	.word	4
	.word	0
_Label_3451:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3452:
	.ascii	"Pself\0"
	.align
_Label_3453:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3454:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3455:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3456:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3480:
	.byte	'C'
	.ascii	"_temp_3420\0"
	.align
_Label_3481:
	.byte	'C'
	.ascii	"_temp_3417\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3483:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3484:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3485:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3486:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3487:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3937:
	push	r0
	sub	r1,1,r1
	bne	_Label_3937
	mov	2806,r13		! source line 2806
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
!   _temp_3488 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3494		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3494
!   _temp_3493 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3495
_Label_3494:
!   _temp_3493 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3495:
!   if _temp_3493 then goto _Label_3492 else goto _Label_3489
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3489
	jmp	_Label_3492
_Label_3492:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3497 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3497 == 0 then goto _Label_3499		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3499
!   _temp_3496 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3500
_Label_3499:
!   _temp_3496 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3500:
!   if _temp_3496 then goto _Label_3491 else goto _Label_3489
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3489
	jmp	_Label_3491
_Label_3491:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3503 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3502 = *_temp_3503  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3502) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3504 = _temp_3502 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3501 = *_temp_3504  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3501 >= 0 then goto _Label_3490		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3490
!	jmp	_Label_3489
_Label_3489:
! THEN...
	mov	2824,r13		! source line 2824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3505 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3505  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2824,r13		! source line 2824
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3490:
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3506  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0WH",r10
_Label_3507:
!   if numBytes <= 0 then goto _Label_3509		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3509
!	jmp	_Label_3508
_Label_3508:
	mov	2827,r13		! source line 2827
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3513 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3512 = *_temp_3513  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3512 == sector then goto _Label_3511		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3511
!	jmp	_Label_3510
_Label_3510:
! THEN...
	mov	2843,r13		! source line 2843
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3514) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3511:
! ASSIGNMENT STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3516 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3515 = *_temp_3516  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3515 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
!   _temp_3517 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3517  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3521 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3520 = *_temp_3521  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3520 != sector then goto _Label_3519		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3519
!	jmp	_Label_3518
_Label_3518:
	jmp	_Label_3522
_Label_3519:
! ELSE...
	mov	2849,r13		! source line 2849
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3525
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3525
	jmp	_Label_3524
_Label_3525:
!   if bytesToMove != 8192 then goto _Label_3524		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3524
!	jmp	_Label_3523
_Label_3523:
	jmp	_Label_3526
_Label_3524:
! ELSE...
	mov	2853,r13		! source line 2853
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3529 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3528 = *_temp_3529  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3527 = sector + _temp_3528		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3530 = *_temp_3531  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3532 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3527  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3530  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3526:
! END IF...
_Label_3522:
! ASSIGNMENT STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3533 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3533 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3534 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3534 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3507
_Label_3509:
! SEND STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
!   _temp_3535 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3536
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3537
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3538
	.word	12
	.word	4
	.word	_Label_3539
	.word	16
	.word	4
	.word	_Label_3540
	.word	20
	.word	4
	.word	_Label_3541
	.word	24
	.word	4
	.word	_Label_3542
	.word	-16
	.word	4
	.word	_Label_3543
	.word	-20
	.word	4
	.word	_Label_3544
	.word	-24
	.word	4
	.word	_Label_3545
	.word	-28
	.word	4
	.word	_Label_3546
	.word	-32
	.word	4
	.word	_Label_3547
	.word	-36
	.word	4
	.word	_Label_3548
	.word	-40
	.word	4
	.word	_Label_3549
	.word	-44
	.word	4
	.word	_Label_3550
	.word	-48
	.word	4
	.word	_Label_3551
	.word	-52
	.word	4
	.word	_Label_3552
	.word	-56
	.word	4
	.word	_Label_3553
	.word	-60
	.word	4
	.word	_Label_3554
	.word	-64
	.word	4
	.word	_Label_3555
	.word	-68
	.word	4
	.word	_Label_3556
	.word	-72
	.word	4
	.word	_Label_3557
	.word	-76
	.word	4
	.word	_Label_3558
	.word	-80
	.word	4
	.word	_Label_3559
	.word	-84
	.word	4
	.word	_Label_3560
	.word	-88
	.word	4
	.word	_Label_3561
	.word	-92
	.word	4
	.word	_Label_3562
	.word	-96
	.word	4
	.word	_Label_3563
	.word	-100
	.word	4
	.word	_Label_3564
	.word	-104
	.word	4
	.word	_Label_3565
	.word	-108
	.word	4
	.word	_Label_3566
	.word	-112
	.word	4
	.word	_Label_3567
	.word	-9
	.word	1
	.word	_Label_3568
	.word	-10
	.word	1
	.word	_Label_3569
	.word	-116
	.word	4
	.word	_Label_3570
	.word	-120
	.word	4
	.word	_Label_3571
	.word	-124
	.word	4
	.word	_Label_3572
	.word	-128
	.word	4
	.word	_Label_3573
	.word	-132
	.word	4
	.word	_Label_3574
	.word	-136
	.word	4
	.word	0
_Label_3536:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3537:
	.ascii	"Pself\0"
	.align
_Label_3538:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3539:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3540:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3541:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3567:
	.byte	'C'
	.ascii	"_temp_3496\0"
	.align
_Label_3568:
	.byte	'C'
	.ascii	"_temp_3493\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3570:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3571:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3572:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3573:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3574:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3575
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3575:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3576
	.word	_sourceFileName
	.word	358		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3576:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	2910,r13		! source line 2910
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_3577 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3578
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3580
	.word	-12
	.word	4
	.word	0
_Label_3578:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3579:
	.ascii	"Pself\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	2920,r13		! source line 2920
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3581 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3581  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3582 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3582  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3583 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3583  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3584 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3584  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2928,r13		! source line 2928
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3585 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3585  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2929,r13		! source line 2929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3586 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2932,r13		! source line 2932
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3587
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3589
	.word	-12
	.word	4
	.word	_Label_3590
	.word	-16
	.word	4
	.word	_Label_3591
	.word	-20
	.word	4
	.word	_Label_3592
	.word	-24
	.word	4
	.word	_Label_3593
	.word	-28
	.word	4
	.word	_Label_3594
	.word	-32
	.word	4
	.word	0
_Label_3587:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3588:
	.ascii	"Pself\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3595
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3595:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3596
	.word	_sourceFileName
	.word	375		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3596:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	2944,r13		! source line 2944
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3597 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3597  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2946,r13		! source line 2946
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3598 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3598  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2947,r13		! source line 2947
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3600		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3600
!	jmp	_Label_3599
_Label_3599:
! THEN...
	mov	2949,r13		! source line 2949
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3601
_Label_3600:
! ELSE...
	mov	2951,r13		! source line 2951
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3602 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3602  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2951,r13		! source line 2951
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3601:
! RETURN STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3603
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3605
	.word	-12
	.word	4
	.word	_Label_3606
	.word	-16
	.word	4
	.word	_Label_3607
	.word	-20
	.word	4
	.word	0
_Label_3603:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3604:
	.ascii	"Pself\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3941:
	push	r0
	sub	r1,1,r1
	bne	_Label_3941
	mov	2957,r13		! source line 2957
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0SE",r10
!   _temp_3608 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3609 = _temp_3608 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0SE",r10
!   _temp_3610 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3611 = _temp_3610 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0RE",r10
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3614 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3613  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3612  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3612  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3615
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3617
	.word	12
	.word	4
	.word	_Label_3618
	.word	16
	.word	4
	.word	_Label_3619
	.word	-16
	.word	4
	.word	_Label_3620
	.word	-20
	.word	4
	.word	_Label_3621
	.word	-9
	.word	1
	.word	_Label_3622
	.word	-24
	.word	4
	.word	_Label_3623
	.word	-28
	.word	4
	.word	_Label_3624
	.word	-32
	.word	4
	.word	_Label_3625
	.word	-36
	.word	4
	.word	_Label_3626
	.word	-40
	.word	4
	.word	0
_Label_3615:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3616:
	.ascii	"Pself\0"
	.align
_Label_3617:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3618:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3621:
	.byte	'C'
	.ascii	"_temp_3612\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3626:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3942:
	push	r0
	sub	r1,1,r1
	bne	_Label_3942
	mov	2976,r13		! source line 2976
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
	mov	2981,r13		! source line 2981
	mov	"\0\0SE",r10
!   _temp_3630 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3631) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3630  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3629  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3629 then goto _Label_3628 else goto _Label_3627
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3627
	jmp	_Label_3628
_Label_3627:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3632 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3632  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2982,r13		! source line 2982
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3628:
! RETURN STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3633
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3635
	.word	-16
	.word	4
	.word	_Label_3636
	.word	-20
	.word	4
	.word	_Label_3637
	.word	-24
	.word	4
	.word	_Label_3638
	.word	-9
	.word	1
	.word	_Label_3639
	.word	-28
	.word	4
	.word	0
_Label_3633:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3634:
	.ascii	"Pself\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3638:
	.byte	'C'
	.ascii	"_temp_3629\0"
	.align
_Label_3639:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3943:
	push	r0
	sub	r1,1,r1
	bne	_Label_3943
	mov	2989,r13		! source line 2989
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3643 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3642 = *_temp_3643  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3642) then goto _Label_3641
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3641
!	jmp	_Label_3640
_Label_3640:
! THEN...
	mov	3016,r13		! source line 3016
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3644 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3644  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3016,r13		! source line 3016
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3641:
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3648) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3647  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3647 == 1112300152 then goto _Label_3646		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3646
!	jmp	_Label_3645
_Label_3645:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3649 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3649  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3646:
! ASSIGNMENT STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0AS",r10
	mov	3026,r13		! source line 3026
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3650) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
	mov	3027,r13		! source line 3027
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3651) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3652) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0AS",r10
	mov	3029,r13		! source line 3029
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3653) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0AS",r10
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3654) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0AS",r10
	mov	3031,r13		! source line 3031
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3655) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0IF",r10
!   _temp_3658 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3658) then goto _Label_3657
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3657
!	jmp	_Label_3656
_Label_3656:
! THEN...
	mov	3035,r13		! source line 3035
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3659 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3659  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3035,r13		! source line 3035
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3657:
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3661
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3661
!	jmp	_Label_3660
_Label_3660:
! THEN...
	mov	3043,r13		! source line 3043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3662 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3662  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3043,r13		! source line 3043
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3661:
! IF STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0IF",r10
!   _temp_3665 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3665) then goto _Label_3664
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3664
!	jmp	_Label_3663
_Label_3663:
! THEN...
	mov	3049,r13		! source line 3049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3666 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3666  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3049,r13		! source line 3049
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3664:
! IF STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0IF",r10
!   _temp_3669 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3669 then goto _Label_3668		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3668
!	jmp	_Label_3667
_Label_3667:
! THEN...
	mov	3053,r13		! source line 3053
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3670 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3670  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3668:
! ASSIGNMENT STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0IF",r10
!   _temp_3673 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3673) then goto _Label_3672
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3672
!	jmp	_Label_3671
_Label_3671:
! THEN...
	mov	3060,r13		! source line 3060
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3674 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3674  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3060,r13		! source line 3060
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3672:
! IF STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0IF",r10
!   _temp_3677 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3677 then goto _Label_3676		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3676
!	jmp	_Label_3675
_Label_3675:
! THEN...
	mov	3064,r13		! source line 3064
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3678 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3678  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3064,r13		! source line 3064
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3065,r13		! source line 3065
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3676:
! ASSIGNMENT STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0AS",r10
!   _temp_3681 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3680 = _temp_3681 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3679 = _temp_3680 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3679 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3683		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3683
!	jmp	_Label_3682
_Label_3682:
! THEN...
	mov	3086,r13		! source line 3086
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3684 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3684  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3086,r13		! source line 3086
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3685 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3685  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3087,r13		! source line 3087
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3686 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3686  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3683:
! SEND STATEMENT...
	mov	3091,r13		! source line 3091
	mov	"\0\0SE",r10
!   _temp_3687 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0IF",r10
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3691) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3690  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3690 == 707406378 then goto _Label_3689		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3689
!	jmp	_Label_3688
_Label_3688:
! THEN...
	mov	3098,r13		! source line 3098
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3692 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3692  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3098,r13		! source line 3098
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
!   _temp_3693 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3689:
! ASSIGNMENT STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3698 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3699 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3698  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3699 then goto _Label_3697		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3697
_Label_3695:
	mov	3105,r13		! source line 3105
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0AS",r10
	mov	3106,r13		! source line 3106
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0IF",r10
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3703) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3702  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3702 then goto _Label_3701 else goto _Label_3700
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3700
	jmp	_Label_3701
_Label_3700:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3704 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3704  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
!   _temp_3705 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3701:
! SEND STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3696:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3694
! END FOR
_Label_3697:
! IF STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0IF",r10
	mov	3119,r13		! source line 3119
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3709) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3708  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3708 == 707406378 then goto _Label_3707		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3707
!	jmp	_Label_3706
_Label_3706:
! THEN...
	mov	3120,r13		! source line 3120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3710 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3710  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3120,r13		! source line 3120
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0SE",r10
!   _temp_3711 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3707:
! FOR STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3716 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3717 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3716  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3712:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3717 then goto _Label_3715		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3715
_Label_3713:
	mov	3126,r13		! source line 3126
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0AS",r10
	mov	3127,r13		! source line 3127
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0IF",r10
	mov	3130,r13		! source line 3130
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3721) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3720  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3720 then goto _Label_3719 else goto _Label_3718
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3718
	jmp	_Label_3719
_Label_3718:
! THEN...
	mov	3131,r13		! source line 3131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3722 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3722  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3131,r13		! source line 3131
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0SE",r10
!   _temp_3723 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3133,r13		! source line 3133
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3719:
! ASSIGNMENT STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3714:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3712
! END FOR
_Label_3715:
! IF STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0IF",r10
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3727) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3726  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3726 == 707406378 then goto _Label_3725		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3725
!	jmp	_Label_3724
_Label_3724:
! THEN...
	mov	3140,r13		! source line 3140
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3728 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3728  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3140,r13		! source line 3140
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3141,r13		! source line 3141
	mov	"\0\0SE",r10
!   _temp_3729 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3725:
! ASSIGNMENT STATEMENT...
	mov	3146,r13		! source line 3146
	mov	"\0\0AS",r10
	mov	3146,r13		! source line 3146
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3150,r13		! source line 3150
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3153,r13		! source line 3153
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3730
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3732
	.word	12
	.word	4
	.word	_Label_3733
	.word	-16
	.word	4
	.word	_Label_3734
	.word	-20
	.word	4
	.word	_Label_3735
	.word	-24
	.word	4
	.word	_Label_3736
	.word	-28
	.word	4
	.word	_Label_3737
	.word	-32
	.word	4
	.word	_Label_3738
	.word	-36
	.word	4
	.word	_Label_3739
	.word	-40
	.word	4
	.word	_Label_3740
	.word	-9
	.word	1
	.word	_Label_3741
	.word	-44
	.word	4
	.word	_Label_3742
	.word	-48
	.word	4
	.word	_Label_3743
	.word	-52
	.word	4
	.word	_Label_3744
	.word	-56
	.word	4
	.word	_Label_3745
	.word	-60
	.word	4
	.word	_Label_3746
	.word	-64
	.word	4
	.word	_Label_3747
	.word	-68
	.word	4
	.word	_Label_3748
	.word	-72
	.word	4
	.word	_Label_3749
	.word	-76
	.word	4
	.word	_Label_3750
	.word	-10
	.word	1
	.word	_Label_3751
	.word	-80
	.word	4
	.word	_Label_3752
	.word	-84
	.word	4
	.word	_Label_3753
	.word	-88
	.word	4
	.word	_Label_3754
	.word	-92
	.word	4
	.word	_Label_3755
	.word	-96
	.word	4
	.word	_Label_3756
	.word	-100
	.word	4
	.word	_Label_3757
	.word	-104
	.word	4
	.word	_Label_3758
	.word	-108
	.word	4
	.word	_Label_3759
	.word	-112
	.word	4
	.word	_Label_3760
	.word	-116
	.word	4
	.word	_Label_3761
	.word	-120
	.word	4
	.word	_Label_3762
	.word	-124
	.word	4
	.word	_Label_3763
	.word	-128
	.word	4
	.word	_Label_3764
	.word	-132
	.word	4
	.word	_Label_3765
	.word	-136
	.word	4
	.word	_Label_3766
	.word	-140
	.word	4
	.word	_Label_3767
	.word	-144
	.word	4
	.word	_Label_3768
	.word	-148
	.word	4
	.word	_Label_3769
	.word	-152
	.word	4
	.word	_Label_3770
	.word	-156
	.word	4
	.word	_Label_3771
	.word	-160
	.word	4
	.word	_Label_3772
	.word	-164
	.word	4
	.word	_Label_3773
	.word	-168
	.word	4
	.word	_Label_3774
	.word	-172
	.word	4
	.word	_Label_3775
	.word	-176
	.word	4
	.word	_Label_3776
	.word	-180
	.word	4
	.word	_Label_3777
	.word	-184
	.word	4
	.word	_Label_3778
	.word	-188
	.word	4
	.word	_Label_3779
	.word	-192
	.word	4
	.word	_Label_3780
	.word	-196
	.word	4
	.word	_Label_3781
	.word	-200
	.word	4
	.word	_Label_3782
	.word	-204
	.word	4
	.word	_Label_3783
	.word	-208
	.word	4
	.word	_Label_3784
	.word	-212
	.word	4
	.word	_Label_3785
	.word	-216
	.word	4
	.word	_Label_3786
	.word	-220
	.word	4
	.word	_Label_3787
	.word	-224
	.word	4
	.word	_Label_3788
	.word	-228
	.word	4
	.word	_Label_3789
	.word	-232
	.word	4
	.word	_Label_3790
	.word	-236
	.word	4
	.word	_Label_3791
	.word	-240
	.word	4
	.word	_Label_3792
	.word	-244
	.word	4
	.word	_Label_3793
	.word	-248
	.word	4
	.word	_Label_3794
	.word	-252
	.word	4
	.word	_Label_3795
	.word	-256
	.word	4
	.word	_Label_3796
	.word	-260
	.word	4
	.word	_Label_3797
	.word	-264
	.word	4
	.word	_Label_3798
	.word	-268
	.word	4
	.word	0
_Label_3730:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3731:
	.ascii	"Pself\0"
	.align
_Label_3732:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3740:
	.byte	'C'
	.ascii	"_temp_3720\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3750:
	.byte	'C'
	.ascii	"_temp_3702\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3780:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3649\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3786:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3787:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3788:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3789:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3790:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3791:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3792:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3793:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3794:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3795:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3796:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3797:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3798:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
