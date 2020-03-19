#
#  Copyright (c) 2018, Linaro Limited. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = FxtecProPkg
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = FxtecProPkg/FxtecProPkg.fdf

!include MSM8998Pkg/CommonDsc.dsc.inc

[PcdsFixedAtBuild.common]
  # Simple FrameBuffer
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferAddress|0x9d400000|UINT32|0x0000a400
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferWidth|1080|UINT32|0x0000a401
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferHeight|2160|UINT32|0x0000a402
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferPixelBpp|32|UINT32|0x0000a403 #FrameBufferSerialPort
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleWidth|1080|UINT32|0x0000a404 #FrameBufferSerialPort
  gMSM8998PkgTokenSpaceGuid.PcdMipiFrameBufferVisibleHeight|720|UINT32|0x0000a405 #FrameBufferSerialPort
  gMSM8998PkgTokenSpaceGuid.PcdSmbiosSystemModel|"F(x)tec Pro 1"|VOID*|0x0000a406
  gMSM8998PkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Snapdragon(TM) 835"|VOID*|0x0000a406
  gMSM8998PkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"QX1000"|VOID*|0x0000a406
