#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int
sys_clone(void){

  // int func;
  // int arg1;
  // int arg2;
  // int stack;

  // if (argint(0, &func) < 0)
  //    return -1;
  // if (argint(1, &arg1) < 0)
  //    return -1;
  // if (argint(2, &arg2) < 0)
  //    return -1;
  // if (argint(3, &stack) < 0)
  //    return -1;
  // cprintf("sys_clon arg1 : %d, arg2 : %d\n", arg1, arg2);
  // return clone((void *)func, (void *)arg1, (void *)arg2, (void *)stack);

  // uint ustack[2];
	void(*fcn)(void*);
	void *arg1;
  void *arg2;
	void *stack;

	if(argptr(0, (void*)&fcn, sizeof(fcn))<0)
		return -1;
	if(argptr(1, (void*)&arg1, sizeof(arg1)) <0)
			return -1;
	if(argptr(2, (void*)&arg2, sizeof(arg2)) <0)
			return -1;
	if(argptr(3, (void*)&stack, sizeof(stack)) <0){
			return -1;
	}

  cprintf("sys_clon arg1 : %d, arg2 : %d\n", *(int*)arg1, *(int*)arg2);
  

  int endofMemory;
  endofMemory = (int) myproc()->sz;
  if(endofMemory - (int) stack < PGSIZE){
    cprintf("out of memory\n");
    return -1;
  }

  if((uint)stack % PGSIZE != 0) {
    cprintf("not page aligned \n");
    return -1;
  }

  return clone((void *)fcn, (void *)arg1, (void *)arg2, (void *)stack);


}

int
sys_join(void){
  void* stack;
  if (argptr(0, (void*)&(stack), sizeof(stack) < 0))
     return -1;

  if((int) stack >= (int) myproc()->sz -2) return -1;
  cprintf("start join:  stack : %d, sz : %d \n", stack, myproc()->sz);
  return join((void **)stack);
}