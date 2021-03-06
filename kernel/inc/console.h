#ifndef CONSOLE_H
#define CONSOLE_H

#include "stdarg.h"

void
console_init();

void
console_puts(const char* str, uint32_t len);

void
printf(const char* format, ...);

void
vprintf(const char* format, va_list va);

#endif
