
_test_12:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 9d 07 00 00       	call   7b6 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 b0 10 00 00       	push   $0x10b0
   ppid = getpid();
  28:	a3 bc 10 00 00       	mov    %eax,0x10bc
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 e7 06 00 00       	call   720 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
  40:	e8 db 06 00 00       	call   720 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 b0 10 00 00 	movl   $0x10b0,(%esp)
  4c:	e8 9f 06 00 00       	call   6f0 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
  58:	e8 93 06 00 00       	call   6f0 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 a8 10 00 00    	mov    0x10a8,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d a8 10 00 00    	cmp    %ebx,0x10a8
  81:	7e 5c                	jle    df <main+0xdf>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  83:	83 ec 04             	sub    $0x4,%esp
  86:	57                   	push   %edi
  87:	56                   	push   %esi
  88:	68 20 02 00 00       	push   $0x220
  8d:	e8 9e 05 00 00       	call   630 <thread_create>
      assert(thread_pid > 0);
  92:	83 c4 10             	add    $0x10,%esp
  95:	85 c0                	test   %eax,%eax
  97:	7f df                	jg     78 <main+0x78>
  99:	6a 28                	push   $0x28
  9b:	68 c8 0b 00 00       	push   $0xbc8
  a0:	68 d2 0b 00 00       	push   $0xbd2
  a5:	6a 01                	push   $0x1
  a7:	e8 f4 07 00 00       	call   8a0 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 19 0c 00 00       	push   $0xc19
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 f8 0b 00 00       	push   $0xbf8
  b9:	6a 01                	push   $0x1
  bb:	e8 e0 07 00 00       	call   8a0 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 0c 0c 00 00       	push   $0xc0c
  c7:	6a 01                	push   $0x1
  c9:	e8 d2 07 00 00       	call   8a0 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 bc 10 00 00    	push   0x10bc
  d5:	e8 8c 06 00 00       	call   766 <kill>
  da:	e8 57 06 00 00       	call   736 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 d5 06 00 00       	call   7be <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 b4 10 00 00       	mov    %eax,0x10b4
   while (global < num_threads) {
  f1:	a1 a8 10 00 00       	mov    0x10a8,%eax
  f6:	39 05 b8 10 00 00    	cmp    %eax,0x10b8
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 b0 10 00 00       	push   $0x10b0
 108:	e8 03 06 00 00       	call   710 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 ad 06 00 00       	call   7c6 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 b0 10 00 00 	movl   $0x10b0,(%esp)
 120:	e8 cb 05 00 00       	call   6f0 <lock_acquire>
   while (global < num_threads) {
 125:	a1 a8 10 00 00       	mov    0x10a8,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 b8 10 00 00    	cmp    %eax,0x10b8
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 b8 10 00 00 00 	movl   $0x0,0x10b8
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 72 06 00 00       	call   7be <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 66 06 00 00       	call   7be <sbrk>
   lock_release(&lock);
 158:	c7 04 24 b0 10 00 00 	movl   $0x10b0,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 b4 10 00 00       	mov    %eax,0x10b4
   lock_release(&lock);
 164:	e8 a7 05 00 00       	call   710 <lock_release>
   while (global < num_threads) {
 169:	a1 a8 10 00 00       	mov    0x10a8,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 b8 10 00 00    	cmp    %eax,0x10b8
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 ac 10 00 00       	push   $0x10ac
 188:	e8 83 05 00 00       	call   710 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 2d 06 00 00       	call   7c6 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
 1a0:	e8 4b 05 00 00       	call   6f0 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 a8 10 00 00       	mov    0x10a8,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 b8 10 00 00    	cmp    %eax,0x10b8
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 ac 10 00 00       	push   $0x10ac
 1bd:	e8 4e 05 00 00       	call   710 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d a8 10 00 00 00 	cmpl   $0x0,0x10a8
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d a8 10 00 00    	cmp    %ebx,0x10a8
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 a8 04 00 00       	call   690 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 c8 0b 00 00       	push   $0xbc8
 1f3:	68 d2 0b 00 00       	push   $0xbd2
 1f8:	6a 01                	push   $0x1
 1fa:	e8 a1 06 00 00       	call   8a0 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 28 0c 00 00       	push   $0xc28
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 35 0c 00 00       	push   $0xc35
 213:	6a 01                	push   $0x1
 215:	e8 86 06 00 00       	call   8a0 <printf>
   exit();
 21a:	e8 17 05 00 00       	call   736 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 b0 10 00 00       	push   $0x10b0
 22b:	e8 c0 04 00 00       	call   6f0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 82 05 00 00       	call   7be <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 b4 10 00 00    	cmp    0x10b4,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 c8 0b 00 00       	push   $0xbc8
 24e:	68 d2 0b 00 00       	push   $0xbd2
 253:	6a 01                	push   $0x1
 255:	e8 46 06 00 00       	call   8a0 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 da 0b 00 00       	push   $0xbda
 262:	68 f8 0b 00 00       	push   $0xbf8
 267:	6a 01                	push   $0x1
 269:	e8 32 06 00 00       	call   8a0 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 0c 0c 00 00       	push   $0xc0c
 275:	6a 01                	push   $0x1
 277:	e8 24 06 00 00       	call   8a0 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 bc 10 00 00    	push   0x10bc
 283:	e8 de 04 00 00       	call   766 <kill>
 288:	e8 a9 04 00 00       	call   736 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 b8 10 00 00 01 	addl   $0x1,0x10b8
   lock_release(&lock);
 297:	68 b0 10 00 00       	push   $0x10b0
 29c:	e8 6f 04 00 00       	call   710 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
 2a8:	e8 43 04 00 00       	call   6f0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 05 05 00 00       	call   7be <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 b4 10 00 00    	cmp    0x10b4,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 b8 10 00 00 01 	addl   $0x1,0x10b8
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 e2 04 00 00       	call   7be <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 d6 04 00 00       	call   7be <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 b4 10 00 00       	mov    %eax,0x10b4
   lock_release(&lock2);
 2f4:	e8 17 04 00 00       	call   710 <lock_release>



   exit();
 2f9:	e8 38 04 00 00       	call   736 <exit>
 2fe:	66 90                	xchg   %ax,%ax

00000300 <worker2>:
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	83 ec 08             	sub    $0x8,%esp
   int arg2_int = *(int*)arg2;
 306:	8b 45 0c             	mov    0xc(%ebp),%eax
 309:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 11);
 30b:	8b 45 08             	mov    0x8(%ebp),%eax
 30e:	83 38 0b             	cmpl   $0xb,(%eax)
 311:	75 4b                	jne    35e <worker2+0x5e>
   assert(arg2_int == 22);
 313:	83 fa 16             	cmp    $0x16,%edx
 316:	74 63                	je     37b <worker2+0x7b>
 318:	6a 4d                	push   $0x4d
 31a:	68 c8 0b 00 00       	push   $0xbc8
 31f:	68 d2 0b 00 00       	push   $0xbd2
 324:	6a 01                	push   $0x1
 326:	e8 75 05 00 00       	call   8a0 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 51 0c 00 00       	push   $0xc51
 333:	68 f8 0b 00 00       	push   $0xbf8
 338:	6a 01                	push   $0x1
 33a:	e8 61 05 00 00       	call   8a0 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 0c 0c 00 00       	push   $0xc0c
 346:	6a 01                	push   $0x1
 348:	e8 53 05 00 00       	call   8a0 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 bc 10 00 00    	push   0x10bc
 354:	e8 0d 04 00 00       	call   766 <kill>
 359:	e8 d8 03 00 00       	call   736 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 c8 0b 00 00       	push   $0xbc8
 365:	68 d2 0b 00 00       	push   $0xbd2
 36a:	6a 01                	push   $0x1
 36c:	e8 2f 05 00 00       	call   8a0 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 42 0c 00 00       	push   $0xc42
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 ac 10 00 00       	push   $0x10ac
 383:	e8 68 03 00 00       	call   6f0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 2a 04 00 00       	call   7be <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 b4 10 00 00    	cmp    0x10b4,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 c8 0b 00 00       	push   $0xbc8
 3a6:	68 d2 0b 00 00       	push   $0xbd2
 3ab:	6a 01                	push   $0x1
 3ad:	e8 ee 04 00 00       	call   8a0 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 da 0b 00 00       	push   $0xbda
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 b8 10 00 00 01 	addl   $0x1,0x10b8
   lock_release(&lock2);
 3c9:	68 ac 10 00 00       	push   $0x10ac
 3ce:	e8 3d 03 00 00       	call   710 <lock_release>
   exit();
 3d3:	e8 5e 03 00 00       	call   736 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 3e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3e1:	31 c0                	xor    %eax,%eax
{
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	53                   	push   %ebx
 3e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3f7:	83 c0 01             	add    $0x1,%eax
 3fa:	84 d2                	test   %dl,%dl
 3fc:	75 f2                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 3fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 401:	89 c8                	mov    %ecx,%eax
 403:	c9                   	leave  
 404:	c3                   	ret    
 405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41a:	0f b6 02             	movzbl (%edx),%eax
 41d:	84 c0                	test   %al,%al
 41f:	75 17                	jne    438 <strcmp+0x28>
 421:	eb 3a                	jmp    45d <strcmp+0x4d>
 423:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 427:	90                   	nop
 428:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 42c:	83 c2 01             	add    $0x1,%edx
 42f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 432:	84 c0                	test   %al,%al
 434:	74 1a                	je     450 <strcmp+0x40>
    p++, q++;
 436:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 438:	0f b6 19             	movzbl (%ecx),%ebx
 43b:	38 c3                	cmp    %al,%bl
 43d:	74 e9                	je     428 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 43f:	29 d8                	sub    %ebx,%eax
}
 441:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 444:	c9                   	leave  
 445:	c3                   	ret    
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 450:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 454:	31 c0                	xor    %eax,%eax
 456:	29 d8                	sub    %ebx,%eax
}
 458:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 45b:	c9                   	leave  
 45c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 45d:	0f b6 19             	movzbl (%ecx),%ebx
 460:	31 c0                	xor    %eax,%eax
 462:	eb db                	jmp    43f <strcmp+0x2f>
 464:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <strlen>:

uint
strlen(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 476:	80 3a 00             	cmpb   $0x0,(%edx)
 479:	74 15                	je     490 <strlen+0x20>
 47b:	31 c0                	xor    %eax,%eax
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	83 c0 01             	add    $0x1,%eax
 483:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 487:	89 c1                	mov    %eax,%ecx
 489:	75 f5                	jne    480 <strlen+0x10>
    ;
  return n;
}
 48b:	89 c8                	mov    %ecx,%eax
 48d:	5d                   	pop    %ebp
 48e:	c3                   	ret    
 48f:	90                   	nop
  for(n = 0; s[n]; n++)
 490:	31 c9                	xor    %ecx,%ecx
}
 492:	5d                   	pop    %ebp
 493:	89 c8                	mov    %ecx,%eax
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ad:	89 d7                	mov    %edx,%edi
 4af:	fc                   	cld    
 4b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4b5:	89 d0                	mov    %edx,%eax
 4b7:	c9                   	leave  
 4b8:	c3                   	ret    
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <strchr>:

char*
strchr(const char *s, char c)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4ca:	0f b6 10             	movzbl (%eax),%edx
 4cd:	84 d2                	test   %dl,%dl
 4cf:	75 12                	jne    4e3 <strchr+0x23>
 4d1:	eb 1d                	jmp    4f0 <strchr+0x30>
 4d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d7:	90                   	nop
 4d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4dc:	83 c0 01             	add    $0x1,%eax
 4df:	84 d2                	test   %dl,%dl
 4e1:	74 0d                	je     4f0 <strchr+0x30>
    if(*s == c)
 4e3:	38 d1                	cmp    %dl,%cl
 4e5:	75 f1                	jne    4d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4e7:	5d                   	pop    %ebp
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4f0:	31 c0                	xor    %eax,%eax
}
 4f2:	5d                   	pop    %ebp
 4f3:	c3                   	ret    
 4f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <gets>:

char*
gets(char *buf, int max)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 505:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 508:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 509:	31 db                	xor    %ebx,%ebx
{
 50b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 50e:	eb 27                	jmp    537 <gets+0x37>
    cc = read(0, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	6a 01                	push   $0x1
 515:	57                   	push   %edi
 516:	6a 00                	push   $0x0
 518:	e8 31 02 00 00       	call   74e <read>
    if(cc < 1)
 51d:	83 c4 10             	add    $0x10,%esp
 520:	85 c0                	test   %eax,%eax
 522:	7e 1d                	jle    541 <gets+0x41>
      break;
    buf[i++] = c;
 524:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 528:	8b 55 08             	mov    0x8(%ebp),%edx
 52b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 52f:	3c 0a                	cmp    $0xa,%al
 531:	74 1d                	je     550 <gets+0x50>
 533:	3c 0d                	cmp    $0xd,%al
 535:	74 19                	je     550 <gets+0x50>
  for(i=0; i+1 < max; ){
 537:	89 de                	mov    %ebx,%esi
 539:	83 c3 01             	add    $0x1,%ebx
 53c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 53f:	7c cf                	jl     510 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 541:	8b 45 08             	mov    0x8(%ebp),%eax
 544:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 548:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54b:	5b                   	pop    %ebx
 54c:	5e                   	pop    %esi
 54d:	5f                   	pop    %edi
 54e:	5d                   	pop    %ebp
 54f:	c3                   	ret    
  buf[i] = '\0';
 550:	8b 45 08             	mov    0x8(%ebp),%eax
 553:	89 de                	mov    %ebx,%esi
 555:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 559:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55c:	5b                   	pop    %ebx
 55d:	5e                   	pop    %esi
 55e:	5f                   	pop    %edi
 55f:	5d                   	pop    %ebp
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <stat>:

int
stat(const char *n, struct stat *st)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 575:	83 ec 08             	sub    $0x8,%esp
 578:	6a 00                	push   $0x0
 57a:	ff 75 08             	push   0x8(%ebp)
 57d:	e8 f4 01 00 00       	call   776 <open>
  if(fd < 0)
 582:	83 c4 10             	add    $0x10,%esp
 585:	85 c0                	test   %eax,%eax
 587:	78 27                	js     5b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 589:	83 ec 08             	sub    $0x8,%esp
 58c:	ff 75 0c             	push   0xc(%ebp)
 58f:	89 c3                	mov    %eax,%ebx
 591:	50                   	push   %eax
 592:	e8 f7 01 00 00       	call   78e <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 bd 01 00 00       	call   75e <close>
  return r;
 5a1:	83 c4 10             	add    $0x10,%esp
}
 5a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5a7:	89 f0                	mov    %esi,%eax
 5a9:	5b                   	pop    %ebx
 5aa:	5e                   	pop    %esi
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5b5:	eb ed                	jmp    5a4 <stat+0x34>
 5b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5be:	66 90                	xchg   %ax,%ax

000005c0 <atoi>:

int
atoi(const char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
 5c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5c7:	0f be 02             	movsbl (%edx),%eax
 5ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5d5:	77 1e                	ja     5f5 <atoi+0x35>
 5d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5e0:	83 c2 01             	add    $0x1,%edx
 5e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ea:	0f be 02             	movsbl (%edx),%eax
 5ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5f0:	80 fb 09             	cmp    $0x9,%bl
 5f3:	76 eb                	jbe    5e0 <atoi+0x20>
  return n;
}
 5f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f8:	89 c8                	mov    %ecx,%eax
 5fa:	c9                   	leave  
 5fb:	c3                   	ret    
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	8b 45 10             	mov    0x10(%ebp),%eax
 607:	8b 55 08             	mov    0x8(%ebp),%edx
 60a:	56                   	push   %esi
 60b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 60e:	85 c0                	test   %eax,%eax
 610:	7e 13                	jle    625 <memmove+0x25>
 612:	01 d0                	add    %edx,%eax
  dst = vdst;
 614:	89 d7                	mov    %edx,%edi
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 620:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 621:	39 f8                	cmp    %edi,%eax
 623:	75 fb                	jne    620 <memmove+0x20>
  return vdst;
}
 625:	5e                   	pop    %esi
 626:	89 d0                	mov    %edx,%eax
 628:	5f                   	pop    %edi
 629:	5d                   	pop    %ebp
 62a:	c3                   	ret    
 62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	53                   	push   %ebx
 634:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 637:	68 00 10 00 00       	push   $0x1000
 63c:	e8 8f 04 00 00       	call   ad0 <malloc>
  if((int) stack % 4096 != 0){
 641:	83 c4 10             	add    $0x10,%esp
 644:	a9 ff 0f 00 00       	test   $0xfff,%eax
 649:	74 16                	je     661 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 64b:	99                   	cltd   
 64c:	c1 ea 14             	shr    $0x14,%edx
 64f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 652:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 658:	29 ca                	sub    %ecx,%edx
 65a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 661:	50                   	push   %eax
 662:	ff 75 10             	push   0x10(%ebp)
 665:	ff 75 0c             	push   0xc(%ebp)
 668:	ff 75 08             	push   0x8(%ebp)
 66b:	e8 66 01 00 00       	call   7d6 <clone>
  printf(1, " thread create %d \n", rc);
 670:	83 c4 0c             	add    $0xc,%esp
 673:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 674:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 676:	68 60 0c 00 00       	push   $0xc60
 67b:	6a 01                	push   $0x1
 67d:	e8 1e 02 00 00       	call   8a0 <printf>
  return rc;
}
 682:	89 d8                	mov    %ebx,%eax
 684:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 687:	c9                   	leave  
 688:	c3                   	ret    
 689:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000690 <thread_join>:

int
thread_join(){
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	53                   	push   %ebx
 694:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 697:	68 74 0c 00 00       	push   $0xc74
 69c:	6a 01                	push   $0x1
 69e:	e8 fd 01 00 00       	call   8a0 <printf>
  void** stack = 0;
  printf(1, "thread join 2 \n");
 6a3:	58                   	pop    %eax
 6a4:	5a                   	pop    %edx
 6a5:	68 84 0c 00 00       	push   $0xc84
 6aa:	6a 01                	push   $0x1
 6ac:	e8 ef 01 00 00       	call   8a0 <printf>
  int rc = join(stack);
 6b1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 6b8:	e8 21 01 00 00       	call   7de <join>
  printf(1, "thread join 3 \n");
 6bd:	59                   	pop    %ecx
  int rc = join(stack);
 6be:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 6c0:	58                   	pop    %eax
 6c1:	68 94 0c 00 00       	push   $0xc94
 6c6:	6a 01                	push   $0x1
 6c8:	e8 d3 01 00 00       	call   8a0 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 6cd:	58                   	pop    %eax
 6ce:	5a                   	pop    %edx
 6cf:	68 a4 0c 00 00       	push   $0xca4
 6d4:	6a 01                	push   $0x1
 6d6:	e8 c5 01 00 00       	call   8a0 <printf>
  return rc;
}
 6db:	89 d8                	mov    %ebx,%eax
 6dd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e0:	c9                   	leave  
 6e1:	c3                   	ret    
 6e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006f0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 6f0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 6f1:	b9 01 00 00 00       	mov    $0x1,%ecx
 6f6:	89 e5                	mov    %esp,%ebp
 6f8:	8b 55 08             	mov    0x8(%ebp),%edx
 6fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6ff:	90                   	nop
 700:	89 c8                	mov    %ecx,%eax
 702:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 705:	83 f8 01             	cmp    $0x1,%eax
 708:	74 f6                	je     700 <lock_acquire+0x10>
 ; // spin

};
 70a:	5d                   	pop    %ebp
 70b:	c3                   	ret    
 70c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000710 <lock_release>:

void lock_release(lock_t * lock){
 710:	55                   	push   %ebp
 711:	31 c0                	xor    %eax,%eax
 713:	89 e5                	mov    %esp,%ebp
 715:	8b 55 08             	mov    0x8(%ebp),%edx
 718:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 71b:	5d                   	pop    %ebp
 71c:	c3                   	ret    
 71d:	8d 76 00             	lea    0x0(%esi),%esi

00000720 <lock_init>:

void lock_init(lock_t * lock){
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 723:	8b 45 08             	mov    0x8(%ebp),%eax
 726:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 72c:	5d                   	pop    %ebp
 72d:	c3                   	ret    

0000072e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 72e:	b8 01 00 00 00       	mov    $0x1,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <exit>:
SYSCALL(exit)
 736:	b8 02 00 00 00       	mov    $0x2,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <wait>:
SYSCALL(wait)
 73e:	b8 03 00 00 00       	mov    $0x3,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    

00000746 <pipe>:
SYSCALL(pipe)
 746:	b8 04 00 00 00       	mov    $0x4,%eax
 74b:	cd 40                	int    $0x40
 74d:	c3                   	ret    

0000074e <read>:
SYSCALL(read)
 74e:	b8 05 00 00 00       	mov    $0x5,%eax
 753:	cd 40                	int    $0x40
 755:	c3                   	ret    

00000756 <write>:
SYSCALL(write)
 756:	b8 10 00 00 00       	mov    $0x10,%eax
 75b:	cd 40                	int    $0x40
 75d:	c3                   	ret    

0000075e <close>:
SYSCALL(close)
 75e:	b8 15 00 00 00       	mov    $0x15,%eax
 763:	cd 40                	int    $0x40
 765:	c3                   	ret    

00000766 <kill>:
SYSCALL(kill)
 766:	b8 06 00 00 00       	mov    $0x6,%eax
 76b:	cd 40                	int    $0x40
 76d:	c3                   	ret    

0000076e <exec>:
SYSCALL(exec)
 76e:	b8 07 00 00 00       	mov    $0x7,%eax
 773:	cd 40                	int    $0x40
 775:	c3                   	ret    

00000776 <open>:
SYSCALL(open)
 776:	b8 0f 00 00 00       	mov    $0xf,%eax
 77b:	cd 40                	int    $0x40
 77d:	c3                   	ret    

0000077e <mknod>:
SYSCALL(mknod)
 77e:	b8 11 00 00 00       	mov    $0x11,%eax
 783:	cd 40                	int    $0x40
 785:	c3                   	ret    

00000786 <unlink>:
SYSCALL(unlink)
 786:	b8 12 00 00 00       	mov    $0x12,%eax
 78b:	cd 40                	int    $0x40
 78d:	c3                   	ret    

0000078e <fstat>:
SYSCALL(fstat)
 78e:	b8 08 00 00 00       	mov    $0x8,%eax
 793:	cd 40                	int    $0x40
 795:	c3                   	ret    

00000796 <link>:
SYSCALL(link)
 796:	b8 13 00 00 00       	mov    $0x13,%eax
 79b:	cd 40                	int    $0x40
 79d:	c3                   	ret    

0000079e <mkdir>:
SYSCALL(mkdir)
 79e:	b8 14 00 00 00       	mov    $0x14,%eax
 7a3:	cd 40                	int    $0x40
 7a5:	c3                   	ret    

000007a6 <chdir>:
SYSCALL(chdir)
 7a6:	b8 09 00 00 00       	mov    $0x9,%eax
 7ab:	cd 40                	int    $0x40
 7ad:	c3                   	ret    

000007ae <dup>:
SYSCALL(dup)
 7ae:	b8 0a 00 00 00       	mov    $0xa,%eax
 7b3:	cd 40                	int    $0x40
 7b5:	c3                   	ret    

000007b6 <getpid>:
SYSCALL(getpid)
 7b6:	b8 0b 00 00 00       	mov    $0xb,%eax
 7bb:	cd 40                	int    $0x40
 7bd:	c3                   	ret    

000007be <sbrk>:
SYSCALL(sbrk)
 7be:	b8 0c 00 00 00       	mov    $0xc,%eax
 7c3:	cd 40                	int    $0x40
 7c5:	c3                   	ret    

000007c6 <sleep>:
SYSCALL(sleep)
 7c6:	b8 0d 00 00 00       	mov    $0xd,%eax
 7cb:	cd 40                	int    $0x40
 7cd:	c3                   	ret    

000007ce <uptime>:
SYSCALL(uptime)
 7ce:	b8 0e 00 00 00       	mov    $0xe,%eax
 7d3:	cd 40                	int    $0x40
 7d5:	c3                   	ret    

000007d6 <clone>:
SYSCALL(clone)
 7d6:	b8 16 00 00 00       	mov    $0x16,%eax
 7db:	cd 40                	int    $0x40
 7dd:	c3                   	ret    

000007de <join>:
SYSCALL(join)
 7de:	b8 17 00 00 00       	mov    $0x17,%eax
 7e3:	cd 40                	int    $0x40
 7e5:	c3                   	ret    
 7e6:	66 90                	xchg   %ax,%ax
 7e8:	66 90                	xchg   %ax,%ax
 7ea:	66 90                	xchg   %ax,%ax
 7ec:	66 90                	xchg   %ax,%ax
 7ee:	66 90                	xchg   %ax,%ax

000007f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 3c             	sub    $0x3c,%esp
 7f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7fc:	89 d1                	mov    %edx,%ecx
{
 7fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 801:	85 d2                	test   %edx,%edx
 803:	0f 89 7f 00 00 00    	jns    888 <printint+0x98>
 809:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 80d:	74 79                	je     888 <printint+0x98>
    neg = 1;
 80f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 816:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 818:	31 db                	xor    %ebx,%ebx
 81a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 81d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 820:	89 c8                	mov    %ecx,%eax
 822:	31 d2                	xor    %edx,%edx
 824:	89 cf                	mov    %ecx,%edi
 826:	f7 75 c4             	divl   -0x3c(%ebp)
 829:	0f b6 92 14 0d 00 00 	movzbl 0xd14(%edx),%edx
 830:	89 45 c0             	mov    %eax,-0x40(%ebp)
 833:	89 d8                	mov    %ebx,%eax
 835:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 838:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 83b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 83e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 841:	76 dd                	jbe    820 <printint+0x30>
  if(neg)
 843:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 846:	85 c9                	test   %ecx,%ecx
 848:	74 0c                	je     856 <printint+0x66>
    buf[i++] = '-';
 84a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 84f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 851:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 856:	8b 7d b8             	mov    -0x48(%ebp),%edi
 859:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 85d:	eb 07                	jmp    866 <printint+0x76>
 85f:	90                   	nop
    putc(fd, buf[i]);
 860:	0f b6 13             	movzbl (%ebx),%edx
 863:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 866:	83 ec 04             	sub    $0x4,%esp
 869:	88 55 d7             	mov    %dl,-0x29(%ebp)
 86c:	6a 01                	push   $0x1
 86e:	56                   	push   %esi
 86f:	57                   	push   %edi
 870:	e8 e1 fe ff ff       	call   756 <write>
  while(--i >= 0)
 875:	83 c4 10             	add    $0x10,%esp
 878:	39 de                	cmp    %ebx,%esi
 87a:	75 e4                	jne    860 <printint+0x70>
}
 87c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 87f:	5b                   	pop    %ebx
 880:	5e                   	pop    %esi
 881:	5f                   	pop    %edi
 882:	5d                   	pop    %ebp
 883:	c3                   	ret    
 884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 888:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 88f:	eb 87                	jmp    818 <printint+0x28>
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop

000008a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	56                   	push   %esi
 8a5:	53                   	push   %ebx
 8a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 8ac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 8af:	0f b6 13             	movzbl (%ebx),%edx
 8b2:	84 d2                	test   %dl,%dl
 8b4:	74 6a                	je     920 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 8b6:	8d 45 10             	lea    0x10(%ebp),%eax
 8b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 8bf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 8c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8c4:	eb 36                	jmp    8fc <printf+0x5c>
 8c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
 8d0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8d3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8d8:	83 f8 25             	cmp    $0x25,%eax
 8db:	74 15                	je     8f2 <printf+0x52>
  write(fd, &c, 1);
 8dd:	83 ec 04             	sub    $0x4,%esp
 8e0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8e3:	6a 01                	push   $0x1
 8e5:	57                   	push   %edi
 8e6:	56                   	push   %esi
 8e7:	e8 6a fe ff ff       	call   756 <write>
 8ec:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8ef:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8f2:	0f b6 13             	movzbl (%ebx),%edx
 8f5:	83 c3 01             	add    $0x1,%ebx
 8f8:	84 d2                	test   %dl,%dl
 8fa:	74 24                	je     920 <printf+0x80>
    c = fmt[i] & 0xff;
 8fc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8ff:	85 c9                	test   %ecx,%ecx
 901:	74 cd                	je     8d0 <printf+0x30>
      }
    } else if(state == '%'){
 903:	83 f9 25             	cmp    $0x25,%ecx
 906:	75 ea                	jne    8f2 <printf+0x52>
      if(c == 'd'){
 908:	83 f8 25             	cmp    $0x25,%eax
 90b:	0f 84 07 01 00 00    	je     a18 <printf+0x178>
 911:	83 e8 63             	sub    $0x63,%eax
 914:	83 f8 15             	cmp    $0x15,%eax
 917:	77 17                	ja     930 <printf+0x90>
 919:	ff 24 85 bc 0c 00 00 	jmp    *0xcbc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 920:	8d 65 f4             	lea    -0xc(%ebp),%esp
 923:	5b                   	pop    %ebx
 924:	5e                   	pop    %esi
 925:	5f                   	pop    %edi
 926:	5d                   	pop    %ebp
 927:	c3                   	ret    
 928:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 92f:	90                   	nop
  write(fd, &c, 1);
 930:	83 ec 04             	sub    $0x4,%esp
 933:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 936:	6a 01                	push   $0x1
 938:	57                   	push   %edi
 939:	56                   	push   %esi
 93a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 93e:	e8 13 fe ff ff       	call   756 <write>
        putc(fd, c);
 943:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 947:	83 c4 0c             	add    $0xc,%esp
 94a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 94d:	6a 01                	push   $0x1
 94f:	57                   	push   %edi
 950:	56                   	push   %esi
 951:	e8 00 fe ff ff       	call   756 <write>
        putc(fd, c);
 956:	83 c4 10             	add    $0x10,%esp
      state = 0;
 959:	31 c9                	xor    %ecx,%ecx
 95b:	eb 95                	jmp    8f2 <printf+0x52>
 95d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 960:	83 ec 0c             	sub    $0xc,%esp
 963:	b9 10 00 00 00       	mov    $0x10,%ecx
 968:	6a 00                	push   $0x0
 96a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 96d:	8b 10                	mov    (%eax),%edx
 96f:	89 f0                	mov    %esi,%eax
 971:	e8 7a fe ff ff       	call   7f0 <printint>
        ap++;
 976:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 97a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 97d:	31 c9                	xor    %ecx,%ecx
 97f:	e9 6e ff ff ff       	jmp    8f2 <printf+0x52>
 984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 988:	8b 45 d0             	mov    -0x30(%ebp),%eax
 98b:	8b 10                	mov    (%eax),%edx
        ap++;
 98d:	83 c0 04             	add    $0x4,%eax
 990:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 993:	85 d2                	test   %edx,%edx
 995:	0f 84 8d 00 00 00    	je     a28 <printf+0x188>
        while(*s != 0){
 99b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 99e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 9a0:	84 c0                	test   %al,%al
 9a2:	0f 84 4a ff ff ff    	je     8f2 <printf+0x52>
 9a8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9ab:	89 d3                	mov    %edx,%ebx
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 9b0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9b3:	83 c3 01             	add    $0x1,%ebx
 9b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9b9:	6a 01                	push   $0x1
 9bb:	57                   	push   %edi
 9bc:	56                   	push   %esi
 9bd:	e8 94 fd ff ff       	call   756 <write>
        while(*s != 0){
 9c2:	0f b6 03             	movzbl (%ebx),%eax
 9c5:	83 c4 10             	add    $0x10,%esp
 9c8:	84 c0                	test   %al,%al
 9ca:	75 e4                	jne    9b0 <printf+0x110>
      state = 0;
 9cc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 9cf:	31 c9                	xor    %ecx,%ecx
 9d1:	e9 1c ff ff ff       	jmp    8f2 <printf+0x52>
 9d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9e0:	83 ec 0c             	sub    $0xc,%esp
 9e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9e8:	6a 01                	push   $0x1
 9ea:	e9 7b ff ff ff       	jmp    96a <printf+0xca>
 9ef:	90                   	nop
        putc(fd, *ap);
 9f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9f6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9f8:	6a 01                	push   $0x1
 9fa:	57                   	push   %edi
 9fb:	56                   	push   %esi
        putc(fd, *ap);
 9fc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9ff:	e8 52 fd ff ff       	call   756 <write>
        ap++;
 a04:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a08:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a0b:	31 c9                	xor    %ecx,%ecx
 a0d:	e9 e0 fe ff ff       	jmp    8f2 <printf+0x52>
 a12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a18:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a1b:	83 ec 04             	sub    $0x4,%esp
 a1e:	e9 2a ff ff ff       	jmp    94d <printf+0xad>
 a23:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a27:	90                   	nop
          s = "(null)";
 a28:	ba b4 0c 00 00       	mov    $0xcb4,%edx
        while(*s != 0){
 a2d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a30:	b8 28 00 00 00       	mov    $0x28,%eax
 a35:	89 d3                	mov    %edx,%ebx
 a37:	e9 74 ff ff ff       	jmp    9b0 <printf+0x110>
 a3c:	66 90                	xchg   %ax,%ax
 a3e:	66 90                	xchg   %ax,%ax

00000a40 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a40:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a41:	a1 c0 10 00 00       	mov    0x10c0,%eax
{
 a46:	89 e5                	mov    %esp,%ebp
 a48:	57                   	push   %edi
 a49:	56                   	push   %esi
 a4a:	53                   	push   %ebx
 a4b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a4e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a58:	89 c2                	mov    %eax,%edx
 a5a:	8b 00                	mov    (%eax),%eax
 a5c:	39 ca                	cmp    %ecx,%edx
 a5e:	73 30                	jae    a90 <free+0x50>
 a60:	39 c1                	cmp    %eax,%ecx
 a62:	72 04                	jb     a68 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a64:	39 c2                	cmp    %eax,%edx
 a66:	72 f0                	jb     a58 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a68:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a6b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a6e:	39 f8                	cmp    %edi,%eax
 a70:	74 30                	je     aa2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a72:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a75:	8b 42 04             	mov    0x4(%edx),%eax
 a78:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a7b:	39 f1                	cmp    %esi,%ecx
 a7d:	74 3a                	je     ab9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a7f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a81:	5b                   	pop    %ebx
  freep = p;
 a82:	89 15 c0 10 00 00    	mov    %edx,0x10c0
}
 a88:	5e                   	pop    %esi
 a89:	5f                   	pop    %edi
 a8a:	5d                   	pop    %ebp
 a8b:	c3                   	ret    
 a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a90:	39 c2                	cmp    %eax,%edx
 a92:	72 c4                	jb     a58 <free+0x18>
 a94:	39 c1                	cmp    %eax,%ecx
 a96:	73 c0                	jae    a58 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a98:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a9b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a9e:	39 f8                	cmp    %edi,%eax
 aa0:	75 d0                	jne    a72 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 aa2:	03 70 04             	add    0x4(%eax),%esi
 aa5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 aa8:	8b 02                	mov    (%edx),%eax
 aaa:	8b 00                	mov    (%eax),%eax
 aac:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 aaf:	8b 42 04             	mov    0x4(%edx),%eax
 ab2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ab5:	39 f1                	cmp    %esi,%ecx
 ab7:	75 c6                	jne    a7f <free+0x3f>
    p->s.size += bp->s.size;
 ab9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 abc:	89 15 c0 10 00 00    	mov    %edx,0x10c0
    p->s.size += bp->s.size;
 ac2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 ac5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ac8:	89 0a                	mov    %ecx,(%edx)
}
 aca:	5b                   	pop    %ebx
 acb:	5e                   	pop    %esi
 acc:	5f                   	pop    %edi
 acd:	5d                   	pop    %ebp
 ace:	c3                   	ret    
 acf:	90                   	nop

00000ad0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ad0:	55                   	push   %ebp
 ad1:	89 e5                	mov    %esp,%ebp
 ad3:	57                   	push   %edi
 ad4:	56                   	push   %esi
 ad5:	53                   	push   %ebx
 ad6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ad9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 adc:	8b 3d c0 10 00 00    	mov    0x10c0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ae2:	8d 70 07             	lea    0x7(%eax),%esi
 ae5:	c1 ee 03             	shr    $0x3,%esi
 ae8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 aeb:	85 ff                	test   %edi,%edi
 aed:	0f 84 9d 00 00 00    	je     b90 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 af3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 af5:	8b 4a 04             	mov    0x4(%edx),%ecx
 af8:	39 f1                	cmp    %esi,%ecx
 afa:	73 6a                	jae    b66 <malloc+0x96>
 afc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b01:	39 de                	cmp    %ebx,%esi
 b03:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b06:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b0d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b10:	eb 17                	jmp    b29 <malloc+0x59>
 b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b18:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b1a:	8b 48 04             	mov    0x4(%eax),%ecx
 b1d:	39 f1                	cmp    %esi,%ecx
 b1f:	73 4f                	jae    b70 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b21:	8b 3d c0 10 00 00    	mov    0x10c0,%edi
 b27:	89 c2                	mov    %eax,%edx
 b29:	39 d7                	cmp    %edx,%edi
 b2b:	75 eb                	jne    b18 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b2d:	83 ec 0c             	sub    $0xc,%esp
 b30:	ff 75 e4             	push   -0x1c(%ebp)
 b33:	e8 86 fc ff ff       	call   7be <sbrk>
  if(p == (char*)-1)
 b38:	83 c4 10             	add    $0x10,%esp
 b3b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b3e:	74 1c                	je     b5c <malloc+0x8c>
  hp->s.size = nu;
 b40:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b43:	83 ec 0c             	sub    $0xc,%esp
 b46:	83 c0 08             	add    $0x8,%eax
 b49:	50                   	push   %eax
 b4a:	e8 f1 fe ff ff       	call   a40 <free>
  return freep;
 b4f:	8b 15 c0 10 00 00    	mov    0x10c0,%edx
      if((p = morecore(nunits)) == 0)
 b55:	83 c4 10             	add    $0x10,%esp
 b58:	85 d2                	test   %edx,%edx
 b5a:	75 bc                	jne    b18 <malloc+0x48>
        return 0;
  }
}
 b5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b5f:	31 c0                	xor    %eax,%eax
}
 b61:	5b                   	pop    %ebx
 b62:	5e                   	pop    %esi
 b63:	5f                   	pop    %edi
 b64:	5d                   	pop    %ebp
 b65:	c3                   	ret    
    if(p->s.size >= nunits){
 b66:	89 d0                	mov    %edx,%eax
 b68:	89 fa                	mov    %edi,%edx
 b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b70:	39 ce                	cmp    %ecx,%esi
 b72:	74 4c                	je     bc0 <malloc+0xf0>
        p->s.size -= nunits;
 b74:	29 f1                	sub    %esi,%ecx
 b76:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b79:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b7c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b7f:	89 15 c0 10 00 00    	mov    %edx,0x10c0
}
 b85:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b88:	83 c0 08             	add    $0x8,%eax
}
 b8b:	5b                   	pop    %ebx
 b8c:	5e                   	pop    %esi
 b8d:	5f                   	pop    %edi
 b8e:	5d                   	pop    %ebp
 b8f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b90:	c7 05 c0 10 00 00 c4 	movl   $0x10c4,0x10c0
 b97:	10 00 00 
    base.s.size = 0;
 b9a:	bf c4 10 00 00       	mov    $0x10c4,%edi
    base.s.ptr = freep = prevp = &base;
 b9f:	c7 05 c4 10 00 00 c4 	movl   $0x10c4,0x10c4
 ba6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ba9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 bab:	c7 05 c8 10 00 00 00 	movl   $0x0,0x10c8
 bb2:	00 00 00 
    if(p->s.size >= nunits){
 bb5:	e9 42 ff ff ff       	jmp    afc <malloc+0x2c>
 bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 bc0:	8b 08                	mov    (%eax),%ecx
 bc2:	89 0a                	mov    %ecx,(%edx)
 bc4:	eb b9                	jmp    b7f <malloc+0xaf>
