#include <stdint.h>
#ifndef __printflike
#define __printflike(x, y) __attribute__((__format__ (__printf__, x, y)))
#endif
#define __dead2     __attribute__((__noreturn__))

void pfatal(const char *, ...) __printflike(1, 2);
void pwarn(const char *, ...) __printflike(1, 2);
void perr(const char *, ...) __printflike(1, 2);
const char *cdevname(void);
void setcdevname(const char *, int);

size_t strlcpy(char *dst, const char *src, size_t len) __attribute__((weak));
