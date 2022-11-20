
_test_16:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
void worker(void *arg1, void *arg2);
void nested_worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 7f 06 00 00       	call   696 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 b8 0f 00 00       	mov    %eax,0xfb8
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 c0 01 00 00       	push   $0x1c0
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 d1 04 00 00       	call   510 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 23 05 00 00       	call   570 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d b4 0f 00 00 03 	cmpl   $0x3,0xfb4
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 a8 0a 00 00       	push   $0xaa8
  65:	68 b2 0a 00 00       	push   $0xab2
  6a:	6a 01                	push   $0x1
  6c:	e8 0f 07 00 00       	call   780 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 37 0b 00 00       	push   $0xb37
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 a8 0a 00 00       	push   $0xaa8
  82:	68 b2 0a 00 00       	push   $0xab2
  87:	6a 01                	push   $0x1
  89:	e8 f2 06 00 00       	call   780 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 20 0b 00 00       	push   $0xb20
  96:	68 c9 0a 00 00       	push   $0xac9
  9b:	6a 01                	push   $0x1
  9d:	e8 de 06 00 00       	call   780 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 dd 0a 00 00       	push   $0xadd
  a9:	6a 01                	push   $0x1
  ab:	e8 d0 06 00 00       	call   780 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 b8 0f 00 00    	push   0xfb8
  b7:	e8 8a 05 00 00       	call   646 <kill>
  bc:	e8 55 05 00 00       	call   616 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 a8 0a 00 00       	push   $0xaa8
  c8:	68 b2 0a 00 00       	push   $0xab2
  cd:	6a 01                	push   $0x1
  cf:	e8 ac 06 00 00       	call   780 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 11 0b 00 00       	push   $0xb11
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 43 0b 00 00       	push   $0xb43
  e5:	6a 01                	push   $0x1
  e7:	e8 94 06 00 00       	call   780 <printf>
   exit();
  ec:	e8 25 05 00 00       	call   616 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}


void nested_worker(void *arg1, void *arg2){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 35);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 23             	cmpl   $0x23,(%eax)
 111:	75 75                	jne    188 <nested_worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <nested_worker+0x42>
   assert(global == 2);
 118:	83 3d b4 0f 00 00 02 	cmpl   $0x2,0xfb4
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 a8 0a 00 00       	push   $0xaa8
 12c:	68 b2 0a 00 00       	push   $0xab2
 131:	6a 01                	push   $0x1
 133:	e8 48 06 00 00       	call   780 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 f9 0a 00 00       	push   $0xaf9
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 a8 0a 00 00       	push   $0xaa8
 149:	68 b2 0a 00 00       	push   $0xab2
 14e:	6a 01                	push   $0x1
 150:	e8 2b 06 00 00       	call   780 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 ea 0a 00 00       	push   $0xaea
 15d:	68 c9 0a 00 00       	push   $0xac9
 162:	6a 01                	push   $0x1
 164:	e8 17 06 00 00       	call   780 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 dd 0a 00 00       	push   $0xadd
 170:	6a 01                	push   $0x1
 172:	e8 09 06 00 00       	call   780 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 b8 0f 00 00    	push   0xfb8
 17e:	e8 c3 04 00 00       	call   646 <kill>
 183:	e8 8e 04 00 00       	call   616 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 a8 0a 00 00       	push   $0xaa8
 18f:	68 b2 0a 00 00       	push   $0xab2
 194:	6a 01                	push   $0x1
 196:	e8 e5 05 00 00       	call   780 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 ba 0a 00 00       	push   $0xaba
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 b4 0f 00 00 03 	movl   $0x3,0xfb4
 1ac:	00 00 00 
   exit();
 1af:	e8 62 04 00 00       	call   616 <exit>
 1b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	83 ec 14             	sub    $0x14,%esp
   int arg1_int = *(int*)arg1;
 1c7:	8b 45 08             	mov    0x8(%ebp),%eax
   int arg2_int = *(int*)arg2;
 1ca:	8b 55 0c             	mov    0xc(%ebp),%edx
   int arg1_int = *(int*)arg1;
 1cd:	8b 00                	mov    (%eax),%eax
   int arg2_int = *(int*)arg2;
 1cf:	8b 12                	mov    (%edx),%edx
   int arg1_int = *(int*)arg1;
 1d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int arg2_int = *(int*)arg2;
 1d4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(arg1_int == 35);
 1d7:	83 f8 23             	cmp    $0x23,%eax
 1da:	75 75                	jne    251 <worker+0x91>
   assert(arg2_int == 42);
 1dc:	83 fa 2a             	cmp    $0x2a,%edx
 1df:	75 2a                	jne    20b <worker+0x4b>
   assert(global == 1);
 1e1:	83 3d b4 0f 00 00 01 	cmpl   $0x1,0xfb4
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 a8 0a 00 00       	push   $0xaa8
 1f5:	68 b2 0a 00 00       	push   $0xab2
 1fa:	6a 01                	push   $0x1
 1fc:	e8 7f 05 00 00       	call   780 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 05 0b 00 00       	push   $0xb05
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 a8 0a 00 00       	push   $0xaa8
 212:	68 b2 0a 00 00       	push   $0xab2
 217:	6a 01                	push   $0x1
 219:	e8 62 05 00 00       	call   780 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 ea 0a 00 00       	push   $0xaea
 226:	68 c9 0a 00 00       	push   $0xac9
 22b:	6a 01                	push   $0x1
 22d:	e8 4e 05 00 00       	call   780 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 dd 0a 00 00       	push   $0xadd
 239:	6a 01                	push   $0x1
 23b:	e8 40 05 00 00       	call   780 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 b8 0f 00 00    	push   0xfb8
 247:	e8 fa 03 00 00       	call   646 <kill>
 24c:	e8 c5 03 00 00       	call   616 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 a8 0a 00 00       	push   $0xaa8
 258:	68 b2 0a 00 00       	push   $0xab2
 25d:	6a 01                	push   $0x1
 25f:	e8 1c 05 00 00       	call   780 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 ba 0a 00 00       	push   $0xaba
 26c:	eb b8                	jmp    226 <worker+0x66>
   global++;
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 26e:	50                   	push   %eax
 26f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 272:	50                   	push   %eax
 273:	8d 45 f0             	lea    -0x10(%ebp),%eax
 276:	50                   	push   %eax
 277:	68 00 01 00 00       	push   $0x100
   global++;
 27c:	c7 05 b4 0f 00 00 02 	movl   $0x2,0xfb4
 283:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 286:	e8 85 02 00 00       	call   510 <thread_create>
 28b:	89 c3                	mov    %eax,%ebx
   int nested_join_pid = thread_join();
 28d:	e8 de 02 00 00       	call   570 <thread_join>
   assert(nested_join_pid == nested_thread_pid);
 292:	83 c4 10             	add    $0x10,%esp
 295:	39 c3                	cmp    %eax,%ebx
 297:	74 20                	je     2b9 <worker+0xf9>
 299:	6a 3f                	push   $0x3f
 29b:	68 a8 0a 00 00       	push   $0xaa8
 2a0:	68 b2 0a 00 00       	push   $0xab2
 2a5:	6a 01                	push   $0x1
 2a7:	e8 d4 04 00 00       	call   780 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 50 0b 00 00       	push   $0xb50
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 58 03 00 00       	call   616 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 2c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2c1:	31 c0                	xor    %eax,%eax
{
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	53                   	push   %ebx
 2c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2d7:	83 c0 01             	add    $0x1,%eax
 2da:	84 d2                	test   %dl,%dl
 2dc:	75 f2                	jne    2d0 <strcpy+0x10>
    ;
  return os;
}
 2de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2e1:	89 c8                	mov    %ecx,%eax
 2e3:	c9                   	leave  
 2e4:	c3                   	ret    
 2e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2fa:	0f b6 02             	movzbl (%edx),%eax
 2fd:	84 c0                	test   %al,%al
 2ff:	75 17                	jne    318 <strcmp+0x28>
 301:	eb 3a                	jmp    33d <strcmp+0x4d>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 30c:	83 c2 01             	add    $0x1,%edx
 30f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 312:	84 c0                	test   %al,%al
 314:	74 1a                	je     330 <strcmp+0x40>
    p++, q++;
 316:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 318:	0f b6 19             	movzbl (%ecx),%ebx
 31b:	38 c3                	cmp    %al,%bl
 31d:	74 e9                	je     308 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 31f:	29 d8                	sub    %ebx,%eax
}
 321:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 324:	c9                   	leave  
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 330:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 334:	31 c0                	xor    %eax,%eax
 336:	29 d8                	sub    %ebx,%eax
}
 338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 33b:	c9                   	leave  
 33c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 33d:	0f b6 19             	movzbl (%ecx),%ebx
 340:	31 c0                	xor    %eax,%eax
 342:	eb db                	jmp    31f <strcmp+0x2f>
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <strlen>:

uint
strlen(const char *s)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 356:	80 3a 00             	cmpb   $0x0,(%edx)
 359:	74 15                	je     370 <strlen+0x20>
 35b:	31 c0                	xor    %eax,%eax
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c0 01             	add    $0x1,%eax
 363:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 367:	89 c1                	mov    %eax,%ecx
 369:	75 f5                	jne    360 <strlen+0x10>
    ;
  return n;
}
 36b:	89 c8                	mov    %ecx,%eax
 36d:	5d                   	pop    %ebp
 36e:	c3                   	ret    
 36f:	90                   	nop
  for(n = 0; s[n]; n++)
 370:	31 c9                	xor    %ecx,%ecx
}
 372:	5d                   	pop    %ebp
 373:	89 c8                	mov    %ecx,%eax
 375:	c3                   	ret    
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <memset>:

void*
memset(void *dst, int c, uint n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 392:	8b 7d fc             	mov    -0x4(%ebp),%edi
 395:	89 d0                	mov    %edx,%eax
 397:	c9                   	leave  
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strchr>:

char*
strchr(const char *s, char c)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3aa:	0f b6 10             	movzbl (%eax),%edx
 3ad:	84 d2                	test   %dl,%dl
 3af:	75 12                	jne    3c3 <strchr+0x23>
 3b1:	eb 1d                	jmp    3d0 <strchr+0x30>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3bc:	83 c0 01             	add    $0x1,%eax
 3bf:	84 d2                	test   %dl,%dl
 3c1:	74 0d                	je     3d0 <strchr+0x30>
    if(*s == c)
 3c3:	38 d1                	cmp    %dl,%cl
 3c5:	75 f1                	jne    3b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3d0:	31 c0                	xor    %eax,%eax
}
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <gets>:

char*
gets(char *buf, int max)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3e9:	31 db                	xor    %ebx,%ebx
{
 3eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3ee:	eb 27                	jmp    417 <gets+0x37>
    cc = read(0, &c, 1);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	6a 01                	push   $0x1
 3f5:	57                   	push   %edi
 3f6:	6a 00                	push   $0x0
 3f8:	e8 31 02 00 00       	call   62e <read>
    if(cc < 1)
 3fd:	83 c4 10             	add    $0x10,%esp
 400:	85 c0                	test   %eax,%eax
 402:	7e 1d                	jle    421 <gets+0x41>
      break;
    buf[i++] = c;
 404:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 408:	8b 55 08             	mov    0x8(%ebp),%edx
 40b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 40f:	3c 0a                	cmp    $0xa,%al
 411:	74 1d                	je     430 <gets+0x50>
 413:	3c 0d                	cmp    $0xd,%al
 415:	74 19                	je     430 <gets+0x50>
  for(i=0; i+1 < max; ){
 417:	89 de                	mov    %ebx,%esi
 419:	83 c3 01             	add    $0x1,%ebx
 41c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 41f:	7c cf                	jl     3f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 421:	8b 45 08             	mov    0x8(%ebp),%eax
 424:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 428:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42b:	5b                   	pop    %ebx
 42c:	5e                   	pop    %esi
 42d:	5f                   	pop    %edi
 42e:	5d                   	pop    %ebp
 42f:	c3                   	ret    
  buf[i] = '\0';
 430:	8b 45 08             	mov    0x8(%ebp),%eax
 433:	89 de                	mov    %ebx,%esi
 435:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 439:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43c:	5b                   	pop    %ebx
 43d:	5e                   	pop    %esi
 43e:	5f                   	pop    %edi
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret    
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	push   0x8(%ebp)
 45d:	e8 f4 01 00 00       	call   656 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	push   0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 f7 01 00 00       	call   66e <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 bd 01 00 00       	call   63e <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49e:	66 90                	xchg   %ax,%ax

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 02             	movsbl (%edx),%eax
 4aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4b5:	77 1e                	ja     4d5 <atoi+0x35>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4c0:	83 c2 01             	add    $0x1,%edx
 4c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ca:	0f be 02             	movsbl (%edx),%eax
 4cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d8:	89 c8                	mov    %ecx,%eax
 4da:	c9                   	leave  
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	8b 45 10             	mov    0x10(%ebp),%eax
 4e7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ea:	56                   	push   %esi
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 13                	jle    505 <memmove+0x25>
 4f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4f4:	89 d7                	mov    %edx,%edi
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 500:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 501:	39 f8                	cmp    %edi,%eax
 503:	75 fb                	jne    500 <memmove+0x20>
  return vdst;
}
 505:	5e                   	pop    %esi
 506:	89 d0                	mov    %edx,%eax
 508:	5f                   	pop    %edi
 509:	5d                   	pop    %ebp
 50a:	c3                   	ret    
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	53                   	push   %ebx
 514:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 517:	68 00 10 00 00       	push   $0x1000
 51c:	e8 8f 04 00 00       	call   9b0 <malloc>
  if((int) stack % 4096 != 0){
 521:	83 c4 10             	add    $0x10,%esp
 524:	a9 ff 0f 00 00       	test   $0xfff,%eax
 529:	74 16                	je     541 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 52b:	99                   	cltd   
 52c:	c1 ea 14             	shr    $0x14,%edx
 52f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 532:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 538:	29 ca                	sub    %ecx,%edx
 53a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 541:	50                   	push   %eax
 542:	ff 75 10             	push   0x10(%ebp)
 545:	ff 75 0c             	push   0xc(%ebp)
 548:	ff 75 08             	push   0x8(%ebp)
 54b:	e8 66 01 00 00       	call   6b6 <clone>
  printf(1, " thread create %d \n", rc);
 550:	83 c4 0c             	add    $0xc,%esp
 553:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 554:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 556:	68 75 0b 00 00       	push   $0xb75
 55b:	6a 01                	push   $0x1
 55d:	e8 1e 02 00 00       	call   780 <printf>
  return rc;
}
 562:	89 d8                	mov    %ebx,%eax
 564:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 567:	c9                   	leave  
 568:	c3                   	ret    
 569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000570 <thread_join>:

int
thread_join(){
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	53                   	push   %ebx
 574:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 577:	68 89 0b 00 00       	push   $0xb89
 57c:	6a 01                	push   $0x1
 57e:	e8 fd 01 00 00       	call   780 <printf>
  void** stack = malloc(sizeof(void**));
 583:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 58a:	e8 21 04 00 00       	call   9b0 <malloc>
 58f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 591:	58                   	pop    %eax
 592:	5a                   	pop    %edx
 593:	68 99 0b 00 00       	push   $0xb99
 598:	6a 01                	push   $0x1
 59a:	e8 e1 01 00 00       	call   780 <printf>
  int rc = join(stack);
 59f:	89 1c 24             	mov    %ebx,(%esp)
 5a2:	e8 17 01 00 00       	call   6be <join>
  printf(1, "thread join 3 \n");
 5a7:	59                   	pop    %ecx
  int rc = join(stack);
 5a8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 5aa:	58                   	pop    %eax
 5ab:	68 a9 0b 00 00       	push   $0xba9
 5b0:	6a 01                	push   $0x1
 5b2:	e8 c9 01 00 00       	call   780 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 5b7:	58                   	pop    %eax
 5b8:	5a                   	pop    %edx
 5b9:	68 b9 0b 00 00       	push   $0xbb9
 5be:	6a 01                	push   $0x1
 5c0:	e8 bb 01 00 00       	call   780 <printf>
  return rc;
}
 5c5:	89 d8                	mov    %ebx,%eax
 5c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5ca:	c9                   	leave  
 5cb:	c3                   	ret    
 5cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005d0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 5d0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5d1:	b9 01 00 00 00       	mov    $0x1,%ecx
 5d6:	89 e5                	mov    %esp,%ebp
 5d8:	8b 55 08             	mov    0x8(%ebp),%edx
 5db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop
 5e0:	89 c8                	mov    %ecx,%eax
 5e2:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 5e5:	83 f8 01             	cmp    $0x1,%eax
 5e8:	74 f6                	je     5e0 <lock_acquire+0x10>
 ; // spin

};
 5ea:	5d                   	pop    %ebp
 5eb:	c3                   	ret    
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005f0 <lock_release>:

void lock_release(lock_t * lock){
 5f0:	55                   	push   %ebp
 5f1:	31 c0                	xor    %eax,%eax
 5f3:	89 e5                	mov    %esp,%ebp
 5f5:	8b 55 08             	mov    0x8(%ebp),%edx
 5f8:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 5fb:	5d                   	pop    %ebp
 5fc:	c3                   	ret    
 5fd:	8d 76 00             	lea    0x0(%esi),%esi

00000600 <lock_init>:

void lock_init(lock_t * lock){
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 603:	8b 45 08             	mov    0x8(%ebp),%eax
 606:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 60c:	5d                   	pop    %ebp
 60d:	c3                   	ret    

0000060e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 60e:	b8 01 00 00 00       	mov    $0x1,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <exit>:
SYSCALL(exit)
 616:	b8 02 00 00 00       	mov    $0x2,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <wait>:
SYSCALL(wait)
 61e:	b8 03 00 00 00       	mov    $0x3,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <pipe>:
SYSCALL(pipe)
 626:	b8 04 00 00 00       	mov    $0x4,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <read>:
SYSCALL(read)
 62e:	b8 05 00 00 00       	mov    $0x5,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <write>:
SYSCALL(write)
 636:	b8 10 00 00 00       	mov    $0x10,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <close>:
SYSCALL(close)
 63e:	b8 15 00 00 00       	mov    $0x15,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    

00000646 <kill>:
SYSCALL(kill)
 646:	b8 06 00 00 00       	mov    $0x6,%eax
 64b:	cd 40                	int    $0x40
 64d:	c3                   	ret    

0000064e <exec>:
SYSCALL(exec)
 64e:	b8 07 00 00 00       	mov    $0x7,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <open>:
SYSCALL(open)
 656:	b8 0f 00 00 00       	mov    $0xf,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <mknod>:
SYSCALL(mknod)
 65e:	b8 11 00 00 00       	mov    $0x11,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <unlink>:
SYSCALL(unlink)
 666:	b8 12 00 00 00       	mov    $0x12,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <fstat>:
SYSCALL(fstat)
 66e:	b8 08 00 00 00       	mov    $0x8,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    

00000676 <link>:
SYSCALL(link)
 676:	b8 13 00 00 00       	mov    $0x13,%eax
 67b:	cd 40                	int    $0x40
 67d:	c3                   	ret    

0000067e <mkdir>:
SYSCALL(mkdir)
 67e:	b8 14 00 00 00       	mov    $0x14,%eax
 683:	cd 40                	int    $0x40
 685:	c3                   	ret    

00000686 <chdir>:
SYSCALL(chdir)
 686:	b8 09 00 00 00       	mov    $0x9,%eax
 68b:	cd 40                	int    $0x40
 68d:	c3                   	ret    

0000068e <dup>:
SYSCALL(dup)
 68e:	b8 0a 00 00 00       	mov    $0xa,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <getpid>:
SYSCALL(getpid)
 696:	b8 0b 00 00 00       	mov    $0xb,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <sbrk>:
SYSCALL(sbrk)
 69e:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <sleep>:
SYSCALL(sleep)
 6a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <uptime>:
SYSCALL(uptime)
 6ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <clone>:
SYSCALL(clone)
 6b6:	b8 16 00 00 00       	mov    $0x16,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <join>:
SYSCALL(join)
 6be:	b8 17 00 00 00       	mov    $0x17,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    
 6c6:	66 90                	xchg   %ax,%ax
 6c8:	66 90                	xchg   %ax,%ax
 6ca:	66 90                	xchg   %ax,%ax
 6cc:	66 90                	xchg   %ax,%ax
 6ce:	66 90                	xchg   %ax,%ax

000006d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 3c             	sub    $0x3c,%esp
 6d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6dc:	89 d1                	mov    %edx,%ecx
{
 6de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6e1:	85 d2                	test   %edx,%edx
 6e3:	0f 89 7f 00 00 00    	jns    768 <printint+0x98>
 6e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ed:	74 79                	je     768 <printint+0x98>
    neg = 1;
 6ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6f8:	31 db                	xor    %ebx,%ebx
 6fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 cf                	mov    %ecx,%edi
 706:	f7 75 c4             	divl   -0x3c(%ebp)
 709:	0f b6 92 28 0c 00 00 	movzbl 0xc28(%edx),%edx
 710:	89 45 c0             	mov    %eax,-0x40(%ebp)
 713:	89 d8                	mov    %ebx,%eax
 715:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 718:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 71b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 71e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 721:	76 dd                	jbe    700 <printint+0x30>
  if(neg)
 723:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 726:	85 c9                	test   %ecx,%ecx
 728:	74 0c                	je     736 <printint+0x66>
    buf[i++] = '-';
 72a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 72f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 731:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 736:	8b 7d b8             	mov    -0x48(%ebp),%edi
 739:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 73d:	eb 07                	jmp    746 <printint+0x76>
 73f:	90                   	nop
    putc(fd, buf[i]);
 740:	0f b6 13             	movzbl (%ebx),%edx
 743:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 746:	83 ec 04             	sub    $0x4,%esp
 749:	88 55 d7             	mov    %dl,-0x29(%ebp)
 74c:	6a 01                	push   $0x1
 74e:	56                   	push   %esi
 74f:	57                   	push   %edi
 750:	e8 e1 fe ff ff       	call   636 <write>
  while(--i >= 0)
 755:	83 c4 10             	add    $0x10,%esp
 758:	39 de                	cmp    %ebx,%esi
 75a:	75 e4                	jne    740 <printint+0x70>
}
 75c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75f:	5b                   	pop    %ebx
 760:	5e                   	pop    %esi
 761:	5f                   	pop    %edi
 762:	5d                   	pop    %ebp
 763:	c3                   	ret    
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 768:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 76f:	eb 87                	jmp    6f8 <printint+0x28>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 789:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 78c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 13             	movzbl (%ebx),%edx
 792:	84 d2                	test   %dl,%dl
 794:	74 6a                	je     800 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 796:	8d 45 10             	lea    0x10(%ebp),%eax
 799:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 79c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 79f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7a4:	eb 36                	jmp    7dc <printf+0x5c>
 7a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
 7b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	74 15                	je     7d2 <printf+0x52>
  write(fd, &c, 1);
 7bd:	83 ec 04             	sub    $0x4,%esp
 7c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7c3:	6a 01                	push   $0x1
 7c5:	57                   	push   %edi
 7c6:	56                   	push   %esi
 7c7:	e8 6a fe ff ff       	call   636 <write>
 7cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7d2:	0f b6 13             	movzbl (%ebx),%edx
 7d5:	83 c3 01             	add    $0x1,%ebx
 7d8:	84 d2                	test   %dl,%dl
 7da:	74 24                	je     800 <printf+0x80>
    c = fmt[i] & 0xff;
 7dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7df:	85 c9                	test   %ecx,%ecx
 7e1:	74 cd                	je     7b0 <printf+0x30>
      }
    } else if(state == '%'){
 7e3:	83 f9 25             	cmp    $0x25,%ecx
 7e6:	75 ea                	jne    7d2 <printf+0x52>
      if(c == 'd'){
 7e8:	83 f8 25             	cmp    $0x25,%eax
 7eb:	0f 84 07 01 00 00    	je     8f8 <printf+0x178>
 7f1:	83 e8 63             	sub    $0x63,%eax
 7f4:	83 f8 15             	cmp    $0x15,%eax
 7f7:	77 17                	ja     810 <printf+0x90>
 7f9:	ff 24 85 d0 0b 00 00 	jmp    *0xbd0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 800:	8d 65 f4             	lea    -0xc(%ebp),%esp
 803:	5b                   	pop    %ebx
 804:	5e                   	pop    %esi
 805:	5f                   	pop    %edi
 806:	5d                   	pop    %ebp
 807:	c3                   	ret    
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 816:	6a 01                	push   $0x1
 818:	57                   	push   %edi
 819:	56                   	push   %esi
 81a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 81e:	e8 13 fe ff ff       	call   636 <write>
        putc(fd, c);
 823:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 827:	83 c4 0c             	add    $0xc,%esp
 82a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 82d:	6a 01                	push   $0x1
 82f:	57                   	push   %edi
 830:	56                   	push   %esi
 831:	e8 00 fe ff ff       	call   636 <write>
        putc(fd, c);
 836:	83 c4 10             	add    $0x10,%esp
      state = 0;
 839:	31 c9                	xor    %ecx,%ecx
 83b:	eb 95                	jmp    7d2 <printf+0x52>
 83d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 10 00 00 00       	mov    $0x10,%ecx
 848:	6a 00                	push   $0x0
 84a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84d:	8b 10                	mov    (%eax),%edx
 84f:	89 f0                	mov    %esi,%eax
 851:	e8 7a fe ff ff       	call   6d0 <printint>
        ap++;
 856:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 85a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 85d:	31 c9                	xor    %ecx,%ecx
 85f:	e9 6e ff ff ff       	jmp    7d2 <printf+0x52>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 868:	8b 45 d0             	mov    -0x30(%ebp),%eax
 86b:	8b 10                	mov    (%eax),%edx
        ap++;
 86d:	83 c0 04             	add    $0x4,%eax
 870:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 873:	85 d2                	test   %edx,%edx
 875:	0f 84 8d 00 00 00    	je     908 <printf+0x188>
        while(*s != 0){
 87b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 87e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 880:	84 c0                	test   %al,%al
 882:	0f 84 4a ff ff ff    	je     7d2 <printf+0x52>
 888:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 88b:	89 d3                	mov    %edx,%ebx
 88d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
          s++;
 893:	83 c3 01             	add    $0x1,%ebx
 896:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 899:	6a 01                	push   $0x1
 89b:	57                   	push   %edi
 89c:	56                   	push   %esi
 89d:	e8 94 fd ff ff       	call   636 <write>
        while(*s != 0){
 8a2:	0f b6 03             	movzbl (%ebx),%eax
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	84 c0                	test   %al,%al
 8aa:	75 e4                	jne    890 <printf+0x110>
      state = 0;
 8ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8af:	31 c9                	xor    %ecx,%ecx
 8b1:	e9 1c ff ff ff       	jmp    7d2 <printf+0x52>
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8c8:	6a 01                	push   $0x1
 8ca:	e9 7b ff ff ff       	jmp    84a <printf+0xca>
 8cf:	90                   	nop
        putc(fd, *ap);
 8d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8d8:	6a 01                	push   $0x1
 8da:	57                   	push   %edi
 8db:	56                   	push   %esi
        putc(fd, *ap);
 8dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8df:	e8 52 fd ff ff       	call   636 <write>
        ap++;
 8e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8eb:	31 c9                	xor    %ecx,%ecx
 8ed:	e9 e0 fe ff ff       	jmp    7d2 <printf+0x52>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8fb:	83 ec 04             	sub    $0x4,%esp
 8fe:	e9 2a ff ff ff       	jmp    82d <printf+0xad>
 903:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 907:	90                   	nop
          s = "(null)";
 908:	ba c9 0b 00 00       	mov    $0xbc9,%edx
        while(*s != 0){
 90d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 910:	b8 28 00 00 00       	mov    $0x28,%eax
 915:	89 d3                	mov    %edx,%ebx
 917:	e9 74 ff ff ff       	jmp    890 <printf+0x110>
 91c:	66 90                	xchg   %ax,%ax
 91e:	66 90                	xchg   %ax,%ax

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 bc 0f 00 00       	mov    0xfbc,%eax
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 92e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 938:	89 c2                	mov    %eax,%edx
 93a:	8b 00                	mov    (%eax),%eax
 93c:	39 ca                	cmp    %ecx,%edx
 93e:	73 30                	jae    970 <free+0x50>
 940:	39 c1                	cmp    %eax,%ecx
 942:	72 04                	jb     948 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 944:	39 c2                	cmp    %eax,%edx
 946:	72 f0                	jb     938 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	74 30                	je     982 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 952:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 955:	8b 42 04             	mov    0x4(%edx),%eax
 958:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 95b:	39 f1                	cmp    %esi,%ecx
 95d:	74 3a                	je     999 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 95f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 961:	5b                   	pop    %ebx
  freep = p;
 962:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
}
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 970:	39 c2                	cmp    %eax,%edx
 972:	72 c4                	jb     938 <free+0x18>
 974:	39 c1                	cmp    %eax,%ecx
 976:	73 c0                	jae    938 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 978:	8b 73 fc             	mov    -0x4(%ebx),%esi
 97b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 97e:	39 f8                	cmp    %edi,%eax
 980:	75 d0                	jne    952 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 982:	03 70 04             	add    0x4(%eax),%esi
 985:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 988:	8b 02                	mov    (%edx),%eax
 98a:	8b 00                	mov    (%eax),%eax
 98c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 98f:	8b 42 04             	mov    0x4(%edx),%eax
 992:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 995:	39 f1                	cmp    %esi,%ecx
 997:	75 c6                	jne    95f <free+0x3f>
    p->s.size += bp->s.size;
 999:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 99c:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
    p->s.size += bp->s.size;
 9a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9a8:	89 0a                	mov    %ecx,(%edx)
}
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9bc:	8b 3d bc 0f 00 00    	mov    0xfbc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c2:	8d 70 07             	lea    0x7(%eax),%esi
 9c5:	c1 ee 03             	shr    $0x3,%esi
 9c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9cb:	85 ff                	test   %edi,%edi
 9cd:	0f 84 9d 00 00 00    	je     a70 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9d8:	39 f1                	cmp    %esi,%ecx
 9da:	73 6a                	jae    a46 <malloc+0x96>
 9dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9e1:	39 de                	cmp    %ebx,%esi
 9e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9f0:	eb 17                	jmp    a09 <malloc+0x59>
 9f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9fa:	8b 48 04             	mov    0x4(%eax),%ecx
 9fd:	39 f1                	cmp    %esi,%ecx
 9ff:	73 4f                	jae    a50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a01:	8b 3d bc 0f 00 00    	mov    0xfbc,%edi
 a07:	89 c2                	mov    %eax,%edx
 a09:	39 d7                	cmp    %edx,%edi
 a0b:	75 eb                	jne    9f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a0d:	83 ec 0c             	sub    $0xc,%esp
 a10:	ff 75 e4             	push   -0x1c(%ebp)
 a13:	e8 86 fc ff ff       	call   69e <sbrk>
  if(p == (char*)-1)
 a18:	83 c4 10             	add    $0x10,%esp
 a1b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a1e:	74 1c                	je     a3c <malloc+0x8c>
  hp->s.size = nu;
 a20:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a23:	83 ec 0c             	sub    $0xc,%esp
 a26:	83 c0 08             	add    $0x8,%eax
 a29:	50                   	push   %eax
 a2a:	e8 f1 fe ff ff       	call   920 <free>
  return freep;
 a2f:	8b 15 bc 0f 00 00    	mov    0xfbc,%edx
      if((p = morecore(nunits)) == 0)
 a35:	83 c4 10             	add    $0x10,%esp
 a38:	85 d2                	test   %edx,%edx
 a3a:	75 bc                	jne    9f8 <malloc+0x48>
        return 0;
  }
}
 a3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a3f:	31 c0                	xor    %eax,%eax
}
 a41:	5b                   	pop    %ebx
 a42:	5e                   	pop    %esi
 a43:	5f                   	pop    %edi
 a44:	5d                   	pop    %ebp
 a45:	c3                   	ret    
    if(p->s.size >= nunits){
 a46:	89 d0                	mov    %edx,%eax
 a48:	89 fa                	mov    %edi,%edx
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a50:	39 ce                	cmp    %ecx,%esi
 a52:	74 4c                	je     aa0 <malloc+0xf0>
        p->s.size -= nunits;
 a54:	29 f1                	sub    %esi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a5f:	89 15 bc 0f 00 00    	mov    %edx,0xfbc
}
 a65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a68:	83 c0 08             	add    $0x8,%eax
}
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a70:	c7 05 bc 0f 00 00 c0 	movl   $0xfc0,0xfbc
 a77:	0f 00 00 
    base.s.size = 0;
 a7a:	bf c0 0f 00 00       	mov    $0xfc0,%edi
    base.s.ptr = freep = prevp = &base;
 a7f:	c7 05 c0 0f 00 00 c0 	movl   $0xfc0,0xfc0
 a86:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a89:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a8b:	c7 05 c4 0f 00 00 00 	movl   $0x0,0xfc4
 a92:	00 00 00 
    if(p->s.size >= nunits){
 a95:	e9 42 ff ff ff       	jmp    9dc <malloc+0x2c>
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 aa0:	8b 08                	mov    (%eax),%ecx
 aa2:	89 0a                	mov    %ecx,(%edx)
 aa4:	eb b9                	jmp    a5f <malloc+0xaf>
