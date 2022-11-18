
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
  14:	e8 10 07 00 00       	call   729 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 a5 0f 00 00       	push   $0xfa5
   ppid = getpid();
  28:	a3 b0 0f 00 00       	mov    %eax,0xfb0
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 67 06 00 00       	call   6a0 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 a4 0f 00 00 	movl   $0xfa4,(%esp)
  40:	e8 5b 06 00 00       	call   6a0 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 a5 0f 00 00 	movl   $0xfa5,(%esp)
  4c:	e8 2f 06 00 00       	call   680 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 a4 0f 00 00 	movl   $0xfa4,(%esp)
  58:	e8 23 06 00 00       	call   680 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 a0 0f 00 00    	mov    0xfa0,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d a0 0f 00 00    	cmp    %ebx,0xfa0
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
  9b:	68 38 0b 00 00       	push   $0xb38
  a0:	68 42 0b 00 00       	push   $0xb42
  a5:	6a 01                	push   $0x1
  a7:	e8 64 07 00 00       	call   810 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 89 0b 00 00       	push   $0xb89
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 68 0b 00 00       	push   $0xb68
  b9:	6a 01                	push   $0x1
  bb:	e8 50 07 00 00       	call   810 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 7c 0b 00 00       	push   $0xb7c
  c7:	6a 01                	push   $0x1
  c9:	e8 42 07 00 00       	call   810 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 b0 0f 00 00    	push   0xfb0
  d5:	e8 ff 05 00 00       	call   6d9 <kill>
  da:	e8 ca 05 00 00       	call   6a9 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 48 06 00 00       	call   731 <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 a8 0f 00 00       	mov    %eax,0xfa8
   while (global < num_threads) {
  f1:	a1 a0 0f 00 00       	mov    0xfa0,%eax
  f6:	39 05 ac 0f 00 00    	cmp    %eax,0xfac
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 a5 0f 00 00       	push   $0xfa5
 108:	e8 83 05 00 00       	call   690 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 20 06 00 00       	call   739 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 a5 0f 00 00 	movl   $0xfa5,(%esp)
 120:	e8 5b 05 00 00       	call   680 <lock_acquire>
   while (global < num_threads) {
 125:	a1 a0 0f 00 00       	mov    0xfa0,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 ac 0f 00 00    	cmp    %eax,0xfac
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 ac 0f 00 00 00 	movl   $0x0,0xfac
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 e5 05 00 00       	call   731 <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 d9 05 00 00       	call   731 <sbrk>
   lock_release(&lock);
 158:	c7 04 24 a5 0f 00 00 	movl   $0xfa5,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 a8 0f 00 00       	mov    %eax,0xfa8
   lock_release(&lock);
 164:	e8 27 05 00 00       	call   690 <lock_release>
   while (global < num_threads) {
 169:	a1 a0 0f 00 00       	mov    0xfa0,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 ac 0f 00 00    	cmp    %eax,0xfac
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 a4 0f 00 00       	push   $0xfa4
 188:	e8 03 05 00 00       	call   690 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 a0 05 00 00       	call   739 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 a4 0f 00 00 	movl   $0xfa4,(%esp)
 1a0:	e8 db 04 00 00       	call   680 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 a0 0f 00 00       	mov    0xfa0,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 ac 0f 00 00    	cmp    %eax,0xfac
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 a4 0f 00 00       	push   $0xfa4
 1bd:	e8 ce 04 00 00       	call   690 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d a0 0f 00 00 00 	cmpl   $0x0,0xfa0
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d a0 0f 00 00    	cmp    %ebx,0xfa0
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 68 04 00 00       	call   650 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 38 0b 00 00       	push   $0xb38
 1f3:	68 42 0b 00 00       	push   $0xb42
 1f8:	6a 01                	push   $0x1
 1fa:	e8 11 06 00 00       	call   810 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 98 0b 00 00       	push   $0xb98
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 a5 0b 00 00       	push   $0xba5
 213:	6a 01                	push   $0x1
 215:	e8 f6 05 00 00       	call   810 <printf>
   exit();
 21a:	e8 8a 04 00 00       	call   6a9 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 a5 0f 00 00       	push   $0xfa5
 22b:	e8 50 04 00 00       	call   680 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 f5 04 00 00       	call   731 <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 a8 0f 00 00    	cmp    0xfa8,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 38 0b 00 00       	push   $0xb38
 24e:	68 42 0b 00 00       	push   $0xb42
 253:	6a 01                	push   $0x1
 255:	e8 b6 05 00 00       	call   810 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 4a 0b 00 00       	push   $0xb4a
 262:	68 68 0b 00 00       	push   $0xb68
 267:	6a 01                	push   $0x1
 269:	e8 a2 05 00 00       	call   810 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 7c 0b 00 00       	push   $0xb7c
 275:	6a 01                	push   $0x1
 277:	e8 94 05 00 00       	call   810 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 b0 0f 00 00    	push   0xfb0
 283:	e8 51 04 00 00       	call   6d9 <kill>
 288:	e8 1c 04 00 00       	call   6a9 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 ac 0f 00 00 01 	addl   $0x1,0xfac
   lock_release(&lock);
 297:	68 a5 0f 00 00       	push   $0xfa5
 29c:	e8 ef 03 00 00       	call   690 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 a4 0f 00 00 	movl   $0xfa4,(%esp)
 2a8:	e8 d3 03 00 00       	call   680 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 78 04 00 00       	call   731 <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 a8 0f 00 00    	cmp    0xfa8,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 ac 0f 00 00 01 	addl   $0x1,0xfac
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 55 04 00 00       	call   731 <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 49 04 00 00       	call   731 <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 a4 0f 00 00 	movl   $0xfa4,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 a8 0f 00 00       	mov    %eax,0xfa8
   lock_release(&lock2);
 2f4:	e8 97 03 00 00       	call   690 <lock_release>



   exit();
 2f9:	e8 ab 03 00 00       	call   6a9 <exit>
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
 31a:	68 38 0b 00 00       	push   $0xb38
 31f:	68 42 0b 00 00       	push   $0xb42
 324:	6a 01                	push   $0x1
 326:	e8 e5 04 00 00       	call   810 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 c1 0b 00 00       	push   $0xbc1
 333:	68 68 0b 00 00       	push   $0xb68
 338:	6a 01                	push   $0x1
 33a:	e8 d1 04 00 00       	call   810 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 7c 0b 00 00       	push   $0xb7c
 346:	6a 01                	push   $0x1
 348:	e8 c3 04 00 00       	call   810 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 b0 0f 00 00    	push   0xfb0
 354:	e8 80 03 00 00       	call   6d9 <kill>
 359:	e8 4b 03 00 00       	call   6a9 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 38 0b 00 00       	push   $0xb38
 365:	68 42 0b 00 00       	push   $0xb42
 36a:	6a 01                	push   $0x1
 36c:	e8 9f 04 00 00       	call   810 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 b2 0b 00 00       	push   $0xbb2
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 a4 0f 00 00       	push   $0xfa4
 383:	e8 f8 02 00 00       	call   680 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 9d 03 00 00       	call   731 <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 a8 0f 00 00    	cmp    0xfa8,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 38 0b 00 00       	push   $0xb38
 3a6:	68 42 0b 00 00       	push   $0xb42
 3ab:	6a 01                	push   $0x1
 3ad:	e8 5e 04 00 00       	call   810 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 4a 0b 00 00       	push   $0xb4a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 ac 0f 00 00 01 	addl   $0x1,0xfac
   lock_release(&lock2);
 3c9:	68 a4 0f 00 00       	push   $0xfa4
 3ce:	e8 bd 02 00 00       	call   690 <lock_release>
   exit();
 3d3:	e8 d1 02 00 00       	call   6a9 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:
#include "user.h"
#include "x86.h"

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
 518:	e8 a4 01 00 00       	call   6c1 <read>
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
 57d:	e8 67 01 00 00       	call   6e9 <open>
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
 592:	e8 6a 01 00 00       	call   701 <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 30 01 00 00       	call   6d1 <close>
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
 633:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 636:	6a 04                	push   $0x4
 638:	e8 03 04 00 00       	call   a40 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 63d:	50                   	push   %eax
 63e:	ff 75 10             	push   0x10(%ebp)
 641:	ff 75 0c             	push   0xc(%ebp)
 644:	ff 75 08             	push   0x8(%ebp)
 647:	e8 fd 00 00 00       	call   749 <clone>
}
 64c:	c9                   	leave  
 64d:	c3                   	ret    
 64e:	66 90                	xchg   %ax,%ax

00000650 <thread_join>:

int
thread_join(){
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	56                   	push   %esi
 654:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 655:	83 ec 0c             	sub    $0xc,%esp
 658:	6a 04                	push   $0x4
 65a:	e8 e1 03 00 00       	call   a40 <malloc>
  int rc = join(stack);
 65f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 662:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 664:	e8 e8 00 00 00       	call   751 <join>
 669:	89 c6                	mov    %eax,%esi
  free(*stack);
 66b:	58                   	pop    %eax
 66c:	ff 33                	push   (%ebx)
 66e:	e8 3d 03 00 00       	call   9b0 <free>
  return rc;
}
 673:	8d 65 f8             	lea    -0x8(%ebp),%esp
 676:	89 f0                	mov    %esi,%eax
 678:	5b                   	pop    %ebx
 679:	5e                   	pop    %esi
 67a:	5d                   	pop    %ebp
 67b:	c3                   	ret    
 67c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000680 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 680:	c3                   	ret    
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <lock_release>:
 690:	c3                   	ret    
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop

000006a0 <lock_init>:
 6a0:	c3                   	ret    

000006a1 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6a1:	b8 01 00 00 00       	mov    $0x1,%eax
 6a6:	cd 40                	int    $0x40
 6a8:	c3                   	ret    

000006a9 <exit>:
SYSCALL(exit)
 6a9:	b8 02 00 00 00       	mov    $0x2,%eax
 6ae:	cd 40                	int    $0x40
 6b0:	c3                   	ret    

000006b1 <wait>:
SYSCALL(wait)
 6b1:	b8 03 00 00 00       	mov    $0x3,%eax
 6b6:	cd 40                	int    $0x40
 6b8:	c3                   	ret    

000006b9 <pipe>:
SYSCALL(pipe)
 6b9:	b8 04 00 00 00       	mov    $0x4,%eax
 6be:	cd 40                	int    $0x40
 6c0:	c3                   	ret    

000006c1 <read>:
SYSCALL(read)
 6c1:	b8 05 00 00 00       	mov    $0x5,%eax
 6c6:	cd 40                	int    $0x40
 6c8:	c3                   	ret    

000006c9 <write>:
SYSCALL(write)
 6c9:	b8 10 00 00 00       	mov    $0x10,%eax
 6ce:	cd 40                	int    $0x40
 6d0:	c3                   	ret    

000006d1 <close>:
SYSCALL(close)
 6d1:	b8 15 00 00 00       	mov    $0x15,%eax
 6d6:	cd 40                	int    $0x40
 6d8:	c3                   	ret    

000006d9 <kill>:
SYSCALL(kill)
 6d9:	b8 06 00 00 00       	mov    $0x6,%eax
 6de:	cd 40                	int    $0x40
 6e0:	c3                   	ret    

000006e1 <exec>:
SYSCALL(exec)
 6e1:	b8 07 00 00 00       	mov    $0x7,%eax
 6e6:	cd 40                	int    $0x40
 6e8:	c3                   	ret    

000006e9 <open>:
SYSCALL(open)
 6e9:	b8 0f 00 00 00       	mov    $0xf,%eax
 6ee:	cd 40                	int    $0x40
 6f0:	c3                   	ret    

000006f1 <mknod>:
SYSCALL(mknod)
 6f1:	b8 11 00 00 00       	mov    $0x11,%eax
 6f6:	cd 40                	int    $0x40
 6f8:	c3                   	ret    

000006f9 <unlink>:
SYSCALL(unlink)
 6f9:	b8 12 00 00 00       	mov    $0x12,%eax
 6fe:	cd 40                	int    $0x40
 700:	c3                   	ret    

00000701 <fstat>:
SYSCALL(fstat)
 701:	b8 08 00 00 00       	mov    $0x8,%eax
 706:	cd 40                	int    $0x40
 708:	c3                   	ret    

00000709 <link>:
SYSCALL(link)
 709:	b8 13 00 00 00       	mov    $0x13,%eax
 70e:	cd 40                	int    $0x40
 710:	c3                   	ret    

00000711 <mkdir>:
SYSCALL(mkdir)
 711:	b8 14 00 00 00       	mov    $0x14,%eax
 716:	cd 40                	int    $0x40
 718:	c3                   	ret    

00000719 <chdir>:
SYSCALL(chdir)
 719:	b8 09 00 00 00       	mov    $0x9,%eax
 71e:	cd 40                	int    $0x40
 720:	c3                   	ret    

00000721 <dup>:
SYSCALL(dup)
 721:	b8 0a 00 00 00       	mov    $0xa,%eax
 726:	cd 40                	int    $0x40
 728:	c3                   	ret    

00000729 <getpid>:
SYSCALL(getpid)
 729:	b8 0b 00 00 00       	mov    $0xb,%eax
 72e:	cd 40                	int    $0x40
 730:	c3                   	ret    

00000731 <sbrk>:
SYSCALL(sbrk)
 731:	b8 0c 00 00 00       	mov    $0xc,%eax
 736:	cd 40                	int    $0x40
 738:	c3                   	ret    

00000739 <sleep>:
SYSCALL(sleep)
 739:	b8 0d 00 00 00       	mov    $0xd,%eax
 73e:	cd 40                	int    $0x40
 740:	c3                   	ret    

00000741 <uptime>:
SYSCALL(uptime)
 741:	b8 0e 00 00 00       	mov    $0xe,%eax
 746:	cd 40                	int    $0x40
 748:	c3                   	ret    

00000749 <clone>:
SYSCALL(clone)
 749:	b8 16 00 00 00       	mov    $0x16,%eax
 74e:	cd 40                	int    $0x40
 750:	c3                   	ret    

00000751 <join>:
SYSCALL(join)
 751:	b8 17 00 00 00       	mov    $0x17,%eax
 756:	cd 40                	int    $0x40
 758:	c3                   	ret    
 759:	66 90                	xchg   %ax,%ax
 75b:	66 90                	xchg   %ax,%ax
 75d:	66 90                	xchg   %ax,%ax
 75f:	90                   	nop

00000760 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 3c             	sub    $0x3c,%esp
 769:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 76c:	89 d1                	mov    %edx,%ecx
{
 76e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 771:	85 d2                	test   %edx,%edx
 773:	0f 89 7f 00 00 00    	jns    7f8 <printint+0x98>
 779:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 77d:	74 79                	je     7f8 <printint+0x98>
    neg = 1;
 77f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 786:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 788:	31 db                	xor    %ebx,%ebx
 78a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 790:	89 c8                	mov    %ecx,%eax
 792:	31 d2                	xor    %edx,%edx
 794:	89 cf                	mov    %ecx,%edi
 796:	f7 75 c4             	divl   -0x3c(%ebp)
 799:	0f b6 92 30 0c 00 00 	movzbl 0xc30(%edx),%edx
 7a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7a3:	89 d8                	mov    %ebx,%eax
 7a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7b1:	76 dd                	jbe    790 <printint+0x30>
  if(neg)
 7b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7b6:	85 c9                	test   %ecx,%ecx
 7b8:	74 0c                	je     7c6 <printint+0x66>
    buf[i++] = '-';
 7ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7cd:	eb 07                	jmp    7d6 <printint+0x76>
 7cf:	90                   	nop
    putc(fd, buf[i]);
 7d0:	0f b6 13             	movzbl (%ebx),%edx
 7d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7d6:	83 ec 04             	sub    $0x4,%esp
 7d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7dc:	6a 01                	push   $0x1
 7de:	56                   	push   %esi
 7df:	57                   	push   %edi
 7e0:	e8 e4 fe ff ff       	call   6c9 <write>
  while(--i >= 0)
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	39 de                	cmp    %ebx,%esi
 7ea:	75 e4                	jne    7d0 <printint+0x70>
}
 7ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ef:	5b                   	pop    %ebx
 7f0:	5e                   	pop    %esi
 7f1:	5f                   	pop    %edi
 7f2:	5d                   	pop    %ebp
 7f3:	c3                   	ret    
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ff:	eb 87                	jmp    788 <printint+0x28>
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop

00000810 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
 816:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 819:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 81c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 81f:	0f b6 13             	movzbl (%ebx),%edx
 822:	84 d2                	test   %dl,%dl
 824:	74 6a                	je     890 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 826:	8d 45 10             	lea    0x10(%ebp),%eax
 829:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 82c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 82f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 831:	89 45 d0             	mov    %eax,-0x30(%ebp)
 834:	eb 36                	jmp    86c <printf+0x5c>
 836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83d:	8d 76 00             	lea    0x0(%esi),%esi
 840:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 843:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 848:	83 f8 25             	cmp    $0x25,%eax
 84b:	74 15                	je     862 <printf+0x52>
  write(fd, &c, 1);
 84d:	83 ec 04             	sub    $0x4,%esp
 850:	88 55 e7             	mov    %dl,-0x19(%ebp)
 853:	6a 01                	push   $0x1
 855:	57                   	push   %edi
 856:	56                   	push   %esi
 857:	e8 6d fe ff ff       	call   6c9 <write>
 85c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 85f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 862:	0f b6 13             	movzbl (%ebx),%edx
 865:	83 c3 01             	add    $0x1,%ebx
 868:	84 d2                	test   %dl,%dl
 86a:	74 24                	je     890 <printf+0x80>
    c = fmt[i] & 0xff;
 86c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 86f:	85 c9                	test   %ecx,%ecx
 871:	74 cd                	je     840 <printf+0x30>
      }
    } else if(state == '%'){
 873:	83 f9 25             	cmp    $0x25,%ecx
 876:	75 ea                	jne    862 <printf+0x52>
      if(c == 'd'){
 878:	83 f8 25             	cmp    $0x25,%eax
 87b:	0f 84 07 01 00 00    	je     988 <printf+0x178>
 881:	83 e8 63             	sub    $0x63,%eax
 884:	83 f8 15             	cmp    $0x15,%eax
 887:	77 17                	ja     8a0 <printf+0x90>
 889:	ff 24 85 d8 0b 00 00 	jmp    *0xbd8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 890:	8d 65 f4             	lea    -0xc(%ebp),%esp
 893:	5b                   	pop    %ebx
 894:	5e                   	pop    %esi
 895:	5f                   	pop    %edi
 896:	5d                   	pop    %ebp
 897:	c3                   	ret    
 898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8a6:	6a 01                	push   $0x1
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ae:	e8 16 fe ff ff       	call   6c9 <write>
        putc(fd, c);
 8b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8b7:	83 c4 0c             	add    $0xc,%esp
 8ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8bd:	6a 01                	push   $0x1
 8bf:	57                   	push   %edi
 8c0:	56                   	push   %esi
 8c1:	e8 03 fe ff ff       	call   6c9 <write>
        putc(fd, c);
 8c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8c9:	31 c9                	xor    %ecx,%ecx
 8cb:	eb 95                	jmp    862 <printf+0x52>
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8d8:	6a 00                	push   $0x0
 8da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8dd:	8b 10                	mov    (%eax),%edx
 8df:	89 f0                	mov    %esi,%eax
 8e1:	e8 7a fe ff ff       	call   760 <printint>
        ap++;
 8e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ed:	31 c9                	xor    %ecx,%ecx
 8ef:	e9 6e ff ff ff       	jmp    862 <printf+0x52>
 8f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fb:	8b 10                	mov    (%eax),%edx
        ap++;
 8fd:	83 c0 04             	add    $0x4,%eax
 900:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 903:	85 d2                	test   %edx,%edx
 905:	0f 84 8d 00 00 00    	je     998 <printf+0x188>
        while(*s != 0){
 90b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 90e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 910:	84 c0                	test   %al,%al
 912:	0f 84 4a ff ff ff    	je     862 <printf+0x52>
 918:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 91b:	89 d3                	mov    %edx,%ebx
 91d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 920:	83 ec 04             	sub    $0x4,%esp
          s++;
 923:	83 c3 01             	add    $0x1,%ebx
 926:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 929:	6a 01                	push   $0x1
 92b:	57                   	push   %edi
 92c:	56                   	push   %esi
 92d:	e8 97 fd ff ff       	call   6c9 <write>
        while(*s != 0){
 932:	0f b6 03             	movzbl (%ebx),%eax
 935:	83 c4 10             	add    $0x10,%esp
 938:	84 c0                	test   %al,%al
 93a:	75 e4                	jne    920 <printf+0x110>
      state = 0;
 93c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 93f:	31 c9                	xor    %ecx,%ecx
 941:	e9 1c ff ff ff       	jmp    862 <printf+0x52>
 946:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 94d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 950:	83 ec 0c             	sub    $0xc,%esp
 953:	b9 0a 00 00 00       	mov    $0xa,%ecx
 958:	6a 01                	push   $0x1
 95a:	e9 7b ff ff ff       	jmp    8da <printf+0xca>
 95f:	90                   	nop
        putc(fd, *ap);
 960:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 963:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 966:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 968:	6a 01                	push   $0x1
 96a:	57                   	push   %edi
 96b:	56                   	push   %esi
        putc(fd, *ap);
 96c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 96f:	e8 55 fd ff ff       	call   6c9 <write>
        ap++;
 974:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 978:	83 c4 10             	add    $0x10,%esp
      state = 0;
 97b:	31 c9                	xor    %ecx,%ecx
 97d:	e9 e0 fe ff ff       	jmp    862 <printf+0x52>
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 988:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 98b:	83 ec 04             	sub    $0x4,%esp
 98e:	e9 2a ff ff ff       	jmp    8bd <printf+0xad>
 993:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 997:	90                   	nop
          s = "(null)";
 998:	ba d0 0b 00 00       	mov    $0xbd0,%edx
        while(*s != 0){
 99d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9a0:	b8 28 00 00 00       	mov    $0x28,%eax
 9a5:	89 d3                	mov    %edx,%ebx
 9a7:	e9 74 ff ff ff       	jmp    920 <printf+0x110>
 9ac:	66 90                	xchg   %ax,%ax
 9ae:	66 90                	xchg   %ax,%ax

000009b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	a1 b4 0f 00 00       	mov    0xfb4,%eax
{
 9b6:	89 e5                	mov    %esp,%ebp
 9b8:	57                   	push   %edi
 9b9:	56                   	push   %esi
 9ba:	53                   	push   %ebx
 9bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9c8:	89 c2                	mov    %eax,%edx
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	39 ca                	cmp    %ecx,%edx
 9ce:	73 30                	jae    a00 <free+0x50>
 9d0:	39 c1                	cmp    %eax,%ecx
 9d2:	72 04                	jb     9d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d4:	39 c2                	cmp    %eax,%edx
 9d6:	72 f0                	jb     9c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9de:	39 f8                	cmp    %edi,%eax
 9e0:	74 30                	je     a12 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9e5:	8b 42 04             	mov    0x4(%edx),%eax
 9e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9eb:	39 f1                	cmp    %esi,%ecx
 9ed:	74 3a                	je     a29 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9f1:	5b                   	pop    %ebx
  freep = p;
 9f2:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
}
 9f8:	5e                   	pop    %esi
 9f9:	5f                   	pop    %edi
 9fa:	5d                   	pop    %ebp
 9fb:	c3                   	ret    
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a00:	39 c2                	cmp    %eax,%edx
 a02:	72 c4                	jb     9c8 <free+0x18>
 a04:	39 c1                	cmp    %eax,%ecx
 a06:	73 c0                	jae    9c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a08:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a0b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a0e:	39 f8                	cmp    %edi,%eax
 a10:	75 d0                	jne    9e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a12:	03 70 04             	add    0x4(%eax),%esi
 a15:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a18:	8b 02                	mov    (%edx),%eax
 a1a:	8b 00                	mov    (%eax),%eax
 a1c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a1f:	8b 42 04             	mov    0x4(%edx),%eax
 a22:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a25:	39 f1                	cmp    %esi,%ecx
 a27:	75 c6                	jne    9ef <free+0x3f>
    p->s.size += bp->s.size;
 a29:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a2c:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
    p->s.size += bp->s.size;
 a32:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a35:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a38:	89 0a                	mov    %ecx,(%edx)
}
 a3a:	5b                   	pop    %ebx
 a3b:	5e                   	pop    %esi
 a3c:	5f                   	pop    %edi
 a3d:	5d                   	pop    %ebp
 a3e:	c3                   	ret    
 a3f:	90                   	nop

00000a40 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a40:	55                   	push   %ebp
 a41:	89 e5                	mov    %esp,%ebp
 a43:	57                   	push   %edi
 a44:	56                   	push   %esi
 a45:	53                   	push   %ebx
 a46:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a49:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a4c:	8b 3d b4 0f 00 00    	mov    0xfb4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a52:	8d 70 07             	lea    0x7(%eax),%esi
 a55:	c1 ee 03             	shr    $0x3,%esi
 a58:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a5b:	85 ff                	test   %edi,%edi
 a5d:	0f 84 9d 00 00 00    	je     b00 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a63:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a65:	8b 4a 04             	mov    0x4(%edx),%ecx
 a68:	39 f1                	cmp    %esi,%ecx
 a6a:	73 6a                	jae    ad6 <malloc+0x96>
 a6c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a71:	39 de                	cmp    %ebx,%esi
 a73:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a76:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a80:	eb 17                	jmp    a99 <malloc+0x59>
 a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a88:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a8a:	8b 48 04             	mov    0x4(%eax),%ecx
 a8d:	39 f1                	cmp    %esi,%ecx
 a8f:	73 4f                	jae    ae0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a91:	8b 3d b4 0f 00 00    	mov    0xfb4,%edi
 a97:	89 c2                	mov    %eax,%edx
 a99:	39 d7                	cmp    %edx,%edi
 a9b:	75 eb                	jne    a88 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a9d:	83 ec 0c             	sub    $0xc,%esp
 aa0:	ff 75 e4             	push   -0x1c(%ebp)
 aa3:	e8 89 fc ff ff       	call   731 <sbrk>
  if(p == (char*)-1)
 aa8:	83 c4 10             	add    $0x10,%esp
 aab:	83 f8 ff             	cmp    $0xffffffff,%eax
 aae:	74 1c                	je     acc <malloc+0x8c>
  hp->s.size = nu;
 ab0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ab3:	83 ec 0c             	sub    $0xc,%esp
 ab6:	83 c0 08             	add    $0x8,%eax
 ab9:	50                   	push   %eax
 aba:	e8 f1 fe ff ff       	call   9b0 <free>
  return freep;
 abf:	8b 15 b4 0f 00 00    	mov    0xfb4,%edx
      if((p = morecore(nunits)) == 0)
 ac5:	83 c4 10             	add    $0x10,%esp
 ac8:	85 d2                	test   %edx,%edx
 aca:	75 bc                	jne    a88 <malloc+0x48>
        return 0;
  }
}
 acc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 acf:	31 c0                	xor    %eax,%eax
}
 ad1:	5b                   	pop    %ebx
 ad2:	5e                   	pop    %esi
 ad3:	5f                   	pop    %edi
 ad4:	5d                   	pop    %ebp
 ad5:	c3                   	ret    
    if(p->s.size >= nunits){
 ad6:	89 d0                	mov    %edx,%eax
 ad8:	89 fa                	mov    %edi,%edx
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ae0:	39 ce                	cmp    %ecx,%esi
 ae2:	74 4c                	je     b30 <malloc+0xf0>
        p->s.size -= nunits;
 ae4:	29 f1                	sub    %esi,%ecx
 ae6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ae9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aef:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
}
 af5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 af8:	83 c0 08             	add    $0x8,%eax
}
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b00:	c7 05 b4 0f 00 00 b8 	movl   $0xfb8,0xfb4
 b07:	0f 00 00 
    base.s.size = 0;
 b0a:	bf b8 0f 00 00       	mov    $0xfb8,%edi
    base.s.ptr = freep = prevp = &base;
 b0f:	c7 05 b8 0f 00 00 b8 	movl   $0xfb8,0xfb8
 b16:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b19:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b1b:	c7 05 bc 0f 00 00 00 	movl   $0x0,0xfbc
 b22:	00 00 00 
    if(p->s.size >= nunits){
 b25:	e9 42 ff ff ff       	jmp    a6c <malloc+0x2c>
 b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b30:	8b 08                	mov    (%eax),%ecx
 b32:	89 0a                	mov    %ecx,(%edx)
 b34:	eb b9                	jmp    aef <malloc+0xaf>
