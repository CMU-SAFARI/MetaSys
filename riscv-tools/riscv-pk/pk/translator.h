// See LICENSE for license details.

#ifndef _TRANSLATOR_H
#define _TRANSLATOR_H

#include "xcustom.h"

#define XCUSTOM_TRANS 1

#define doTranslate(y, vaddr)                                \
    ROCC_INSTRUCTION(XCUSTOM_TRANS, y, vaddr, 0, 0);

#endif  // SRC_MAIN_C_TRANSLATOR_H
