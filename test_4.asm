
_test_4:     file format elf32-i386


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
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
   ppid = getpid();
  13:	e8 8e 05 00 00       	call   5a6 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 90 0e 00 00       	mov    %eax,0xe90
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 96 08 00 00       	call   8c0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 29 01 00 00    	je     15e <main+0x15e>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE == 0)
     stack = p + 4;
  37:	8d 40 04             	lea    0x4(%eax),%eax
  3a:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
  40:	0f 45 c3             	cmovne %ebx,%eax
   else
     stack = p;

   assert(clone(worker, 0, 0, stack) == -1);
  43:	50                   	push   %eax
  44:	6a 00                	push   $0x0
  46:	6a 00                	push   $0x0
  48:	68 c0 01 00 00       	push   $0x1c0
  4d:	e8 74 05 00 00       	call   5c6 <clone>
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 ff             	cmp    $0xffffffff,%eax
  58:	74 46                	je     a0 <main+0xa0>
  5a:	6a 21                	push   $0x21
  5c:	68 b8 09 00 00       	push   $0x9b8
  61:	68 c1 09 00 00       	push   $0x9c1
  66:	6a 01                	push   $0x1
  68:	e8 23 06 00 00       	call   690 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 1c 0a 00 00       	push   $0xa1c
  75:	68 d3 09 00 00       	push   $0x9d3
  7a:	6a 01                	push   $0x1
  7c:	e8 0f 06 00 00       	call   690 <printf>
  81:	5a                   	pop    %edx
  82:	59                   	pop    %ecx
  83:	68 e7 09 00 00       	push   $0x9e7
  88:	6a 01                	push   $0x1
  8a:	e8 01 06 00 00       	call   690 <printf>
  8f:	5b                   	pop    %ebx
  90:	ff 35 90 0e 00 00    	push   0xe90
  96:	e8 bb 04 00 00       	call   556 <kill>
  9b:	e8 86 04 00 00       	call   526 <exit>

   stack = sbrk(0);
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	6a 00                	push   $0x0
  a5:	e8 04 05 00 00       	call   5ae <sbrk>
   if((uint)stack % PGSIZE)
  aa:	83 c4 10             	add    $0x10,%esp
   stack = sbrk(0);
  ad:	89 c6                	mov    %eax,%esi
   if((uint)stack % PGSIZE)
  af:	25 ff 0f 00 00       	and    $0xfff,%eax
  b4:	75 59                	jne    10f <main+0x10f>
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
  b6:	83 ec 0c             	sub    $0xc,%esp
  b9:	6a 00                	push   $0x0
  bb:	e8 ee 04 00 00       	call   5ae <sbrk>
  c0:	89 c2                	mov    %eax,%edx
  c2:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  c8:	29 d0                	sub    %edx,%eax
  ca:	89 04 24             	mov    %eax,(%esp)
  cd:	e8 dc 04 00 00       	call   5ae <sbrk>
  d2:	83 c4 10             	add    $0x10,%esp
   assert((uint)stack % PGSIZE == 0);
   assert((uint)sbrk(0) - (uint)stack == PGSIZE/2);
  d5:	83 ec 0c             	sub    $0xc,%esp
  d8:	6a 00                	push   $0x0
  da:	e8 cf 04 00 00       	call   5ae <sbrk>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	29 f0                	sub    %esi,%eax
  e4:	3d 00 08 00 00       	cmp    $0x800,%eax
  e9:	0f 84 8f 00 00 00    	je     17e <main+0x17e>
  ef:	6a 28                	push   $0x28
  f1:	68 b8 09 00 00       	push   $0x9b8
  f6:	68 c1 09 00 00       	push   $0x9c1
  fb:	6a 01                	push   $0x1
  fd:	e8 8e 05 00 00       	call   690 <printf>
 102:	83 c4 0c             	add    $0xc,%esp
 105:	68 40 0a 00 00       	push   $0xa40
 10a:	e9 66 ff ff ff       	jmp    75 <main+0x75>
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 10f:	83 ec 0c             	sub    $0xc,%esp
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 112:	29 c6                	sub    %eax,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 114:	6a 00                	push   $0x0
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 116:	81 c6 00 10 00 00    	add    $0x1000,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 11c:	e8 8d 04 00 00       	call   5ae <sbrk>
 121:	89 c2                	mov    %eax,%edx
 123:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
 129:	29 d0                	sub    %edx,%eax
 12b:	89 04 24             	mov    %eax,(%esp)
 12e:	e8 7b 04 00 00       	call   5ae <sbrk>
   assert((uint)stack % PGSIZE == 0);
 133:	83 c4 10             	add    $0x10,%esp
 136:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
 13c:	74 97                	je     d5 <main+0xd5>
 13e:	6a 27                	push   $0x27
 140:	68 b8 09 00 00       	push   $0x9b8
 145:	68 c1 09 00 00       	push   $0x9c1
 14a:	6a 01                	push   $0x1
 14c:	e8 3f 05 00 00       	call   690 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 f4 09 00 00       	push   $0x9f4
 159:	e9 17 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 15e:	6a 1b                	push   $0x1b
 160:	68 b8 09 00 00       	push   $0x9b8
 165:	68 c1 09 00 00       	push   $0x9c1
 16a:	6a 01                	push   $0x1
 16c:	e8 1f 05 00 00       	call   690 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 c9 09 00 00       	push   $0x9c9
 179:	e9 f7 fe ff ff       	jmp    75 <main+0x75>

   assert(clone(worker, 0, 0, stack) == -1);
 17e:	56                   	push   %esi
 17f:	6a 00                	push   $0x0
 181:	6a 00                	push   $0x0
 183:	68 c0 01 00 00       	push   $0x1c0
 188:	e8 39 04 00 00       	call   5c6 <clone>
 18d:	83 c4 10             	add    $0x10,%esp
 190:	83 c0 01             	add    $0x1,%eax
 193:	74 07                	je     19c <main+0x19c>
 195:	6a 2a                	push   $0x2a
 197:	e9 c0 fe ff ff       	jmp    5c <main+0x5c>
   
   printf(1, "TEST PASSED\n");
 19c:	50                   	push   %eax
 19d:	50                   	push   %eax
 19e:	68 0e 0a 00 00       	push   $0xa0e
 1a3:	6a 01                	push   $0x1
 1a5:	e8 e6 04 00 00       	call   690 <printf>
   free(p);
 1aa:	89 1c 24             	mov    %ebx,(%esp)
 1ad:	e8 7e 06 00 00       	call   830 <free>
   exit();
 1b2:	e8 6f 03 00 00       	call   526 <exit>
 1b7:	66 90                	xchg   %ax,%ax
 1b9:	66 90                	xchg   %ax,%ax
 1bb:	66 90                	xchg   %ax,%ax
 1bd:	66 90                	xchg   %ax,%ax
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	83 ec 08             	sub    $0x8,%esp
   exit();
 1c6:	e8 5b 03 00 00       	call   526 <exit>
 1cb:	66 90                	xchg   %ax,%ax
 1cd:	66 90                	xchg   %ax,%ax
 1cf:	90                   	nop

000001d0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 1d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1d1:	31 c0                	xor    %eax,%eax
{
 1d3:	89 e5                	mov    %esp,%ebp
 1d5:	53                   	push   %ebx
 1d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1e7:	83 c0 01             	add    $0x1,%eax
 1ea:	84 d2                	test   %dl,%dl
 1ec:	75 f2                	jne    1e0 <strcpy+0x10>
    ;
  return os;
}
 1ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f1:	89 c8                	mov    %ecx,%eax
 1f3:	c9                   	leave  
 1f4:	c3                   	ret    
 1f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000200 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 55 08             	mov    0x8(%ebp),%edx
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 20a:	0f b6 02             	movzbl (%edx),%eax
 20d:	84 c0                	test   %al,%al
 20f:	75 17                	jne    228 <strcmp+0x28>
 211:	eb 3a                	jmp    24d <strcmp+0x4d>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 21c:	83 c2 01             	add    $0x1,%edx
 21f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 222:	84 c0                	test   %al,%al
 224:	74 1a                	je     240 <strcmp+0x40>
    p++, q++;
 226:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 228:	0f b6 19             	movzbl (%ecx),%ebx
 22b:	38 c3                	cmp    %al,%bl
 22d:	74 e9                	je     218 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 22f:	29 d8                	sub    %ebx,%eax
}
 231:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 234:	c9                   	leave  
 235:	c3                   	ret    
 236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 240:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 244:	31 c0                	xor    %eax,%eax
 246:	29 d8                	sub    %ebx,%eax
}
 248:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 24b:	c9                   	leave  
 24c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 24d:	0f b6 19             	movzbl (%ecx),%ebx
 250:	31 c0                	xor    %eax,%eax
 252:	eb db                	jmp    22f <strcmp+0x2f>
 254:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 25f:	90                   	nop

00000260 <strlen>:

uint
strlen(const char *s)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 266:	80 3a 00             	cmpb   $0x0,(%edx)
 269:	74 15                	je     280 <strlen+0x20>
 26b:	31 c0                	xor    %eax,%eax
 26d:	8d 76 00             	lea    0x0(%esi),%esi
 270:	83 c0 01             	add    $0x1,%eax
 273:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 277:	89 c1                	mov    %eax,%ecx
 279:	75 f5                	jne    270 <strlen+0x10>
    ;
  return n;
}
 27b:	89 c8                	mov    %ecx,%eax
 27d:	5d                   	pop    %ebp
 27e:	c3                   	ret    
 27f:	90                   	nop
  for(n = 0; s[n]; n++)
 280:	31 c9                	xor    %ecx,%ecx
}
 282:	5d                   	pop    %ebp
 283:	89 c8                	mov    %ecx,%eax
 285:	c3                   	ret    
 286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28d:	8d 76 00             	lea    0x0(%esi),%esi

00000290 <memset>:

void*
memset(void *dst, int c, uint n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 297:	8b 4d 10             	mov    0x10(%ebp),%ecx
 29a:	8b 45 0c             	mov    0xc(%ebp),%eax
 29d:	89 d7                	mov    %edx,%edi
 29f:	fc                   	cld    
 2a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2a5:	89 d0                	mov    %edx,%eax
 2a7:	c9                   	leave  
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002b0 <strchr>:

char*
strchr(const char *s, char c)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2ba:	0f b6 10             	movzbl (%eax),%edx
 2bd:	84 d2                	test   %dl,%dl
 2bf:	75 12                	jne    2d3 <strchr+0x23>
 2c1:	eb 1d                	jmp    2e0 <strchr+0x30>
 2c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c7:	90                   	nop
 2c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2cc:	83 c0 01             	add    $0x1,%eax
 2cf:	84 d2                	test   %dl,%dl
 2d1:	74 0d                	je     2e0 <strchr+0x30>
    if(*s == c)
 2d3:	38 d1                	cmp    %dl,%cl
 2d5:	75 f1                	jne    2c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2d7:	5d                   	pop    %ebp
 2d8:	c3                   	ret    
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2e0:	31 c0                	xor    %eax,%eax
}
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ef:	90                   	nop

000002f0 <gets>:

char*
gets(char *buf, int max)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2f9:	31 db                	xor    %ebx,%ebx
{
 2fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2fe:	eb 27                	jmp    327 <gets+0x37>
    cc = read(0, &c, 1);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	6a 01                	push   $0x1
 305:	57                   	push   %edi
 306:	6a 00                	push   $0x0
 308:	e8 31 02 00 00       	call   53e <read>
    if(cc < 1)
 30d:	83 c4 10             	add    $0x10,%esp
 310:	85 c0                	test   %eax,%eax
 312:	7e 1d                	jle    331 <gets+0x41>
      break;
    buf[i++] = c;
 314:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 318:	8b 55 08             	mov    0x8(%ebp),%edx
 31b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 31f:	3c 0a                	cmp    $0xa,%al
 321:	74 1d                	je     340 <gets+0x50>
 323:	3c 0d                	cmp    $0xd,%al
 325:	74 19                	je     340 <gets+0x50>
  for(i=0; i+1 < max; ){
 327:	89 de                	mov    %ebx,%esi
 329:	83 c3 01             	add    $0x1,%ebx
 32c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 32f:	7c cf                	jl     300 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 331:	8b 45 08             	mov    0x8(%ebp),%eax
 334:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 338:	8d 65 f4             	lea    -0xc(%ebp),%esp
 33b:	5b                   	pop    %ebx
 33c:	5e                   	pop    %esi
 33d:	5f                   	pop    %edi
 33e:	5d                   	pop    %ebp
 33f:	c3                   	ret    
  buf[i] = '\0';
 340:	8b 45 08             	mov    0x8(%ebp),%eax
 343:	89 de                	mov    %ebx,%esi
 345:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 349:	8d 65 f4             	lea    -0xc(%ebp),%esp
 34c:	5b                   	pop    %ebx
 34d:	5e                   	pop    %esi
 34e:	5f                   	pop    %edi
 34f:	5d                   	pop    %ebp
 350:	c3                   	ret    
 351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <stat>:

int
stat(const char *n, struct stat *st)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 365:	83 ec 08             	sub    $0x8,%esp
 368:	6a 00                	push   $0x0
 36a:	ff 75 08             	push   0x8(%ebp)
 36d:	e8 f4 01 00 00       	call   566 <open>
  if(fd < 0)
 372:	83 c4 10             	add    $0x10,%esp
 375:	85 c0                	test   %eax,%eax
 377:	78 27                	js     3a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 379:	83 ec 08             	sub    $0x8,%esp
 37c:	ff 75 0c             	push   0xc(%ebp)
 37f:	89 c3                	mov    %eax,%ebx
 381:	50                   	push   %eax
 382:	e8 f7 01 00 00       	call   57e <fstat>
  close(fd);
 387:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 38a:	89 c6                	mov    %eax,%esi
  close(fd);
 38c:	e8 bd 01 00 00       	call   54e <close>
  return r;
 391:	83 c4 10             	add    $0x10,%esp
}
 394:	8d 65 f8             	lea    -0x8(%ebp),%esp
 397:	89 f0                	mov    %esi,%eax
 399:	5b                   	pop    %ebx
 39a:	5e                   	pop    %esi
 39b:	5d                   	pop    %ebp
 39c:	c3                   	ret    
 39d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3a5:	eb ed                	jmp    394 <stat+0x34>
 3a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ae:	66 90                	xchg   %ax,%ax

000003b0 <atoi>:

int
atoi(const char *s)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	53                   	push   %ebx
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3b7:	0f be 02             	movsbl (%edx),%eax
 3ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3c5:	77 1e                	ja     3e5 <atoi+0x35>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3d0:	83 c2 01             	add    $0x1,%edx
 3d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3da:	0f be 02             	movsbl (%edx),%eax
 3dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3e0:	80 fb 09             	cmp    $0x9,%bl
 3e3:	76 eb                	jbe    3d0 <atoi+0x20>
  return n;
}
 3e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e8:	89 c8                	mov    %ecx,%eax
 3ea:	c9                   	leave  
 3eb:	c3                   	ret    
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	8b 45 10             	mov    0x10(%ebp),%eax
 3f7:	8b 55 08             	mov    0x8(%ebp),%edx
 3fa:	56                   	push   %esi
 3fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3fe:	85 c0                	test   %eax,%eax
 400:	7e 13                	jle    415 <memmove+0x25>
 402:	01 d0                	add    %edx,%eax
  dst = vdst;
 404:	89 d7                	mov    %edx,%edi
 406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 410:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 411:	39 f8                	cmp    %edi,%eax
 413:	75 fb                	jne    410 <memmove+0x20>
  return vdst;
}
 415:	5e                   	pop    %esi
 416:	89 d0                	mov    %edx,%eax
 418:	5f                   	pop    %edi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 427:	68 00 10 00 00       	push   $0x1000
 42c:	e8 8f 04 00 00       	call   8c0 <malloc>
  if((int) stack % 4096 != 0){
 431:	83 c4 10             	add    $0x10,%esp
 434:	a9 ff 0f 00 00       	test   $0xfff,%eax
 439:	74 16                	je     451 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 43b:	99                   	cltd   
 43c:	c1 ea 14             	shr    $0x14,%edx
 43f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 442:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 448:	29 ca                	sub    %ecx,%edx
 44a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 451:	50                   	push   %eax
 452:	ff 75 10             	push   0x10(%ebp)
 455:	ff 75 0c             	push   0xc(%ebp)
 458:	ff 75 08             	push   0x8(%ebp)
 45b:	e8 66 01 00 00       	call   5c6 <clone>
  printf(1, " thread create %d \n", rc);
 460:	83 c4 0c             	add    $0xc,%esp
 463:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 464:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 466:	68 68 0a 00 00       	push   $0xa68
 46b:	6a 01                	push   $0x1
 46d:	e8 1e 02 00 00       	call   690 <printf>
  return rc;
}
 472:	89 d8                	mov    %ebx,%eax
 474:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 477:	c9                   	leave  
 478:	c3                   	ret    
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <thread_join>:

int
thread_join(){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	53                   	push   %ebx
 484:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 487:	68 7c 0a 00 00       	push   $0xa7c
 48c:	6a 01                	push   $0x1
 48e:	e8 fd 01 00 00       	call   690 <printf>
  void** stack = malloc(sizeof(void**));
 493:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 49a:	e8 21 04 00 00       	call   8c0 <malloc>
 49f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 4a1:	58                   	pop    %eax
 4a2:	5a                   	pop    %edx
 4a3:	68 8c 0a 00 00       	push   $0xa8c
 4a8:	6a 01                	push   $0x1
 4aa:	e8 e1 01 00 00       	call   690 <printf>
  int rc = join(stack);
 4af:	89 1c 24             	mov    %ebx,(%esp)
 4b2:	e8 17 01 00 00       	call   5ce <join>
  printf(1, "thread join 3 \n");
 4b7:	59                   	pop    %ecx
  int rc = join(stack);
 4b8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 4ba:	58                   	pop    %eax
 4bb:	68 9c 0a 00 00       	push   $0xa9c
 4c0:	6a 01                	push   $0x1
 4c2:	e8 c9 01 00 00       	call   690 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 4c7:	58                   	pop    %eax
 4c8:	5a                   	pop    %edx
 4c9:	68 ac 0a 00 00       	push   $0xaac
 4ce:	6a 01                	push   $0x1
 4d0:	e8 bb 01 00 00       	call   690 <printf>
  return rc;
}
 4d5:	89 d8                	mov    %ebx,%eax
 4d7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4da:	c9                   	leave  
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 4e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop
 4f0:	89 c8                	mov    %ecx,%eax
 4f2:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 4f5:	83 f8 01             	cmp    $0x1,%eax
 4f8:	74 f6                	je     4f0 <lock_acquire+0x10>
 ; // spin

};
 4fa:	5d                   	pop    %ebp
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <lock_release>:

void lock_release(lock_t * lock){
 500:	55                   	push   %ebp
 501:	31 c0                	xor    %eax,%eax
 503:	89 e5                	mov    %esp,%ebp
 505:	8b 55 08             	mov    0x8(%ebp),%edx
 508:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi

00000510 <lock_init>:

void lock_init(lock_t * lock){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 513:	8b 45 08             	mov    0x8(%ebp),%eax
 516:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 51c:	5d                   	pop    %ebp
 51d:	c3                   	ret    

0000051e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 51e:	b8 01 00 00 00       	mov    $0x1,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <exit>:
SYSCALL(exit)
 526:	b8 02 00 00 00       	mov    $0x2,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <wait>:
SYSCALL(wait)
 52e:	b8 03 00 00 00       	mov    $0x3,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <pipe>:
SYSCALL(pipe)
 536:	b8 04 00 00 00       	mov    $0x4,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <read>:
SYSCALL(read)
 53e:	b8 05 00 00 00       	mov    $0x5,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <write>:
SYSCALL(write)
 546:	b8 10 00 00 00       	mov    $0x10,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <close>:
SYSCALL(close)
 54e:	b8 15 00 00 00       	mov    $0x15,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <kill>:
SYSCALL(kill)
 556:	b8 06 00 00 00       	mov    $0x6,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <exec>:
SYSCALL(exec)
 55e:	b8 07 00 00 00       	mov    $0x7,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <open>:
SYSCALL(open)
 566:	b8 0f 00 00 00       	mov    $0xf,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <mknod>:
SYSCALL(mknod)
 56e:	b8 11 00 00 00       	mov    $0x11,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <unlink>:
SYSCALL(unlink)
 576:	b8 12 00 00 00       	mov    $0x12,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <fstat>:
SYSCALL(fstat)
 57e:	b8 08 00 00 00       	mov    $0x8,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <link>:
SYSCALL(link)
 586:	b8 13 00 00 00       	mov    $0x13,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <mkdir>:
SYSCALL(mkdir)
 58e:	b8 14 00 00 00       	mov    $0x14,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <chdir>:
SYSCALL(chdir)
 596:	b8 09 00 00 00       	mov    $0x9,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <dup>:
SYSCALL(dup)
 59e:	b8 0a 00 00 00       	mov    $0xa,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <getpid>:
SYSCALL(getpid)
 5a6:	b8 0b 00 00 00       	mov    $0xb,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <sbrk>:
SYSCALL(sbrk)
 5ae:	b8 0c 00 00 00       	mov    $0xc,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <sleep>:
SYSCALL(sleep)
 5b6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <uptime>:
SYSCALL(uptime)
 5be:	b8 0e 00 00 00       	mov    $0xe,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <clone>:
SYSCALL(clone)
 5c6:	b8 16 00 00 00       	mov    $0x16,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <join>:
SYSCALL(join)
 5ce:	b8 17 00 00 00       	mov    $0x17,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    
 5d6:	66 90                	xchg   %ax,%ax
 5d8:	66 90                	xchg   %ax,%ax
 5da:	66 90                	xchg   %ax,%ax
 5dc:	66 90                	xchg   %ax,%ax
 5de:	66 90                	xchg   %ax,%ax

000005e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 3c             	sub    $0x3c,%esp
 5e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5ec:	89 d1                	mov    %edx,%ecx
{
 5ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5f1:	85 d2                	test   %edx,%edx
 5f3:	0f 89 7f 00 00 00    	jns    678 <printint+0x98>
 5f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5fd:	74 79                	je     678 <printint+0x98>
    neg = 1;
 5ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 606:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 608:	31 db                	xor    %ebx,%ebx
 60a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 60d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 610:	89 c8                	mov    %ecx,%eax
 612:	31 d2                	xor    %edx,%edx
 614:	89 cf                	mov    %ecx,%edi
 616:	f7 75 c4             	divl   -0x3c(%ebp)
 619:	0f b6 92 1c 0b 00 00 	movzbl 0xb1c(%edx),%edx
 620:	89 45 c0             	mov    %eax,-0x40(%ebp)
 623:	89 d8                	mov    %ebx,%eax
 625:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 628:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 62b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 62e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 631:	76 dd                	jbe    610 <printint+0x30>
  if(neg)
 633:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 636:	85 c9                	test   %ecx,%ecx
 638:	74 0c                	je     646 <printint+0x66>
    buf[i++] = '-';
 63a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 63f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 641:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 646:	8b 7d b8             	mov    -0x48(%ebp),%edi
 649:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 64d:	eb 07                	jmp    656 <printint+0x76>
 64f:	90                   	nop
    putc(fd, buf[i]);
 650:	0f b6 13             	movzbl (%ebx),%edx
 653:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 656:	83 ec 04             	sub    $0x4,%esp
 659:	88 55 d7             	mov    %dl,-0x29(%ebp)
 65c:	6a 01                	push   $0x1
 65e:	56                   	push   %esi
 65f:	57                   	push   %edi
 660:	e8 e1 fe ff ff       	call   546 <write>
  while(--i >= 0)
 665:	83 c4 10             	add    $0x10,%esp
 668:	39 de                	cmp    %ebx,%esi
 66a:	75 e4                	jne    650 <printint+0x70>
}
 66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66f:	5b                   	pop    %ebx
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret    
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 678:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 67f:	eb 87                	jmp    608 <printint+0x28>
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 69c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 69f:	0f b6 13             	movzbl (%ebx),%edx
 6a2:	84 d2                	test   %dl,%dl
 6a4:	74 6a                	je     710 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6a6:	8d 45 10             	lea    0x10(%ebp),%eax
 6a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6b4:	eb 36                	jmp    6ec <printf+0x5c>
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
 6c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	74 15                	je     6e2 <printf+0x52>
  write(fd, &c, 1);
 6cd:	83 ec 04             	sub    $0x4,%esp
 6d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6d3:	6a 01                	push   $0x1
 6d5:	57                   	push   %edi
 6d6:	56                   	push   %esi
 6d7:	e8 6a fe ff ff       	call   546 <write>
 6dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6e2:	0f b6 13             	movzbl (%ebx),%edx
 6e5:	83 c3 01             	add    $0x1,%ebx
 6e8:	84 d2                	test   %dl,%dl
 6ea:	74 24                	je     710 <printf+0x80>
    c = fmt[i] & 0xff;
 6ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6ef:	85 c9                	test   %ecx,%ecx
 6f1:	74 cd                	je     6c0 <printf+0x30>
      }
    } else if(state == '%'){
 6f3:	83 f9 25             	cmp    $0x25,%ecx
 6f6:	75 ea                	jne    6e2 <printf+0x52>
      if(c == 'd'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	0f 84 07 01 00 00    	je     808 <printf+0x178>
 701:	83 e8 63             	sub    $0x63,%eax
 704:	83 f8 15             	cmp    $0x15,%eax
 707:	77 17                	ja     720 <printf+0x90>
 709:	ff 24 85 c4 0a 00 00 	jmp    *0xac4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 710:	8d 65 f4             	lea    -0xc(%ebp),%esp
 713:	5b                   	pop    %ebx
 714:	5e                   	pop    %esi
 715:	5f                   	pop    %edi
 716:	5d                   	pop    %ebp
 717:	c3                   	ret    
 718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 726:	6a 01                	push   $0x1
 728:	57                   	push   %edi
 729:	56                   	push   %esi
 72a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 72e:	e8 13 fe ff ff       	call   546 <write>
        putc(fd, c);
 733:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 737:	83 c4 0c             	add    $0xc,%esp
 73a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 73d:	6a 01                	push   $0x1
 73f:	57                   	push   %edi
 740:	56                   	push   %esi
 741:	e8 00 fe ff ff       	call   546 <write>
        putc(fd, c);
 746:	83 c4 10             	add    $0x10,%esp
      state = 0;
 749:	31 c9                	xor    %ecx,%ecx
 74b:	eb 95                	jmp    6e2 <printf+0x52>
 74d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 750:	83 ec 0c             	sub    $0xc,%esp
 753:	b9 10 00 00 00       	mov    $0x10,%ecx
 758:	6a 00                	push   $0x0
 75a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 75d:	8b 10                	mov    (%eax),%edx
 75f:	89 f0                	mov    %esi,%eax
 761:	e8 7a fe ff ff       	call   5e0 <printint>
        ap++;
 766:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 76a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 76d:	31 c9                	xor    %ecx,%ecx
 76f:	e9 6e ff ff ff       	jmp    6e2 <printf+0x52>
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 778:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77b:	8b 10                	mov    (%eax),%edx
        ap++;
 77d:	83 c0 04             	add    $0x4,%eax
 780:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 783:	85 d2                	test   %edx,%edx
 785:	0f 84 8d 00 00 00    	je     818 <printf+0x188>
        while(*s != 0){
 78b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 78e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 790:	84 c0                	test   %al,%al
 792:	0f 84 4a ff ff ff    	je     6e2 <printf+0x52>
 798:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 79b:	89 d3                	mov    %edx,%ebx
 79d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7a3:	83 c3 01             	add    $0x1,%ebx
 7a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7a9:	6a 01                	push   $0x1
 7ab:	57                   	push   %edi
 7ac:	56                   	push   %esi
 7ad:	e8 94 fd ff ff       	call   546 <write>
        while(*s != 0){
 7b2:	0f b6 03             	movzbl (%ebx),%eax
 7b5:	83 c4 10             	add    $0x10,%esp
 7b8:	84 c0                	test   %al,%al
 7ba:	75 e4                	jne    7a0 <printf+0x110>
      state = 0;
 7bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7bf:	31 c9                	xor    %ecx,%ecx
 7c1:	e9 1c ff ff ff       	jmp    6e2 <printf+0x52>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7d8:	6a 01                	push   $0x1
 7da:	e9 7b ff ff ff       	jmp    75a <printf+0xca>
 7df:	90                   	nop
        putc(fd, *ap);
 7e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7e8:	6a 01                	push   $0x1
 7ea:	57                   	push   %edi
 7eb:	56                   	push   %esi
        putc(fd, *ap);
 7ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ef:	e8 52 fd ff ff       	call   546 <write>
        ap++;
 7f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7fb:	31 c9                	xor    %ecx,%ecx
 7fd:	e9 e0 fe ff ff       	jmp    6e2 <printf+0x52>
 802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 808:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 80b:	83 ec 04             	sub    $0x4,%esp
 80e:	e9 2a ff ff ff       	jmp    73d <printf+0xad>
 813:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 817:	90                   	nop
          s = "(null)";
 818:	ba bc 0a 00 00       	mov    $0xabc,%edx
        while(*s != 0){
 81d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 820:	b8 28 00 00 00       	mov    $0x28,%eax
 825:	89 d3                	mov    %edx,%ebx
 827:	e9 74 ff ff ff       	jmp    7a0 <printf+0x110>
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 94 0e 00 00       	mov    0xe94,%eax
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 83e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	89 c2                	mov    %eax,%edx
 84a:	8b 00                	mov    (%eax),%eax
 84c:	39 ca                	cmp    %ecx,%edx
 84e:	73 30                	jae    880 <free+0x50>
 850:	39 c1                	cmp    %eax,%ecx
 852:	72 04                	jb     858 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 854:	39 c2                	cmp    %eax,%edx
 856:	72 f0                	jb     848 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	74 30                	je     892 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 862:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 865:	8b 42 04             	mov    0x4(%edx),%eax
 868:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 86b:	39 f1                	cmp    %esi,%ecx
 86d:	74 3a                	je     8a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 86f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 871:	5b                   	pop    %ebx
  freep = p;
 872:	89 15 94 0e 00 00    	mov    %edx,0xe94
}
 878:	5e                   	pop    %esi
 879:	5f                   	pop    %edi
 87a:	5d                   	pop    %ebp
 87b:	c3                   	ret    
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 c2                	cmp    %eax,%edx
 882:	72 c4                	jb     848 <free+0x18>
 884:	39 c1                	cmp    %eax,%ecx
 886:	73 c0                	jae    848 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 f8                	cmp    %edi,%eax
 890:	75 d0                	jne    862 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 892:	03 70 04             	add    0x4(%eax),%esi
 895:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 898:	8b 02                	mov    (%edx),%eax
 89a:	8b 00                	mov    (%eax),%eax
 89c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 89f:	8b 42 04             	mov    0x4(%edx),%eax
 8a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8a5:	39 f1                	cmp    %esi,%ecx
 8a7:	75 c6                	jne    86f <free+0x3f>
    p->s.size += bp->s.size;
 8a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8ac:	89 15 94 0e 00 00    	mov    %edx,0xe94
    p->s.size += bp->s.size;
 8b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8b8:	89 0a                	mov    %ecx,(%edx)
}
 8ba:	5b                   	pop    %ebx
 8bb:	5e                   	pop    %esi
 8bc:	5f                   	pop    %edi
 8bd:	5d                   	pop    %ebp
 8be:	c3                   	ret    
 8bf:	90                   	nop

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 3d 94 0e 00 00    	mov    0xe94,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 70 07             	lea    0x7(%eax),%esi
 8d5:	c1 ee 03             	shr    $0x3,%esi
 8d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8db:	85 ff                	test   %edi,%edi
 8dd:	0f 84 9d 00 00 00    	je     980 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8e8:	39 f1                	cmp    %esi,%ecx
 8ea:	73 6a                	jae    956 <malloc+0x96>
 8ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8f1:	39 de                	cmp    %ebx,%esi
 8f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 900:	eb 17                	jmp    919 <malloc+0x59>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 908:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 90a:	8b 48 04             	mov    0x4(%eax),%ecx
 90d:	39 f1                	cmp    %esi,%ecx
 90f:	73 4f                	jae    960 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 911:	8b 3d 94 0e 00 00    	mov    0xe94,%edi
 917:	89 c2                	mov    %eax,%edx
 919:	39 d7                	cmp    %edx,%edi
 91b:	75 eb                	jne    908 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 91d:	83 ec 0c             	sub    $0xc,%esp
 920:	ff 75 e4             	push   -0x1c(%ebp)
 923:	e8 86 fc ff ff       	call   5ae <sbrk>
  if(p == (char*)-1)
 928:	83 c4 10             	add    $0x10,%esp
 92b:	83 f8 ff             	cmp    $0xffffffff,%eax
 92e:	74 1c                	je     94c <malloc+0x8c>
  hp->s.size = nu;
 930:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 933:	83 ec 0c             	sub    $0xc,%esp
 936:	83 c0 08             	add    $0x8,%eax
 939:	50                   	push   %eax
 93a:	e8 f1 fe ff ff       	call   830 <free>
  return freep;
 93f:	8b 15 94 0e 00 00    	mov    0xe94,%edx
      if((p = morecore(nunits)) == 0)
 945:	83 c4 10             	add    $0x10,%esp
 948:	85 d2                	test   %edx,%edx
 94a:	75 bc                	jne    908 <malloc+0x48>
        return 0;
  }
}
 94c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 94f:	31 c0                	xor    %eax,%eax
}
 951:	5b                   	pop    %ebx
 952:	5e                   	pop    %esi
 953:	5f                   	pop    %edi
 954:	5d                   	pop    %ebp
 955:	c3                   	ret    
    if(p->s.size >= nunits){
 956:	89 d0                	mov    %edx,%eax
 958:	89 fa                	mov    %edi,%edx
 95a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 960:	39 ce                	cmp    %ecx,%esi
 962:	74 4c                	je     9b0 <malloc+0xf0>
        p->s.size -= nunits;
 964:	29 f1                	sub    %esi,%ecx
 966:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 969:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 96c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 96f:	89 15 94 0e 00 00    	mov    %edx,0xe94
}
 975:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 978:	83 c0 08             	add    $0x8,%eax
}
 97b:	5b                   	pop    %ebx
 97c:	5e                   	pop    %esi
 97d:	5f                   	pop    %edi
 97e:	5d                   	pop    %ebp
 97f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 980:	c7 05 94 0e 00 00 98 	movl   $0xe98,0xe94
 987:	0e 00 00 
    base.s.size = 0;
 98a:	bf 98 0e 00 00       	mov    $0xe98,%edi
    base.s.ptr = freep = prevp = &base;
 98f:	c7 05 98 0e 00 00 98 	movl   $0xe98,0xe98
 996:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 999:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 99b:	c7 05 9c 0e 00 00 00 	movl   $0x0,0xe9c
 9a2:	00 00 00 
    if(p->s.size >= nunits){
 9a5:	e9 42 ff ff ff       	jmp    8ec <malloc+0x2c>
 9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb b9                	jmp    96f <malloc+0xaf>
