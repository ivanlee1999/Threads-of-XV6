
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
  14:	e8 2d 06 00 00       	call   646 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 44 0f 00 00       	mov    %eax,0xf44
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 35 09 00 00       	call   960 <malloc>
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
  67:	e8 fa 05 00 00       	call   666 <clone>
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
  7d:	e8 d4 05 00 00       	call   656 <sleep>
   assert(wait() == -1);
  82:	e8 47 05 00 00       	call   5ce <wait>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	83 c0 01             	add    $0x1,%eax
  8d:	0f 84 80 00 00 00    	je     113 <main+0x113>
  93:	6a 28                	push   $0x28
  95:	68 58 0a 00 00       	push   $0xa58
  9a:	68 61 0a 00 00       	push   $0xa61
  9f:	6a 01                	push   $0x1
  a1:	e8 8a 06 00 00       	call   730 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 c4 0a 00 00       	push   $0xac4
   assert(clone_pid > 0);
  ae:	68 74 0a 00 00       	push   $0xa74
  b3:	6a 01                	push   $0x1
  b5:	e8 76 06 00 00       	call   730 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 88 0a 00 00       	push   $0xa88
  c1:	6a 01                	push   $0x1
  c3:	e8 68 06 00 00       	call   730 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 44 0f 00 00    	push   0xf44
  cf:	e8 22 05 00 00       	call   5f6 <kill>
  d4:	e8 ed 04 00 00       	call   5c6 <exit>
  d9:	6a 25                	push   $0x25
  db:	68 58 0a 00 00       	push   $0xa58
  e0:	68 61 0a 00 00       	push   $0xa61
  e5:	6a 01                	push   $0x1
  e7:	e8 44 06 00 00       	call   730 <printf>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	68 b6 0a 00 00       	push   $0xab6
  f4:	eb b8                	jmp    ae <main+0xae>
   assert(p != NULL);
  f6:	6a 1d                	push   $0x1d
  f8:	68 58 0a 00 00       	push   $0xa58
  fd:	68 61 0a 00 00       	push   $0xa61
 102:	6a 01                	push   $0x1
 104:	e8 27 06 00 00       	call   730 <printf>
 109:	83 c4 0c             	add    $0xc,%esp
 10c:	68 ac 0a 00 00       	push   $0xaac
 111:	eb 9b                	jmp    ae <main+0xae>

   void *join_stack;
   int join_pid = join(&join_stack);
 113:	83 ec 0c             	sub    $0xc,%esp
 116:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 119:	50                   	push   %eax
 11a:	e8 4f 05 00 00       	call   66e <join>
   assert(join_pid == clone_pid);
 11f:	83 c4 10             	add    $0x10,%esp
 122:	39 c6                	cmp    %eax,%esi
 124:	74 20                	je     146 <main+0x146>
 126:	6a 2c                	push   $0x2c
 128:	68 58 0a 00 00       	push   $0xa58
 12d:	68 61 0a 00 00       	push   $0xa61
 132:	6a 01                	push   $0x1
 134:	e8 f7 05 00 00       	call   730 <printf>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	68 d1 0a 00 00       	push   $0xad1
 141:	e9 68 ff ff ff       	jmp    ae <main+0xae>
   assert(stack == join_stack);
 146:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 149:	74 20                	je     16b <main+0x16b>
 14b:	6a 2d                	push   $0x2d
 14d:	68 58 0a 00 00       	push   $0xa58
 152:	68 61 0a 00 00       	push   $0xa61
 157:	6a 01                	push   $0x1
 159:	e8 d2 05 00 00       	call   730 <printf>
 15e:	83 c4 0c             	add    $0xc,%esp
 161:	68 e7 0a 00 00       	push   $0xae7
 166:	e9 43 ff ff ff       	jmp    ae <main+0xae>
   assert(global == 2);
 16b:	83 3d 40 0f 00 00 02 	cmpl   $0x2,0xf40
 172:	74 20                	je     194 <main+0x194>
 174:	6a 2e                	push   $0x2e
 176:	68 58 0a 00 00       	push   $0xa58
 17b:	68 61 0a 00 00       	push   $0xa61
 180:	6a 01                	push   $0x1
 182:	e8 a9 05 00 00       	call   730 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 fb 0a 00 00       	push   $0xafb
 18f:	e9 1a ff ff ff       	jmp    ae <main+0xae>

   printf(1, "TEST PASSED\n");
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	68 07 0b 00 00       	push   $0xb07
 19b:	6a 01                	push   $0x1
 19d:	e8 8e 05 00 00       	call   730 <printf>
   free(p);
 1a2:	89 1c 24             	mov    %ebx,(%esp)
 1a5:	e8 26 07 00 00       	call   8d0 <free>
   exit();
 1aa:	e8 17 04 00 00       	call   5c6 <exit>
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
 1c8:	83 3d 40 0f 00 00 01 	cmpl   $0x1,0xf40
 1cf:	0f 84 80 00 00 00    	je     255 <worker+0xa5>
 1d5:	6a 3b                	push   $0x3b
 1d7:	68 58 0a 00 00       	push   $0xa58
 1dc:	68 61 0a 00 00       	push   $0xa61
 1e1:	6a 01                	push   $0x1
 1e3:	e8 48 05 00 00       	call   730 <printf>
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	68 a0 0a 00 00       	push   $0xaa0
 1f0:	eb 1b                	jmp    20d <worker+0x5d>
   assert(tmp2 == 24);
 1f2:	6a 3a                	push   $0x3a
 1f4:	68 58 0a 00 00       	push   $0xa58
 1f9:	68 61 0a 00 00       	push   $0xa61
 1fe:	6a 01                	push   $0x1
 200:	e8 2b 05 00 00       	call   730 <printf>
 205:	83 c4 0c             	add    $0xc,%esp
 208:	68 95 0a 00 00       	push   $0xa95
 20d:	68 74 0a 00 00       	push   $0xa74
 212:	6a 01                	push   $0x1
 214:	e8 17 05 00 00       	call   730 <printf>
 219:	58                   	pop    %eax
 21a:	5a                   	pop    %edx
 21b:	68 88 0a 00 00       	push   $0xa88
 220:	6a 01                	push   $0x1
 222:	e8 09 05 00 00       	call   730 <printf>
 227:	59                   	pop    %ecx
 228:	ff 35 44 0f 00 00    	push   0xf44
 22e:	e8 c3 03 00 00       	call   5f6 <kill>
 233:	e8 8e 03 00 00       	call   5c6 <exit>
   assert(tmp1 == 42);
 238:	6a 39                	push   $0x39
 23a:	68 58 0a 00 00       	push   $0xa58
 23f:	68 61 0a 00 00       	push   $0xa61
 244:	6a 01                	push   $0x1
 246:	e8 e5 04 00 00       	call   730 <printf>
 24b:	83 c4 0c             	add    $0xc,%esp
 24e:	68 69 0a 00 00       	push   $0xa69
 253:	eb b8                	jmp    20d <worker+0x5d>
   global++;
 255:	c7 05 40 0f 00 00 02 	movl   $0x2,0xf40
 25c:	00 00 00 
   exit();
 25f:	e8 62 03 00 00       	call   5c6 <exit>
 264:	66 90                	xchg   %ax,%ax
 266:	66 90                	xchg   %ax,%ax
 268:	66 90                	xchg   %ax,%ax
 26a:	66 90                	xchg   %ax,%ax
 26c:	66 90                	xchg   %ax,%ax
 26e:	66 90                	xchg   %ax,%ax

00000270 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

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
 3a8:	e8 31 02 00 00       	call   5de <read>
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
 40d:	e8 f4 01 00 00       	call   606 <open>
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
 422:	e8 f7 01 00 00       	call   61e <fstat>
  close(fd);
 427:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 42a:	89 c6                	mov    %eax,%esi
  close(fd);
 42c:	e8 bd 01 00 00       	call   5ee <close>
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
 4cc:	e8 8f 04 00 00       	call   960 <malloc>
  if((int) stack % 4096 != 0){
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	a9 ff 0f 00 00       	test   $0xfff,%eax
 4d9:	74 16                	je     4f1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 4db:	99                   	cltd   
 4dc:	c1 ea 14             	shr    $0x14,%edx
 4df:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 4e2:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 4e8:	29 ca                	sub    %ecx,%edx
 4ea:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 4f1:	50                   	push   %eax
 4f2:	ff 75 10             	push   0x10(%ebp)
 4f5:	ff 75 0c             	push   0xc(%ebp)
 4f8:	ff 75 08             	push   0x8(%ebp)
 4fb:	e8 66 01 00 00       	call   666 <clone>
  printf(1, " thread create %d \n", rc);
 500:	83 c4 0c             	add    $0xc,%esp
 503:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 504:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 506:	68 14 0b 00 00       	push   $0xb14
 50b:	6a 01                	push   $0x1
 50d:	e8 1e 02 00 00       	call   730 <printf>
  return rc;
}
 512:	89 d8                	mov    %ebx,%eax
 514:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 517:	c9                   	leave  
 518:	c3                   	ret    
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <thread_join>:

int
thread_join(){
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 527:	68 28 0b 00 00       	push   $0xb28
 52c:	6a 01                	push   $0x1
 52e:	e8 fd 01 00 00       	call   730 <printf>
  void** stack = malloc(sizeof(void**));
 533:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 53a:	e8 21 04 00 00       	call   960 <malloc>
 53f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 541:	58                   	pop    %eax
 542:	5a                   	pop    %edx
 543:	68 38 0b 00 00       	push   $0xb38
 548:	6a 01                	push   $0x1
 54a:	e8 e1 01 00 00       	call   730 <printf>
  int rc = join(stack);
 54f:	89 1c 24             	mov    %ebx,(%esp)
 552:	e8 17 01 00 00       	call   66e <join>
  printf(1, "thread join 3 \n");
 557:	59                   	pop    %ecx
  int rc = join(stack);
 558:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 55a:	58                   	pop    %eax
 55b:	68 48 0b 00 00       	push   $0xb48
 560:	6a 01                	push   $0x1
 562:	e8 c9 01 00 00       	call   730 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 567:	58                   	pop    %eax
 568:	5a                   	pop    %edx
 569:	68 58 0b 00 00       	push   $0xb58
 56e:	6a 01                	push   $0x1
 570:	e8 bb 01 00 00       	call   730 <printf>
  return rc;
}
 575:	89 d8                	mov    %ebx,%eax
 577:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 57a:	c9                   	leave  
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <lock_acquire>:



void lock_acquire(lock_t * lock){
 580:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 581:	b9 01 00 00 00       	mov    $0x1,%ecx
 586:	89 e5                	mov    %esp,%ebp
 588:	8b 55 08             	mov    0x8(%ebp),%edx
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop
 590:	89 c8                	mov    %ecx,%eax
 592:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 595:	83 f8 01             	cmp    $0x1,%eax
 598:	74 f6                	je     590 <lock_acquire+0x10>
 ; // spin

};
 59a:	5d                   	pop    %ebp
 59b:	c3                   	ret    
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005a0 <lock_release>:

void lock_release(lock_t * lock){
 5a0:	55                   	push   %ebp
 5a1:	31 c0                	xor    %eax,%eax
 5a3:	89 e5                	mov    %esp,%ebp
 5a5:	8b 55 08             	mov    0x8(%ebp),%edx
 5a8:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi

000005b0 <lock_init>:

void lock_init(lock_t * lock){
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
 5b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 5bc:	5d                   	pop    %ebp
 5bd:	c3                   	ret    

000005be <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5be:	b8 01 00 00 00       	mov    $0x1,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <exit>:
SYSCALL(exit)
 5c6:	b8 02 00 00 00       	mov    $0x2,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <wait>:
SYSCALL(wait)
 5ce:	b8 03 00 00 00       	mov    $0x3,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <pipe>:
SYSCALL(pipe)
 5d6:	b8 04 00 00 00       	mov    $0x4,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <read>:
SYSCALL(read)
 5de:	b8 05 00 00 00       	mov    $0x5,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <write>:
SYSCALL(write)
 5e6:	b8 10 00 00 00       	mov    $0x10,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <close>:
SYSCALL(close)
 5ee:	b8 15 00 00 00       	mov    $0x15,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <kill>:
SYSCALL(kill)
 5f6:	b8 06 00 00 00       	mov    $0x6,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <exec>:
SYSCALL(exec)
 5fe:	b8 07 00 00 00       	mov    $0x7,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <open>:
SYSCALL(open)
 606:	b8 0f 00 00 00       	mov    $0xf,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <mknod>:
SYSCALL(mknod)
 60e:	b8 11 00 00 00       	mov    $0x11,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <unlink>:
SYSCALL(unlink)
 616:	b8 12 00 00 00       	mov    $0x12,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <fstat>:
SYSCALL(fstat)
 61e:	b8 08 00 00 00       	mov    $0x8,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <link>:
SYSCALL(link)
 626:	b8 13 00 00 00       	mov    $0x13,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <mkdir>:
SYSCALL(mkdir)
 62e:	b8 14 00 00 00       	mov    $0x14,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <chdir>:
SYSCALL(chdir)
 636:	b8 09 00 00 00       	mov    $0x9,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <dup>:
SYSCALL(dup)
 63e:	b8 0a 00 00 00       	mov    $0xa,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    

00000646 <getpid>:
SYSCALL(getpid)
 646:	b8 0b 00 00 00       	mov    $0xb,%eax
 64b:	cd 40                	int    $0x40
 64d:	c3                   	ret    

0000064e <sbrk>:
SYSCALL(sbrk)
 64e:	b8 0c 00 00 00       	mov    $0xc,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <sleep>:
SYSCALL(sleep)
 656:	b8 0d 00 00 00       	mov    $0xd,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <uptime>:
SYSCALL(uptime)
 65e:	b8 0e 00 00 00       	mov    $0xe,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <clone>:
SYSCALL(clone)
 666:	b8 16 00 00 00       	mov    $0x16,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <join>:
SYSCALL(join)
 66e:	b8 17 00 00 00       	mov    $0x17,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    
 676:	66 90                	xchg   %ax,%ax
 678:	66 90                	xchg   %ax,%ax
 67a:	66 90                	xchg   %ax,%ax
 67c:	66 90                	xchg   %ax,%ax
 67e:	66 90                	xchg   %ax,%ax

00000680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 3c             	sub    $0x3c,%esp
 689:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 68c:	89 d1                	mov    %edx,%ecx
{
 68e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 691:	85 d2                	test   %edx,%edx
 693:	0f 89 7f 00 00 00    	jns    718 <printint+0x98>
 699:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 69d:	74 79                	je     718 <printint+0x98>
    neg = 1;
 69f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6a8:	31 db                	xor    %ebx,%ebx
 6aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6b0:	89 c8                	mov    %ecx,%eax
 6b2:	31 d2                	xor    %edx,%edx
 6b4:	89 cf                	mov    %ecx,%edi
 6b6:	f7 75 c4             	divl   -0x3c(%ebp)
 6b9:	0f b6 92 c8 0b 00 00 	movzbl 0xbc8(%edx),%edx
 6c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6c3:	89 d8                	mov    %ebx,%eax
 6c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6d1:	76 dd                	jbe    6b0 <printint+0x30>
  if(neg)
 6d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6d6:	85 c9                	test   %ecx,%ecx
 6d8:	74 0c                	je     6e6 <printint+0x66>
    buf[i++] = '-';
 6da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6ed:	eb 07                	jmp    6f6 <printint+0x76>
 6ef:	90                   	nop
    putc(fd, buf[i]);
 6f0:	0f b6 13             	movzbl (%ebx),%edx
 6f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6f6:	83 ec 04             	sub    $0x4,%esp
 6f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6fc:	6a 01                	push   $0x1
 6fe:	56                   	push   %esi
 6ff:	57                   	push   %edi
 700:	e8 e1 fe ff ff       	call   5e6 <write>
  while(--i >= 0)
 705:	83 c4 10             	add    $0x10,%esp
 708:	39 de                	cmp    %ebx,%esi
 70a:	75 e4                	jne    6f0 <printint+0x70>
}
 70c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 70f:	5b                   	pop    %ebx
 710:	5e                   	pop    %esi
 711:	5f                   	pop    %edi
 712:	5d                   	pop    %ebp
 713:	c3                   	ret    
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 718:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 71f:	eb 87                	jmp    6a8 <printint+0x28>
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop

00000730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 739:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 73c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 73f:	0f b6 13             	movzbl (%ebx),%edx
 742:	84 d2                	test   %dl,%dl
 744:	74 6a                	je     7b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 746:	8d 45 10             	lea    0x10(%ebp),%eax
 749:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 74c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 74f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 751:	89 45 d0             	mov    %eax,-0x30(%ebp)
 754:	eb 36                	jmp    78c <printf+0x5c>
 756:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75d:	8d 76 00             	lea    0x0(%esi),%esi
 760:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 763:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 768:	83 f8 25             	cmp    $0x25,%eax
 76b:	74 15                	je     782 <printf+0x52>
  write(fd, &c, 1);
 76d:	83 ec 04             	sub    $0x4,%esp
 770:	88 55 e7             	mov    %dl,-0x19(%ebp)
 773:	6a 01                	push   $0x1
 775:	57                   	push   %edi
 776:	56                   	push   %esi
 777:	e8 6a fe ff ff       	call   5e6 <write>
 77c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 77f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 782:	0f b6 13             	movzbl (%ebx),%edx
 785:	83 c3 01             	add    $0x1,%ebx
 788:	84 d2                	test   %dl,%dl
 78a:	74 24                	je     7b0 <printf+0x80>
    c = fmt[i] & 0xff;
 78c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 78f:	85 c9                	test   %ecx,%ecx
 791:	74 cd                	je     760 <printf+0x30>
      }
    } else if(state == '%'){
 793:	83 f9 25             	cmp    $0x25,%ecx
 796:	75 ea                	jne    782 <printf+0x52>
      if(c == 'd'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	0f 84 07 01 00 00    	je     8a8 <printf+0x178>
 7a1:	83 e8 63             	sub    $0x63,%eax
 7a4:	83 f8 15             	cmp    $0x15,%eax
 7a7:	77 17                	ja     7c0 <printf+0x90>
 7a9:	ff 24 85 70 0b 00 00 	jmp    *0xb70(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b3:	5b                   	pop    %ebx
 7b4:	5e                   	pop    %esi
 7b5:	5f                   	pop    %edi
 7b6:	5d                   	pop    %ebp
 7b7:	c3                   	ret    
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7c6:	6a 01                	push   $0x1
 7c8:	57                   	push   %edi
 7c9:	56                   	push   %esi
 7ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ce:	e8 13 fe ff ff       	call   5e6 <write>
        putc(fd, c);
 7d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7d7:	83 c4 0c             	add    $0xc,%esp
 7da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7dd:	6a 01                	push   $0x1
 7df:	57                   	push   %edi
 7e0:	56                   	push   %esi
 7e1:	e8 00 fe ff ff       	call   5e6 <write>
        putc(fd, c);
 7e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7e9:	31 c9                	xor    %ecx,%ecx
 7eb:	eb 95                	jmp    782 <printf+0x52>
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7f8:	6a 00                	push   $0x0
 7fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7fd:	8b 10                	mov    (%eax),%edx
 7ff:	89 f0                	mov    %esi,%eax
 801:	e8 7a fe ff ff       	call   680 <printint>
        ap++;
 806:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 80a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80d:	31 c9                	xor    %ecx,%ecx
 80f:	e9 6e ff ff ff       	jmp    782 <printf+0x52>
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 818:	8b 45 d0             	mov    -0x30(%ebp),%eax
 81b:	8b 10                	mov    (%eax),%edx
        ap++;
 81d:	83 c0 04             	add    $0x4,%eax
 820:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 823:	85 d2                	test   %edx,%edx
 825:	0f 84 8d 00 00 00    	je     8b8 <printf+0x188>
        while(*s != 0){
 82b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 82e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 830:	84 c0                	test   %al,%al
 832:	0f 84 4a ff ff ff    	je     782 <printf+0x52>
 838:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 83b:	89 d3                	mov    %edx,%ebx
 83d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
          s++;
 843:	83 c3 01             	add    $0x1,%ebx
 846:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 849:	6a 01                	push   $0x1
 84b:	57                   	push   %edi
 84c:	56                   	push   %esi
 84d:	e8 94 fd ff ff       	call   5e6 <write>
        while(*s != 0){
 852:	0f b6 03             	movzbl (%ebx),%eax
 855:	83 c4 10             	add    $0x10,%esp
 858:	84 c0                	test   %al,%al
 85a:	75 e4                	jne    840 <printf+0x110>
      state = 0;
 85c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 85f:	31 c9                	xor    %ecx,%ecx
 861:	e9 1c ff ff ff       	jmp    782 <printf+0x52>
 866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 870:	83 ec 0c             	sub    $0xc,%esp
 873:	b9 0a 00 00 00       	mov    $0xa,%ecx
 878:	6a 01                	push   $0x1
 87a:	e9 7b ff ff ff       	jmp    7fa <printf+0xca>
 87f:	90                   	nop
        putc(fd, *ap);
 880:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 883:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 886:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 888:	6a 01                	push   $0x1
 88a:	57                   	push   %edi
 88b:	56                   	push   %esi
        putc(fd, *ap);
 88c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 88f:	e8 52 fd ff ff       	call   5e6 <write>
        ap++;
 894:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 898:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89b:	31 c9                	xor    %ecx,%ecx
 89d:	e9 e0 fe ff ff       	jmp    782 <printf+0x52>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8ab:	83 ec 04             	sub    $0x4,%esp
 8ae:	e9 2a ff ff ff       	jmp    7dd <printf+0xad>
 8b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8b7:	90                   	nop
          s = "(null)";
 8b8:	ba 68 0b 00 00       	mov    $0xb68,%edx
        while(*s != 0){
 8bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8c0:	b8 28 00 00 00       	mov    $0x28,%eax
 8c5:	89 d3                	mov    %edx,%ebx
 8c7:	e9 74 ff ff ff       	jmp    840 <printf+0x110>
 8cc:	66 90                	xchg   %ax,%ax
 8ce:	66 90                	xchg   %ax,%ax

000008d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	a1 48 0f 00 00       	mov    0xf48,%eax
{
 8d6:	89 e5                	mov    %esp,%ebp
 8d8:	57                   	push   %edi
 8d9:	56                   	push   %esi
 8da:	53                   	push   %ebx
 8db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8e8:	89 c2                	mov    %eax,%edx
 8ea:	8b 00                	mov    (%eax),%eax
 8ec:	39 ca                	cmp    %ecx,%edx
 8ee:	73 30                	jae    920 <free+0x50>
 8f0:	39 c1                	cmp    %eax,%ecx
 8f2:	72 04                	jb     8f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f4:	39 c2                	cmp    %eax,%edx
 8f6:	72 f0                	jb     8e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8fe:	39 f8                	cmp    %edi,%eax
 900:	74 30                	je     932 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 902:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 905:	8b 42 04             	mov    0x4(%edx),%eax
 908:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 90b:	39 f1                	cmp    %esi,%ecx
 90d:	74 3a                	je     949 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 90f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 911:	5b                   	pop    %ebx
  freep = p;
 912:	89 15 48 0f 00 00    	mov    %edx,0xf48
}
 918:	5e                   	pop    %esi
 919:	5f                   	pop    %edi
 91a:	5d                   	pop    %ebp
 91b:	c3                   	ret    
 91c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 920:	39 c2                	cmp    %eax,%edx
 922:	72 c4                	jb     8e8 <free+0x18>
 924:	39 c1                	cmp    %eax,%ecx
 926:	73 c0                	jae    8e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	75 d0                	jne    902 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 932:	03 70 04             	add    0x4(%eax),%esi
 935:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 938:	8b 02                	mov    (%edx),%eax
 93a:	8b 00                	mov    (%eax),%eax
 93c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 93f:	8b 42 04             	mov    0x4(%edx),%eax
 942:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 945:	39 f1                	cmp    %esi,%ecx
 947:	75 c6                	jne    90f <free+0x3f>
    p->s.size += bp->s.size;
 949:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 94c:	89 15 48 0f 00 00    	mov    %edx,0xf48
    p->s.size += bp->s.size;
 952:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 955:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 958:	89 0a                	mov    %ecx,(%edx)
}
 95a:	5b                   	pop    %ebx
 95b:	5e                   	pop    %esi
 95c:	5f                   	pop    %edi
 95d:	5d                   	pop    %ebp
 95e:	c3                   	ret    
 95f:	90                   	nop

00000960 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 960:	55                   	push   %ebp
 961:	89 e5                	mov    %esp,%ebp
 963:	57                   	push   %edi
 964:	56                   	push   %esi
 965:	53                   	push   %ebx
 966:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 969:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 96c:	8b 3d 48 0f 00 00    	mov    0xf48,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 972:	8d 70 07             	lea    0x7(%eax),%esi
 975:	c1 ee 03             	shr    $0x3,%esi
 978:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 97b:	85 ff                	test   %edi,%edi
 97d:	0f 84 9d 00 00 00    	je     a20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 983:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 985:	8b 4a 04             	mov    0x4(%edx),%ecx
 988:	39 f1                	cmp    %esi,%ecx
 98a:	73 6a                	jae    9f6 <malloc+0x96>
 98c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 991:	39 de                	cmp    %ebx,%esi
 993:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 996:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 99d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9a0:	eb 17                	jmp    9b9 <malloc+0x59>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9aa:	8b 48 04             	mov    0x4(%eax),%ecx
 9ad:	39 f1                	cmp    %esi,%ecx
 9af:	73 4f                	jae    a00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9b1:	8b 3d 48 0f 00 00    	mov    0xf48,%edi
 9b7:	89 c2                	mov    %eax,%edx
 9b9:	39 d7                	cmp    %edx,%edi
 9bb:	75 eb                	jne    9a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9bd:	83 ec 0c             	sub    $0xc,%esp
 9c0:	ff 75 e4             	push   -0x1c(%ebp)
 9c3:	e8 86 fc ff ff       	call   64e <sbrk>
  if(p == (char*)-1)
 9c8:	83 c4 10             	add    $0x10,%esp
 9cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ce:	74 1c                	je     9ec <malloc+0x8c>
  hp->s.size = nu;
 9d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9d3:	83 ec 0c             	sub    $0xc,%esp
 9d6:	83 c0 08             	add    $0x8,%eax
 9d9:	50                   	push   %eax
 9da:	e8 f1 fe ff ff       	call   8d0 <free>
  return freep;
 9df:	8b 15 48 0f 00 00    	mov    0xf48,%edx
      if((p = morecore(nunits)) == 0)
 9e5:	83 c4 10             	add    $0x10,%esp
 9e8:	85 d2                	test   %edx,%edx
 9ea:	75 bc                	jne    9a8 <malloc+0x48>
        return 0;
  }
}
 9ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ef:	31 c0                	xor    %eax,%eax
}
 9f1:	5b                   	pop    %ebx
 9f2:	5e                   	pop    %esi
 9f3:	5f                   	pop    %edi
 9f4:	5d                   	pop    %ebp
 9f5:	c3                   	ret    
    if(p->s.size >= nunits){
 9f6:	89 d0                	mov    %edx,%eax
 9f8:	89 fa                	mov    %edi,%edx
 9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a00:	39 ce                	cmp    %ecx,%esi
 a02:	74 4c                	je     a50 <malloc+0xf0>
        p->s.size -= nunits;
 a04:	29 f1                	sub    %esi,%ecx
 a06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a0f:	89 15 48 0f 00 00    	mov    %edx,0xf48
}
 a15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a18:	83 c0 08             	add    $0x8,%eax
}
 a1b:	5b                   	pop    %ebx
 a1c:	5e                   	pop    %esi
 a1d:	5f                   	pop    %edi
 a1e:	5d                   	pop    %ebp
 a1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a20:	c7 05 48 0f 00 00 4c 	movl   $0xf4c,0xf48
 a27:	0f 00 00 
    base.s.size = 0;
 a2a:	bf 4c 0f 00 00       	mov    $0xf4c,%edi
    base.s.ptr = freep = prevp = &base;
 a2f:	c7 05 4c 0f 00 00 4c 	movl   $0xf4c,0xf4c
 a36:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a3b:	c7 05 50 0f 00 00 00 	movl   $0x0,0xf50
 a42:	00 00 00 
    if(p->s.size >= nunits){
 a45:	e9 42 ff ff ff       	jmp    98c <malloc+0x2c>
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a50:	8b 08                	mov    (%eax),%ecx
 a52:	89 0a                	mov    %ecx,(%edx)
 a54:	eb b9                	jmp    a0f <malloc+0xaf>
