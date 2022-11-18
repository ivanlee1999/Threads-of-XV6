/* clone and play with the argument */
#include "types.h"
#include "user.h"

#undef NULL
#define NULL ((void*)0)

#define PGSIZE (4096)

int ppid;
volatile int arg1 = 11;
volatile int arg2 = 22;
volatile int global = 1;

#define assert(x) if (x) {} else { \
   printf(1, "%s: %d ", __FILE__, __LINE__); \
   printf(1, "assert failed (%s)\n", # x); \
   printf(1, "TEST FAILED\n"); \
   kill(ppid); \
   exit(); \
}

void worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   ppid = getpid();
   void *stack, *p = malloc(PGSIZE * 2);
   assert(p != NULL);
   if((uint)p % PGSIZE)
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

    printf(1, "before clone\n");

   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
   printf(1, "after clone1\n");
   assert(clone_pid > 0);
   printf(1, "after clone2\n");
   while(global != 33);
   printf(1, "after clone3, arg1 %d, arg2 %d\n", arg1, arg2);
   assert(arg1 == 44);
   assert(arg2 == 55);
   printf(1, "after clone4\n");
   printf(1, "TEST PASSED\n");
   
   void *join_stack;
   printf(1, "before join\n");
   int join_pid = join(&join_stack);
   printf(1, "after join\n");
   assert(join_pid == clone_pid);
   free(p);
   exit();
}

void
worker(void *arg1, void *arg2) {
    printf(1, "start worker\n");    
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
   *(int*)arg1 = 44;
   *(int*)arg2 = 55;
   assert(global == 1);
   global = tmp1 + tmp2;
   printf(1, "arg1: %d, arg2 : %d, temp1 : %d, temp2 : %d global : %d \n", *(int*)arg1, *(int*)arg2,tmp1, tmp2, global);
   exit();
}