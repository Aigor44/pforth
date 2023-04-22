#!/bin/bash
 
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
