
_test_5:     file format elf32-i386


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
  14:	e8 70 05 00 00       	call   589 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 00 0e 00 00       	mov    %eax,0xe00
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 75 08 00 00       	call   8a0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 00 01 00 00    	je     136 <main+0x136>
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
  54:	68 80 01 00 00       	push   $0x180
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 3d 05 00 00       	call   5a9 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 59                	jle    ce <main+0xce>

   void *join_stack;
   int join_pid = join(&join_stack);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7b:	50                   	push   %eax
  7c:	e8 30 05 00 00       	call   5b1 <join>
   assert(join_pid == clone_pid);
  81:	83 c4 10             	add    $0x10,%esp
  84:	39 c6                	cmp    %eax,%esi
  86:	74 63                	je     eb <main+0xeb>
  88:	6a 29                	push   $0x29
  8a:	68 98 09 00 00       	push   $0x998
  8f:	68 a1 09 00 00       	push   $0x9a1
  94:	6a 01                	push   $0x1
  96:	e8 d5 05 00 00       	call   670 <printf>
  9b:	83 c4 0c             	add    $0xc,%esp
  9e:	68 04 0a 00 00       	push   $0xa04
   assert(clone_pid > 0);
  a3:	68 b4 09 00 00       	push   $0x9b4
  a8:	6a 01                	push   $0x1
  aa:	e8 c1 05 00 00       	call   670 <printf>
  af:	5a                   	pop    %edx
  b0:	59                   	pop    %ecx
  b1:	68 c8 09 00 00       	push   $0x9c8
  b6:	6a 01                	push   $0x1
  b8:	e8 b3 05 00 00       	call   670 <printf>
  bd:	5b                   	pop    %ebx
  be:	ff 35 00 0e 00 00    	push   0xe00
  c4:	e8 70 04 00 00       	call   539 <kill>
  c9:	e8 3b 04 00 00       	call   509 <exit>
  ce:	6a 25                	push   $0x25
  d0:	68 98 09 00 00       	push   $0x998
  d5:	68 a1 09 00 00       	push   $0x9a1
  da:	6a 01                	push   $0x1
  dc:	e8 8f 05 00 00       	call   670 <printf>
  e1:	83 c4 0c             	add    $0xc,%esp
  e4:	68 f6 09 00 00       	push   $0x9f6
  e9:	eb b8                	jmp    a3 <main+0xa3>
   assert(stack == join_stack);
  eb:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  ee:	74 1d                	je     10d <main+0x10d>
  f0:	6a 2a                	push   $0x2a
  f2:	68 98 09 00 00       	push   $0x998
  f7:	68 a1 09 00 00       	push   $0x9a1
  fc:	6a 01                	push   $0x1
  fe:	e8 6d 05 00 00       	call   670 <printf>
 103:	83 c4 0c             	add    $0xc,%esp
 106:	68 1a 0a 00 00       	push   $0xa1a
 10b:	eb 96                	jmp    a3 <main+0xa3>
   assert(global == 2);
 10d:	83 3d fc 0d 00 00 02 	cmpl   $0x2,0xdfc
 114:	74 40                	je     156 <main+0x156>
 116:	6a 2b                	push   $0x2b
 118:	68 98 09 00 00       	push   $0x998
 11d:	68 a1 09 00 00       	push   $0x9a1
 122:	6a 01                	push   $0x1
 124:	e8 47 05 00 00       	call   670 <printf>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	68 2e 0a 00 00       	push   $0xa2e
 131:	e9 6d ff ff ff       	jmp    a3 <main+0xa3>
   assert(p != NULL);
 136:	6a 1d                	push   $0x1d
 138:	68 98 09 00 00       	push   $0x998
 13d:	68 a1 09 00 00       	push   $0x9a1
 142:	6a 01                	push   $0x1
 144:	e8 27 05 00 00       	call   670 <printf>
 149:	83 c4 0c             	add    $0xc,%esp
 14c:	68 ec 09 00 00       	push   $0x9ec
 151:	e9 4d ff ff ff       	jmp    a3 <main+0xa3>
   
   printf(1, "TEST PASSED\n");
 156:	50                   	push   %eax
 157:	50                   	push   %eax
 158:	68 3a 0a 00 00       	push   $0xa3a
 15d:	6a 01                	push   $0x1
 15f:	e8 0c 05 00 00       	call   670 <printf>
   free(p);
 164:	89 1c 24             	mov    %ebx,(%esp)
 167:	e8 a4 06 00 00       	call   810 <free>
   exit();
 16c:	e8 98 03 00 00       	call   509 <exit>
 171:	66 90                	xchg   %ax,%ax
 173:	66 90                	xchg   %ax,%ax
 175:	66 90                	xchg   %ax,%ax
 177:	66 90                	xchg   %ax,%ax
 179:	66 90                	xchg   %ax,%ax
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <worker>:
}

void
worker(void *arg1, void *arg2) {
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 186:	8b 45 0c             	mov    0xc(%ebp),%eax
 189:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 18b:	8b 45 08             	mov    0x8(%ebp),%eax
 18e:	83 38 2a             	cmpl   $0x2a,(%eax)
 191:	75 75                	jne    208 <worker+0x88>
   assert(tmp2 == 24);
 193:	83 fa 18             	cmp    $0x18,%edx
 196:	75 2a                	jne    1c2 <worker+0x42>
   assert(global == 1);
 198:	83 3d fc 0d 00 00 01 	cmpl   $0x1,0xdfc
 19f:	0f 84 80 00 00 00    	je     225 <worker+0xa5>
 1a5:	6a 38                	push   $0x38
 1a7:	68 98 09 00 00       	push   $0x998
 1ac:	68 a1 09 00 00       	push   $0x9a1
 1b1:	6a 01                	push   $0x1
 1b3:	e8 b8 04 00 00       	call   670 <printf>
 1b8:	83 c4 0c             	add    $0xc,%esp
 1bb:	68 e0 09 00 00       	push   $0x9e0
 1c0:	eb 1b                	jmp    1dd <worker+0x5d>
   assert(tmp2 == 24);
 1c2:	6a 37                	push   $0x37
 1c4:	68 98 09 00 00       	push   $0x998
 1c9:	68 a1 09 00 00       	push   $0x9a1
 1ce:	6a 01                	push   $0x1
 1d0:	e8 9b 04 00 00       	call   670 <printf>
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	68 d5 09 00 00       	push   $0x9d5
 1dd:	68 b4 09 00 00       	push   $0x9b4
 1e2:	6a 01                	push   $0x1
 1e4:	e8 87 04 00 00       	call   670 <printf>
 1e9:	58                   	pop    %eax
 1ea:	5a                   	pop    %edx
 1eb:	68 c8 09 00 00       	push   $0x9c8
 1f0:	6a 01                	push   $0x1
 1f2:	e8 79 04 00 00       	call   670 <printf>
 1f7:	59                   	pop    %ecx
 1f8:	ff 35 00 0e 00 00    	push   0xe00
 1fe:	e8 36 03 00 00       	call   539 <kill>
 203:	e8 01 03 00 00       	call   509 <exit>
   assert(tmp1 == 42);
 208:	6a 36                	push   $0x36
 20a:	68 98 09 00 00       	push   $0x998
 20f:	68 a1 09 00 00       	push   $0x9a1
 214:	6a 01                	push   $0x1
 216:	e8 55 04 00 00       	call   670 <printf>
 21b:	83 c4 0c             	add    $0xc,%esp
 21e:	68 a9 09 00 00       	push   $0x9a9
 223:	eb b8                	jmp    1dd <worker+0x5d>
   global++;
 225:	c7 05 fc 0d 00 00 02 	movl   $0x2,0xdfc
 22c:	00 00 00 
   exit();
 22f:	e8 d5 02 00 00       	call   509 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 240:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 241:	31 c0                	xor    %eax,%eax
{
 243:	89 e5                	mov    %esp,%ebp
 245:	53                   	push   %ebx
 246:	8b 4d 08             	mov    0x8(%ebp),%ecx
 249:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 250:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 254:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 257:	83 c0 01             	add    $0x1,%eax
 25a:	84 d2                	test   %dl,%dl
 25c:	75 f2                	jne    250 <strcpy+0x10>
    ;
  return os;
}
 25e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 261:	89 c8                	mov    %ecx,%eax
 263:	c9                   	leave  
 264:	c3                   	ret    
 265:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000270 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
 277:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 27a:	0f b6 02             	movzbl (%edx),%eax
 27d:	84 c0                	test   %al,%al
 27f:	75 17                	jne    298 <strcmp+0x28>
 281:	eb 3a                	jmp    2bd <strcmp+0x4d>
 283:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 287:	90                   	nop
 288:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 28c:	83 c2 01             	add    $0x1,%edx
 28f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 292:	84 c0                	test   %al,%al
 294:	74 1a                	je     2b0 <strcmp+0x40>
    p++, q++;
 296:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 298:	0f b6 19             	movzbl (%ecx),%ebx
 29b:	38 c3                	cmp    %al,%bl
 29d:	74 e9                	je     288 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 29f:	29 d8                	sub    %ebx,%eax
}
 2a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2a4:	c9                   	leave  
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2b4:	31 c0                	xor    %eax,%eax
 2b6:	29 d8                	sub    %ebx,%eax
}
 2b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2bb:	c9                   	leave  
 2bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2bd:	0f b6 19             	movzbl (%ecx),%ebx
 2c0:	31 c0                	xor    %eax,%eax
 2c2:	eb db                	jmp    29f <strcmp+0x2f>
 2c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <strlen>:

uint
strlen(const char *s)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2d6:	80 3a 00             	cmpb   $0x0,(%edx)
 2d9:	74 15                	je     2f0 <strlen+0x20>
 2db:	31 c0                	xor    %eax,%eax
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
 2e0:	83 c0 01             	add    $0x1,%eax
 2e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2e7:	89 c1                	mov    %eax,%ecx
 2e9:	75 f5                	jne    2e0 <strlen+0x10>
    ;
  return n;
}
 2eb:	89 c8                	mov    %ecx,%eax
 2ed:	5d                   	pop    %ebp
 2ee:	c3                   	ret    
 2ef:	90                   	nop
  for(n = 0; s[n]; n++)
 2f0:	31 c9                	xor    %ecx,%ecx
}
 2f2:	5d                   	pop    %ebp
 2f3:	89 c8                	mov    %ecx,%eax
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <memset>:

void*
memset(void *dst, int c, uint n)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 307:	8b 4d 10             	mov    0x10(%ebp),%ecx
 30a:	8b 45 0c             	mov    0xc(%ebp),%eax
 30d:	89 d7                	mov    %edx,%edi
 30f:	fc                   	cld    
 310:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 312:	8b 7d fc             	mov    -0x4(%ebp),%edi
 315:	89 d0                	mov    %edx,%eax
 317:	c9                   	leave  
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <strchr>:

char*
strchr(const char *s, char c)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 32a:	0f b6 10             	movzbl (%eax),%edx
 32d:	84 d2                	test   %dl,%dl
 32f:	75 12                	jne    343 <strchr+0x23>
 331:	eb 1d                	jmp    350 <strchr+0x30>
 333:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 337:	90                   	nop
 338:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 33c:	83 c0 01             	add    $0x1,%eax
 33f:	84 d2                	test   %dl,%dl
 341:	74 0d                	je     350 <strchr+0x30>
    if(*s == c)
 343:	38 d1                	cmp    %dl,%cl
 345:	75 f1                	jne    338 <strchr+0x18>
      return (char*)s;
  return 0;
}
 347:	5d                   	pop    %ebp
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 350:	31 c0                	xor    %eax,%eax
}
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <gets>:

char*
gets(char *buf, int max)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 365:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 368:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 369:	31 db                	xor    %ebx,%ebx
{
 36b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 36e:	eb 27                	jmp    397 <gets+0x37>
    cc = read(0, &c, 1);
 370:	83 ec 04             	sub    $0x4,%esp
 373:	6a 01                	push   $0x1
 375:	57                   	push   %edi
 376:	6a 00                	push   $0x0
 378:	e8 a4 01 00 00       	call   521 <read>
    if(cc < 1)
 37d:	83 c4 10             	add    $0x10,%esp
 380:	85 c0                	test   %eax,%eax
 382:	7e 1d                	jle    3a1 <gets+0x41>
      break;
    buf[i++] = c;
 384:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 388:	8b 55 08             	mov    0x8(%ebp),%edx
 38b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 38f:	3c 0a                	cmp    $0xa,%al
 391:	74 1d                	je     3b0 <gets+0x50>
 393:	3c 0d                	cmp    $0xd,%al
 395:	74 19                	je     3b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 397:	89 de                	mov    %ebx,%esi
 399:	83 c3 01             	add    $0x1,%ebx
 39c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 39f:	7c cf                	jl     370 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3a1:	8b 45 08             	mov    0x8(%ebp),%eax
 3a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ab:	5b                   	pop    %ebx
 3ac:	5e                   	pop    %esi
 3ad:	5f                   	pop    %edi
 3ae:	5d                   	pop    %ebp
 3af:	c3                   	ret    
  buf[i] = '\0';
 3b0:	8b 45 08             	mov    0x8(%ebp),%eax
 3b3:	89 de                	mov    %ebx,%esi
 3b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bc:	5b                   	pop    %ebx
 3bd:	5e                   	pop    %esi
 3be:	5f                   	pop    %edi
 3bf:	5d                   	pop    %ebp
 3c0:	c3                   	ret    
 3c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3d5:	83 ec 08             	sub    $0x8,%esp
 3d8:	6a 00                	push   $0x0
 3da:	ff 75 08             	push   0x8(%ebp)
 3dd:	e8 67 01 00 00       	call   549 <open>
  if(fd < 0)
 3e2:	83 c4 10             	add    $0x10,%esp
 3e5:	85 c0                	test   %eax,%eax
 3e7:	78 27                	js     410 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3e9:	83 ec 08             	sub    $0x8,%esp
 3ec:	ff 75 0c             	push   0xc(%ebp)
 3ef:	89 c3                	mov    %eax,%ebx
 3f1:	50                   	push   %eax
 3f2:	e8 6a 01 00 00       	call   561 <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 30 01 00 00       	call   531 <close>
  return r;
 401:	83 c4 10             	add    $0x10,%esp
}
 404:	8d 65 f8             	lea    -0x8(%ebp),%esp
 407:	89 f0                	mov    %esi,%eax
 409:	5b                   	pop    %ebx
 40a:	5e                   	pop    %esi
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 410:	be ff ff ff ff       	mov    $0xffffffff,%esi
 415:	eb ed                	jmp    404 <stat+0x34>
 417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41e:	66 90                	xchg   %ax,%ax

00000420 <atoi>:

int
atoi(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 427:	0f be 02             	movsbl (%edx),%eax
 42a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 42d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 430:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 435:	77 1e                	ja     455 <atoi+0x35>
 437:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 440:	83 c2 01             	add    $0x1,%edx
 443:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 446:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 44a:	0f be 02             	movsbl (%edx),%eax
 44d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 450:	80 fb 09             	cmp    $0x9,%bl
 453:	76 eb                	jbe    440 <atoi+0x20>
  return n;
}
 455:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 458:	89 c8                	mov    %ecx,%eax
 45a:	c9                   	leave  
 45b:	c3                   	ret    
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 45 10             	mov    0x10(%ebp),%eax
 467:	8b 55 08             	mov    0x8(%ebp),%edx
 46a:	56                   	push   %esi
 46b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 46e:	85 c0                	test   %eax,%eax
 470:	7e 13                	jle    485 <memmove+0x25>
 472:	01 d0                	add    %edx,%eax
  dst = vdst;
 474:	89 d7                	mov    %edx,%edi
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 480:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 481:	39 f8                	cmp    %edi,%eax
 483:	75 fb                	jne    480 <memmove+0x20>
  return vdst;
}
 485:	5e                   	pop    %esi
 486:	89 d0                	mov    %edx,%eax
 488:	5f                   	pop    %edi
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret    
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 496:	6a 04                	push   $0x4
 498:	e8 03 04 00 00       	call   8a0 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 49d:	50                   	push   %eax
 49e:	ff 75 10             	push   0x10(%ebp)
 4a1:	ff 75 0c             	push   0xc(%ebp)
 4a4:	ff 75 08             	push   0x8(%ebp)
 4a7:	e8 fd 00 00 00       	call   5a9 <clone>
}
 4ac:	c9                   	leave  
 4ad:	c3                   	ret    
 4ae:	66 90                	xchg   %ax,%ax

000004b0 <thread_join>:

int
thread_join(){
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	56                   	push   %esi
 4b4:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 4b5:	83 ec 0c             	sub    $0xc,%esp
 4b8:	6a 04                	push   $0x4
 4ba:	e8 e1 03 00 00       	call   8a0 <malloc>
  int rc = join(stack);
 4bf:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 4c2:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 4c4:	e8 e8 00 00 00       	call   5b1 <join>
 4c9:	89 c6                	mov    %eax,%esi
  free(*stack);
 4cb:	58                   	pop    %eax
 4cc:	ff 33                	push   (%ebx)
 4ce:	e8 3d 03 00 00       	call   810 <free>
  return rc;
}
 4d3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4d6:	89 f0                	mov    %esi,%eax
 4d8:	5b                   	pop    %ebx
 4d9:	5e                   	pop    %esi
 4da:	5d                   	pop    %ebp
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <lock_release>:
 4f0:	c3                   	ret    
 4f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <lock_init>:
 500:	c3                   	ret    

00000501 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 501:	b8 01 00 00 00       	mov    $0x1,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    

00000509 <exit>:
SYSCALL(exit)
 509:	b8 02 00 00 00       	mov    $0x2,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    

00000511 <wait>:
SYSCALL(wait)
 511:	b8 03 00 00 00       	mov    $0x3,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    

00000519 <pipe>:
SYSCALL(pipe)
 519:	b8 04 00 00 00       	mov    $0x4,%eax
 51e:	cd 40                	int    $0x40
 520:	c3                   	ret    

00000521 <read>:
SYSCALL(read)
 521:	b8 05 00 00 00       	mov    $0x5,%eax
 526:	cd 40                	int    $0x40
 528:	c3                   	ret    

00000529 <write>:
SYSCALL(write)
 529:	b8 10 00 00 00       	mov    $0x10,%eax
 52e:	cd 40                	int    $0x40
 530:	c3                   	ret    

00000531 <close>:
SYSCALL(close)
 531:	b8 15 00 00 00       	mov    $0x15,%eax
 536:	cd 40                	int    $0x40
 538:	c3                   	ret    

00000539 <kill>:
SYSCALL(kill)
 539:	b8 06 00 00 00       	mov    $0x6,%eax
 53e:	cd 40                	int    $0x40
 540:	c3                   	ret    

00000541 <exec>:
SYSCALL(exec)
 541:	b8 07 00 00 00       	mov    $0x7,%eax
 546:	cd 40                	int    $0x40
 548:	c3                   	ret    

00000549 <open>:
SYSCALL(open)
 549:	b8 0f 00 00 00       	mov    $0xf,%eax
 54e:	cd 40                	int    $0x40
 550:	c3                   	ret    

00000551 <mknod>:
SYSCALL(mknod)
 551:	b8 11 00 00 00       	mov    $0x11,%eax
 556:	cd 40                	int    $0x40
 558:	c3                   	ret    

00000559 <unlink>:
SYSCALL(unlink)
 559:	b8 12 00 00 00       	mov    $0x12,%eax
 55e:	cd 40                	int    $0x40
 560:	c3                   	ret    

00000561 <fstat>:
SYSCALL(fstat)
 561:	b8 08 00 00 00       	mov    $0x8,%eax
 566:	cd 40                	int    $0x40
 568:	c3                   	ret    

00000569 <link>:
SYSCALL(link)
 569:	b8 13 00 00 00       	mov    $0x13,%eax
 56e:	cd 40                	int    $0x40
 570:	c3                   	ret    

00000571 <mkdir>:
SYSCALL(mkdir)
 571:	b8 14 00 00 00       	mov    $0x14,%eax
 576:	cd 40                	int    $0x40
 578:	c3                   	ret    

00000579 <chdir>:
SYSCALL(chdir)
 579:	b8 09 00 00 00       	mov    $0x9,%eax
 57e:	cd 40                	int    $0x40
 580:	c3                   	ret    

00000581 <dup>:
SYSCALL(dup)
 581:	b8 0a 00 00 00       	mov    $0xa,%eax
 586:	cd 40                	int    $0x40
 588:	c3                   	ret    

00000589 <getpid>:
SYSCALL(getpid)
 589:	b8 0b 00 00 00       	mov    $0xb,%eax
 58e:	cd 40                	int    $0x40
 590:	c3                   	ret    

00000591 <sbrk>:
SYSCALL(sbrk)
 591:	b8 0c 00 00 00       	mov    $0xc,%eax
 596:	cd 40                	int    $0x40
 598:	c3                   	ret    

00000599 <sleep>:
SYSCALL(sleep)
 599:	b8 0d 00 00 00       	mov    $0xd,%eax
 59e:	cd 40                	int    $0x40
 5a0:	c3                   	ret    

000005a1 <uptime>:
SYSCALL(uptime)
 5a1:	b8 0e 00 00 00       	mov    $0xe,%eax
 5a6:	cd 40                	int    $0x40
 5a8:	c3                   	ret    

000005a9 <clone>:
SYSCALL(clone)
 5a9:	b8 16 00 00 00       	mov    $0x16,%eax
 5ae:	cd 40                	int    $0x40
 5b0:	c3                   	ret    

000005b1 <join>:
SYSCALL(join)
 5b1:	b8 17 00 00 00       	mov    $0x17,%eax
 5b6:	cd 40                	int    $0x40
 5b8:	c3                   	ret    
 5b9:	66 90                	xchg   %ax,%ax
 5bb:	66 90                	xchg   %ax,%ax
 5bd:	66 90                	xchg   %ax,%ax
 5bf:	90                   	nop

000005c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 3c             	sub    $0x3c,%esp
 5c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5cc:	89 d1                	mov    %edx,%ecx
{
 5ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5d1:	85 d2                	test   %edx,%edx
 5d3:	0f 89 7f 00 00 00    	jns    658 <printint+0x98>
 5d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5dd:	74 79                	je     658 <printint+0x98>
    neg = 1;
 5df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5e8:	31 db                	xor    %ebx,%ebx
 5ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5f0:	89 c8                	mov    %ecx,%eax
 5f2:	31 d2                	xor    %edx,%edx
 5f4:	89 cf                	mov    %ecx,%edi
 5f6:	f7 75 c4             	divl   -0x3c(%ebp)
 5f9:	0f b6 92 a8 0a 00 00 	movzbl 0xaa8(%edx),%edx
 600:	89 45 c0             	mov    %eax,-0x40(%ebp)
 603:	89 d8                	mov    %ebx,%eax
 605:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 608:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 60b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 60e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 611:	76 dd                	jbe    5f0 <printint+0x30>
  if(neg)
 613:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 616:	85 c9                	test   %ecx,%ecx
 618:	74 0c                	je     626 <printint+0x66>
    buf[i++] = '-';
 61a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 61f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 621:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 626:	8b 7d b8             	mov    -0x48(%ebp),%edi
 629:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 62d:	eb 07                	jmp    636 <printint+0x76>
 62f:	90                   	nop
    putc(fd, buf[i]);
 630:	0f b6 13             	movzbl (%ebx),%edx
 633:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 636:	83 ec 04             	sub    $0x4,%esp
 639:	88 55 d7             	mov    %dl,-0x29(%ebp)
 63c:	6a 01                	push   $0x1
 63e:	56                   	push   %esi
 63f:	57                   	push   %edi
 640:	e8 e4 fe ff ff       	call   529 <write>
  while(--i >= 0)
 645:	83 c4 10             	add    $0x10,%esp
 648:	39 de                	cmp    %ebx,%esi
 64a:	75 e4                	jne    630 <printint+0x70>
}
 64c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64f:	5b                   	pop    %ebx
 650:	5e                   	pop    %esi
 651:	5f                   	pop    %edi
 652:	5d                   	pop    %ebp
 653:	c3                   	ret    
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 658:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 65f:	eb 87                	jmp    5e8 <printint+0x28>
 661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 668:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66f:	90                   	nop

00000670 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 679:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 67c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 67f:	0f b6 13             	movzbl (%ebx),%edx
 682:	84 d2                	test   %dl,%dl
 684:	74 6a                	je     6f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 686:	8d 45 10             	lea    0x10(%ebp),%eax
 689:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 68c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 68f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 691:	89 45 d0             	mov    %eax,-0x30(%ebp)
 694:	eb 36                	jmp    6cc <printf+0x5c>
 696:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69d:	8d 76 00             	lea    0x0(%esi),%esi
 6a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6a8:	83 f8 25             	cmp    $0x25,%eax
 6ab:	74 15                	je     6c2 <printf+0x52>
  write(fd, &c, 1);
 6ad:	83 ec 04             	sub    $0x4,%esp
 6b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6b3:	6a 01                	push   $0x1
 6b5:	57                   	push   %edi
 6b6:	56                   	push   %esi
 6b7:	e8 6d fe ff ff       	call   529 <write>
 6bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6c2:	0f b6 13             	movzbl (%ebx),%edx
 6c5:	83 c3 01             	add    $0x1,%ebx
 6c8:	84 d2                	test   %dl,%dl
 6ca:	74 24                	je     6f0 <printf+0x80>
    c = fmt[i] & 0xff;
 6cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6cf:	85 c9                	test   %ecx,%ecx
 6d1:	74 cd                	je     6a0 <printf+0x30>
      }
    } else if(state == '%'){
 6d3:	83 f9 25             	cmp    $0x25,%ecx
 6d6:	75 ea                	jne    6c2 <printf+0x52>
      if(c == 'd'){
 6d8:	83 f8 25             	cmp    $0x25,%eax
 6db:	0f 84 07 01 00 00    	je     7e8 <printf+0x178>
 6e1:	83 e8 63             	sub    $0x63,%eax
 6e4:	83 f8 15             	cmp    $0x15,%eax
 6e7:	77 17                	ja     700 <printf+0x90>
 6e9:	ff 24 85 50 0a 00 00 	jmp    *0xa50(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6f3:	5b                   	pop    %ebx
 6f4:	5e                   	pop    %esi
 6f5:	5f                   	pop    %edi
 6f6:	5d                   	pop    %ebp
 6f7:	c3                   	ret    
 6f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ff:	90                   	nop
  write(fd, &c, 1);
 700:	83 ec 04             	sub    $0x4,%esp
 703:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 706:	6a 01                	push   $0x1
 708:	57                   	push   %edi
 709:	56                   	push   %esi
 70a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 70e:	e8 16 fe ff ff       	call   529 <write>
        putc(fd, c);
 713:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 717:	83 c4 0c             	add    $0xc,%esp
 71a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 71d:	6a 01                	push   $0x1
 71f:	57                   	push   %edi
 720:	56                   	push   %esi
 721:	e8 03 fe ff ff       	call   529 <write>
        putc(fd, c);
 726:	83 c4 10             	add    $0x10,%esp
      state = 0;
 729:	31 c9                	xor    %ecx,%ecx
 72b:	eb 95                	jmp    6c2 <printf+0x52>
 72d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 730:	83 ec 0c             	sub    $0xc,%esp
 733:	b9 10 00 00 00       	mov    $0x10,%ecx
 738:	6a 00                	push   $0x0
 73a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 73d:	8b 10                	mov    (%eax),%edx
 73f:	89 f0                	mov    %esi,%eax
 741:	e8 7a fe ff ff       	call   5c0 <printint>
        ap++;
 746:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 74a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 74d:	31 c9                	xor    %ecx,%ecx
 74f:	e9 6e ff ff ff       	jmp    6c2 <printf+0x52>
 754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 758:	8b 45 d0             	mov    -0x30(%ebp),%eax
 75b:	8b 10                	mov    (%eax),%edx
        ap++;
 75d:	83 c0 04             	add    $0x4,%eax
 760:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 763:	85 d2                	test   %edx,%edx
 765:	0f 84 8d 00 00 00    	je     7f8 <printf+0x188>
        while(*s != 0){
 76b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 76e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 770:	84 c0                	test   %al,%al
 772:	0f 84 4a ff ff ff    	je     6c2 <printf+0x52>
 778:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 77b:	89 d3                	mov    %edx,%ebx
 77d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 780:	83 ec 04             	sub    $0x4,%esp
          s++;
 783:	83 c3 01             	add    $0x1,%ebx
 786:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 789:	6a 01                	push   $0x1
 78b:	57                   	push   %edi
 78c:	56                   	push   %esi
 78d:	e8 97 fd ff ff       	call   529 <write>
        while(*s != 0){
 792:	0f b6 03             	movzbl (%ebx),%eax
 795:	83 c4 10             	add    $0x10,%esp
 798:	84 c0                	test   %al,%al
 79a:	75 e4                	jne    780 <printf+0x110>
      state = 0;
 79c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 79f:	31 c9                	xor    %ecx,%ecx
 7a1:	e9 1c ff ff ff       	jmp    6c2 <printf+0x52>
 7a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7b0:	83 ec 0c             	sub    $0xc,%esp
 7b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7b8:	6a 01                	push   $0x1
 7ba:	e9 7b ff ff ff       	jmp    73a <printf+0xca>
 7bf:	90                   	nop
        putc(fd, *ap);
 7c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7c8:	6a 01                	push   $0x1
 7ca:	57                   	push   %edi
 7cb:	56                   	push   %esi
        putc(fd, *ap);
 7cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7cf:	e8 55 fd ff ff       	call   529 <write>
        ap++;
 7d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7db:	31 c9                	xor    %ecx,%ecx
 7dd:	e9 e0 fe ff ff       	jmp    6c2 <printf+0x52>
 7e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7eb:	83 ec 04             	sub    $0x4,%esp
 7ee:	e9 2a ff ff ff       	jmp    71d <printf+0xad>
 7f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7f7:	90                   	nop
          s = "(null)";
 7f8:	ba 47 0a 00 00       	mov    $0xa47,%edx
        while(*s != 0){
 7fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 800:	b8 28 00 00 00       	mov    $0x28,%eax
 805:	89 d3                	mov    %edx,%ebx
 807:	e9 74 ff ff ff       	jmp    780 <printf+0x110>
 80c:	66 90                	xchg   %ax,%ax
 80e:	66 90                	xchg   %ax,%ax

00000810 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 810:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 811:	a1 04 0e 00 00       	mov    0xe04,%eax
{
 816:	89 e5                	mov    %esp,%ebp
 818:	57                   	push   %edi
 819:	56                   	push   %esi
 81a:	53                   	push   %ebx
 81b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 81e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 828:	89 c2                	mov    %eax,%edx
 82a:	8b 00                	mov    (%eax),%eax
 82c:	39 ca                	cmp    %ecx,%edx
 82e:	73 30                	jae    860 <free+0x50>
 830:	39 c1                	cmp    %eax,%ecx
 832:	72 04                	jb     838 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 834:	39 c2                	cmp    %eax,%edx
 836:	72 f0                	jb     828 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 838:	8b 73 fc             	mov    -0x4(%ebx),%esi
 83b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 83e:	39 f8                	cmp    %edi,%eax
 840:	74 30                	je     872 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 842:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 845:	8b 42 04             	mov    0x4(%edx),%eax
 848:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 84b:	39 f1                	cmp    %esi,%ecx
 84d:	74 3a                	je     889 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 84f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 851:	5b                   	pop    %ebx
  freep = p;
 852:	89 15 04 0e 00 00    	mov    %edx,0xe04
}
 858:	5e                   	pop    %esi
 859:	5f                   	pop    %edi
 85a:	5d                   	pop    %ebp
 85b:	c3                   	ret    
 85c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 860:	39 c2                	cmp    %eax,%edx
 862:	72 c4                	jb     828 <free+0x18>
 864:	39 c1                	cmp    %eax,%ecx
 866:	73 c0                	jae    828 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 868:	8b 73 fc             	mov    -0x4(%ebx),%esi
 86b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 86e:	39 f8                	cmp    %edi,%eax
 870:	75 d0                	jne    842 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 872:	03 70 04             	add    0x4(%eax),%esi
 875:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 878:	8b 02                	mov    (%edx),%eax
 87a:	8b 00                	mov    (%eax),%eax
 87c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 87f:	8b 42 04             	mov    0x4(%edx),%eax
 882:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 885:	39 f1                	cmp    %esi,%ecx
 887:	75 c6                	jne    84f <free+0x3f>
    p->s.size += bp->s.size;
 889:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 88c:	89 15 04 0e 00 00    	mov    %edx,0xe04
    p->s.size += bp->s.size;
 892:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 895:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 898:	89 0a                	mov    %ecx,(%edx)
}
 89a:	5b                   	pop    %ebx
 89b:	5e                   	pop    %esi
 89c:	5f                   	pop    %edi
 89d:	5d                   	pop    %ebp
 89e:	c3                   	ret    
 89f:	90                   	nop

000008a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	56                   	push   %esi
 8a5:	53                   	push   %ebx
 8a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ac:	8b 3d 04 0e 00 00    	mov    0xe04,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b2:	8d 70 07             	lea    0x7(%eax),%esi
 8b5:	c1 ee 03             	shr    $0x3,%esi
 8b8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8bb:	85 ff                	test   %edi,%edi
 8bd:	0f 84 9d 00 00 00    	je     960 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8c3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8c5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8c8:	39 f1                	cmp    %esi,%ecx
 8ca:	73 6a                	jae    936 <malloc+0x96>
 8cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8d1:	39 de                	cmp    %ebx,%esi
 8d3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8d6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8e0:	eb 17                	jmp    8f9 <malloc+0x59>
 8e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8ea:	8b 48 04             	mov    0x4(%eax),%ecx
 8ed:	39 f1                	cmp    %esi,%ecx
 8ef:	73 4f                	jae    940 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8f1:	8b 3d 04 0e 00 00    	mov    0xe04,%edi
 8f7:	89 c2                	mov    %eax,%edx
 8f9:	39 d7                	cmp    %edx,%edi
 8fb:	75 eb                	jne    8e8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8fd:	83 ec 0c             	sub    $0xc,%esp
 900:	ff 75 e4             	push   -0x1c(%ebp)
 903:	e8 89 fc ff ff       	call   591 <sbrk>
  if(p == (char*)-1)
 908:	83 c4 10             	add    $0x10,%esp
 90b:	83 f8 ff             	cmp    $0xffffffff,%eax
 90e:	74 1c                	je     92c <malloc+0x8c>
  hp->s.size = nu;
 910:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 913:	83 ec 0c             	sub    $0xc,%esp
 916:	83 c0 08             	add    $0x8,%eax
 919:	50                   	push   %eax
 91a:	e8 f1 fe ff ff       	call   810 <free>
  return freep;
 91f:	8b 15 04 0e 00 00    	mov    0xe04,%edx
      if((p = morecore(nunits)) == 0)
 925:	83 c4 10             	add    $0x10,%esp
 928:	85 d2                	test   %edx,%edx
 92a:	75 bc                	jne    8e8 <malloc+0x48>
        return 0;
  }
}
 92c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 92f:	31 c0                	xor    %eax,%eax
}
 931:	5b                   	pop    %ebx
 932:	5e                   	pop    %esi
 933:	5f                   	pop    %edi
 934:	5d                   	pop    %ebp
 935:	c3                   	ret    
    if(p->s.size >= nunits){
 936:	89 d0                	mov    %edx,%eax
 938:	89 fa                	mov    %edi,%edx
 93a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 940:	39 ce                	cmp    %ecx,%esi
 942:	74 4c                	je     990 <malloc+0xf0>
        p->s.size -= nunits;
 944:	29 f1                	sub    %esi,%ecx
 946:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 949:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 94c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 94f:	89 15 04 0e 00 00    	mov    %edx,0xe04
}
 955:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 958:	83 c0 08             	add    $0x8,%eax
}
 95b:	5b                   	pop    %ebx
 95c:	5e                   	pop    %esi
 95d:	5f                   	pop    %edi
 95e:	5d                   	pop    %ebp
 95f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 960:	c7 05 04 0e 00 00 08 	movl   $0xe08,0xe04
 967:	0e 00 00 
    base.s.size = 0;
 96a:	bf 08 0e 00 00       	mov    $0xe08,%edi
    base.s.ptr = freep = prevp = &base;
 96f:	c7 05 08 0e 00 00 08 	movl   $0xe08,0xe08
 976:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 979:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 97b:	c7 05 0c 0e 00 00 00 	movl   $0x0,0xe0c
 982:	00 00 00 
    if(p->s.size >= nunits){
 985:	e9 42 ff ff ff       	jmp    8cc <malloc+0x2c>
 98a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 990:	8b 08                	mov    (%eax),%ecx
 992:	89 0a                	mov    %ecx,(%edx)
 994:	eb b9                	jmp    94f <malloc+0xaf>
