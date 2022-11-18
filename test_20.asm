
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
  11:	e8 93 06 00 00       	call   6a9 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 24 0f 00 00       	mov    %eax,0xf24
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 7e 06 00 00       	call   6b1 <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 1c 0f 00 00       	mov    %eax,0xf1c
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
  54:	e8 77 05 00 00       	call   5d0 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 41 0b 00 00       	push   $0xb41
  64:	6a 01                	push   $0x1
  66:	e8 25 07 00 00       	call   790 <printf>
   exit();
  6b:	e8 b9 05 00 00       	call   629 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 b8 0a 00 00       	push   $0xab8
  77:	68 c2 0a 00 00       	push   $0xac2
  7c:	6a 01                	push   $0x1
  7e:	e8 0d 07 00 00       	call   790 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 25 0b 00 00       	push   $0xb25
  8b:	68 e8 0a 00 00       	push   $0xae8
  90:	6a 01                	push   $0x1
  92:	e8 f9 06 00 00       	call   790 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 fc 0a 00 00       	push   $0xafc
  9e:	6a 01                	push   $0x1
  a0:	e8 eb 06 00 00       	call   790 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 24 0f 00 00    	push   0xf24
  ac:	e8 a8 05 00 00       	call   659 <kill>
  b1:	e8 73 05 00 00       	call   629 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 b8 0a 00 00       	push   $0xab8
  bd:	68 c2 0a 00 00       	push   $0xac2
  c2:	6a 01                	push   $0x1
  c4:	e8 c7 06 00 00       	call   790 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 32 0b 00 00       	push   $0xb32
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
  e6:	68 19 0f 00 00       	push   $0xf19
  eb:	e8 10 05 00 00       	call   600 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 b5 05 00 00       	call   6b1 <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 1c 0f 00 00    	cmp    0xf1c,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 b8 0a 00 00       	push   $0xab8
 10e:	68 c2 0a 00 00       	push   $0xac2
 113:	6a 01                	push   $0x1
 115:	e8 76 06 00 00       	call   790 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 ca 0a 00 00       	push   $0xaca
 122:	68 e8 0a 00 00       	push   $0xae8
 127:	6a 01                	push   $0x1
 129:	e8 62 06 00 00       	call   790 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 fc 0a 00 00       	push   $0xafc
 135:	6a 01                	push   $0x1
 137:	e8 54 06 00 00       	call   790 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 24 0f 00 00    	push   0xf24
 143:	e8 11 05 00 00       	call   659 <kill>
 148:	e8 dc 04 00 00       	call   629 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 20 0f 00 00 01 	addl   $0x1,0xf20
   lock_release(&lock);
 157:	68 19 0f 00 00       	push   $0xf19
 15c:	e8 af 04 00 00       	call   610 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
 168:	e8 93 04 00 00       	call   600 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 38 05 00 00       	call   6b1 <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 1c 0f 00 00    	cmp    0xf1c,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 20 0f 00 00 01 	addl   $0x1,0xf20
   lock_release(&lock2);
 192:	68 18 0f 00 00       	push   $0xf18
 197:	e8 74 04 00 00       	call   610 <lock_release>

   
   exit();
 19c:	e8 88 04 00 00       	call   629 <exit>
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
 1b6:	68 19 0f 00 00       	push   $0xf19
 1bb:	e8 60 04 00 00       	call   620 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
 1c7:	e8 54 04 00 00       	call   620 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 19 0f 00 00 	movl   $0xf19,(%esp)
 1d3:	e8 28 04 00 00       	call   600 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
 1df:	e8 1c 04 00 00       	call   600 <lock_acquire>

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
 205:	e8 a7 04 00 00       	call   6b1 <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 1c 0f 00 00       	mov    %eax,0xf1c
   while (global < num_threads) {
 212:	a1 14 0f 00 00       	mov    0xf14,%eax
 217:	39 05 20 0f 00 00    	cmp    %eax,0xf20
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 19 0f 00 00       	push   $0xf19
 228:	e8 e3 03 00 00       	call   610 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 80 04 00 00       	call   6b9 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 19 0f 00 00 	movl   $0xf19,(%esp)
 240:	e8 bb 03 00 00       	call   600 <lock_acquire>
   while (global < num_threads) {
 245:	a1 14 0f 00 00       	mov    0xf14,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 20 0f 00 00    	cmp    %eax,0xf20
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 20 0f 00 00 00 	movl   $0x0,0xf20
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 45 04 00 00       	call   6b1 <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 39 04 00 00       	call   6b1 <sbrk>
   lock_release(&lock);
 278:	c7 04 24 19 0f 00 00 	movl   $0xf19,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 1c 0f 00 00       	mov    %eax,0xf1c
   lock_release(&lock);
 284:	e8 87 03 00 00       	call   610 <lock_release>

   while (global < num_threads) {
 289:	a1 14 0f 00 00       	mov    0xf14,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 20 0f 00 00    	cmp    %eax,0xf20
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 18 0f 00 00       	push   $0xf18
 2a8:	e8 63 03 00 00       	call   610 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 00 04 00 00       	call   6b9 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
 2c0:	e8 3b 03 00 00       	call   600 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 14 0f 00 00       	mov    0xf14,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 20 0f 00 00    	cmp    %eax,0xf20
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 18 0f 00 00       	push   $0xf18
 2dd:	e8 2e 03 00 00       	call   610 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 e9 02 00 00       	call   5d0 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 36 03 00 00       	call   629 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 b8 0a 00 00       	push   $0xab8
 2fa:	68 c2 0a 00 00       	push   $0xac2
 2ff:	6a 01                	push   $0x1
 301:	e8 8a 04 00 00       	call   790 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 1e 0b 00 00       	push   $0xb1e
 30e:	68 e8 0a 00 00       	push   $0xae8
 313:	6a 01                	push   $0x1
 315:	e8 76 04 00 00       	call   790 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 fc 0a 00 00       	push   $0xafc
 321:	6a 01                	push   $0x1
 323:	e8 68 04 00 00       	call   790 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 24 0f 00 00    	push   0xf24
 32f:	e8 25 03 00 00       	call   659 <kill>
 334:	e8 f0 02 00 00       	call   629 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 b8 0a 00 00       	push   $0xab8
 340:	68 c2 0a 00 00       	push   $0xac2
 345:	6a 01                	push   $0x1
 347:	e8 44 04 00 00       	call   790 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 09 0b 00 00       	push   $0xb09
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "user.h"
#include "x86.h"

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
 498:	e8 a4 01 00 00       	call   641 <read>
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
 4fd:	e8 67 01 00 00       	call   669 <open>
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
 512:	e8 6a 01 00 00       	call   681 <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 30 01 00 00       	call   651 <close>
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
 5b3:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 5b6:	6a 04                	push   $0x4
 5b8:	e8 03 04 00 00       	call   9c0 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 5bd:	50                   	push   %eax
 5be:	ff 75 10             	push   0x10(%ebp)
 5c1:	ff 75 0c             	push   0xc(%ebp)
 5c4:	ff 75 08             	push   0x8(%ebp)
 5c7:	e8 fd 00 00 00       	call   6c9 <clone>
}
 5cc:	c9                   	leave  
 5cd:	c3                   	ret    
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <thread_join>:

int
thread_join(){
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	56                   	push   %esi
 5d4:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 5d5:	83 ec 0c             	sub    $0xc,%esp
 5d8:	6a 04                	push   $0x4
 5da:	e8 e1 03 00 00       	call   9c0 <malloc>
  int rc = join(stack);
 5df:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 5e2:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 5e4:	e8 e8 00 00 00       	call   6d1 <join>
 5e9:	89 c6                	mov    %eax,%esi
  free(*stack);
 5eb:	58                   	pop    %eax
 5ec:	ff 33                	push   (%ebx)
 5ee:	e8 3d 03 00 00       	call   930 <free>
  return rc;
}
 5f3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5f6:	89 f0                	mov    %esi,%eax
 5f8:	5b                   	pop    %ebx
 5f9:	5e                   	pop    %esi
 5fa:	5d                   	pop    %ebp
 5fb:	c3                   	ret    
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 600:	c3                   	ret    
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 608:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop

00000610 <lock_release>:
 610:	c3                   	ret    
 611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 618:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61f:	90                   	nop

00000620 <lock_init>:
 620:	c3                   	ret    

00000621 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 621:	b8 01 00 00 00       	mov    $0x1,%eax
 626:	cd 40                	int    $0x40
 628:	c3                   	ret    

00000629 <exit>:
SYSCALL(exit)
 629:	b8 02 00 00 00       	mov    $0x2,%eax
 62e:	cd 40                	int    $0x40
 630:	c3                   	ret    

00000631 <wait>:
SYSCALL(wait)
 631:	b8 03 00 00 00       	mov    $0x3,%eax
 636:	cd 40                	int    $0x40
 638:	c3                   	ret    

00000639 <pipe>:
SYSCALL(pipe)
 639:	b8 04 00 00 00       	mov    $0x4,%eax
 63e:	cd 40                	int    $0x40
 640:	c3                   	ret    

00000641 <read>:
SYSCALL(read)
 641:	b8 05 00 00 00       	mov    $0x5,%eax
 646:	cd 40                	int    $0x40
 648:	c3                   	ret    

00000649 <write>:
SYSCALL(write)
 649:	b8 10 00 00 00       	mov    $0x10,%eax
 64e:	cd 40                	int    $0x40
 650:	c3                   	ret    

00000651 <close>:
SYSCALL(close)
 651:	b8 15 00 00 00       	mov    $0x15,%eax
 656:	cd 40                	int    $0x40
 658:	c3                   	ret    

00000659 <kill>:
SYSCALL(kill)
 659:	b8 06 00 00 00       	mov    $0x6,%eax
 65e:	cd 40                	int    $0x40
 660:	c3                   	ret    

00000661 <exec>:
SYSCALL(exec)
 661:	b8 07 00 00 00       	mov    $0x7,%eax
 666:	cd 40                	int    $0x40
 668:	c3                   	ret    

00000669 <open>:
SYSCALL(open)
 669:	b8 0f 00 00 00       	mov    $0xf,%eax
 66e:	cd 40                	int    $0x40
 670:	c3                   	ret    

00000671 <mknod>:
SYSCALL(mknod)
 671:	b8 11 00 00 00       	mov    $0x11,%eax
 676:	cd 40                	int    $0x40
 678:	c3                   	ret    

00000679 <unlink>:
SYSCALL(unlink)
 679:	b8 12 00 00 00       	mov    $0x12,%eax
 67e:	cd 40                	int    $0x40
 680:	c3                   	ret    

00000681 <fstat>:
SYSCALL(fstat)
 681:	b8 08 00 00 00       	mov    $0x8,%eax
 686:	cd 40                	int    $0x40
 688:	c3                   	ret    

00000689 <link>:
SYSCALL(link)
 689:	b8 13 00 00 00       	mov    $0x13,%eax
 68e:	cd 40                	int    $0x40
 690:	c3                   	ret    

00000691 <mkdir>:
SYSCALL(mkdir)
 691:	b8 14 00 00 00       	mov    $0x14,%eax
 696:	cd 40                	int    $0x40
 698:	c3                   	ret    

00000699 <chdir>:
SYSCALL(chdir)
 699:	b8 09 00 00 00       	mov    $0x9,%eax
 69e:	cd 40                	int    $0x40
 6a0:	c3                   	ret    

000006a1 <dup>:
SYSCALL(dup)
 6a1:	b8 0a 00 00 00       	mov    $0xa,%eax
 6a6:	cd 40                	int    $0x40
 6a8:	c3                   	ret    

000006a9 <getpid>:
SYSCALL(getpid)
 6a9:	b8 0b 00 00 00       	mov    $0xb,%eax
 6ae:	cd 40                	int    $0x40
 6b0:	c3                   	ret    

000006b1 <sbrk>:
SYSCALL(sbrk)
 6b1:	b8 0c 00 00 00       	mov    $0xc,%eax
 6b6:	cd 40                	int    $0x40
 6b8:	c3                   	ret    

000006b9 <sleep>:
SYSCALL(sleep)
 6b9:	b8 0d 00 00 00       	mov    $0xd,%eax
 6be:	cd 40                	int    $0x40
 6c0:	c3                   	ret    

000006c1 <uptime>:
SYSCALL(uptime)
 6c1:	b8 0e 00 00 00       	mov    $0xe,%eax
 6c6:	cd 40                	int    $0x40
 6c8:	c3                   	ret    

000006c9 <clone>:
SYSCALL(clone)
 6c9:	b8 16 00 00 00       	mov    $0x16,%eax
 6ce:	cd 40                	int    $0x40
 6d0:	c3                   	ret    

000006d1 <join>:
SYSCALL(join)
 6d1:	b8 17 00 00 00       	mov    $0x17,%eax
 6d6:	cd 40                	int    $0x40
 6d8:	c3                   	ret    
 6d9:	66 90                	xchg   %ax,%ax
 6db:	66 90                	xchg   %ax,%ax
 6dd:	66 90                	xchg   %ax,%ax
 6df:	90                   	nop

000006e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	83 ec 3c             	sub    $0x3c,%esp
 6e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6ec:	89 d1                	mov    %edx,%ecx
{
 6ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6f1:	85 d2                	test   %edx,%edx
 6f3:	0f 89 7f 00 00 00    	jns    778 <printint+0x98>
 6f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6fd:	74 79                	je     778 <printint+0x98>
    neg = 1;
 6ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 706:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 708:	31 db                	xor    %ebx,%ebx
 70a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 710:	89 c8                	mov    %ecx,%eax
 712:	31 d2                	xor    %edx,%edx
 714:	89 cf                	mov    %ecx,%edi
 716:	f7 75 c4             	divl   -0x3c(%ebp)
 719:	0f b6 92 b0 0b 00 00 	movzbl 0xbb0(%edx),%edx
 720:	89 45 c0             	mov    %eax,-0x40(%ebp)
 723:	89 d8                	mov    %ebx,%eax
 725:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 728:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 72b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 72e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 731:	76 dd                	jbe    710 <printint+0x30>
  if(neg)
 733:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 736:	85 c9                	test   %ecx,%ecx
 738:	74 0c                	je     746 <printint+0x66>
    buf[i++] = '-';
 73a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 73f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 741:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 746:	8b 7d b8             	mov    -0x48(%ebp),%edi
 749:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 74d:	eb 07                	jmp    756 <printint+0x76>
 74f:	90                   	nop
    putc(fd, buf[i]);
 750:	0f b6 13             	movzbl (%ebx),%edx
 753:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 756:	83 ec 04             	sub    $0x4,%esp
 759:	88 55 d7             	mov    %dl,-0x29(%ebp)
 75c:	6a 01                	push   $0x1
 75e:	56                   	push   %esi
 75f:	57                   	push   %edi
 760:	e8 e4 fe ff ff       	call   649 <write>
  while(--i >= 0)
 765:	83 c4 10             	add    $0x10,%esp
 768:	39 de                	cmp    %ebx,%esi
 76a:	75 e4                	jne    750 <printint+0x70>
}
 76c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76f:	5b                   	pop    %ebx
 770:	5e                   	pop    %esi
 771:	5f                   	pop    %edi
 772:	5d                   	pop    %ebp
 773:	c3                   	ret    
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 778:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 77f:	eb 87                	jmp    708 <printint+0x28>
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop

00000790 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 799:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 79c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 79f:	0f b6 13             	movzbl (%ebx),%edx
 7a2:	84 d2                	test   %dl,%dl
 7a4:	74 6a                	je     810 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7a6:	8d 45 10             	lea    0x10(%ebp),%eax
 7a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7b4:	eb 36                	jmp    7ec <printf+0x5c>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
 7c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	74 15                	je     7e2 <printf+0x52>
  write(fd, &c, 1);
 7cd:	83 ec 04             	sub    $0x4,%esp
 7d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7d3:	6a 01                	push   $0x1
 7d5:	57                   	push   %edi
 7d6:	56                   	push   %esi
 7d7:	e8 6d fe ff ff       	call   649 <write>
 7dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7e2:	0f b6 13             	movzbl (%ebx),%edx
 7e5:	83 c3 01             	add    $0x1,%ebx
 7e8:	84 d2                	test   %dl,%dl
 7ea:	74 24                	je     810 <printf+0x80>
    c = fmt[i] & 0xff;
 7ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7ef:	85 c9                	test   %ecx,%ecx
 7f1:	74 cd                	je     7c0 <printf+0x30>
      }
    } else if(state == '%'){
 7f3:	83 f9 25             	cmp    $0x25,%ecx
 7f6:	75 ea                	jne    7e2 <printf+0x52>
      if(c == 'd'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	0f 84 07 01 00 00    	je     908 <printf+0x178>
 801:	83 e8 63             	sub    $0x63,%eax
 804:	83 f8 15             	cmp    $0x15,%eax
 807:	77 17                	ja     820 <printf+0x90>
 809:	ff 24 85 58 0b 00 00 	jmp    *0xb58(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 810:	8d 65 f4             	lea    -0xc(%ebp),%esp
 813:	5b                   	pop    %ebx
 814:	5e                   	pop    %esi
 815:	5f                   	pop    %edi
 816:	5d                   	pop    %ebp
 817:	c3                   	ret    
 818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 826:	6a 01                	push   $0x1
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 82e:	e8 16 fe ff ff       	call   649 <write>
        putc(fd, c);
 833:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 837:	83 c4 0c             	add    $0xc,%esp
 83a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 83d:	6a 01                	push   $0x1
 83f:	57                   	push   %edi
 840:	56                   	push   %esi
 841:	e8 03 fe ff ff       	call   649 <write>
        putc(fd, c);
 846:	83 c4 10             	add    $0x10,%esp
      state = 0;
 849:	31 c9                	xor    %ecx,%ecx
 84b:	eb 95                	jmp    7e2 <printf+0x52>
 84d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 10 00 00 00       	mov    $0x10,%ecx
 858:	6a 00                	push   $0x0
 85a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 85d:	8b 10                	mov    (%eax),%edx
 85f:	89 f0                	mov    %esi,%eax
 861:	e8 7a fe ff ff       	call   6e0 <printint>
        ap++;
 866:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 86a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 86d:	31 c9                	xor    %ecx,%ecx
 86f:	e9 6e ff ff ff       	jmp    7e2 <printf+0x52>
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 878:	8b 45 d0             	mov    -0x30(%ebp),%eax
 87b:	8b 10                	mov    (%eax),%edx
        ap++;
 87d:	83 c0 04             	add    $0x4,%eax
 880:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 883:	85 d2                	test   %edx,%edx
 885:	0f 84 8d 00 00 00    	je     918 <printf+0x188>
        while(*s != 0){
 88b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 88e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 890:	84 c0                	test   %al,%al
 892:	0f 84 4a ff ff ff    	je     7e2 <printf+0x52>
 898:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 89b:	89 d3                	mov    %edx,%ebx
 89d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8a3:	83 c3 01             	add    $0x1,%ebx
 8a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8a9:	6a 01                	push   $0x1
 8ab:	57                   	push   %edi
 8ac:	56                   	push   %esi
 8ad:	e8 97 fd ff ff       	call   649 <write>
        while(*s != 0){
 8b2:	0f b6 03             	movzbl (%ebx),%eax
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	84 c0                	test   %al,%al
 8ba:	75 e4                	jne    8a0 <printf+0x110>
      state = 0;
 8bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8bf:	31 c9                	xor    %ecx,%ecx
 8c1:	e9 1c ff ff ff       	jmp    7e2 <printf+0x52>
 8c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8d8:	6a 01                	push   $0x1
 8da:	e9 7b ff ff ff       	jmp    85a <printf+0xca>
 8df:	90                   	nop
        putc(fd, *ap);
 8e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8e8:	6a 01                	push   $0x1
 8ea:	57                   	push   %edi
 8eb:	56                   	push   %esi
        putc(fd, *ap);
 8ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ef:	e8 55 fd ff ff       	call   649 <write>
        ap++;
 8f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8fb:	31 c9                	xor    %ecx,%ecx
 8fd:	e9 e0 fe ff ff       	jmp    7e2 <printf+0x52>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 908:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 90b:	83 ec 04             	sub    $0x4,%esp
 90e:	e9 2a ff ff ff       	jmp    83d <printf+0xad>
 913:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 917:	90                   	nop
          s = "(null)";
 918:	ba 4e 0b 00 00       	mov    $0xb4e,%edx
        while(*s != 0){
 91d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 920:	b8 28 00 00 00       	mov    $0x28,%eax
 925:	89 d3                	mov    %edx,%ebx
 927:	e9 74 ff ff ff       	jmp    8a0 <printf+0x110>
 92c:	66 90                	xchg   %ax,%ax
 92e:	66 90                	xchg   %ax,%ax

00000930 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 930:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	a1 28 0f 00 00       	mov    0xf28,%eax
{
 936:	89 e5                	mov    %esp,%ebp
 938:	57                   	push   %edi
 939:	56                   	push   %esi
 93a:	53                   	push   %ebx
 93b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 93e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 948:	89 c2                	mov    %eax,%edx
 94a:	8b 00                	mov    (%eax),%eax
 94c:	39 ca                	cmp    %ecx,%edx
 94e:	73 30                	jae    980 <free+0x50>
 950:	39 c1                	cmp    %eax,%ecx
 952:	72 04                	jb     958 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 954:	39 c2                	cmp    %eax,%edx
 956:	72 f0                	jb     948 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	74 30                	je     992 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 962:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 965:	8b 42 04             	mov    0x4(%edx),%eax
 968:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 96b:	39 f1                	cmp    %esi,%ecx
 96d:	74 3a                	je     9a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 96f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 971:	5b                   	pop    %ebx
  freep = p;
 972:	89 15 28 0f 00 00    	mov    %edx,0xf28
}
 978:	5e                   	pop    %esi
 979:	5f                   	pop    %edi
 97a:	5d                   	pop    %ebp
 97b:	c3                   	ret    
 97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 980:	39 c2                	cmp    %eax,%edx
 982:	72 c4                	jb     948 <free+0x18>
 984:	39 c1                	cmp    %eax,%ecx
 986:	73 c0                	jae    948 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	75 d0                	jne    962 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 992:	03 70 04             	add    0x4(%eax),%esi
 995:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 998:	8b 02                	mov    (%edx),%eax
 99a:	8b 00                	mov    (%eax),%eax
 99c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 99f:	8b 42 04             	mov    0x4(%edx),%eax
 9a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a5:	39 f1                	cmp    %esi,%ecx
 9a7:	75 c6                	jne    96f <free+0x3f>
    p->s.size += bp->s.size;
 9a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ac:	89 15 28 0f 00 00    	mov    %edx,0xf28
    p->s.size += bp->s.size;
 9b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9b8:	89 0a                	mov    %ecx,(%edx)
}
 9ba:	5b                   	pop    %ebx
 9bb:	5e                   	pop    %esi
 9bc:	5f                   	pop    %edi
 9bd:	5d                   	pop    %ebp
 9be:	c3                   	ret    
 9bf:	90                   	nop

000009c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9cc:	8b 3d 28 0f 00 00    	mov    0xf28,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d2:	8d 70 07             	lea    0x7(%eax),%esi
 9d5:	c1 ee 03             	shr    $0x3,%esi
 9d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9db:	85 ff                	test   %edi,%edi
 9dd:	0f 84 9d 00 00 00    	je     a80 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9e8:	39 f1                	cmp    %esi,%ecx
 9ea:	73 6a                	jae    a56 <malloc+0x96>
 9ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9f1:	39 de                	cmp    %ebx,%esi
 9f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a00:	eb 17                	jmp    a19 <malloc+0x59>
 a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a0a:	8b 48 04             	mov    0x4(%eax),%ecx
 a0d:	39 f1                	cmp    %esi,%ecx
 a0f:	73 4f                	jae    a60 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a11:	8b 3d 28 0f 00 00    	mov    0xf28,%edi
 a17:	89 c2                	mov    %eax,%edx
 a19:	39 d7                	cmp    %edx,%edi
 a1b:	75 eb                	jne    a08 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a1d:	83 ec 0c             	sub    $0xc,%esp
 a20:	ff 75 e4             	push   -0x1c(%ebp)
 a23:	e8 89 fc ff ff       	call   6b1 <sbrk>
  if(p == (char*)-1)
 a28:	83 c4 10             	add    $0x10,%esp
 a2b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a2e:	74 1c                	je     a4c <malloc+0x8c>
  hp->s.size = nu;
 a30:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a33:	83 ec 0c             	sub    $0xc,%esp
 a36:	83 c0 08             	add    $0x8,%eax
 a39:	50                   	push   %eax
 a3a:	e8 f1 fe ff ff       	call   930 <free>
  return freep;
 a3f:	8b 15 28 0f 00 00    	mov    0xf28,%edx
      if((p = morecore(nunits)) == 0)
 a45:	83 c4 10             	add    $0x10,%esp
 a48:	85 d2                	test   %edx,%edx
 a4a:	75 bc                	jne    a08 <malloc+0x48>
        return 0;
  }
}
 a4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a4f:	31 c0                	xor    %eax,%eax
}
 a51:	5b                   	pop    %ebx
 a52:	5e                   	pop    %esi
 a53:	5f                   	pop    %edi
 a54:	5d                   	pop    %ebp
 a55:	c3                   	ret    
    if(p->s.size >= nunits){
 a56:	89 d0                	mov    %edx,%eax
 a58:	89 fa                	mov    %edi,%edx
 a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a60:	39 ce                	cmp    %ecx,%esi
 a62:	74 4c                	je     ab0 <malloc+0xf0>
        p->s.size -= nunits;
 a64:	29 f1                	sub    %esi,%ecx
 a66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a6c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a6f:	89 15 28 0f 00 00    	mov    %edx,0xf28
}
 a75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a78:	83 c0 08             	add    $0x8,%eax
}
 a7b:	5b                   	pop    %ebx
 a7c:	5e                   	pop    %esi
 a7d:	5f                   	pop    %edi
 a7e:	5d                   	pop    %ebp
 a7f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a80:	c7 05 28 0f 00 00 2c 	movl   $0xf2c,0xf28
 a87:	0f 00 00 
    base.s.size = 0;
 a8a:	bf 2c 0f 00 00       	mov    $0xf2c,%edi
    base.s.ptr = freep = prevp = &base;
 a8f:	c7 05 2c 0f 00 00 2c 	movl   $0xf2c,0xf2c
 a96:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a99:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a9b:	c7 05 30 0f 00 00 00 	movl   $0x0,0xf30
 aa2:	00 00 00 
    if(p->s.size >= nunits){
 aa5:	e9 42 ff ff ff       	jmp    9ec <malloc+0x2c>
 aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ab0:	8b 08                	mov    (%eax),%ecx
 ab2:	89 0a                	mov    %ecx,(%edx)
 ab4:	eb b9                	jmp    a6f <malloc+0xaf>
