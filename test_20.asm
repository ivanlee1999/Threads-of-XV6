
_test_20:     file format elf32-i386


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
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 20 07 00 00       	call   736 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 30 10 00 00       	mov    %eax,0x1030
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 0b 07 00 00       	call   73e <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 28 10 00 00       	mov    %eax,0x1028
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  3e:	50                   	push   %eax
  3f:	8d 45 f0             	lea    -0x10(%ebp),%eax
  42:	50                   	push   %eax
  43:	68 b0 01 00 00       	push   $0x1b0
  48:	e8 63 05 00 00       	call   5b0 <thread_create>
   assert(thread_pid > 0);
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	7e 62                	jle    b6 <main+0xb6>
   
   int join_pid = thread_join();
  54:	e8 b7 05 00 00       	call   610 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 d1 0b 00 00       	push   $0xbd1
  64:	6a 01                	push   $0x1
  66:	e8 b5 07 00 00       	call   820 <printf>
   exit();
  6b:	e8 46 06 00 00       	call   6b6 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 48 0b 00 00       	push   $0xb48
  77:	68 52 0b 00 00       	push   $0xb52
  7c:	6a 01                	push   $0x1
  7e:	e8 9d 07 00 00       	call   820 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 b5 0b 00 00       	push   $0xbb5
  8b:	68 78 0b 00 00       	push   $0xb78
  90:	6a 01                	push   $0x1
  92:	e8 89 07 00 00       	call   820 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 8c 0b 00 00       	push   $0xb8c
  9e:	6a 01                	push   $0x1
  a0:	e8 7b 07 00 00       	call   820 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 30 10 00 00    	push   0x1030
  ac:	e8 35 06 00 00       	call   6e6 <kill>
  b1:	e8 00 06 00 00       	call   6b6 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 48 0b 00 00       	push   $0xb48
  bd:	68 52 0b 00 00       	push   $0xb52
  c2:	6a 01                	push   $0x1
  c4:	e8 57 07 00 00       	call   820 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 c2 0b 00 00       	push   $0xbc2
  d1:	eb b8                	jmp    8b <main+0x8b>
  d3:	66 90                	xchg   %ax,%ax
  d5:	66 90                	xchg   %ax,%ax
  d7:	66 90                	xchg   %ax,%ax
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <worker2>:
}

void worker2(void *arg1, void *arg2)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
  e6:	68 24 10 00 00       	push   $0x1024
  eb:	e8 80 05 00 00       	call   670 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 42 06 00 00       	call   73e <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 28 10 00 00    	cmp    0x1028,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 48 0b 00 00       	push   $0xb48
 10e:	68 52 0b 00 00       	push   $0xb52
 113:	6a 01                	push   $0x1
 115:	e8 06 07 00 00       	call   820 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 5a 0b 00 00       	push   $0xb5a
 122:	68 78 0b 00 00       	push   $0xb78
 127:	6a 01                	push   $0x1
 129:	e8 f2 06 00 00       	call   820 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 8c 0b 00 00       	push   $0xb8c
 135:	6a 01                	push   $0x1
 137:	e8 e4 06 00 00       	call   820 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 30 10 00 00    	push   0x1030
 143:	e8 9e 05 00 00       	call   6e6 <kill>
 148:	e8 69 05 00 00       	call   6b6 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 2c 10 00 00 01 	addl   $0x1,0x102c
   lock_release(&lock);
 157:	68 24 10 00 00       	push   $0x1024
 15c:	e8 2f 05 00 00       	call   690 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 168:	e8 03 05 00 00       	call   670 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 c5 05 00 00       	call   73e <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 28 10 00 00    	cmp    0x1028,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 2c 10 00 00 01 	addl   $0x1,0x102c
   lock_release(&lock2);
 192:	68 20 10 00 00       	push   $0x1020
 197:	e8 f4 04 00 00       	call   690 <lock_release>

   
   exit();
 19c:	e8 15 05 00 00       	call   6b6 <exit>
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <worker>:
}


void worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 14             	sub    $0x14,%esp
   lock_init(&lock);
 1b6:	68 24 10 00 00       	push   $0x1024
 1bb:	e8 e0 04 00 00       	call   6a0 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1c7:	e8 d4 04 00 00       	call   6a0 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 1d3:	e8 98 04 00 00       	call   670 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1df:	e8 8c 04 00 00       	call   670 <lock_acquire>

   int nested_thread_id = thread_create(worker2, 0, 0);
 1e4:	83 c4 0c             	add    $0xc,%esp
 1e7:	6a 00                	push   $0x0
 1e9:	6a 00                	push   $0x0
 1eb:	68 e0 00 00 00       	push   $0xe0
 1f0:	e8 bb 03 00 00       	call   5b0 <thread_create>
    assert(nested_thread_id > 0);
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	85 c0                	test   %eax,%eax
 1fa:	0f 8e 39 01 00 00    	jle    339 <worker+0x189>
   size = (unsigned int)sbrk(0);
 200:	83 ec 0c             	sub    $0xc,%esp
 203:	6a 00                	push   $0x0
 205:	e8 34 05 00 00       	call   73e <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 28 10 00 00       	mov    %eax,0x1028
   while (global < num_threads) {
 212:	a1 1c 10 00 00       	mov    0x101c,%eax
 217:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 24 10 00 00       	push   $0x1024
 228:	e8 63 04 00 00       	call   690 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 0d 05 00 00       	call   746 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 240:	e8 2b 04 00 00       	call   670 <lock_acquire>
   while (global < num_threads) {
 245:	a1 1c 10 00 00       	mov    0x101c,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 2c 10 00 00 00 	movl   $0x0,0x102c
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 d2 04 00 00       	call   73e <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 c6 04 00 00       	call   73e <sbrk>
   lock_release(&lock);
 278:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 28 10 00 00       	mov    %eax,0x1028
   lock_release(&lock);
 284:	e8 07 04 00 00       	call   690 <lock_release>

   while (global < num_threads) {
 289:	a1 1c 10 00 00       	mov    0x101c,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 20 10 00 00       	push   $0x1020
 2a8:	e8 e3 03 00 00       	call   690 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 8d 04 00 00       	call   746 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 2c0:	e8 ab 03 00 00       	call   670 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 1c 10 00 00       	mov    0x101c,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 20 10 00 00       	push   $0x1020
 2dd:	e8 ae 03 00 00       	call   690 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 29 03 00 00       	call   610 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 c3 03 00 00       	call   6b6 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 48 0b 00 00       	push   $0xb48
 2fa:	68 52 0b 00 00       	push   $0xb52
 2ff:	6a 01                	push   $0x1
 301:	e8 1a 05 00 00       	call   820 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 ae 0b 00 00       	push   $0xbae
 30e:	68 78 0b 00 00       	push   $0xb78
 313:	6a 01                	push   $0x1
 315:	e8 06 05 00 00       	call   820 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 8c 0b 00 00       	push   $0xb8c
 321:	6a 01                	push   $0x1
 323:	e8 f8 04 00 00       	call   820 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 30 10 00 00    	push   0x1030
 32f:	e8 b2 03 00 00       	call   6e6 <kill>
 334:	e8 7d 03 00 00       	call   6b6 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 48 0b 00 00       	push   $0xb48
 340:	68 52 0b 00 00       	push   $0xb52
 345:	6a 01                	push   $0x1
 347:	e8 d4 04 00 00       	call   820 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 99 0b 00 00       	push   $0xb99
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 360:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 361:	31 c0                	xor    %eax,%eax
{
 363:	89 e5                	mov    %esp,%ebp
 365:	53                   	push   %ebx
 366:	8b 4d 08             	mov    0x8(%ebp),%ecx
 369:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 370:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 374:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 377:	83 c0 01             	add    $0x1,%eax
 37a:	84 d2                	test   %dl,%dl
 37c:	75 f2                	jne    370 <strcpy+0x10>
    ;
  return os;
}
 37e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 381:	89 c8                	mov    %ecx,%eax
 383:	c9                   	leave  
 384:	c3                   	ret    
 385:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000390 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 55 08             	mov    0x8(%ebp),%edx
 397:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 39a:	0f b6 02             	movzbl (%edx),%eax
 39d:	84 c0                	test   %al,%al
 39f:	75 17                	jne    3b8 <strcmp+0x28>
 3a1:	eb 3a                	jmp    3dd <strcmp+0x4d>
 3a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a7:	90                   	nop
 3a8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ac:	83 c2 01             	add    $0x1,%edx
 3af:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3b2:	84 c0                	test   %al,%al
 3b4:	74 1a                	je     3d0 <strcmp+0x40>
    p++, q++;
 3b6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3b8:	0f b6 19             	movzbl (%ecx),%ebx
 3bb:	38 c3                	cmp    %al,%bl
 3bd:	74 e9                	je     3a8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3bf:	29 d8                	sub    %ebx,%eax
}
 3c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c4:	c9                   	leave  
 3c5:	c3                   	ret    
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3d0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3d4:	31 c0                	xor    %eax,%eax
 3d6:	29 d8                	sub    %ebx,%eax
}
 3d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3db:	c9                   	leave  
 3dc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3dd:	0f b6 19             	movzbl (%ecx),%ebx
 3e0:	31 c0                	xor    %eax,%eax
 3e2:	eb db                	jmp    3bf <strcmp+0x2f>
 3e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <strlen>:

uint
strlen(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3f6:	80 3a 00             	cmpb   $0x0,(%edx)
 3f9:	74 15                	je     410 <strlen+0x20>
 3fb:	31 c0                	xor    %eax,%eax
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
 400:	83 c0 01             	add    $0x1,%eax
 403:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 407:	89 c1                	mov    %eax,%ecx
 409:	75 f5                	jne    400 <strlen+0x10>
    ;
  return n;
}
 40b:	89 c8                	mov    %ecx,%eax
 40d:	5d                   	pop    %ebp
 40e:	c3                   	ret    
 40f:	90                   	nop
  for(n = 0; s[n]; n++)
 410:	31 c9                	xor    %ecx,%ecx
}
 412:	5d                   	pop    %ebp
 413:	89 c8                	mov    %ecx,%eax
 415:	c3                   	ret    
 416:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41d:	8d 76 00             	lea    0x0(%esi),%esi

00000420 <memset>:

void*
memset(void *dst, int c, uint n)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 427:	8b 4d 10             	mov    0x10(%ebp),%ecx
 42a:	8b 45 0c             	mov    0xc(%ebp),%eax
 42d:	89 d7                	mov    %edx,%edi
 42f:	fc                   	cld    
 430:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 432:	8b 7d fc             	mov    -0x4(%ebp),%edi
 435:	89 d0                	mov    %edx,%eax
 437:	c9                   	leave  
 438:	c3                   	ret    
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000440 <strchr>:

char*
strchr(const char *s, char c)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 44a:	0f b6 10             	movzbl (%eax),%edx
 44d:	84 d2                	test   %dl,%dl
 44f:	75 12                	jne    463 <strchr+0x23>
 451:	eb 1d                	jmp    470 <strchr+0x30>
 453:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 457:	90                   	nop
 458:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 45c:	83 c0 01             	add    $0x1,%eax
 45f:	84 d2                	test   %dl,%dl
 461:	74 0d                	je     470 <strchr+0x30>
    if(*s == c)
 463:	38 d1                	cmp    %dl,%cl
 465:	75 f1                	jne    458 <strchr+0x18>
      return (char*)s;
  return 0;
}
 467:	5d                   	pop    %ebp
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 470:	31 c0                	xor    %eax,%eax
}
 472:	5d                   	pop    %ebp
 473:	c3                   	ret    
 474:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <gets>:

char*
gets(char *buf, int max)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 485:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 488:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 489:	31 db                	xor    %ebx,%ebx
{
 48b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 48e:	eb 27                	jmp    4b7 <gets+0x37>
    cc = read(0, &c, 1);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	6a 01                	push   $0x1
 495:	57                   	push   %edi
 496:	6a 00                	push   $0x0
 498:	e8 31 02 00 00       	call   6ce <read>
    if(cc < 1)
 49d:	83 c4 10             	add    $0x10,%esp
 4a0:	85 c0                	test   %eax,%eax
 4a2:	7e 1d                	jle    4c1 <gets+0x41>
      break;
    buf[i++] = c;
 4a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4a8:	8b 55 08             	mov    0x8(%ebp),%edx
 4ab:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4af:	3c 0a                	cmp    $0xa,%al
 4b1:	74 1d                	je     4d0 <gets+0x50>
 4b3:	3c 0d                	cmp    $0xd,%al
 4b5:	74 19                	je     4d0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4b7:	89 de                	mov    %ebx,%esi
 4b9:	83 c3 01             	add    $0x1,%ebx
 4bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4bf:	7c cf                	jl     490 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4c1:	8b 45 08             	mov    0x8(%ebp),%eax
 4c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
  buf[i] = '\0';
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	89 de                	mov    %ebx,%esi
 4d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4dc:	5b                   	pop    %ebx
 4dd:	5e                   	pop    %esi
 4de:	5f                   	pop    %edi
 4df:	5d                   	pop    %ebp
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4f5:	83 ec 08             	sub    $0x8,%esp
 4f8:	6a 00                	push   $0x0
 4fa:	ff 75 08             	push   0x8(%ebp)
 4fd:	e8 f4 01 00 00       	call   6f6 <open>
  if(fd < 0)
 502:	83 c4 10             	add    $0x10,%esp
 505:	85 c0                	test   %eax,%eax
 507:	78 27                	js     530 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 509:	83 ec 08             	sub    $0x8,%esp
 50c:	ff 75 0c             	push   0xc(%ebp)
 50f:	89 c3                	mov    %eax,%ebx
 511:	50                   	push   %eax
 512:	e8 f7 01 00 00       	call   70e <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 bd 01 00 00       	call   6de <close>
  return r;
 521:	83 c4 10             	add    $0x10,%esp
}
 524:	8d 65 f8             	lea    -0x8(%ebp),%esp
 527:	89 f0                	mov    %esi,%eax
 529:	5b                   	pop    %ebx
 52a:	5e                   	pop    %esi
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 530:	be ff ff ff ff       	mov    $0xffffffff,%esi
 535:	eb ed                	jmp    524 <stat+0x34>
 537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53e:	66 90                	xchg   %ax,%ax

00000540 <atoi>:

int
atoi(const char *s)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 547:	0f be 02             	movsbl (%edx),%eax
 54a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 54d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 550:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 555:	77 1e                	ja     575 <atoi+0x35>
 557:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 560:	83 c2 01             	add    $0x1,%edx
 563:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 566:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 56a:	0f be 02             	movsbl (%edx),%eax
 56d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 570:	80 fb 09             	cmp    $0x9,%bl
 573:	76 eb                	jbe    560 <atoi+0x20>
  return n;
}
 575:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 578:	89 c8                	mov    %ecx,%eax
 57a:	c9                   	leave  
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	8b 45 10             	mov    0x10(%ebp),%eax
 587:	8b 55 08             	mov    0x8(%ebp),%edx
 58a:	56                   	push   %esi
 58b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 58e:	85 c0                	test   %eax,%eax
 590:	7e 13                	jle    5a5 <memmove+0x25>
 592:	01 d0                	add    %edx,%eax
  dst = vdst;
 594:	89 d7                	mov    %edx,%edi
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5a1:	39 f8                	cmp    %edi,%eax
 5a3:	75 fb                	jne    5a0 <memmove+0x20>
  return vdst;
}
 5a5:	5e                   	pop    %esi
 5a6:	89 d0                	mov    %edx,%eax
 5a8:	5f                   	pop    %edi
 5a9:	5d                   	pop    %ebp
 5aa:	c3                   	ret    
 5ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	53                   	push   %ebx
 5b4:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 5b7:	68 00 20 00 00       	push   $0x2000
 5bc:	e8 8f 04 00 00       	call   a50 <malloc>
  if((int) stack % 4096 != 0){
 5c1:	83 c4 10             	add    $0x10,%esp
 5c4:	a9 ff 0f 00 00       	test   $0xfff,%eax
 5c9:	74 16                	je     5e1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 5cb:	99                   	cltd   
 5cc:	c1 ea 14             	shr    $0x14,%edx
 5cf:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 5d2:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 5d8:	29 ca                	sub    %ecx,%edx
 5da:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 5e1:	50                   	push   %eax
 5e2:	ff 75 10             	push   0x10(%ebp)
 5e5:	ff 75 0c             	push   0xc(%ebp)
 5e8:	ff 75 08             	push   0x8(%ebp)
 5eb:	e8 66 01 00 00       	call   756 <clone>
  printf(1, " thread create  %d \n", rc);
 5f0:	83 c4 0c             	add    $0xc,%esp
 5f3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 5f4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 5f6:	68 de 0b 00 00       	push   $0xbde
 5fb:	6a 01                	push   $0x1
 5fd:	e8 1e 02 00 00       	call   820 <printf>
  return rc;
}
 602:	89 d8                	mov    %ebx,%eax
 604:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 607:	c9                   	leave  
 608:	c3                   	ret    
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000610 <thread_join>:

int
thread_join(){
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	53                   	push   %ebx
 614:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 617:	68 f3 0b 00 00       	push   $0xbf3
 61c:	6a 01                	push   $0x1
 61e:	e8 fd 01 00 00       	call   820 <printf>
  void** stack = malloc(sizeof(void**));
 623:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 62a:	e8 21 04 00 00       	call   a50 <malloc>
 62f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 631:	58                   	pop    %eax
 632:	5a                   	pop    %edx
 633:	68 03 0c 00 00       	push   $0xc03
 638:	6a 01                	push   $0x1
 63a:	e8 e1 01 00 00       	call   820 <printf>
  int rc = join(stack);
 63f:	89 1c 24             	mov    %ebx,(%esp)
 642:	e8 17 01 00 00       	call   75e <join>
  printf(1, "thread join 3 \n");
 647:	59                   	pop    %ecx
  int rc = join(stack);
 648:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 64a:	58                   	pop    %eax
 64b:	68 13 0c 00 00       	push   $0xc13
 650:	6a 01                	push   $0x1
 652:	e8 c9 01 00 00       	call   820 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 657:	58                   	pop    %eax
 658:	5a                   	pop    %edx
 659:	68 23 0c 00 00       	push   $0xc23
 65e:	6a 01                	push   $0x1
 660:	e8 bb 01 00 00       	call   820 <printf>
  return rc;
}
 665:	89 d8                	mov    %ebx,%eax
 667:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 66a:	c9                   	leave  
 66b:	c3                   	ret    
 66c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000670 <lock_acquire>:



void lock_acquire(lock_t * lock){
 670:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 671:	b9 01 00 00 00       	mov    $0x1,%ecx
 676:	89 e5                	mov    %esp,%ebp
 678:	8b 55 08             	mov    0x8(%ebp),%edx
 67b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop
 680:	89 c8                	mov    %ecx,%eax
 682:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 685:	83 f8 01             	cmp    $0x1,%eax
 688:	74 f6                	je     680 <lock_acquire+0x10>
 ; // spin

};
 68a:	5d                   	pop    %ebp
 68b:	c3                   	ret    
 68c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000690 <lock_release>:

void lock_release(lock_t * lock){
 690:	55                   	push   %ebp
 691:	31 c0                	xor    %eax,%eax
 693:	89 e5                	mov    %esp,%ebp
 695:	8b 55 08             	mov    0x8(%ebp),%edx
 698:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 69b:	5d                   	pop    %ebp
 69c:	c3                   	ret    
 69d:	8d 76 00             	lea    0x0(%esi),%esi

000006a0 <lock_init>:

void lock_init(lock_t * lock){
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 6a3:	8b 45 08             	mov    0x8(%ebp),%eax
 6a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 6ac:	5d                   	pop    %ebp
 6ad:	c3                   	ret    

000006ae <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6ae:	b8 01 00 00 00       	mov    $0x1,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <exit>:
SYSCALL(exit)
 6b6:	b8 02 00 00 00       	mov    $0x2,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <wait>:
SYSCALL(wait)
 6be:	b8 03 00 00 00       	mov    $0x3,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    

000006c6 <pipe>:
SYSCALL(pipe)
 6c6:	b8 04 00 00 00       	mov    $0x4,%eax
 6cb:	cd 40                	int    $0x40
 6cd:	c3                   	ret    

000006ce <read>:
SYSCALL(read)
 6ce:	b8 05 00 00 00       	mov    $0x5,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <write>:
SYSCALL(write)
 6d6:	b8 10 00 00 00       	mov    $0x10,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <close>:
SYSCALL(close)
 6de:	b8 15 00 00 00       	mov    $0x15,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <kill>:
SYSCALL(kill)
 6e6:	b8 06 00 00 00       	mov    $0x6,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <exec>:
SYSCALL(exec)
 6ee:	b8 07 00 00 00       	mov    $0x7,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <open>:
SYSCALL(open)
 6f6:	b8 0f 00 00 00       	mov    $0xf,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <mknod>:
SYSCALL(mknod)
 6fe:	b8 11 00 00 00       	mov    $0x11,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <unlink>:
SYSCALL(unlink)
 706:	b8 12 00 00 00       	mov    $0x12,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <fstat>:
SYSCALL(fstat)
 70e:	b8 08 00 00 00       	mov    $0x8,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <link>:
SYSCALL(link)
 716:	b8 13 00 00 00       	mov    $0x13,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <mkdir>:
SYSCALL(mkdir)
 71e:	b8 14 00 00 00       	mov    $0x14,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <chdir>:
SYSCALL(chdir)
 726:	b8 09 00 00 00       	mov    $0x9,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <dup>:
SYSCALL(dup)
 72e:	b8 0a 00 00 00       	mov    $0xa,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <getpid>:
SYSCALL(getpid)
 736:	b8 0b 00 00 00       	mov    $0xb,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <sbrk>:
SYSCALL(sbrk)
 73e:	b8 0c 00 00 00       	mov    $0xc,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    

00000746 <sleep>:
SYSCALL(sleep)
 746:	b8 0d 00 00 00       	mov    $0xd,%eax
 74b:	cd 40                	int    $0x40
 74d:	c3                   	ret    

0000074e <uptime>:
SYSCALL(uptime)
 74e:	b8 0e 00 00 00       	mov    $0xe,%eax
 753:	cd 40                	int    $0x40
 755:	c3                   	ret    

00000756 <clone>:
SYSCALL(clone)
 756:	b8 16 00 00 00       	mov    $0x16,%eax
 75b:	cd 40                	int    $0x40
 75d:	c3                   	ret    

0000075e <join>:
SYSCALL(join)
 75e:	b8 17 00 00 00       	mov    $0x17,%eax
 763:	cd 40                	int    $0x40
 765:	c3                   	ret    
 766:	66 90                	xchg   %ax,%ax
 768:	66 90                	xchg   %ax,%ax
 76a:	66 90                	xchg   %ax,%ax
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax

00000770 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 3c             	sub    $0x3c,%esp
 779:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 77c:	89 d1                	mov    %edx,%ecx
{
 77e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 781:	85 d2                	test   %edx,%edx
 783:	0f 89 7f 00 00 00    	jns    808 <printint+0x98>
 789:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 78d:	74 79                	je     808 <printint+0x98>
    neg = 1;
 78f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 796:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 798:	31 db                	xor    %ebx,%ebx
 79a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7a0:	89 c8                	mov    %ecx,%eax
 7a2:	31 d2                	xor    %edx,%edx
 7a4:	89 cf                	mov    %ecx,%edi
 7a6:	f7 75 c4             	divl   -0x3c(%ebp)
 7a9:	0f b6 92 94 0c 00 00 	movzbl 0xc94(%edx),%edx
 7b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7b3:	89 d8                	mov    %ebx,%eax
 7b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7c1:	76 dd                	jbe    7a0 <printint+0x30>
  if(neg)
 7c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7c6:	85 c9                	test   %ecx,%ecx
 7c8:	74 0c                	je     7d6 <printint+0x66>
    buf[i++] = '-';
 7ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7dd:	eb 07                	jmp    7e6 <printint+0x76>
 7df:	90                   	nop
    putc(fd, buf[i]);
 7e0:	0f b6 13             	movzbl (%ebx),%edx
 7e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7e6:	83 ec 04             	sub    $0x4,%esp
 7e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7ec:	6a 01                	push   $0x1
 7ee:	56                   	push   %esi
 7ef:	57                   	push   %edi
 7f0:	e8 e1 fe ff ff       	call   6d6 <write>
  while(--i >= 0)
 7f5:	83 c4 10             	add    $0x10,%esp
 7f8:	39 de                	cmp    %ebx,%esi
 7fa:	75 e4                	jne    7e0 <printint+0x70>
}
 7fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ff:	5b                   	pop    %ebx
 800:	5e                   	pop    %esi
 801:	5f                   	pop    %edi
 802:	5d                   	pop    %ebp
 803:	c3                   	ret    
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 808:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 80f:	eb 87                	jmp    798 <printint+0x28>
 811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop

00000820 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 829:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 82c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 82f:	0f b6 13             	movzbl (%ebx),%edx
 832:	84 d2                	test   %dl,%dl
 834:	74 6a                	je     8a0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 836:	8d 45 10             	lea    0x10(%ebp),%eax
 839:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 83c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 83f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 841:	89 45 d0             	mov    %eax,-0x30(%ebp)
 844:	eb 36                	jmp    87c <printf+0x5c>
 846:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84d:	8d 76 00             	lea    0x0(%esi),%esi
 850:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 853:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 858:	83 f8 25             	cmp    $0x25,%eax
 85b:	74 15                	je     872 <printf+0x52>
  write(fd, &c, 1);
 85d:	83 ec 04             	sub    $0x4,%esp
 860:	88 55 e7             	mov    %dl,-0x19(%ebp)
 863:	6a 01                	push   $0x1
 865:	57                   	push   %edi
 866:	56                   	push   %esi
 867:	e8 6a fe ff ff       	call   6d6 <write>
 86c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 86f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 872:	0f b6 13             	movzbl (%ebx),%edx
 875:	83 c3 01             	add    $0x1,%ebx
 878:	84 d2                	test   %dl,%dl
 87a:	74 24                	je     8a0 <printf+0x80>
    c = fmt[i] & 0xff;
 87c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 87f:	85 c9                	test   %ecx,%ecx
 881:	74 cd                	je     850 <printf+0x30>
      }
    } else if(state == '%'){
 883:	83 f9 25             	cmp    $0x25,%ecx
 886:	75 ea                	jne    872 <printf+0x52>
      if(c == 'd'){
 888:	83 f8 25             	cmp    $0x25,%eax
 88b:	0f 84 07 01 00 00    	je     998 <printf+0x178>
 891:	83 e8 63             	sub    $0x63,%eax
 894:	83 f8 15             	cmp    $0x15,%eax
 897:	77 17                	ja     8b0 <printf+0x90>
 899:	ff 24 85 3c 0c 00 00 	jmp    *0xc3c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8a3:	5b                   	pop    %ebx
 8a4:	5e                   	pop    %esi
 8a5:	5f                   	pop    %edi
 8a6:	5d                   	pop    %ebp
 8a7:	c3                   	ret    
 8a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8af:	90                   	nop
  write(fd, &c, 1);
 8b0:	83 ec 04             	sub    $0x4,%esp
 8b3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8b6:	6a 01                	push   $0x1
 8b8:	57                   	push   %edi
 8b9:	56                   	push   %esi
 8ba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8be:	e8 13 fe ff ff       	call   6d6 <write>
        putc(fd, c);
 8c3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8c7:	83 c4 0c             	add    $0xc,%esp
 8ca:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8cd:	6a 01                	push   $0x1
 8cf:	57                   	push   %edi
 8d0:	56                   	push   %esi
 8d1:	e8 00 fe ff ff       	call   6d6 <write>
        putc(fd, c);
 8d6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8d9:	31 c9                	xor    %ecx,%ecx
 8db:	eb 95                	jmp    872 <printf+0x52>
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8e0:	83 ec 0c             	sub    $0xc,%esp
 8e3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8e8:	6a 00                	push   $0x0
 8ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8ed:	8b 10                	mov    (%eax),%edx
 8ef:	89 f0                	mov    %esi,%eax
 8f1:	e8 7a fe ff ff       	call   770 <printint>
        ap++;
 8f6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8fa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8fd:	31 c9                	xor    %ecx,%ecx
 8ff:	e9 6e ff ff ff       	jmp    872 <printf+0x52>
 904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 908:	8b 45 d0             	mov    -0x30(%ebp),%eax
 90b:	8b 10                	mov    (%eax),%edx
        ap++;
 90d:	83 c0 04             	add    $0x4,%eax
 910:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 913:	85 d2                	test   %edx,%edx
 915:	0f 84 8d 00 00 00    	je     9a8 <printf+0x188>
        while(*s != 0){
 91b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 91e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 920:	84 c0                	test   %al,%al
 922:	0f 84 4a ff ff ff    	je     872 <printf+0x52>
 928:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 92b:	89 d3                	mov    %edx,%ebx
 92d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 930:	83 ec 04             	sub    $0x4,%esp
          s++;
 933:	83 c3 01             	add    $0x1,%ebx
 936:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 939:	6a 01                	push   $0x1
 93b:	57                   	push   %edi
 93c:	56                   	push   %esi
 93d:	e8 94 fd ff ff       	call   6d6 <write>
        while(*s != 0){
 942:	0f b6 03             	movzbl (%ebx),%eax
 945:	83 c4 10             	add    $0x10,%esp
 948:	84 c0                	test   %al,%al
 94a:	75 e4                	jne    930 <printf+0x110>
      state = 0;
 94c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 94f:	31 c9                	xor    %ecx,%ecx
 951:	e9 1c ff ff ff       	jmp    872 <printf+0x52>
 956:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 95d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 960:	83 ec 0c             	sub    $0xc,%esp
 963:	b9 0a 00 00 00       	mov    $0xa,%ecx
 968:	6a 01                	push   $0x1
 96a:	e9 7b ff ff ff       	jmp    8ea <printf+0xca>
 96f:	90                   	nop
        putc(fd, *ap);
 970:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 973:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 976:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 978:	6a 01                	push   $0x1
 97a:	57                   	push   %edi
 97b:	56                   	push   %esi
        putc(fd, *ap);
 97c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 97f:	e8 52 fd ff ff       	call   6d6 <write>
        ap++;
 984:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 988:	83 c4 10             	add    $0x10,%esp
      state = 0;
 98b:	31 c9                	xor    %ecx,%ecx
 98d:	e9 e0 fe ff ff       	jmp    872 <printf+0x52>
 992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 998:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 99b:	83 ec 04             	sub    $0x4,%esp
 99e:	e9 2a ff ff ff       	jmp    8cd <printf+0xad>
 9a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9a7:	90                   	nop
          s = "(null)";
 9a8:	ba 33 0c 00 00       	mov    $0xc33,%edx
        while(*s != 0){
 9ad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9b0:	b8 28 00 00 00       	mov    $0x28,%eax
 9b5:	89 d3                	mov    %edx,%ebx
 9b7:	e9 74 ff ff ff       	jmp    930 <printf+0x110>
 9bc:	66 90                	xchg   %ax,%ax
 9be:	66 90                	xchg   %ax,%ax

000009c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c1:	a1 34 10 00 00       	mov    0x1034,%eax
{
 9c6:	89 e5                	mov    %esp,%ebp
 9c8:	57                   	push   %edi
 9c9:	56                   	push   %esi
 9ca:	53                   	push   %ebx
 9cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9d8:	89 c2                	mov    %eax,%edx
 9da:	8b 00                	mov    (%eax),%eax
 9dc:	39 ca                	cmp    %ecx,%edx
 9de:	73 30                	jae    a10 <free+0x50>
 9e0:	39 c1                	cmp    %eax,%ecx
 9e2:	72 04                	jb     9e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9e4:	39 c2                	cmp    %eax,%edx
 9e6:	72 f0                	jb     9d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ee:	39 f8                	cmp    %edi,%eax
 9f0:	74 30                	je     a22 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9f5:	8b 42 04             	mov    0x4(%edx),%eax
 9f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9fb:	39 f1                	cmp    %esi,%ecx
 9fd:	74 3a                	je     a39 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a01:	5b                   	pop    %ebx
  freep = p;
 a02:	89 15 34 10 00 00    	mov    %edx,0x1034
}
 a08:	5e                   	pop    %esi
 a09:	5f                   	pop    %edi
 a0a:	5d                   	pop    %ebp
 a0b:	c3                   	ret    
 a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a10:	39 c2                	cmp    %eax,%edx
 a12:	72 c4                	jb     9d8 <free+0x18>
 a14:	39 c1                	cmp    %eax,%ecx
 a16:	73 c0                	jae    9d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a1e:	39 f8                	cmp    %edi,%eax
 a20:	75 d0                	jne    9f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a22:	03 70 04             	add    0x4(%eax),%esi
 a25:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a28:	8b 02                	mov    (%edx),%eax
 a2a:	8b 00                	mov    (%eax),%eax
 a2c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a2f:	8b 42 04             	mov    0x4(%edx),%eax
 a32:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a35:	39 f1                	cmp    %esi,%ecx
 a37:	75 c6                	jne    9ff <free+0x3f>
    p->s.size += bp->s.size;
 a39:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a3c:	89 15 34 10 00 00    	mov    %edx,0x1034
    p->s.size += bp->s.size;
 a42:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a45:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a48:	89 0a                	mov    %ecx,(%edx)
}
 a4a:	5b                   	pop    %ebx
 a4b:	5e                   	pop    %esi
 a4c:	5f                   	pop    %edi
 a4d:	5d                   	pop    %ebp
 a4e:	c3                   	ret    
 a4f:	90                   	nop

00000a50 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a50:	55                   	push   %ebp
 a51:	89 e5                	mov    %esp,%ebp
 a53:	57                   	push   %edi
 a54:	56                   	push   %esi
 a55:	53                   	push   %ebx
 a56:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a59:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a5c:	8b 3d 34 10 00 00    	mov    0x1034,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a62:	8d 70 07             	lea    0x7(%eax),%esi
 a65:	c1 ee 03             	shr    $0x3,%esi
 a68:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a6b:	85 ff                	test   %edi,%edi
 a6d:	0f 84 9d 00 00 00    	je     b10 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a73:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a75:	8b 4a 04             	mov    0x4(%edx),%ecx
 a78:	39 f1                	cmp    %esi,%ecx
 a7a:	73 6a                	jae    ae6 <malloc+0x96>
 a7c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a81:	39 de                	cmp    %ebx,%esi
 a83:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a86:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a8d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a90:	eb 17                	jmp    aa9 <malloc+0x59>
 a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a98:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a9a:	8b 48 04             	mov    0x4(%eax),%ecx
 a9d:	39 f1                	cmp    %esi,%ecx
 a9f:	73 4f                	jae    af0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 aa1:	8b 3d 34 10 00 00    	mov    0x1034,%edi
 aa7:	89 c2                	mov    %eax,%edx
 aa9:	39 d7                	cmp    %edx,%edi
 aab:	75 eb                	jne    a98 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 aad:	83 ec 0c             	sub    $0xc,%esp
 ab0:	ff 75 e4             	push   -0x1c(%ebp)
 ab3:	e8 86 fc ff ff       	call   73e <sbrk>
  if(p == (char*)-1)
 ab8:	83 c4 10             	add    $0x10,%esp
 abb:	83 f8 ff             	cmp    $0xffffffff,%eax
 abe:	74 1c                	je     adc <malloc+0x8c>
  hp->s.size = nu;
 ac0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ac3:	83 ec 0c             	sub    $0xc,%esp
 ac6:	83 c0 08             	add    $0x8,%eax
 ac9:	50                   	push   %eax
 aca:	e8 f1 fe ff ff       	call   9c0 <free>
  return freep;
 acf:	8b 15 34 10 00 00    	mov    0x1034,%edx
      if((p = morecore(nunits)) == 0)
 ad5:	83 c4 10             	add    $0x10,%esp
 ad8:	85 d2                	test   %edx,%edx
 ada:	75 bc                	jne    a98 <malloc+0x48>
        return 0;
  }
}
 adc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 adf:	31 c0                	xor    %eax,%eax
}
 ae1:	5b                   	pop    %ebx
 ae2:	5e                   	pop    %esi
 ae3:	5f                   	pop    %edi
 ae4:	5d                   	pop    %ebp
 ae5:	c3                   	ret    
    if(p->s.size >= nunits){
 ae6:	89 d0                	mov    %edx,%eax
 ae8:	89 fa                	mov    %edi,%edx
 aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 af0:	39 ce                	cmp    %ecx,%esi
 af2:	74 4c                	je     b40 <malloc+0xf0>
        p->s.size -= nunits;
 af4:	29 f1                	sub    %esi,%ecx
 af6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 af9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 afc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aff:	89 15 34 10 00 00    	mov    %edx,0x1034
}
 b05:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b08:	83 c0 08             	add    $0x8,%eax
}
 b0b:	5b                   	pop    %ebx
 b0c:	5e                   	pop    %esi
 b0d:	5f                   	pop    %edi
 b0e:	5d                   	pop    %ebp
 b0f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b10:	c7 05 34 10 00 00 38 	movl   $0x1038,0x1034
 b17:	10 00 00 
    base.s.size = 0;
 b1a:	bf 38 10 00 00       	mov    $0x1038,%edi
    base.s.ptr = freep = prevp = &base;
 b1f:	c7 05 38 10 00 00 38 	movl   $0x1038,0x1038
 b26:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b29:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b2b:	c7 05 3c 10 00 00 00 	movl   $0x0,0x103c
 b32:	00 00 00 
    if(p->s.size >= nunits){
 b35:	e9 42 ff ff ff       	jmp    a7c <malloc+0x2c>
 b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b40:	8b 08                	mov    (%eax),%ecx
 b42:	89 0a                	mov    %ecx,(%edx)
 b44:	eb b9                	jmp    aff <malloc+0xaf>
