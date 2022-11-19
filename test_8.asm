
_test_8:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
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
  14:	e8 c0 05 00 00       	call   5d9 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 74 0e 00 00       	mov    %eax,0xe74
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 c5 08 00 00       	call   8f0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 c0 00 00 00    	je     f6 <main+0xf6>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c7                	mov    %eax,%edi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   else
     stack = p;

   int arg1 = 42, arg2 = 24;
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  4b:	8d 45 e0             	lea    -0x20(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 dc             	lea    -0x24(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 8d 05 00 00       	call   5f9 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 64                	jle    d9 <main+0xd9>

   sleep(250);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 fa 00 00 00       	push   $0xfa
  7d:	e8 67 05 00 00       	call   5e9 <sleep>
   assert(wait() == -1);
  82:	e8 da 04 00 00       	call   561 <wait>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	83 c0 01             	add    $0x1,%eax
  8d:	0f 84 80 00 00 00    	je     113 <main+0x113>
  93:	6a 28                	push   $0x28
  95:	68 e8 09 00 00       	push   $0x9e8
  9a:	68 f1 09 00 00       	push   $0x9f1
  9f:	6a 01                	push   $0x1
  a1:	e8 1a 06 00 00       	call   6c0 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 54 0a 00 00       	push   $0xa54
   assert(clone_pid > 0);
  ae:	68 04 0a 00 00       	push   $0xa04
  b3:	6a 01                	push   $0x1
  b5:	e8 06 06 00 00       	call   6c0 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 18 0a 00 00       	push   $0xa18
  c1:	6a 01                	push   $0x1
  c3:	e8 f8 05 00 00       	call   6c0 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 74 0e 00 00    	push   0xe74
  cf:	e8 b5 04 00 00       	call   589 <kill>
  d4:	e8 80 04 00 00       	call   559 <exit>
  d9:	6a 25                	push   $0x25
  db:	68 e8 09 00 00       	push   $0x9e8
  e0:	68 f1 09 00 00       	push   $0x9f1
  e5:	6a 01                	push   $0x1
  e7:	e8 d4 05 00 00       	call   6c0 <printf>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	68 46 0a 00 00       	push   $0xa46
  f4:	eb b8                	jmp    ae <main+0xae>
   assert(p != NULL);
  f6:	6a 1d                	push   $0x1d
  f8:	68 e8 09 00 00       	push   $0x9e8
  fd:	68 f1 09 00 00       	push   $0x9f1
 102:	6a 01                	push   $0x1
 104:	e8 b7 05 00 00       	call   6c0 <printf>
 109:	83 c4 0c             	add    $0xc,%esp
 10c:	68 3c 0a 00 00       	push   $0xa3c
 111:	eb 9b                	jmp    ae <main+0xae>

   void *join_stack;
   int join_pid = join(&join_stack);
 113:	83 ec 0c             	sub    $0xc,%esp
 116:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 119:	50                   	push   %eax
 11a:	e8 e2 04 00 00       	call   601 <join>
   assert(join_pid == clone_pid);
 11f:	83 c4 10             	add    $0x10,%esp
 122:	39 c6                	cmp    %eax,%esi
 124:	74 20                	je     146 <main+0x146>
 126:	6a 2c                	push   $0x2c
 128:	68 e8 09 00 00       	push   $0x9e8
 12d:	68 f1 09 00 00       	push   $0x9f1
 132:	6a 01                	push   $0x1
 134:	e8 87 05 00 00       	call   6c0 <printf>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	68 61 0a 00 00       	push   $0xa61
 141:	e9 68 ff ff ff       	jmp    ae <main+0xae>
   assert(stack == join_stack);
 146:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 149:	74 20                	je     16b <main+0x16b>
 14b:	6a 2d                	push   $0x2d
 14d:	68 e8 09 00 00       	push   $0x9e8
 152:	68 f1 09 00 00       	push   $0x9f1
 157:	6a 01                	push   $0x1
 159:	e8 62 05 00 00       	call   6c0 <printf>
 15e:	83 c4 0c             	add    $0xc,%esp
 161:	68 77 0a 00 00       	push   $0xa77
 166:	e9 43 ff ff ff       	jmp    ae <main+0xae>
   assert(global == 2);
 16b:	83 3d 70 0e 00 00 02 	cmpl   $0x2,0xe70
 172:	74 20                	je     194 <main+0x194>
 174:	6a 2e                	push   $0x2e
 176:	68 e8 09 00 00       	push   $0x9e8
 17b:	68 f1 09 00 00       	push   $0x9f1
 180:	6a 01                	push   $0x1
 182:	e8 39 05 00 00       	call   6c0 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 8b 0a 00 00       	push   $0xa8b
 18f:	e9 1a ff ff ff       	jmp    ae <main+0xae>

   printf(1, "TEST PASSED\n");
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	68 97 0a 00 00       	push   $0xa97
 19b:	6a 01                	push   $0x1
 19d:	e8 1e 05 00 00       	call   6c0 <printf>
   free(p);
 1a2:	89 1c 24             	mov    %ebx,(%esp)
 1a5:	e8 b6 06 00 00       	call   860 <free>
   exit();
 1aa:	e8 aa 03 00 00       	call   559 <exit>
 1af:	90                   	nop

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1bb:	8b 45 08             	mov    0x8(%ebp),%eax
 1be:	83 38 2a             	cmpl   $0x2a,(%eax)
 1c1:	75 75                	jne    238 <worker+0x88>
   assert(tmp2 == 24);
 1c3:	83 fa 18             	cmp    $0x18,%edx
 1c6:	75 2a                	jne    1f2 <worker+0x42>
   assert(global == 1);
 1c8:	83 3d 70 0e 00 00 01 	cmpl   $0x1,0xe70
 1cf:	0f 84 80 00 00 00    	je     255 <worker+0xa5>
 1d5:	6a 3b                	push   $0x3b
 1d7:	68 e8 09 00 00       	push   $0x9e8
 1dc:	68 f1 09 00 00       	push   $0x9f1
 1e1:	6a 01                	push   $0x1
 1e3:	e8 d8 04 00 00       	call   6c0 <printf>
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	68 30 0a 00 00       	push   $0xa30
 1f0:	eb 1b                	jmp    20d <worker+0x5d>
   assert(tmp2 == 24);
 1f2:	6a 3a                	push   $0x3a
 1f4:	68 e8 09 00 00       	push   $0x9e8
 1f9:	68 f1 09 00 00       	push   $0x9f1
 1fe:	6a 01                	push   $0x1
 200:	e8 bb 04 00 00       	call   6c0 <printf>
 205:	83 c4 0c             	add    $0xc,%esp
 208:	68 25 0a 00 00       	push   $0xa25
 20d:	68 04 0a 00 00       	push   $0xa04
 212:	6a 01                	push   $0x1
 214:	e8 a7 04 00 00       	call   6c0 <printf>
 219:	58                   	pop    %eax
 21a:	5a                   	pop    %edx
 21b:	68 18 0a 00 00       	push   $0xa18
 220:	6a 01                	push   $0x1
 222:	e8 99 04 00 00       	call   6c0 <printf>
 227:	59                   	pop    %ecx
 228:	ff 35 74 0e 00 00    	push   0xe74
 22e:	e8 56 03 00 00       	call   589 <kill>
 233:	e8 21 03 00 00       	call   559 <exit>
   assert(tmp1 == 42);
 238:	6a 39                	push   $0x39
 23a:	68 e8 09 00 00       	push   $0x9e8
 23f:	68 f1 09 00 00       	push   $0x9f1
 244:	6a 01                	push   $0x1
 246:	e8 75 04 00 00       	call   6c0 <printf>
 24b:	83 c4 0c             	add    $0xc,%esp
 24e:	68 f9 09 00 00       	push   $0x9f9
 253:	eb b8                	jmp    20d <worker+0x5d>
   global++;
 255:	c7 05 70 0e 00 00 02 	movl   $0x2,0xe70
 25c:	00 00 00 
   exit();
 25f:	e8 f5 02 00 00       	call   559 <exit>
 264:	66 90                	xchg   %ax,%ax
 266:	66 90                	xchg   %ax,%ax
 268:	66 90                	xchg   %ax,%ax
 26a:	66 90                	xchg   %ax,%ax
 26c:	66 90                	xchg   %ax,%ax
 26e:	66 90                	xchg   %ax,%ax

00000270 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 270:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 271:	31 c0                	xor    %eax,%eax
{
 273:	89 e5                	mov    %esp,%ebp
 275:	53                   	push   %ebx
 276:	8b 4d 08             	mov    0x8(%ebp),%ecx
 279:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 280:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 284:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 287:	83 c0 01             	add    $0x1,%eax
 28a:	84 d2                	test   %dl,%dl
 28c:	75 f2                	jne    280 <strcpy+0x10>
    ;
  return os;
}
 28e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 291:	89 c8                	mov    %ecx,%eax
 293:	c9                   	leave  
 294:	c3                   	ret    
 295:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	53                   	push   %ebx
 2a4:	8b 55 08             	mov    0x8(%ebp),%edx
 2a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2aa:	0f b6 02             	movzbl (%edx),%eax
 2ad:	84 c0                	test   %al,%al
 2af:	75 17                	jne    2c8 <strcmp+0x28>
 2b1:	eb 3a                	jmp    2ed <strcmp+0x4d>
 2b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b7:	90                   	nop
 2b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2bc:	83 c2 01             	add    $0x1,%edx
 2bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2c2:	84 c0                	test   %al,%al
 2c4:	74 1a                	je     2e0 <strcmp+0x40>
    p++, q++;
 2c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2c8:	0f b6 19             	movzbl (%ecx),%ebx
 2cb:	38 c3                	cmp    %al,%bl
 2cd:	74 e9                	je     2b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2cf:	29 d8                	sub    %ebx,%eax
}
 2d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2d4:	c9                   	leave  
 2d5:	c3                   	ret    
 2d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2e4:	31 c0                	xor    %eax,%eax
 2e6:	29 d8                	sub    %ebx,%eax
}
 2e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2eb:	c9                   	leave  
 2ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ed:	0f b6 19             	movzbl (%ecx),%ebx
 2f0:	31 c0                	xor    %eax,%eax
 2f2:	eb db                	jmp    2cf <strcmp+0x2f>
 2f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ff:	90                   	nop

00000300 <strlen>:

uint
strlen(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 306:	80 3a 00             	cmpb   $0x0,(%edx)
 309:	74 15                	je     320 <strlen+0x20>
 30b:	31 c0                	xor    %eax,%eax
 30d:	8d 76 00             	lea    0x0(%esi),%esi
 310:	83 c0 01             	add    $0x1,%eax
 313:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 317:	89 c1                	mov    %eax,%ecx
 319:	75 f5                	jne    310 <strlen+0x10>
    ;
  return n;
}
 31b:	89 c8                	mov    %ecx,%eax
 31d:	5d                   	pop    %ebp
 31e:	c3                   	ret    
 31f:	90                   	nop
  for(n = 0; s[n]; n++)
 320:	31 c9                	xor    %ecx,%ecx
}
 322:	5d                   	pop    %ebp
 323:	89 c8                	mov    %ecx,%eax
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <memset>:

void*
memset(void *dst, int c, uint n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 337:	8b 4d 10             	mov    0x10(%ebp),%ecx
 33a:	8b 45 0c             	mov    0xc(%ebp),%eax
 33d:	89 d7                	mov    %edx,%edi
 33f:	fc                   	cld    
 340:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 342:	8b 7d fc             	mov    -0x4(%ebp),%edi
 345:	89 d0                	mov    %edx,%eax
 347:	c9                   	leave  
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <strchr>:

char*
strchr(const char *s, char c)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 35a:	0f b6 10             	movzbl (%eax),%edx
 35d:	84 d2                	test   %dl,%dl
 35f:	75 12                	jne    373 <strchr+0x23>
 361:	eb 1d                	jmp    380 <strchr+0x30>
 363:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 367:	90                   	nop
 368:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 36c:	83 c0 01             	add    $0x1,%eax
 36f:	84 d2                	test   %dl,%dl
 371:	74 0d                	je     380 <strchr+0x30>
    if(*s == c)
 373:	38 d1                	cmp    %dl,%cl
 375:	75 f1                	jne    368 <strchr+0x18>
      return (char*)s;
  return 0;
}
 377:	5d                   	pop    %ebp
 378:	c3                   	ret    
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 380:	31 c0                	xor    %eax,%eax
}
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <gets>:

char*
gets(char *buf, int max)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 395:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 398:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 399:	31 db                	xor    %ebx,%ebx
{
 39b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 39e:	eb 27                	jmp    3c7 <gets+0x37>
    cc = read(0, &c, 1);
 3a0:	83 ec 04             	sub    $0x4,%esp
 3a3:	6a 01                	push   $0x1
 3a5:	57                   	push   %edi
 3a6:	6a 00                	push   $0x0
 3a8:	e8 c4 01 00 00       	call   571 <read>
    if(cc < 1)
 3ad:	83 c4 10             	add    $0x10,%esp
 3b0:	85 c0                	test   %eax,%eax
 3b2:	7e 1d                	jle    3d1 <gets+0x41>
      break;
    buf[i++] = c;
 3b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3bf:	3c 0a                	cmp    $0xa,%al
 3c1:	74 1d                	je     3e0 <gets+0x50>
 3c3:	3c 0d                	cmp    $0xd,%al
 3c5:	74 19                	je     3e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 3c7:	89 de                	mov    %ebx,%esi
 3c9:	83 c3 01             	add    $0x1,%ebx
 3cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3cf:	7c cf                	jl     3a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3d1:	8b 45 08             	mov    0x8(%ebp),%eax
 3d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3db:	5b                   	pop    %ebx
 3dc:	5e                   	pop    %esi
 3dd:	5f                   	pop    %edi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    
  buf[i] = '\0';
 3e0:	8b 45 08             	mov    0x8(%ebp),%eax
 3e3:	89 de                	mov    %ebx,%esi
 3e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ec:	5b                   	pop    %ebx
 3ed:	5e                   	pop    %esi
 3ee:	5f                   	pop    %edi
 3ef:	5d                   	pop    %ebp
 3f0:	c3                   	ret    
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <stat>:

int
stat(const char *n, struct stat *st)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	56                   	push   %esi
 404:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 405:	83 ec 08             	sub    $0x8,%esp
 408:	6a 00                	push   $0x0
 40a:	ff 75 08             	push   0x8(%ebp)
 40d:	e8 87 01 00 00       	call   599 <open>
  if(fd < 0)
 412:	83 c4 10             	add    $0x10,%esp
 415:	85 c0                	test   %eax,%eax
 417:	78 27                	js     440 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 419:	83 ec 08             	sub    $0x8,%esp
 41c:	ff 75 0c             	push   0xc(%ebp)
 41f:	89 c3                	mov    %eax,%ebx
 421:	50                   	push   %eax
 422:	e8 8a 01 00 00       	call   5b1 <fstat>
  close(fd);
 427:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 42a:	89 c6                	mov    %eax,%esi
  close(fd);
 42c:	e8 50 01 00 00       	call   581 <close>
  return r;
 431:	83 c4 10             	add    $0x10,%esp
}
 434:	8d 65 f8             	lea    -0x8(%ebp),%esp
 437:	89 f0                	mov    %esi,%eax
 439:	5b                   	pop    %ebx
 43a:	5e                   	pop    %esi
 43b:	5d                   	pop    %ebp
 43c:	c3                   	ret    
 43d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 440:	be ff ff ff ff       	mov    $0xffffffff,%esi
 445:	eb ed                	jmp    434 <stat+0x34>
 447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44e:	66 90                	xchg   %ax,%ax

00000450 <atoi>:

int
atoi(const char *s)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 457:	0f be 02             	movsbl (%edx),%eax
 45a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 45d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 460:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 465:	77 1e                	ja     485 <atoi+0x35>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 470:	83 c2 01             	add    $0x1,%edx
 473:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 476:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 47a:	0f be 02             	movsbl (%edx),%eax
 47d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 480:	80 fb 09             	cmp    $0x9,%bl
 483:	76 eb                	jbe    470 <atoi+0x20>
  return n;
}
 485:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 488:	89 c8                	mov    %ecx,%eax
 48a:	c9                   	leave  
 48b:	c3                   	ret    
 48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	8b 45 10             	mov    0x10(%ebp),%eax
 497:	8b 55 08             	mov    0x8(%ebp),%edx
 49a:	56                   	push   %esi
 49b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 49e:	85 c0                	test   %eax,%eax
 4a0:	7e 13                	jle    4b5 <memmove+0x25>
 4a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4a4:	89 d7                	mov    %edx,%edi
 4a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4b1:	39 f8                	cmp    %edi,%eax
 4b3:	75 fb                	jne    4b0 <memmove+0x20>
  return vdst;
}
 4b5:	5e                   	pop    %esi
 4b6:	89 d0                	mov    %edx,%eax
 4b8:	5f                   	pop    %edi
 4b9:	5d                   	pop    %ebp
 4ba:	c3                   	ret    
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 4c7:	68 00 10 00 00       	push   $0x1000
 4cc:	e8 1f 04 00 00       	call   8f0 <malloc>
  // if((int) stack % 4096 != 0){
  //   stack = stack + (4096 - (int) stack % 4096);
  // }
  int rc = clone(start_routine, arg1, arg2, stack);
 4d1:	50                   	push   %eax
 4d2:	ff 75 10             	push   0x10(%ebp)
 4d5:	ff 75 0c             	push   0xc(%ebp)
 4d8:	ff 75 08             	push   0x8(%ebp)
 4db:	e8 19 01 00 00       	call   5f9 <clone>
  printf(1, " thread create %d \n", rc);
 4e0:	83 c4 1c             	add    $0x1c,%esp
 4e3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 4e4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 4e6:	68 a4 0a 00 00       	push   $0xaa4
 4eb:	6a 01                	push   $0x1
 4ed:	e8 ce 01 00 00       	call   6c0 <printf>
  return rc;
}
 4f2:	89 d8                	mov    %ebx,%eax
 4f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f7:	c9                   	leave  
 4f8:	c3                   	ret    
 4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000500 <thread_join>:

int
thread_join(){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 505:	83 ec 0c             	sub    $0xc,%esp
 508:	6a 04                	push   $0x4
 50a:	e8 e1 03 00 00       	call   8f0 <malloc>
  int rc = join(stack);
 50f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 512:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 514:	e8 e8 00 00 00       	call   601 <join>
 519:	89 c6                	mov    %eax,%esi
  free(*stack);
 51b:	58                   	pop    %eax
 51c:	ff 33                	push   (%ebx)
 51e:	e8 3d 03 00 00       	call   860 <free>
  return rc;
}
 523:	8d 65 f8             	lea    -0x8(%ebp),%esp
 526:	89 f0                	mov    %esi,%eax
 528:	5b                   	pop    %ebx
 529:	5e                   	pop    %esi
 52a:	5d                   	pop    %ebp
 52b:	c3                   	ret    
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 530:	c3                   	ret    
 531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 538:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53f:	90                   	nop

00000540 <lock_release>:
 540:	c3                   	ret    
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <lock_init>:
 550:	c3                   	ret    

00000551 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 551:	b8 01 00 00 00       	mov    $0x1,%eax
 556:	cd 40                	int    $0x40
 558:	c3                   	ret    

00000559 <exit>:
SYSCALL(exit)
 559:	b8 02 00 00 00       	mov    $0x2,%eax
 55e:	cd 40                	int    $0x40
 560:	c3                   	ret    

00000561 <wait>:
SYSCALL(wait)
 561:	b8 03 00 00 00       	mov    $0x3,%eax
 566:	cd 40                	int    $0x40
 568:	c3                   	ret    

00000569 <pipe>:
SYSCALL(pipe)
 569:	b8 04 00 00 00       	mov    $0x4,%eax
 56e:	cd 40                	int    $0x40
 570:	c3                   	ret    

00000571 <read>:
SYSCALL(read)
 571:	b8 05 00 00 00       	mov    $0x5,%eax
 576:	cd 40                	int    $0x40
 578:	c3                   	ret    

00000579 <write>:
SYSCALL(write)
 579:	b8 10 00 00 00       	mov    $0x10,%eax
 57e:	cd 40                	int    $0x40
 580:	c3                   	ret    

00000581 <close>:
SYSCALL(close)
 581:	b8 15 00 00 00       	mov    $0x15,%eax
 586:	cd 40                	int    $0x40
 588:	c3                   	ret    

00000589 <kill>:
SYSCALL(kill)
 589:	b8 06 00 00 00       	mov    $0x6,%eax
 58e:	cd 40                	int    $0x40
 590:	c3                   	ret    

00000591 <exec>:
SYSCALL(exec)
 591:	b8 07 00 00 00       	mov    $0x7,%eax
 596:	cd 40                	int    $0x40
 598:	c3                   	ret    

00000599 <open>:
SYSCALL(open)
 599:	b8 0f 00 00 00       	mov    $0xf,%eax
 59e:	cd 40                	int    $0x40
 5a0:	c3                   	ret    

000005a1 <mknod>:
SYSCALL(mknod)
 5a1:	b8 11 00 00 00       	mov    $0x11,%eax
 5a6:	cd 40                	int    $0x40
 5a8:	c3                   	ret    

000005a9 <unlink>:
SYSCALL(unlink)
 5a9:	b8 12 00 00 00       	mov    $0x12,%eax
 5ae:	cd 40                	int    $0x40
 5b0:	c3                   	ret    

000005b1 <fstat>:
SYSCALL(fstat)
 5b1:	b8 08 00 00 00       	mov    $0x8,%eax
 5b6:	cd 40                	int    $0x40
 5b8:	c3                   	ret    

000005b9 <link>:
SYSCALL(link)
 5b9:	b8 13 00 00 00       	mov    $0x13,%eax
 5be:	cd 40                	int    $0x40
 5c0:	c3                   	ret    

000005c1 <mkdir>:
SYSCALL(mkdir)
 5c1:	b8 14 00 00 00       	mov    $0x14,%eax
 5c6:	cd 40                	int    $0x40
 5c8:	c3                   	ret    

000005c9 <chdir>:
SYSCALL(chdir)
 5c9:	b8 09 00 00 00       	mov    $0x9,%eax
 5ce:	cd 40                	int    $0x40
 5d0:	c3                   	ret    

000005d1 <dup>:
SYSCALL(dup)
 5d1:	b8 0a 00 00 00       	mov    $0xa,%eax
 5d6:	cd 40                	int    $0x40
 5d8:	c3                   	ret    

000005d9 <getpid>:
SYSCALL(getpid)
 5d9:	b8 0b 00 00 00       	mov    $0xb,%eax
 5de:	cd 40                	int    $0x40
 5e0:	c3                   	ret    

000005e1 <sbrk>:
SYSCALL(sbrk)
 5e1:	b8 0c 00 00 00       	mov    $0xc,%eax
 5e6:	cd 40                	int    $0x40
 5e8:	c3                   	ret    

000005e9 <sleep>:
SYSCALL(sleep)
 5e9:	b8 0d 00 00 00       	mov    $0xd,%eax
 5ee:	cd 40                	int    $0x40
 5f0:	c3                   	ret    

000005f1 <uptime>:
SYSCALL(uptime)
 5f1:	b8 0e 00 00 00       	mov    $0xe,%eax
 5f6:	cd 40                	int    $0x40
 5f8:	c3                   	ret    

000005f9 <clone>:
SYSCALL(clone)
 5f9:	b8 16 00 00 00       	mov    $0x16,%eax
 5fe:	cd 40                	int    $0x40
 600:	c3                   	ret    

00000601 <join>:
SYSCALL(join)
 601:	b8 17 00 00 00       	mov    $0x17,%eax
 606:	cd 40                	int    $0x40
 608:	c3                   	ret    
 609:	66 90                	xchg   %ax,%ax
 60b:	66 90                	xchg   %ax,%ax
 60d:	66 90                	xchg   %ax,%ax
 60f:	90                   	nop

00000610 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 3c             	sub    $0x3c,%esp
 619:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 61c:	89 d1                	mov    %edx,%ecx
{
 61e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 621:	85 d2                	test   %edx,%edx
 623:	0f 89 7f 00 00 00    	jns    6a8 <printint+0x98>
 629:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 62d:	74 79                	je     6a8 <printint+0x98>
    neg = 1;
 62f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 636:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 638:	31 db                	xor    %ebx,%ebx
 63a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 63d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 640:	89 c8                	mov    %ecx,%eax
 642:	31 d2                	xor    %edx,%edx
 644:	89 cf                	mov    %ecx,%edi
 646:	f7 75 c4             	divl   -0x3c(%ebp)
 649:	0f b6 92 18 0b 00 00 	movzbl 0xb18(%edx),%edx
 650:	89 45 c0             	mov    %eax,-0x40(%ebp)
 653:	89 d8                	mov    %ebx,%eax
 655:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 658:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 65b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 65e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 661:	76 dd                	jbe    640 <printint+0x30>
  if(neg)
 663:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 666:	85 c9                	test   %ecx,%ecx
 668:	74 0c                	je     676 <printint+0x66>
    buf[i++] = '-';
 66a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 66f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 671:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 676:	8b 7d b8             	mov    -0x48(%ebp),%edi
 679:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 67d:	eb 07                	jmp    686 <printint+0x76>
 67f:	90                   	nop
    putc(fd, buf[i]);
 680:	0f b6 13             	movzbl (%ebx),%edx
 683:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 686:	83 ec 04             	sub    $0x4,%esp
 689:	88 55 d7             	mov    %dl,-0x29(%ebp)
 68c:	6a 01                	push   $0x1
 68e:	56                   	push   %esi
 68f:	57                   	push   %edi
 690:	e8 e4 fe ff ff       	call   579 <write>
  while(--i >= 0)
 695:	83 c4 10             	add    $0x10,%esp
 698:	39 de                	cmp    %ebx,%esi
 69a:	75 e4                	jne    680 <printint+0x70>
}
 69c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69f:	5b                   	pop    %ebx
 6a0:	5e                   	pop    %esi
 6a1:	5f                   	pop    %edi
 6a2:	5d                   	pop    %ebp
 6a3:	c3                   	ret    
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6af:	eb 87                	jmp    638 <printint+0x28>
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop

000006c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6cf:	0f b6 13             	movzbl (%ebx),%edx
 6d2:	84 d2                	test   %dl,%dl
 6d4:	74 6a                	je     740 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6d6:	8d 45 10             	lea    0x10(%ebp),%eax
 6d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6e4:	eb 36                	jmp    71c <printf+0x5c>
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
 6f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	74 15                	je     712 <printf+0x52>
  write(fd, &c, 1);
 6fd:	83 ec 04             	sub    $0x4,%esp
 700:	88 55 e7             	mov    %dl,-0x19(%ebp)
 703:	6a 01                	push   $0x1
 705:	57                   	push   %edi
 706:	56                   	push   %esi
 707:	e8 6d fe ff ff       	call   579 <write>
 70c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 70f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 712:	0f b6 13             	movzbl (%ebx),%edx
 715:	83 c3 01             	add    $0x1,%ebx
 718:	84 d2                	test   %dl,%dl
 71a:	74 24                	je     740 <printf+0x80>
    c = fmt[i] & 0xff;
 71c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 71f:	85 c9                	test   %ecx,%ecx
 721:	74 cd                	je     6f0 <printf+0x30>
      }
    } else if(state == '%'){
 723:	83 f9 25             	cmp    $0x25,%ecx
 726:	75 ea                	jne    712 <printf+0x52>
      if(c == 'd'){
 728:	83 f8 25             	cmp    $0x25,%eax
 72b:	0f 84 07 01 00 00    	je     838 <printf+0x178>
 731:	83 e8 63             	sub    $0x63,%eax
 734:	83 f8 15             	cmp    $0x15,%eax
 737:	77 17                	ja     750 <printf+0x90>
 739:	ff 24 85 c0 0a 00 00 	jmp    *0xac0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 740:	8d 65 f4             	lea    -0xc(%ebp),%esp
 743:	5b                   	pop    %ebx
 744:	5e                   	pop    %esi
 745:	5f                   	pop    %edi
 746:	5d                   	pop    %ebp
 747:	c3                   	ret    
 748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop
  write(fd, &c, 1);
 750:	83 ec 04             	sub    $0x4,%esp
 753:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 756:	6a 01                	push   $0x1
 758:	57                   	push   %edi
 759:	56                   	push   %esi
 75a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 75e:	e8 16 fe ff ff       	call   579 <write>
        putc(fd, c);
 763:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 767:	83 c4 0c             	add    $0xc,%esp
 76a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 76d:	6a 01                	push   $0x1
 76f:	57                   	push   %edi
 770:	56                   	push   %esi
 771:	e8 03 fe ff ff       	call   579 <write>
        putc(fd, c);
 776:	83 c4 10             	add    $0x10,%esp
      state = 0;
 779:	31 c9                	xor    %ecx,%ecx
 77b:	eb 95                	jmp    712 <printf+0x52>
 77d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 780:	83 ec 0c             	sub    $0xc,%esp
 783:	b9 10 00 00 00       	mov    $0x10,%ecx
 788:	6a 00                	push   $0x0
 78a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 78d:	8b 10                	mov    (%eax),%edx
 78f:	89 f0                	mov    %esi,%eax
 791:	e8 7a fe ff ff       	call   610 <printint>
        ap++;
 796:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 79a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 79d:	31 c9                	xor    %ecx,%ecx
 79f:	e9 6e ff ff ff       	jmp    712 <printf+0x52>
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7ab:	8b 10                	mov    (%eax),%edx
        ap++;
 7ad:	83 c0 04             	add    $0x4,%eax
 7b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7b3:	85 d2                	test   %edx,%edx
 7b5:	0f 84 8d 00 00 00    	je     848 <printf+0x188>
        while(*s != 0){
 7bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7c0:	84 c0                	test   %al,%al
 7c2:	0f 84 4a ff ff ff    	je     712 <printf+0x52>
 7c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7cb:	89 d3                	mov    %edx,%ebx
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7d3:	83 c3 01             	add    $0x1,%ebx
 7d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7d9:	6a 01                	push   $0x1
 7db:	57                   	push   %edi
 7dc:	56                   	push   %esi
 7dd:	e8 97 fd ff ff       	call   579 <write>
        while(*s != 0){
 7e2:	0f b6 03             	movzbl (%ebx),%eax
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	84 c0                	test   %al,%al
 7ea:	75 e4                	jne    7d0 <printf+0x110>
      state = 0;
 7ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7ef:	31 c9                	xor    %ecx,%ecx
 7f1:	e9 1c ff ff ff       	jmp    712 <printf+0x52>
 7f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 0a 00 00 00       	mov    $0xa,%ecx
 808:	6a 01                	push   $0x1
 80a:	e9 7b ff ff ff       	jmp    78a <printf+0xca>
 80f:	90                   	nop
        putc(fd, *ap);
 810:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 813:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 816:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 818:	6a 01                	push   $0x1
 81a:	57                   	push   %edi
 81b:	56                   	push   %esi
        putc(fd, *ap);
 81c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 81f:	e8 55 fd ff ff       	call   579 <write>
        ap++;
 824:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 828:	83 c4 10             	add    $0x10,%esp
      state = 0;
 82b:	31 c9                	xor    %ecx,%ecx
 82d:	e9 e0 fe ff ff       	jmp    712 <printf+0x52>
 832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 838:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 83b:	83 ec 04             	sub    $0x4,%esp
 83e:	e9 2a ff ff ff       	jmp    76d <printf+0xad>
 843:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 847:	90                   	nop
          s = "(null)";
 848:	ba b8 0a 00 00       	mov    $0xab8,%edx
        while(*s != 0){
 84d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 850:	b8 28 00 00 00       	mov    $0x28,%eax
 855:	89 d3                	mov    %edx,%ebx
 857:	e9 74 ff ff ff       	jmp    7d0 <printf+0x110>
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 78 0e 00 00       	mov    0xe78,%eax
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 86e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 878:	89 c2                	mov    %eax,%edx
 87a:	8b 00                	mov    (%eax),%eax
 87c:	39 ca                	cmp    %ecx,%edx
 87e:	73 30                	jae    8b0 <free+0x50>
 880:	39 c1                	cmp    %eax,%ecx
 882:	72 04                	jb     888 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 884:	39 c2                	cmp    %eax,%edx
 886:	72 f0                	jb     878 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 f8                	cmp    %edi,%eax
 890:	74 30                	je     8c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 892:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 895:	8b 42 04             	mov    0x4(%edx),%eax
 898:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 89b:	39 f1                	cmp    %esi,%ecx
 89d:	74 3a                	je     8d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 89f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8a1:	5b                   	pop    %ebx
  freep = p;
 8a2:	89 15 78 0e 00 00    	mov    %edx,0xe78
}
 8a8:	5e                   	pop    %esi
 8a9:	5f                   	pop    %edi
 8aa:	5d                   	pop    %ebp
 8ab:	c3                   	ret    
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b0:	39 c2                	cmp    %eax,%edx
 8b2:	72 c4                	jb     878 <free+0x18>
 8b4:	39 c1                	cmp    %eax,%ecx
 8b6:	73 c0                	jae    878 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8be:	39 f8                	cmp    %edi,%eax
 8c0:	75 d0                	jne    892 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8c2:	03 70 04             	add    0x4(%eax),%esi
 8c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c8:	8b 02                	mov    (%edx),%eax
 8ca:	8b 00                	mov    (%eax),%eax
 8cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8cf:	8b 42 04             	mov    0x4(%edx),%eax
 8d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8d5:	39 f1                	cmp    %esi,%ecx
 8d7:	75 c6                	jne    89f <free+0x3f>
    p->s.size += bp->s.size;
 8d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8dc:	89 15 78 0e 00 00    	mov    %edx,0xe78
    p->s.size += bp->s.size;
 8e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8e8:	89 0a                	mov    %ecx,(%edx)
}
 8ea:	5b                   	pop    %ebx
 8eb:	5e                   	pop    %esi
 8ec:	5f                   	pop    %edi
 8ed:	5d                   	pop    %ebp
 8ee:	c3                   	ret    
 8ef:	90                   	nop

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 3d 78 0e 00 00    	mov    0xe78,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 70 07             	lea    0x7(%eax),%esi
 905:	c1 ee 03             	shr    $0x3,%esi
 908:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 90b:	85 ff                	test   %edi,%edi
 90d:	0f 84 9d 00 00 00    	je     9b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 913:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 915:	8b 4a 04             	mov    0x4(%edx),%ecx
 918:	39 f1                	cmp    %esi,%ecx
 91a:	73 6a                	jae    986 <malloc+0x96>
 91c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 921:	39 de                	cmp    %ebx,%esi
 923:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 926:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 92d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 930:	eb 17                	jmp    949 <malloc+0x59>
 932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 938:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 93a:	8b 48 04             	mov    0x4(%eax),%ecx
 93d:	39 f1                	cmp    %esi,%ecx
 93f:	73 4f                	jae    990 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 941:	8b 3d 78 0e 00 00    	mov    0xe78,%edi
 947:	89 c2                	mov    %eax,%edx
 949:	39 d7                	cmp    %edx,%edi
 94b:	75 eb                	jne    938 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 94d:	83 ec 0c             	sub    $0xc,%esp
 950:	ff 75 e4             	push   -0x1c(%ebp)
 953:	e8 89 fc ff ff       	call   5e1 <sbrk>
  if(p == (char*)-1)
 958:	83 c4 10             	add    $0x10,%esp
 95b:	83 f8 ff             	cmp    $0xffffffff,%eax
 95e:	74 1c                	je     97c <malloc+0x8c>
  hp->s.size = nu;
 960:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 963:	83 ec 0c             	sub    $0xc,%esp
 966:	83 c0 08             	add    $0x8,%eax
 969:	50                   	push   %eax
 96a:	e8 f1 fe ff ff       	call   860 <free>
  return freep;
 96f:	8b 15 78 0e 00 00    	mov    0xe78,%edx
      if((p = morecore(nunits)) == 0)
 975:	83 c4 10             	add    $0x10,%esp
 978:	85 d2                	test   %edx,%edx
 97a:	75 bc                	jne    938 <malloc+0x48>
        return 0;
  }
}
 97c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 97f:	31 c0                	xor    %eax,%eax
}
 981:	5b                   	pop    %ebx
 982:	5e                   	pop    %esi
 983:	5f                   	pop    %edi
 984:	5d                   	pop    %ebp
 985:	c3                   	ret    
    if(p->s.size >= nunits){
 986:	89 d0                	mov    %edx,%eax
 988:	89 fa                	mov    %edi,%edx
 98a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 990:	39 ce                	cmp    %ecx,%esi
 992:	74 4c                	je     9e0 <malloc+0xf0>
        p->s.size -= nunits;
 994:	29 f1                	sub    %esi,%ecx
 996:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 999:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 99c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 99f:	89 15 78 0e 00 00    	mov    %edx,0xe78
}
 9a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9a8:	83 c0 08             	add    $0x8,%eax
}
 9ab:	5b                   	pop    %ebx
 9ac:	5e                   	pop    %esi
 9ad:	5f                   	pop    %edi
 9ae:	5d                   	pop    %ebp
 9af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9b0:	c7 05 78 0e 00 00 7c 	movl   $0xe7c,0xe78
 9b7:	0e 00 00 
    base.s.size = 0;
 9ba:	bf 7c 0e 00 00       	mov    $0xe7c,%edi
    base.s.ptr = freep = prevp = &base;
 9bf:	c7 05 7c 0e 00 00 7c 	movl   $0xe7c,0xe7c
 9c6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9cb:	c7 05 80 0e 00 00 00 	movl   $0x0,0xe80
 9d2:	00 00 00 
    if(p->s.size >= nunits){
 9d5:	e9 42 ff ff ff       	jmp    91c <malloc+0x2c>
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 08                	mov    (%eax),%ecx
 9e2:	89 0a                	mov    %ecx,(%edx)
 9e4:	eb b9                	jmp    99f <malloc+0xaf>
