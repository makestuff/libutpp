ROOT = ../..
DEPS =
SUBDIRS = tests
TYPE = lib
ifeq ($(OS), Windows_NT)
	CPP_SRCS = $(shell ls *.cpp Win32Utils/*.cpp)
	CFLAGS = -DWIN32 -D_CRT_SECURE_NO_WARNINGS -EHa -W4 -nologo -c -TP -errorReport:prompt $(INCLUDES)
else
	CPP_SRCS = $(shell ls *.cpp PosixUtils/*.cpp)
endif

-include $(ROOT)/common/top.mk
