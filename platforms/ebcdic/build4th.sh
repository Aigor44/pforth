#!/bin/bash

rm -f *.o *.eo pforth pforth.dic pforth_standalone
 
# CC="gcc -m31"
  CC="gcc -m32"
# CC="gcc"

# CFLAGS="-g -O0 -I. -DPF_SUPPORT_FP -DPF_STATIC_DIC -DEBCDIC"
  CFLAGS="-g -O0 -I. -DPF_SUPPORT_FP -DPF_STATIC_DIC"

${CC} -c ${CFLAGS} ../../csrc/pf_cglue.c
${CC} -c ${CFLAGS} ../../csrc/pf_clib.c

${CC} -c ${CFLAGS} ../../csrc/pf_core.c
${CC} -c ${CFLAGS} ../../csrc/pf_inner.c
${CC} -c ${CFLAGS} ../../csrc/pf_io.c
${CC} -c ${CFLAGS} ../../csrc/pf_io_none.c
${CC} -c ${CFLAGS} ../../csrc/ebcdic/pf_io_ebcdic.c
${CC} -c ${CFLAGS} ../../csrc/stdio/pf_fileio_stdio.c
${CC} -c ${CFLAGS} ../../csrc/pf_main.c
${CC} -c ${CFLAGS} ../../csrc/pf_mem.c
${CC} -c ${CFLAGS} ../../csrc/pf_save.c
${CC} -c ${CFLAGS} ../../csrc/pf_text.c
${CC} -c ${CFLAGS} ../../csrc/pf_words.c
${CC} -c ${CFLAGS} ../../csrc/pfcompil.c
${CC} -c ${CFLAGS} ../../csrc/pfcustom.c
 
${CC} -o pforth_standalone *.o -lm

rm -f *.o

rm -f pforth.vmarc

vma -at pforth.vmarc \
  ../../csrc/pf_cglue.c \
  ../../csrc/pf_clib.c \
  ../../csrc/pf_core.c \
  ../../csrc/pf_inner.c \
  ../../csrc/pf_io.c \
  ../../csrc/pf_io_none.c,pfionone.c\
  ../../csrc/pf_main.c \
  ../../csrc/pf_mem.c \
  ../../csrc/pf_save.c \
  ../../csrc/pf_text.c \
  ../../csrc/pf_words.c \
  ../../csrc/pfcompil.c \
  ../../csrc/pfcustom.c \
  ../../csrc/pf_all.h \
  ../../csrc/pf_cglue.h \
  ../../csrc/pf_clib.h \
  ../../csrc/pf_core.h \
  ../../csrc/pf_float.h \
  ../../csrc/pf_guts.h \
  ../../csrc/pf_host.h \
  ../../csrc/pf_inc1.h \
  ../../csrc/pf_io.h \
  ../../csrc/pf_mem.h \
  ../../csrc/pf_save.h \
  ../../csrc/pf_text.h \
  ../../csrc/pf_types.h \
  ../../csrc/pf_win32.h \
  ../../csrc/pf_words.h \
  ../../csrc/pfcompfp.h \
  ../../csrc/pfcompil.h \
  ../../csrc/pfinnrfp.h \
  ../../csrc/pforth.h \
  pforth.parm \
  build4th.exec

