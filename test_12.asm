
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
  14:	e8 30 07 00 00       	call   749 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 dd 0f 00 00       	push   $0xfdd
   ppid = getpid();
  28:	a3 e8 0f 00 00       	mov    %eax,0xfe8
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 87 06 00 00       	call   6c0 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 dc 0f 00 00 	movl   $0xfdc,(%esp)
  40:	e8 7b 06 00 00       	call   6c0 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 dd 0f 00 00 	movl   $0xfdd,(%esp)
  4c:	e8 4f 06 00 00       	call   6a0 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 dc 0f 00 00 	movl   $0xfdc,(%esp)
  58:	e8 43 06 00 00       	call   6a0 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 d8 0f 00 00    	mov    0xfd8,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d d8 0f 00 00    	cmp    %ebx,0xfd8
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
  9b:	68 58 0b 00 00       	push   $0xb58
  a0:	68 62 0b 00 00       	push   $0xb62
  a5:	6a 01                	push   $0x1
  a7:	e8 84 07 00 00       	call   830 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 a9 0b 00 00       	push   $0xba9
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 88 0b 00 00       	push   $0xb88
  b9:	6a 01                	push   $0x1
  bb:	e8 70 07 00 00       	call   830 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 9c 0b 00 00       	push   $0xb9c
  c7:	6a 01                	push   $0x1
  c9:	e8 62 07 00 00       	call   830 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 e8 0f 00 00    	push   0xfe8
  d5:	e8 1f 06 00 00       	call   6f9 <kill>
  da:	e8 ea 05 00 00       	call   6c9 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 68 06 00 00       	call   751 <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 e0 0f 00 00       	mov    %eax,0xfe0
   while (global < num_threads) {
  f1:	a1 d8 0f 00 00       	mov    0xfd8,%eax
  f6:	39 05 e4 0f 00 00    	cmp    %eax,0xfe4
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 dd 0f 00 00       	push   $0xfdd
 108:	e8 a3 05 00 00       	call   6b0 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 40 06 00 00       	call   759 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 dd 0f 00 00 	movl   $0xfdd,(%esp)
 120:	e8 7b 05 00 00       	call   6a0 <lock_acquire>
   while (global < num_threads) {
 125:	a1 d8 0f 00 00       	mov    0xfd8,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 e4 0f 00 00    	cmp    %eax,0xfe4
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 e4 0f 00 00 00 	movl   $0x0,0xfe4
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 05 06 00 00       	call   751 <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 f9 05 00 00       	call   751 <sbrk>
   lock_release(&lock);
 158:	c7 04 24 dd 0f 00 00 	movl   $0xfdd,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 e0 0f 00 00       	mov    %eax,0xfe0
   lock_release(&lock);
 164:	e8 47 05 00 00       	call   6b0 <lock_release>
   while (global < num_threads) {
 169:	a1 d8 0f 00 00       	mov    0xfd8,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 e4 0f 00 00    	cmp    %eax,0xfe4
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 dc 0f 00 00       	push   $0xfdc
 188:	e8 23 05 00 00       	call   6b0 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 c0 05 00 00       	call   759 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 dc 0f 00 00 	movl   $0xfdc,(%esp)
 1a0:	e8 fb 04 00 00       	call   6a0 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 d8 0f 00 00       	mov    0xfd8,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 e4 0f 00 00    	cmp    %eax,0xfe4
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 dc 0f 00 00       	push   $0xfdc
 1bd:	e8 ee 04 00 00       	call   6b0 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d d8 0f 00 00 00 	cmpl   $0x0,0xfd8
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d d8 0f 00 00    	cmp    %ebx,0xfd8
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 88 04 00 00       	call   670 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 58 0b 00 00       	push   $0xb58
 1f3:	68 62 0b 00 00       	push   $0xb62
 1f8:	6a 01                	push   $0x1
 1fa:	e8 31 06 00 00       	call   830 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 b8 0b 00 00       	push   $0xbb8
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 c5 0b 00 00       	push   $0xbc5
 213:	6a 01                	push   $0x1
 215:	e8 16 06 00 00       	call   830 <printf>
   exit();
 21a:	e8 aa 04 00 00       	call   6c9 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 dd 0f 00 00       	push   $0xfdd
 22b:	e8 70 04 00 00       	call   6a0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 15 05 00 00       	call   751 <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 e0 0f 00 00    	cmp    0xfe0,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 58 0b 00 00       	push   $0xb58
 24e:	68 62 0b 00 00       	push   $0xb62
 253:	6a 01                	push   $0x1
 255:	e8 d6 05 00 00       	call   830 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 6a 0b 00 00       	push   $0xb6a
 262:	68 88 0b 00 00       	push   $0xb88
 267:	6a 01                	push   $0x1
 269:	e8 c2 05 00 00       	call   830 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 9c 0b 00 00       	push   $0xb9c
 275:	6a 01                	push   $0x1
 277:	e8 b4 05 00 00       	call   830 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 e8 0f 00 00    	push   0xfe8
 283:	e8 71 04 00 00       	call   6f9 <kill>
 288:	e8 3c 04 00 00       	call   6c9 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 e4 0f 00 00 01 	addl   $0x1,0xfe4
   lock_release(&lock);
 297:	68 dd 0f 00 00       	push   $0xfdd
 29c:	e8 0f 04 00 00       	call   6b0 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 dc 0f 00 00 	movl   $0xfdc,(%esp)
 2a8:	e8 f3 03 00 00       	call   6a0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 98 04 00 00       	call   751 <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 e0 0f 00 00    	cmp    0xfe0,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 e4 0f 00 00 01 	addl   $0x1,0xfe4
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 75 04 00 00       	call   751 <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 69 04 00 00       	call   751 <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 dc 0f 00 00 	movl   $0xfdc,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 e0 0f 00 00       	mov    %eax,0xfe0
   lock_release(&lock2);
 2f4:	e8 b7 03 00 00       	call   6b0 <lock_release>



   exit();
 2f9:	e8 cb 03 00 00       	call   6c9 <exit>
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
 31a:	68 58 0b 00 00       	push   $0xb58
 31f:	68 62 0b 00 00       	push   $0xb62
 324:	6a 01                	push   $0x1
 326:	e8 05 05 00 00       	call   830 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 e1 0b 00 00       	push   $0xbe1
 333:	68 88 0b 00 00       	push   $0xb88
 338:	6a 01                	push   $0x1
 33a:	e8 f1 04 00 00       	call   830 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 9c 0b 00 00       	push   $0xb9c
 346:	6a 01                	push   $0x1
 348:	e8 e3 04 00 00       	call   830 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 e8 0f 00 00    	push   0xfe8
 354:	e8 a0 03 00 00       	call   6f9 <kill>
 359:	e8 6b 03 00 00       	call   6c9 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 58 0b 00 00       	push   $0xb58
 365:	68 62 0b 00 00       	push   $0xb62
 36a:	6a 01                	push   $0x1
 36c:	e8 bf 04 00 00       	call   830 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 d2 0b 00 00       	push   $0xbd2
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 dc 0f 00 00       	push   $0xfdc
 383:	e8 18 03 00 00       	call   6a0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 bd 03 00 00       	call   751 <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 e0 0f 00 00    	cmp    0xfe0,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 58 0b 00 00       	push   $0xb58
 3a6:	68 62 0b 00 00       	push   $0xb62
 3ab:	6a 01                	push   $0x1
 3ad:	e8 7e 04 00 00       	call   830 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 6a 0b 00 00       	push   $0xb6a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 e4 0f 00 00 01 	addl   $0x1,0xfe4
   lock_release(&lock2);
 3c9:	68 dc 0f 00 00       	push   $0xfdc
 3ce:	e8 dd 02 00 00       	call   6b0 <lock_release>
   exit();
 3d3:	e8 f1 02 00 00       	call   6c9 <exit>
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
 518:	e8 c4 01 00 00       	call   6e1 <read>
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
 57d:	e8 87 01 00 00       	call   709 <open>
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
 592:	e8 8a 01 00 00       	call   721 <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 50 01 00 00       	call   6f1 <close>
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
 63c:	e8 1f 04 00 00       	call   a60 <malloc>
  // if((int) stack % 4096 != 0){
  //   stack = stack + (4096 - (int) stack % 4096);
  // }
  int rc = clone(start_routine, arg1, arg2, stack);
 641:	50                   	push   %eax
 642:	ff 75 10             	push   0x10(%ebp)
 645:	ff 75 0c             	push   0xc(%ebp)
 648:	ff 75 08             	push   0x8(%ebp)
 64b:	e8 19 01 00 00       	call   769 <clone>
  printf(1, " thread create %d \n", rc);
 650:	83 c4 1c             	add    $0x1c,%esp
 653:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 654:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 656:	68 f0 0b 00 00       	push   $0xbf0
 65b:	6a 01                	push   $0x1
 65d:	e8 ce 01 00 00       	call   830 <printf>
  return rc;
}
 662:	89 d8                	mov    %ebx,%eax
 664:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 667:	c9                   	leave  
 668:	c3                   	ret    
 669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000670 <thread_join>:

int
thread_join(){
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	56                   	push   %esi
 674:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 675:	83 ec 0c             	sub    $0xc,%esp
 678:	6a 04                	push   $0x4
 67a:	e8 e1 03 00 00       	call   a60 <malloc>
  int rc = join(stack);
 67f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 682:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 684:	e8 e8 00 00 00       	call   771 <join>
 689:	89 c6                	mov    %eax,%esi
  free(*stack);
 68b:	58                   	pop    %eax
 68c:	ff 33                	push   (%ebx)
 68e:	e8 3d 03 00 00       	call   9d0 <free>
  return rc;
}
 693:	8d 65 f8             	lea    -0x8(%ebp),%esp
 696:	89 f0                	mov    %esi,%eax
 698:	5b                   	pop    %ebx
 699:	5e                   	pop    %esi
 69a:	5d                   	pop    %ebp
 69b:	c3                   	ret    
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006a0 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 6a0:	c3                   	ret    
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <lock_release>:
 6b0:	c3                   	ret    
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop

000006c0 <lock_init>:
 6c0:	c3                   	ret    

000006c1 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6c1:	b8 01 00 00 00       	mov    $0x1,%eax
 6c6:	cd 40                	int    $0x40
 6c8:	c3                   	ret    

000006c9 <exit>:
SYSCALL(exit)
 6c9:	b8 02 00 00 00       	mov    $0x2,%eax
 6ce:	cd 40                	int    $0x40
 6d0:	c3                   	ret    

000006d1 <wait>:
SYSCALL(wait)
 6d1:	b8 03 00 00 00       	mov    $0x3,%eax
 6d6:	cd 40                	int    $0x40
 6d8:	c3                   	ret    

000006d9 <pipe>:
SYSCALL(pipe)
 6d9:	b8 04 00 00 00       	mov    $0x4,%eax
 6de:	cd 40                	int    $0x40
 6e0:	c3                   	ret    

000006e1 <read>:
SYSCALL(read)
 6e1:	b8 05 00 00 00       	mov    $0x5,%eax
 6e6:	cd 40                	int    $0x40
 6e8:	c3                   	ret    

000006e9 <write>:
SYSCALL(write)
 6e9:	b8 10 00 00 00       	mov    $0x10,%eax
 6ee:	cd 40                	int    $0x40
 6f0:	c3                   	ret    

000006f1 <close>:
SYSCALL(close)
 6f1:	b8 15 00 00 00       	mov    $0x15,%eax
 6f6:	cd 40                	int    $0x40
 6f8:	c3                   	ret    

000006f9 <kill>:
SYSCALL(kill)
 6f9:	b8 06 00 00 00       	mov    $0x6,%eax
 6fe:	cd 40                	int    $0x40
 700:	c3                   	ret    

00000701 <exec>:
SYSCALL(exec)
 701:	b8 07 00 00 00       	mov    $0x7,%eax
 706:	cd 40                	int    $0x40
 708:	c3                   	ret    

00000709 <open>:
SYSCALL(open)
 709:	b8 0f 00 00 00       	mov    $0xf,%eax
 70e:	cd 40                	int    $0x40
 710:	c3                   	ret    

00000711 <mknod>:
SYSCALL(mknod)
 711:	b8 11 00 00 00       	mov    $0x11,%eax
 716:	cd 40                	int    $0x40
 718:	c3                   	ret    

00000719 <unlink>:
SYSCALL(unlink)
 719:	b8 12 00 00 00       	mov    $0x12,%eax
 71e:	cd 40                	int    $0x40
 720:	c3                   	ret    

00000721 <fstat>:
SYSCALL(fstat)
 721:	b8 08 00 00 00       	mov    $0x8,%eax
 726:	cd 40                	int    $0x40
 728:	c3                   	ret    

00000729 <link>:
SYSCALL(link)
 729:	b8 13 00 00 00       	mov    $0x13,%eax
 72e:	cd 40                	int    $0x40
 730:	c3                   	ret    

00000731 <mkdir>:
SYSCALL(mkdir)
 731:	b8 14 00 00 00       	mov    $0x14,%eax
 736:	cd 40                	int    $0x40
 738:	c3                   	ret    

00000739 <chdir>:
SYSCALL(chdir)
 739:	b8 09 00 00 00       	mov    $0x9,%eax
 73e:	cd 40                	int    $0x40
 740:	c3                   	ret    

00000741 <dup>:
SYSCALL(dup)
 741:	b8 0a 00 00 00       	mov    $0xa,%eax
 746:	cd 40                	int    $0x40
 748:	c3                   	ret    

00000749 <getpid>:
SYSCALL(getpid)
 749:	b8 0b 00 00 00       	mov    $0xb,%eax
 74e:	cd 40                	int    $0x40
 750:	c3                   	ret    

00000751 <sbrk>:
SYSCALL(sbrk)
 751:	b8 0c 00 00 00       	mov    $0xc,%eax
 756:	cd 40                	int    $0x40
 758:	c3                   	ret    

00000759 <sleep>:
SYSCALL(sleep)
 759:	b8 0d 00 00 00       	mov    $0xd,%eax
 75e:	cd 40                	int    $0x40
 760:	c3                   	ret    

00000761 <uptime>:
SYSCALL(uptime)
 761:	b8 0e 00 00 00       	mov    $0xe,%eax
 766:	cd 40                	int    $0x40
 768:	c3                   	ret    

00000769 <clone>:
SYSCALL(clone)
 769:	b8 16 00 00 00       	mov    $0x16,%eax
 76e:	cd 40                	int    $0x40
 770:	c3                   	ret    

00000771 <join>:
SYSCALL(join)
 771:	b8 17 00 00 00       	mov    $0x17,%eax
 776:	cd 40                	int    $0x40
 778:	c3                   	ret    
 779:	66 90                	xchg   %ax,%ax
 77b:	66 90                	xchg   %ax,%ax
 77d:	66 90                	xchg   %ax,%ax
 77f:	90                   	nop

00000780 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 3c             	sub    $0x3c,%esp
 789:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 78c:	89 d1                	mov    %edx,%ecx
{
 78e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 791:	85 d2                	test   %edx,%edx
 793:	0f 89 7f 00 00 00    	jns    818 <printint+0x98>
 799:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 79d:	74 79                	je     818 <printint+0x98>
    neg = 1;
 79f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7a8:	31 db                	xor    %ebx,%ebx
 7aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7b0:	89 c8                	mov    %ecx,%eax
 7b2:	31 d2                	xor    %edx,%edx
 7b4:	89 cf                	mov    %ecx,%edi
 7b6:	f7 75 c4             	divl   -0x3c(%ebp)
 7b9:	0f b6 92 64 0c 00 00 	movzbl 0xc64(%edx),%edx
 7c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7c3:	89 d8                	mov    %ebx,%eax
 7c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7d1:	76 dd                	jbe    7b0 <printint+0x30>
  if(neg)
 7d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7d6:	85 c9                	test   %ecx,%ecx
 7d8:	74 0c                	je     7e6 <printint+0x66>
    buf[i++] = '-';
 7da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7ed:	eb 07                	jmp    7f6 <printint+0x76>
 7ef:	90                   	nop
    putc(fd, buf[i]);
 7f0:	0f b6 13             	movzbl (%ebx),%edx
 7f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7f6:	83 ec 04             	sub    $0x4,%esp
 7f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7fc:	6a 01                	push   $0x1
 7fe:	56                   	push   %esi
 7ff:	57                   	push   %edi
 800:	e8 e4 fe ff ff       	call   6e9 <write>
  while(--i >= 0)
 805:	83 c4 10             	add    $0x10,%esp
 808:	39 de                	cmp    %ebx,%esi
 80a:	75 e4                	jne    7f0 <printint+0x70>
}
 80c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80f:	5b                   	pop    %ebx
 810:	5e                   	pop    %esi
 811:	5f                   	pop    %edi
 812:	5d                   	pop    %ebp
 813:	c3                   	ret    
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 818:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 81f:	eb 87                	jmp    7a8 <printint+0x28>
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82f:	90                   	nop

00000830 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 839:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 83c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 83f:	0f b6 13             	movzbl (%ebx),%edx
 842:	84 d2                	test   %dl,%dl
 844:	74 6a                	je     8b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 846:	8d 45 10             	lea    0x10(%ebp),%eax
 849:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 84c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 84f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 851:	89 45 d0             	mov    %eax,-0x30(%ebp)
 854:	eb 36                	jmp    88c <printf+0x5c>
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
 860:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 863:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	74 15                	je     882 <printf+0x52>
  write(fd, &c, 1);
 86d:	83 ec 04             	sub    $0x4,%esp
 870:	88 55 e7             	mov    %dl,-0x19(%ebp)
 873:	6a 01                	push   $0x1
 875:	57                   	push   %edi
 876:	56                   	push   %esi
 877:	e8 6d fe ff ff       	call   6e9 <write>
 87c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 87f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 882:	0f b6 13             	movzbl (%ebx),%edx
 885:	83 c3 01             	add    $0x1,%ebx
 888:	84 d2                	test   %dl,%dl
 88a:	74 24                	je     8b0 <printf+0x80>
    c = fmt[i] & 0xff;
 88c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 88f:	85 c9                	test   %ecx,%ecx
 891:	74 cd                	je     860 <printf+0x30>
      }
    } else if(state == '%'){
 893:	83 f9 25             	cmp    $0x25,%ecx
 896:	75 ea                	jne    882 <printf+0x52>
      if(c == 'd'){
 898:	83 f8 25             	cmp    $0x25,%eax
 89b:	0f 84 07 01 00 00    	je     9a8 <printf+0x178>
 8a1:	83 e8 63             	sub    $0x63,%eax
 8a4:	83 f8 15             	cmp    $0x15,%eax
 8a7:	77 17                	ja     8c0 <printf+0x90>
 8a9:	ff 24 85 0c 0c 00 00 	jmp    *0xc0c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8b3:	5b                   	pop    %ebx
 8b4:	5e                   	pop    %esi
 8b5:	5f                   	pop    %edi
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret    
 8b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bf:	90                   	nop
  write(fd, &c, 1);
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8c6:	6a 01                	push   $0x1
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ce:	e8 16 fe ff ff       	call   6e9 <write>
        putc(fd, c);
 8d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8d7:	83 c4 0c             	add    $0xc,%esp
 8da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8dd:	6a 01                	push   $0x1
 8df:	57                   	push   %edi
 8e0:	56                   	push   %esi
 8e1:	e8 03 fe ff ff       	call   6e9 <write>
        putc(fd, c);
 8e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8e9:	31 c9                	xor    %ecx,%ecx
 8eb:	eb 95                	jmp    882 <printf+0x52>
 8ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8f8:	6a 00                	push   $0x0
 8fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fd:	8b 10                	mov    (%eax),%edx
 8ff:	89 f0                	mov    %esi,%eax
 901:	e8 7a fe ff ff       	call   780 <printint>
        ap++;
 906:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 90a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90d:	31 c9                	xor    %ecx,%ecx
 90f:	e9 6e ff ff ff       	jmp    882 <printf+0x52>
 914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 918:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91b:	8b 10                	mov    (%eax),%edx
        ap++;
 91d:	83 c0 04             	add    $0x4,%eax
 920:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 923:	85 d2                	test   %edx,%edx
 925:	0f 84 8d 00 00 00    	je     9b8 <printf+0x188>
        while(*s != 0){
 92b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 92e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 930:	84 c0                	test   %al,%al
 932:	0f 84 4a ff ff ff    	je     882 <printf+0x52>
 938:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 93b:	89 d3                	mov    %edx,%ebx
 93d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
          s++;
 943:	83 c3 01             	add    $0x1,%ebx
 946:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 949:	6a 01                	push   $0x1
 94b:	57                   	push   %edi
 94c:	56                   	push   %esi
 94d:	e8 97 fd ff ff       	call   6e9 <write>
        while(*s != 0){
 952:	0f b6 03             	movzbl (%ebx),%eax
 955:	83 c4 10             	add    $0x10,%esp
 958:	84 c0                	test   %al,%al
 95a:	75 e4                	jne    940 <printf+0x110>
      state = 0;
 95c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 95f:	31 c9                	xor    %ecx,%ecx
 961:	e9 1c ff ff ff       	jmp    882 <printf+0x52>
 966:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 96d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 970:	83 ec 0c             	sub    $0xc,%esp
 973:	b9 0a 00 00 00       	mov    $0xa,%ecx
 978:	6a 01                	push   $0x1
 97a:	e9 7b ff ff ff       	jmp    8fa <printf+0xca>
 97f:	90                   	nop
        putc(fd, *ap);
 980:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 983:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 986:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 988:	6a 01                	push   $0x1
 98a:	57                   	push   %edi
 98b:	56                   	push   %esi
        putc(fd, *ap);
 98c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 98f:	e8 55 fd ff ff       	call   6e9 <write>
        ap++;
 994:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 998:	83 c4 10             	add    $0x10,%esp
      state = 0;
 99b:	31 c9                	xor    %ecx,%ecx
 99d:	e9 e0 fe ff ff       	jmp    882 <printf+0x52>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9ab:	83 ec 04             	sub    $0x4,%esp
 9ae:	e9 2a ff ff ff       	jmp    8dd <printf+0xad>
 9b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9b7:	90                   	nop
          s = "(null)";
 9b8:	ba 04 0c 00 00       	mov    $0xc04,%edx
        while(*s != 0){
 9bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9c0:	b8 28 00 00 00       	mov    $0x28,%eax
 9c5:	89 d3                	mov    %edx,%ebx
 9c7:	e9 74 ff ff ff       	jmp    940 <printf+0x110>
 9cc:	66 90                	xchg   %ax,%ax
 9ce:	66 90                	xchg   %ax,%ax

000009d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	a1 ec 0f 00 00       	mov    0xfec,%eax
{
 9d6:	89 e5                	mov    %esp,%ebp
 9d8:	57                   	push   %edi
 9d9:	56                   	push   %esi
 9da:	53                   	push   %ebx
 9db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9e8:	89 c2                	mov    %eax,%edx
 9ea:	8b 00                	mov    (%eax),%eax
 9ec:	39 ca                	cmp    %ecx,%edx
 9ee:	73 30                	jae    a20 <free+0x50>
 9f0:	39 c1                	cmp    %eax,%ecx
 9f2:	72 04                	jb     9f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f4:	39 c2                	cmp    %eax,%edx
 9f6:	72 f0                	jb     9e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9fe:	39 f8                	cmp    %edi,%eax
 a00:	74 30                	je     a32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a05:	8b 42 04             	mov    0x4(%edx),%eax
 a08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a0b:	39 f1                	cmp    %esi,%ecx
 a0d:	74 3a                	je     a49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a11:	5b                   	pop    %ebx
  freep = p;
 a12:	89 15 ec 0f 00 00    	mov    %edx,0xfec
}
 a18:	5e                   	pop    %esi
 a19:	5f                   	pop    %edi
 a1a:	5d                   	pop    %ebp
 a1b:	c3                   	ret    
 a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a20:	39 c2                	cmp    %eax,%edx
 a22:	72 c4                	jb     9e8 <free+0x18>
 a24:	39 c1                	cmp    %eax,%ecx
 a26:	73 c0                	jae    9e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a2e:	39 f8                	cmp    %edi,%eax
 a30:	75 d0                	jne    a02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a32:	03 70 04             	add    0x4(%eax),%esi
 a35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a38:	8b 02                	mov    (%edx),%eax
 a3a:	8b 00                	mov    (%eax),%eax
 a3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a3f:	8b 42 04             	mov    0x4(%edx),%eax
 a42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a45:	39 f1                	cmp    %esi,%ecx
 a47:	75 c6                	jne    a0f <free+0x3f>
    p->s.size += bp->s.size;
 a49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a4c:	89 15 ec 0f 00 00    	mov    %edx,0xfec
    p->s.size += bp->s.size;
 a52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a58:	89 0a                	mov    %ecx,(%edx)
}
 a5a:	5b                   	pop    %ebx
 a5b:	5e                   	pop    %esi
 a5c:	5f                   	pop    %edi
 a5d:	5d                   	pop    %ebp
 a5e:	c3                   	ret    
 a5f:	90                   	nop

00000a60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a60:	55                   	push   %ebp
 a61:	89 e5                	mov    %esp,%ebp
 a63:	57                   	push   %edi
 a64:	56                   	push   %esi
 a65:	53                   	push   %ebx
 a66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a6c:	8b 3d ec 0f 00 00    	mov    0xfec,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a72:	8d 70 07             	lea    0x7(%eax),%esi
 a75:	c1 ee 03             	shr    $0x3,%esi
 a78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a7b:	85 ff                	test   %edi,%edi
 a7d:	0f 84 9d 00 00 00    	je     b20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a85:	8b 4a 04             	mov    0x4(%edx),%ecx
 a88:	39 f1                	cmp    %esi,%ecx
 a8a:	73 6a                	jae    af6 <malloc+0x96>
 a8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a91:	39 de                	cmp    %ebx,%esi
 a93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 aa0:	eb 17                	jmp    ab9 <malloc+0x59>
 aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aaa:	8b 48 04             	mov    0x4(%eax),%ecx
 aad:	39 f1                	cmp    %esi,%ecx
 aaf:	73 4f                	jae    b00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ab1:	8b 3d ec 0f 00 00    	mov    0xfec,%edi
 ab7:	89 c2                	mov    %eax,%edx
 ab9:	39 d7                	cmp    %edx,%edi
 abb:	75 eb                	jne    aa8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 abd:	83 ec 0c             	sub    $0xc,%esp
 ac0:	ff 75 e4             	push   -0x1c(%ebp)
 ac3:	e8 89 fc ff ff       	call   751 <sbrk>
  if(p == (char*)-1)
 ac8:	83 c4 10             	add    $0x10,%esp
 acb:	83 f8 ff             	cmp    $0xffffffff,%eax
 ace:	74 1c                	je     aec <malloc+0x8c>
  hp->s.size = nu;
 ad0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ad3:	83 ec 0c             	sub    $0xc,%esp
 ad6:	83 c0 08             	add    $0x8,%eax
 ad9:	50                   	push   %eax
 ada:	e8 f1 fe ff ff       	call   9d0 <free>
  return freep;
 adf:	8b 15 ec 0f 00 00    	mov    0xfec,%edx
      if((p = morecore(nunits)) == 0)
 ae5:	83 c4 10             	add    $0x10,%esp
 ae8:	85 d2                	test   %edx,%edx
 aea:	75 bc                	jne    aa8 <malloc+0x48>
        return 0;
  }
}
 aec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aef:	31 c0                	xor    %eax,%eax
}
 af1:	5b                   	pop    %ebx
 af2:	5e                   	pop    %esi
 af3:	5f                   	pop    %edi
 af4:	5d                   	pop    %ebp
 af5:	c3                   	ret    
    if(p->s.size >= nunits){
 af6:	89 d0                	mov    %edx,%eax
 af8:	89 fa                	mov    %edi,%edx
 afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b00:	39 ce                	cmp    %ecx,%esi
 b02:	74 4c                	je     b50 <malloc+0xf0>
        p->s.size -= nunits;
 b04:	29 f1                	sub    %esi,%ecx
 b06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b0f:	89 15 ec 0f 00 00    	mov    %edx,0xfec
}
 b15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b18:	83 c0 08             	add    $0x8,%eax
}
 b1b:	5b                   	pop    %ebx
 b1c:	5e                   	pop    %esi
 b1d:	5f                   	pop    %edi
 b1e:	5d                   	pop    %ebp
 b1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b20:	c7 05 ec 0f 00 00 f0 	movl   $0xff0,0xfec
 b27:	0f 00 00 
    base.s.size = 0;
 b2a:	bf f0 0f 00 00       	mov    $0xff0,%edi
    base.s.ptr = freep = prevp = &base;
 b2f:	c7 05 f0 0f 00 00 f0 	movl   $0xff0,0xff0
 b36:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b3b:	c7 05 f4 0f 00 00 00 	movl   $0x0,0xff4
 b42:	00 00 00 
    if(p->s.size >= nunits){
 b45:	e9 42 ff ff ff       	jmp    a8c <malloc+0x2c>
 b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b50:	8b 08                	mov    (%eax),%ecx
 b52:	89 0a                	mov    %ecx,(%edx)
 b54:	eb b9                	jmp    b0f <malloc+0xaf>
