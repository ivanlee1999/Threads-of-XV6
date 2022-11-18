
_test_6:     file format elf32-i386


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
  11:	83 ec 28             	sub    $0x28,%esp
   ppid = getpid();
  14:	e8 c0 05 00 00       	call   5d9 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 84 0e 00 00       	mov    %eax,0xe84
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 c5 08 00 00       	call   8f0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 d5 00 00 00    	je     10b <main+0x10b>
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
  4b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 e0             	lea    -0x20(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 d0 01 00 00       	push   $0x1d0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 e0 2a 00 00 00 	movl   $0x2a,-0x20(%ebp)
  60:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 8d 05 00 00       	call   5f9 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 79                	jle    ee <main+0xee>

   sbrk(PGSIZE);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 00 10 00 00       	push   $0x1000
  7d:	e8 5f 05 00 00       	call   5e1 <sbrk>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
  82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  89:	e8 53 05 00 00       	call   5e1 <sbrk>
  8e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   assert(join((void**)((uint)join_stack + 2)) == -1);
  91:	83 e8 02             	sub    $0x2,%eax
  94:	89 04 24             	mov    %eax,(%esp)
  97:	e8 65 05 00 00       	call   601 <join>
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	83 c0 01             	add    $0x1,%eax
  a2:	0f 84 80 00 00 00    	je     128 <main+0x128>
  a8:	6a 29                	push   $0x29
  aa:	68 e8 09 00 00       	push   $0x9e8
  af:	68 f1 09 00 00       	push   $0x9f1
  b4:	6a 01                	push   $0x1
  b6:	e8 05 06 00 00       	call   6c0 <printf>
  bb:	83 c4 0c             	add    $0xc,%esp
  be:	68 a0 0a 00 00       	push   $0xaa0
   assert(clone_pid > 0);
  c3:	68 04 0a 00 00       	push   $0xa04
  c8:	6a 01                	push   $0x1
  ca:	e8 f1 05 00 00       	call   6c0 <printf>
  cf:	5a                   	pop    %edx
  d0:	59                   	pop    %ecx
  d1:	68 18 0a 00 00       	push   $0xa18
  d6:	6a 01                	push   $0x1
  d8:	e8 e3 05 00 00       	call   6c0 <printf>
  dd:	5b                   	pop    %ebx
  de:	ff 35 84 0e 00 00    	push   0xe84
  e4:	e8 a0 04 00 00       	call   589 <kill>
  e9:	e8 6b 04 00 00       	call   559 <exit>
  ee:	6a 25                	push   $0x25
  f0:	68 e8 09 00 00       	push   $0x9e8
  f5:	68 f1 09 00 00       	push   $0x9f1
  fa:	6a 01                	push   $0x1
  fc:	e8 bf 05 00 00       	call   6c0 <printf>
 101:	83 c4 0c             	add    $0xc,%esp
 104:	68 46 0a 00 00       	push   $0xa46
 109:	eb b8                	jmp    c3 <main+0xc3>
   assert(p != NULL);
 10b:	6a 1d                	push   $0x1d
 10d:	68 e8 09 00 00       	push   $0x9e8
 112:	68 f1 09 00 00       	push   $0x9f1
 117:	6a 01                	push   $0x1
 119:	e8 a2 05 00 00       	call   6c0 <printf>
 11e:	83 c4 0c             	add    $0xc,%esp
 121:	68 3c 0a 00 00       	push   $0xa3c
 126:	eb 9b                	jmp    c3 <main+0xc3>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   assert(join(join_stack) == clone_pid);
 12b:	83 ec 0c             	sub    $0xc,%esp
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 12e:	83 e8 04             	sub    $0x4,%eax
   assert(join(join_stack) == clone_pid);
 131:	50                   	push   %eax
 132:	e8 ca 04 00 00       	call   601 <join>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	39 f0                	cmp    %esi,%eax
 13c:	74 20                	je     15e <main+0x15e>
 13e:	6a 2a                	push   $0x2a
 140:	68 e8 09 00 00       	push   $0x9e8
 145:	68 f1 09 00 00       	push   $0x9f1
 14a:	6a 01                	push   $0x1
 14c:	e8 6f 05 00 00       	call   6c0 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 54 0a 00 00       	push   $0xa54
 159:	e9 65 ff ff ff       	jmp    c3 <main+0xc3>
   assert(stack == *join_stack);
 15e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 161:	39 78 fc             	cmp    %edi,-0x4(%eax)
 164:	74 20                	je     186 <main+0x186>
 166:	6a 2b                	push   $0x2b
 168:	68 e8 09 00 00       	push   $0x9e8
 16d:	68 f1 09 00 00       	push   $0x9f1
 172:	6a 01                	push   $0x1
 174:	e8 47 05 00 00       	call   6c0 <printf>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	68 72 0a 00 00       	push   $0xa72
 181:	e9 3d ff ff ff       	jmp    c3 <main+0xc3>
   assert(global == 2);
 186:	83 3d 80 0e 00 00 02 	cmpl   $0x2,0xe80
 18d:	74 20                	je     1af <main+0x1af>
 18f:	6a 2c                	push   $0x2c
 191:	68 e8 09 00 00       	push   $0x9e8
 196:	68 f1 09 00 00       	push   $0x9f1
 19b:	6a 01                	push   $0x1
 19d:	e8 1e 05 00 00       	call   6c0 <printf>
 1a2:	83 c4 0c             	add    $0xc,%esp
 1a5:	68 87 0a 00 00       	push   $0xa87
 1aa:	e9 14 ff ff ff       	jmp    c3 <main+0xc3>

   printf(1, "TEST PASSED\n");
 1af:	50                   	push   %eax
 1b0:	50                   	push   %eax
 1b1:	68 93 0a 00 00       	push   $0xa93
 1b6:	6a 01                	push   $0x1
 1b8:	e8 03 05 00 00       	call   6c0 <printf>
   free(p);
 1bd:	89 1c 24             	mov    %ebx,(%esp)
 1c0:	e8 9b 06 00 00       	call   860 <free>
   exit();
 1c5:	e8 8f 03 00 00       	call   559 <exit>
 1ca:	66 90                	xchg   %ax,%ax
 1cc:	66 90                	xchg   %ax,%ax
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1db:	8b 45 08             	mov    0x8(%ebp),%eax
 1de:	83 38 2a             	cmpl   $0x2a,(%eax)
 1e1:	75 75                	jne    258 <worker+0x88>
   assert(tmp2 == 24);
 1e3:	83 fa 18             	cmp    $0x18,%edx
 1e6:	75 2a                	jne    212 <worker+0x42>
   assert(global == 1);
 1e8:	83 3d 80 0e 00 00 01 	cmpl   $0x1,0xe80
 1ef:	0f 84 80 00 00 00    	je     275 <worker+0xa5>
 1f5:	6a 39                	push   $0x39
 1f7:	68 e8 09 00 00       	push   $0x9e8
 1fc:	68 f1 09 00 00       	push   $0x9f1
 201:	6a 01                	push   $0x1
 203:	e8 b8 04 00 00       	call   6c0 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 30 0a 00 00       	push   $0xa30
 210:	eb 1b                	jmp    22d <worker+0x5d>
   assert(tmp2 == 24);
 212:	6a 38                	push   $0x38
 214:	68 e8 09 00 00       	push   $0x9e8
 219:	68 f1 09 00 00       	push   $0x9f1
 21e:	6a 01                	push   $0x1
 220:	e8 9b 04 00 00       	call   6c0 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 25 0a 00 00       	push   $0xa25
 22d:	68 04 0a 00 00       	push   $0xa04
 232:	6a 01                	push   $0x1
 234:	e8 87 04 00 00       	call   6c0 <printf>
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	68 18 0a 00 00       	push   $0xa18
 240:	6a 01                	push   $0x1
 242:	e8 79 04 00 00       	call   6c0 <printf>
 247:	59                   	pop    %ecx
 248:	ff 35 84 0e 00 00    	push   0xe84
 24e:	e8 36 03 00 00       	call   589 <kill>
 253:	e8 01 03 00 00       	call   559 <exit>
   assert(tmp1 == 42);
 258:	6a 37                	push   $0x37
 25a:	68 e8 09 00 00       	push   $0x9e8
 25f:	68 f1 09 00 00       	push   $0x9f1
 264:	6a 01                	push   $0x1
 266:	e8 55 04 00 00       	call   6c0 <printf>
 26b:	83 c4 0c             	add    $0xc,%esp
 26e:	68 f9 09 00 00       	push   $0x9f9
 273:	eb b8                	jmp    22d <worker+0x5d>
   global++;
 275:	c7 05 80 0e 00 00 02 	movl   $0x2,0xe80
 27c:	00 00 00 
   exit();
 27f:	e8 d5 02 00 00       	call   559 <exit>
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 290:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 291:	31 c0                	xor    %eax,%eax
{
 293:	89 e5                	mov    %esp,%ebp
 295:	53                   	push   %ebx
 296:	8b 4d 08             	mov    0x8(%ebp),%ecx
 299:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2a7:	83 c0 01             	add    $0x1,%eax
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strcpy+0x10>
    ;
  return os;
}
 2ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b1:	89 c8                	mov    %ecx,%eax
 2b3:	c9                   	leave  
 2b4:	c3                   	ret    
 2b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	8b 55 08             	mov    0x8(%ebp),%edx
 2c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ca:	0f b6 02             	movzbl (%edx),%eax
 2cd:	84 c0                	test   %al,%al
 2cf:	75 17                	jne    2e8 <strcmp+0x28>
 2d1:	eb 3a                	jmp    30d <strcmp+0x4d>
 2d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d7:	90                   	nop
 2d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2dc:	83 c2 01             	add    $0x1,%edx
 2df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2e2:	84 c0                	test   %al,%al
 2e4:	74 1a                	je     300 <strcmp+0x40>
    p++, q++;
 2e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2e8:	0f b6 19             	movzbl (%ecx),%ebx
 2eb:	38 c3                	cmp    %al,%bl
 2ed:	74 e9                	je     2d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2ef:	29 d8                	sub    %ebx,%eax
}
 2f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f4:	c9                   	leave  
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 300:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 304:	31 c0                	xor    %eax,%eax
 306:	29 d8                	sub    %ebx,%eax
}
 308:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 30b:	c9                   	leave  
 30c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 30d:	0f b6 19             	movzbl (%ecx),%ebx
 310:	31 c0                	xor    %eax,%eax
 312:	eb db                	jmp    2ef <strcmp+0x2f>
 314:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 31f:	90                   	nop

00000320 <strlen>:

uint
strlen(const char *s)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 326:	80 3a 00             	cmpb   $0x0,(%edx)
 329:	74 15                	je     340 <strlen+0x20>
 32b:	31 c0                	xor    %eax,%eax
 32d:	8d 76 00             	lea    0x0(%esi),%esi
 330:	83 c0 01             	add    $0x1,%eax
 333:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 337:	89 c1                	mov    %eax,%ecx
 339:	75 f5                	jne    330 <strlen+0x10>
    ;
  return n;
}
 33b:	89 c8                	mov    %ecx,%eax
 33d:	5d                   	pop    %ebp
 33e:	c3                   	ret    
 33f:	90                   	nop
  for(n = 0; s[n]; n++)
 340:	31 c9                	xor    %ecx,%ecx
}
 342:	5d                   	pop    %ebp
 343:	89 c8                	mov    %ecx,%eax
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi

00000350 <memset>:

void*
memset(void *dst, int c, uint n)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 357:	8b 4d 10             	mov    0x10(%ebp),%ecx
 35a:	8b 45 0c             	mov    0xc(%ebp),%eax
 35d:	89 d7                	mov    %edx,%edi
 35f:	fc                   	cld    
 360:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 362:	8b 7d fc             	mov    -0x4(%ebp),%edi
 365:	89 d0                	mov    %edx,%eax
 367:	c9                   	leave  
 368:	c3                   	ret    
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000370 <strchr>:

char*
strchr(const char *s, char c)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 45 08             	mov    0x8(%ebp),%eax
 376:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 37a:	0f b6 10             	movzbl (%eax),%edx
 37d:	84 d2                	test   %dl,%dl
 37f:	75 12                	jne    393 <strchr+0x23>
 381:	eb 1d                	jmp    3a0 <strchr+0x30>
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
 388:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 38c:	83 c0 01             	add    $0x1,%eax
 38f:	84 d2                	test   %dl,%dl
 391:	74 0d                	je     3a0 <strchr+0x30>
    if(*s == c)
 393:	38 d1                	cmp    %dl,%cl
 395:	75 f1                	jne    388 <strchr+0x18>
      return (char*)s;
  return 0;
}
 397:	5d                   	pop    %ebp
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3a0:	31 c0                	xor    %eax,%eax
}
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <gets>:

char*
gets(char *buf, int max)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3b9:	31 db                	xor    %ebx,%ebx
{
 3bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3be:	eb 27                	jmp    3e7 <gets+0x37>
    cc = read(0, &c, 1);
 3c0:	83 ec 04             	sub    $0x4,%esp
 3c3:	6a 01                	push   $0x1
 3c5:	57                   	push   %edi
 3c6:	6a 00                	push   $0x0
 3c8:	e8 a4 01 00 00       	call   571 <read>
    if(cc < 1)
 3cd:	83 c4 10             	add    $0x10,%esp
 3d0:	85 c0                	test   %eax,%eax
 3d2:	7e 1d                	jle    3f1 <gets+0x41>
      break;
    buf[i++] = c;
 3d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3d8:	8b 55 08             	mov    0x8(%ebp),%edx
 3db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3df:	3c 0a                	cmp    $0xa,%al
 3e1:	74 1d                	je     400 <gets+0x50>
 3e3:	3c 0d                	cmp    $0xd,%al
 3e5:	74 19                	je     400 <gets+0x50>
  for(i=0; i+1 < max; ){
 3e7:	89 de                	mov    %ebx,%esi
 3e9:	83 c3 01             	add    $0x1,%ebx
 3ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3ef:	7c cf                	jl     3c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3f1:	8b 45 08             	mov    0x8(%ebp),%eax
 3f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3fb:	5b                   	pop    %ebx
 3fc:	5e                   	pop    %esi
 3fd:	5f                   	pop    %edi
 3fe:	5d                   	pop    %ebp
 3ff:	c3                   	ret    
  buf[i] = '\0';
 400:	8b 45 08             	mov    0x8(%ebp),%eax
 403:	89 de                	mov    %ebx,%esi
 405:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 409:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40c:	5b                   	pop    %ebx
 40d:	5e                   	pop    %esi
 40e:	5f                   	pop    %edi
 40f:	5d                   	pop    %ebp
 410:	c3                   	ret    
 411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <stat>:

int
stat(const char *n, struct stat *st)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 425:	83 ec 08             	sub    $0x8,%esp
 428:	6a 00                	push   $0x0
 42a:	ff 75 08             	push   0x8(%ebp)
 42d:	e8 67 01 00 00       	call   599 <open>
  if(fd < 0)
 432:	83 c4 10             	add    $0x10,%esp
 435:	85 c0                	test   %eax,%eax
 437:	78 27                	js     460 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 439:	83 ec 08             	sub    $0x8,%esp
 43c:	ff 75 0c             	push   0xc(%ebp)
 43f:	89 c3                	mov    %eax,%ebx
 441:	50                   	push   %eax
 442:	e8 6a 01 00 00       	call   5b1 <fstat>
  close(fd);
 447:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 44a:	89 c6                	mov    %eax,%esi
  close(fd);
 44c:	e8 30 01 00 00       	call   581 <close>
  return r;
 451:	83 c4 10             	add    $0x10,%esp
}
 454:	8d 65 f8             	lea    -0x8(%ebp),%esp
 457:	89 f0                	mov    %esi,%eax
 459:	5b                   	pop    %ebx
 45a:	5e                   	pop    %esi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 460:	be ff ff ff ff       	mov    $0xffffffff,%esi
 465:	eb ed                	jmp    454 <stat+0x34>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax

00000470 <atoi>:

int
atoi(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
 474:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 477:	0f be 02             	movsbl (%edx),%eax
 47a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 47d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 480:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 485:	77 1e                	ja     4a5 <atoi+0x35>
 487:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 490:	83 c2 01             	add    $0x1,%edx
 493:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 496:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 49a:	0f be 02             	movsbl (%edx),%eax
 49d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4a0:	80 fb 09             	cmp    $0x9,%bl
 4a3:	76 eb                	jbe    490 <atoi+0x20>
  return n;
}
 4a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4a8:	89 c8                	mov    %ecx,%eax
 4aa:	c9                   	leave  
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	8b 45 10             	mov    0x10(%ebp),%eax
 4b7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ba:	56                   	push   %esi
 4bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4be:	85 c0                	test   %eax,%eax
 4c0:	7e 13                	jle    4d5 <memmove+0x25>
 4c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4c4:	89 d7                	mov    %edx,%edi
 4c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4d1:	39 f8                	cmp    %edi,%eax
 4d3:	75 fb                	jne    4d0 <memmove+0x20>
  return vdst;
}
 4d5:	5e                   	pop    %esi
 4d6:	89 d0                	mov    %edx,%eax
 4d8:	5f                   	pop    %edi
 4d9:	5d                   	pop    %ebp
 4da:	c3                   	ret    
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 4e6:	6a 04                	push   $0x4
 4e8:	e8 03 04 00 00       	call   8f0 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 4ed:	50                   	push   %eax
 4ee:	ff 75 10             	push   0x10(%ebp)
 4f1:	ff 75 0c             	push   0xc(%ebp)
 4f4:	ff 75 08             	push   0x8(%ebp)
 4f7:	e8 fd 00 00 00       	call   5f9 <clone>
}
 4fc:	c9                   	leave  
 4fd:	c3                   	ret    
 4fe:	66 90                	xchg   %ax,%ax

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
 649:	0f b6 92 2c 0b 00 00 	movzbl 0xb2c(%edx),%edx
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
 739:	ff 24 85 d4 0a 00 00 	jmp    *0xad4(,%eax,4)
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
 848:	ba cb 0a 00 00       	mov    $0xacb,%edx
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
 861:	a1 88 0e 00 00       	mov    0xe88,%eax
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
 8a2:	89 15 88 0e 00 00    	mov    %edx,0xe88
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
 8dc:	89 15 88 0e 00 00    	mov    %edx,0xe88
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
 8fc:	8b 3d 88 0e 00 00    	mov    0xe88,%edi
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
 941:	8b 3d 88 0e 00 00    	mov    0xe88,%edi
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
 96f:	8b 15 88 0e 00 00    	mov    0xe88,%edx
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
 99f:	89 15 88 0e 00 00    	mov    %edx,0xe88
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
 9b0:	c7 05 88 0e 00 00 8c 	movl   $0xe8c,0xe88
 9b7:	0e 00 00 
    base.s.size = 0;
 9ba:	bf 8c 0e 00 00       	mov    $0xe8c,%edi
    base.s.ptr = freep = prevp = &base;
 9bf:	c7 05 8c 0e 00 00 8c 	movl   $0xe8c,0xe8c
 9c6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9cb:	c7 05 90 0e 00 00 00 	movl   $0x0,0xe90
 9d2:	00 00 00 
    if(p->s.size >= nunits){
 9d5:	e9 42 ff ff ff       	jmp    91c <malloc+0x2c>
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 08                	mov    (%eax),%ecx
 9e2:	89 0a                	mov    %ecx,(%edx)
 9e4:	eb b9                	jmp    99f <malloc+0xaf>
