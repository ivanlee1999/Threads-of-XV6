#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    ;
  return os;
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    p++, q++;
  return (uchar)*p - (uchar)*q;
}

uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    ;
  return n;
}

void*
memset(void *dst, int c, uint n)
{
  stosb(dst, c, n);
  return dst;
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    if(*s == c)
      return (char*)s;
  return 0;
}

char*
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
  return buf;
}

int
stat(const char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
  close(fd);
  return r;
}

int
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    n = n*10 + *s++ - '0';
  return n;
}

void*
memmove(void *vdst, const void *vsrc, int n)
{
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    *dst++ = *src++;
  return vdst;
}



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
  void* stack = malloc(2* 4096);
  if((int) stack % 4096 != 0){
    stack = stack + (4096 - (int) stack % 4096);
  }
  int rc = clone(start_routine, arg1, arg2, stack);
  printf(1, " thread create  %d \n", rc);
  return rc;
}

int
thread_join(){
  printf(1, "thread join 1 \n");
  void** stack = malloc(sizeof(void**));
  printf(1, "thread join 2 \n");
  int rc = join(stack);
  printf(1, "thread join 3 \n");
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
  return rc;
}



void lock_acquire(lock_t * lock){
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 ; // spin

};

void lock_release(lock_t * lock){
 xchg((volatile uint *)&lock->flag, (uint)0);
};

void lock_init(lock_t * lock){
lock->flag=0;

};

