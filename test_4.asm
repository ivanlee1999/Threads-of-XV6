
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
  13:	e8 01 05 00 00       	call   519 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 88 0d 00 00       	mov    %eax,0xd88
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 06 08 00 00       	call   830 <malloc>
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
  4d:	e8 e7 04 00 00       	call   539 <clone>
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 ff             	cmp    $0xffffffff,%eax
  58:	74 46                	je     a0 <main+0xa0>
  5a:	6a 21                	push   $0x21
  5c:	68 28 09 00 00       	push   $0x928
  61:	68 31 09 00 00       	push   $0x931
  66:	6a 01                	push   $0x1
  68:	e8 93 05 00 00       	call   600 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 8c 09 00 00       	push   $0x98c
  75:	68 43 09 00 00       	push   $0x943
  7a:	6a 01                	push   $0x1
  7c:	e8 7f 05 00 00       	call   600 <printf>
  81:	5a                   	pop    %edx
  82:	59                   	pop    %ecx
  83:	68 57 09 00 00       	push   $0x957
  88:	6a 01                	push   $0x1
  8a:	e8 71 05 00 00       	call   600 <printf>
  8f:	5b                   	pop    %ebx
  90:	ff 35 88 0d 00 00    	push   0xd88
  96:	e8 2e 04 00 00       	call   4c9 <kill>
  9b:	e8 f9 03 00 00       	call   499 <exit>

   stack = sbrk(0);
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	6a 00                	push   $0x0
  a5:	e8 77 04 00 00       	call   521 <sbrk>
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
  bb:	e8 61 04 00 00       	call   521 <sbrk>
  c0:	89 c2                	mov    %eax,%edx
  c2:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  c8:	29 d0                	sub    %edx,%eax
  ca:	89 04 24             	mov    %eax,(%esp)
  cd:	e8 4f 04 00 00       	call   521 <sbrk>
  d2:	83 c4 10             	add    $0x10,%esp
   assert((uint)stack % PGSIZE == 0);
   assert((uint)sbrk(0) - (uint)stack == PGSIZE/2);
  d5:	83 ec 0c             	sub    $0xc,%esp
  d8:	6a 00                	push   $0x0
  da:	e8 42 04 00 00       	call   521 <sbrk>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	29 f0                	sub    %esi,%eax
  e4:	3d 00 08 00 00       	cmp    $0x800,%eax
  e9:	0f 84 8f 00 00 00    	je     17e <main+0x17e>
  ef:	6a 28                	push   $0x28
  f1:	68 28 09 00 00       	push   $0x928
  f6:	68 31 09 00 00       	push   $0x931
  fb:	6a 01                	push   $0x1
  fd:	e8 fe 04 00 00       	call   600 <printf>
 102:	83 c4 0c             	add    $0xc,%esp
 105:	68 b0 09 00 00       	push   $0x9b0
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
 11c:	e8 00 04 00 00       	call   521 <sbrk>
 121:	89 c2                	mov    %eax,%edx
 123:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
 129:	29 d0                	sub    %edx,%eax
 12b:	89 04 24             	mov    %eax,(%esp)
 12e:	e8 ee 03 00 00       	call   521 <sbrk>
   assert((uint)stack % PGSIZE == 0);
 133:	83 c4 10             	add    $0x10,%esp
 136:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
 13c:	74 97                	je     d5 <main+0xd5>
 13e:	6a 27                	push   $0x27
 140:	68 28 09 00 00       	push   $0x928
 145:	68 31 09 00 00       	push   $0x931
 14a:	6a 01                	push   $0x1
 14c:	e8 af 04 00 00       	call   600 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 64 09 00 00       	push   $0x964
 159:	e9 17 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 15e:	6a 1b                	push   $0x1b
 160:	68 28 09 00 00       	push   $0x928
 165:	68 31 09 00 00       	push   $0x931
 16a:	6a 01                	push   $0x1
 16c:	e8 8f 04 00 00       	call   600 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 39 09 00 00       	push   $0x939
 179:	e9 f7 fe ff ff       	jmp    75 <main+0x75>

   assert(clone(worker, 0, 0, stack) == -1);
 17e:	56                   	push   %esi
 17f:	6a 00                	push   $0x0
 181:	6a 00                	push   $0x0
 183:	68 c0 01 00 00       	push   $0x1c0
 188:	e8 ac 03 00 00       	call   539 <clone>
 18d:	83 c4 10             	add    $0x10,%esp
 190:	83 c0 01             	add    $0x1,%eax
 193:	74 07                	je     19c <main+0x19c>
 195:	6a 2a                	push   $0x2a
 197:	e9 c0 fe ff ff       	jmp    5c <main+0x5c>
   
   printf(1, "TEST PASSED\n");
 19c:	50                   	push   %eax
 19d:	50                   	push   %eax
 19e:	68 7e 09 00 00       	push   $0x97e
 1a3:	6a 01                	push   $0x1
 1a5:	e8 56 04 00 00       	call   600 <printf>
   free(p);
 1aa:	89 1c 24             	mov    %ebx,(%esp)
 1ad:	e8 ee 05 00 00       	call   7a0 <free>
   exit();
 1b2:	e8 e2 02 00 00       	call   499 <exit>
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
 1c6:	e8 ce 02 00 00       	call   499 <exit>
 1cb:	66 90                	xchg   %ax,%ax
 1cd:	66 90                	xchg   %ax,%ax
 1cf:	90                   	nop

000001d0 <strcpy>:
#include "user.h"
#include "x86.h"

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
 308:	e8 a4 01 00 00       	call   4b1 <read>
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
 36d:	e8 67 01 00 00       	call   4d9 <open>
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
 382:	e8 6a 01 00 00       	call   4f1 <fstat>
  close(fd);
 387:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 38a:	89 c6                	mov    %eax,%esi
  close(fd);
 38c:	e8 30 01 00 00       	call   4c1 <close>
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
 423:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 426:	6a 04                	push   $0x4
 428:	e8 03 04 00 00       	call   830 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 42d:	50                   	push   %eax
 42e:	ff 75 10             	push   0x10(%ebp)
 431:	ff 75 0c             	push   0xc(%ebp)
 434:	ff 75 08             	push   0x8(%ebp)
 437:	e8 fd 00 00 00       	call   539 <clone>
}
 43c:	c9                   	leave  
 43d:	c3                   	ret    
 43e:	66 90                	xchg   %ax,%ax

00000440 <thread_join>:

int
thread_join(){
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	56                   	push   %esi
 444:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 445:	83 ec 0c             	sub    $0xc,%esp
 448:	6a 04                	push   $0x4
 44a:	e8 e1 03 00 00       	call   830 <malloc>
  int rc = join(stack);
 44f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 452:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 454:	e8 e8 00 00 00       	call   541 <join>
 459:	89 c6                	mov    %eax,%esi
  free(*stack);
 45b:	58                   	pop    %eax
 45c:	ff 33                	push   (%ebx)
 45e:	e8 3d 03 00 00       	call   7a0 <free>
  return rc;
}
 463:	8d 65 f8             	lea    -0x8(%ebp),%esp
 466:	89 f0                	mov    %esi,%eax
 468:	5b                   	pop    %ebx
 469:	5e                   	pop    %esi
 46a:	5d                   	pop    %ebp
 46b:	c3                   	ret    
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 470:	c3                   	ret    
 471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 478:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <lock_release>:
 480:	c3                   	ret    
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <lock_init>:
 490:	c3                   	ret    

00000491 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 491:	b8 01 00 00 00       	mov    $0x1,%eax
 496:	cd 40                	int    $0x40
 498:	c3                   	ret    

00000499 <exit>:
SYSCALL(exit)
 499:	b8 02 00 00 00       	mov    $0x2,%eax
 49e:	cd 40                	int    $0x40
 4a0:	c3                   	ret    

000004a1 <wait>:
SYSCALL(wait)
 4a1:	b8 03 00 00 00       	mov    $0x3,%eax
 4a6:	cd 40                	int    $0x40
 4a8:	c3                   	ret    

000004a9 <pipe>:
SYSCALL(pipe)
 4a9:	b8 04 00 00 00       	mov    $0x4,%eax
 4ae:	cd 40                	int    $0x40
 4b0:	c3                   	ret    

000004b1 <read>:
SYSCALL(read)
 4b1:	b8 05 00 00 00       	mov    $0x5,%eax
 4b6:	cd 40                	int    $0x40
 4b8:	c3                   	ret    

000004b9 <write>:
SYSCALL(write)
 4b9:	b8 10 00 00 00       	mov    $0x10,%eax
 4be:	cd 40                	int    $0x40
 4c0:	c3                   	ret    

000004c1 <close>:
SYSCALL(close)
 4c1:	b8 15 00 00 00       	mov    $0x15,%eax
 4c6:	cd 40                	int    $0x40
 4c8:	c3                   	ret    

000004c9 <kill>:
SYSCALL(kill)
 4c9:	b8 06 00 00 00       	mov    $0x6,%eax
 4ce:	cd 40                	int    $0x40
 4d0:	c3                   	ret    

000004d1 <exec>:
SYSCALL(exec)
 4d1:	b8 07 00 00 00       	mov    $0x7,%eax
 4d6:	cd 40                	int    $0x40
 4d8:	c3                   	ret    

000004d9 <open>:
SYSCALL(open)
 4d9:	b8 0f 00 00 00       	mov    $0xf,%eax
 4de:	cd 40                	int    $0x40
 4e0:	c3                   	ret    

000004e1 <mknod>:
SYSCALL(mknod)
 4e1:	b8 11 00 00 00       	mov    $0x11,%eax
 4e6:	cd 40                	int    $0x40
 4e8:	c3                   	ret    

000004e9 <unlink>:
SYSCALL(unlink)
 4e9:	b8 12 00 00 00       	mov    $0x12,%eax
 4ee:	cd 40                	int    $0x40
 4f0:	c3                   	ret    

000004f1 <fstat>:
SYSCALL(fstat)
 4f1:	b8 08 00 00 00       	mov    $0x8,%eax
 4f6:	cd 40                	int    $0x40
 4f8:	c3                   	ret    

000004f9 <link>:
SYSCALL(link)
 4f9:	b8 13 00 00 00       	mov    $0x13,%eax
 4fe:	cd 40                	int    $0x40
 500:	c3                   	ret    

00000501 <mkdir>:
SYSCALL(mkdir)
 501:	b8 14 00 00 00       	mov    $0x14,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    

00000509 <chdir>:
SYSCALL(chdir)
 509:	b8 09 00 00 00       	mov    $0x9,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    

00000511 <dup>:
SYSCALL(dup)
 511:	b8 0a 00 00 00       	mov    $0xa,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    

00000519 <getpid>:
SYSCALL(getpid)
 519:	b8 0b 00 00 00       	mov    $0xb,%eax
 51e:	cd 40                	int    $0x40
 520:	c3                   	ret    

00000521 <sbrk>:
SYSCALL(sbrk)
 521:	b8 0c 00 00 00       	mov    $0xc,%eax
 526:	cd 40                	int    $0x40
 528:	c3                   	ret    

00000529 <sleep>:
SYSCALL(sleep)
 529:	b8 0d 00 00 00       	mov    $0xd,%eax
 52e:	cd 40                	int    $0x40
 530:	c3                   	ret    

00000531 <uptime>:
SYSCALL(uptime)
 531:	b8 0e 00 00 00       	mov    $0xe,%eax
 536:	cd 40                	int    $0x40
 538:	c3                   	ret    

00000539 <clone>:
SYSCALL(clone)
 539:	b8 16 00 00 00       	mov    $0x16,%eax
 53e:	cd 40                	int    $0x40
 540:	c3                   	ret    

00000541 <join>:
SYSCALL(join)
 541:	b8 17 00 00 00       	mov    $0x17,%eax
 546:	cd 40                	int    $0x40
 548:	c3                   	ret    
 549:	66 90                	xchg   %ax,%ax
 54b:	66 90                	xchg   %ax,%ax
 54d:	66 90                	xchg   %ax,%ax
 54f:	90                   	nop

00000550 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	56                   	push   %esi
 555:	53                   	push   %ebx
 556:	83 ec 3c             	sub    $0x3c,%esp
 559:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 55c:	89 d1                	mov    %edx,%ecx
{
 55e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 561:	85 d2                	test   %edx,%edx
 563:	0f 89 7f 00 00 00    	jns    5e8 <printint+0x98>
 569:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 56d:	74 79                	je     5e8 <printint+0x98>
    neg = 1;
 56f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 576:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 578:	31 db                	xor    %ebx,%ebx
 57a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 580:	89 c8                	mov    %ecx,%eax
 582:	31 d2                	xor    %edx,%edx
 584:	89 cf                	mov    %ecx,%edi
 586:	f7 75 c4             	divl   -0x3c(%ebp)
 589:	0f b6 92 38 0a 00 00 	movzbl 0xa38(%edx),%edx
 590:	89 45 c0             	mov    %eax,-0x40(%ebp)
 593:	89 d8                	mov    %ebx,%eax
 595:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 598:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 59b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 59e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5a1:	76 dd                	jbe    580 <printint+0x30>
  if(neg)
 5a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5a6:	85 c9                	test   %ecx,%ecx
 5a8:	74 0c                	je     5b6 <printint+0x66>
    buf[i++] = '-';
 5aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5bd:	eb 07                	jmp    5c6 <printint+0x76>
 5bf:	90                   	nop
    putc(fd, buf[i]);
 5c0:	0f b6 13             	movzbl (%ebx),%edx
 5c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5c6:	83 ec 04             	sub    $0x4,%esp
 5c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5cc:	6a 01                	push   $0x1
 5ce:	56                   	push   %esi
 5cf:	57                   	push   %edi
 5d0:	e8 e4 fe ff ff       	call   4b9 <write>
  while(--i >= 0)
 5d5:	83 c4 10             	add    $0x10,%esp
 5d8:	39 de                	cmp    %ebx,%esi
 5da:	75 e4                	jne    5c0 <printint+0x70>
}
 5dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5df:	5b                   	pop    %ebx
 5e0:	5e                   	pop    %esi
 5e1:	5f                   	pop    %edi
 5e2:	5d                   	pop    %ebp
 5e3:	c3                   	ret    
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5ef:	eb 87                	jmp    578 <printint+0x28>
 5f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop

00000600 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 609:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 60c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 60f:	0f b6 13             	movzbl (%ebx),%edx
 612:	84 d2                	test   %dl,%dl
 614:	74 6a                	je     680 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 616:	8d 45 10             	lea    0x10(%ebp),%eax
 619:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 61c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 61f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 621:	89 45 d0             	mov    %eax,-0x30(%ebp)
 624:	eb 36                	jmp    65c <printf+0x5c>
 626:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
 630:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 633:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 638:	83 f8 25             	cmp    $0x25,%eax
 63b:	74 15                	je     652 <printf+0x52>
  write(fd, &c, 1);
 63d:	83 ec 04             	sub    $0x4,%esp
 640:	88 55 e7             	mov    %dl,-0x19(%ebp)
 643:	6a 01                	push   $0x1
 645:	57                   	push   %edi
 646:	56                   	push   %esi
 647:	e8 6d fe ff ff       	call   4b9 <write>
 64c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 64f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 652:	0f b6 13             	movzbl (%ebx),%edx
 655:	83 c3 01             	add    $0x1,%ebx
 658:	84 d2                	test   %dl,%dl
 65a:	74 24                	je     680 <printf+0x80>
    c = fmt[i] & 0xff;
 65c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 65f:	85 c9                	test   %ecx,%ecx
 661:	74 cd                	je     630 <printf+0x30>
      }
    } else if(state == '%'){
 663:	83 f9 25             	cmp    $0x25,%ecx
 666:	75 ea                	jne    652 <printf+0x52>
      if(c == 'd'){
 668:	83 f8 25             	cmp    $0x25,%eax
 66b:	0f 84 07 01 00 00    	je     778 <printf+0x178>
 671:	83 e8 63             	sub    $0x63,%eax
 674:	83 f8 15             	cmp    $0x15,%eax
 677:	77 17                	ja     690 <printf+0x90>
 679:	ff 24 85 e0 09 00 00 	jmp    *0x9e0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 680:	8d 65 f4             	lea    -0xc(%ebp),%esp
 683:	5b                   	pop    %ebx
 684:	5e                   	pop    %esi
 685:	5f                   	pop    %edi
 686:	5d                   	pop    %ebp
 687:	c3                   	ret    
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop
  write(fd, &c, 1);
 690:	83 ec 04             	sub    $0x4,%esp
 693:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 696:	6a 01                	push   $0x1
 698:	57                   	push   %edi
 699:	56                   	push   %esi
 69a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 69e:	e8 16 fe ff ff       	call   4b9 <write>
        putc(fd, c);
 6a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6a7:	83 c4 0c             	add    $0xc,%esp
 6aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6ad:	6a 01                	push   $0x1
 6af:	57                   	push   %edi
 6b0:	56                   	push   %esi
 6b1:	e8 03 fe ff ff       	call   4b9 <write>
        putc(fd, c);
 6b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6b9:	31 c9                	xor    %ecx,%ecx
 6bb:	eb 95                	jmp    652 <printf+0x52>
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6c0:	83 ec 0c             	sub    $0xc,%esp
 6c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6c8:	6a 00                	push   $0x0
 6ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6cd:	8b 10                	mov    (%eax),%edx
 6cf:	89 f0                	mov    %esi,%eax
 6d1:	e8 7a fe ff ff       	call   550 <printint>
        ap++;
 6d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6dd:	31 c9                	xor    %ecx,%ecx
 6df:	e9 6e ff ff ff       	jmp    652 <printf+0x52>
 6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6eb:	8b 10                	mov    (%eax),%edx
        ap++;
 6ed:	83 c0 04             	add    $0x4,%eax
 6f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6f3:	85 d2                	test   %edx,%edx
 6f5:	0f 84 8d 00 00 00    	je     788 <printf+0x188>
        while(*s != 0){
 6fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 700:	84 c0                	test   %al,%al
 702:	0f 84 4a ff ff ff    	je     652 <printf+0x52>
 708:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 70b:	89 d3                	mov    %edx,%ebx
 70d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 710:	83 ec 04             	sub    $0x4,%esp
          s++;
 713:	83 c3 01             	add    $0x1,%ebx
 716:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 719:	6a 01                	push   $0x1
 71b:	57                   	push   %edi
 71c:	56                   	push   %esi
 71d:	e8 97 fd ff ff       	call   4b9 <write>
        while(*s != 0){
 722:	0f b6 03             	movzbl (%ebx),%eax
 725:	83 c4 10             	add    $0x10,%esp
 728:	84 c0                	test   %al,%al
 72a:	75 e4                	jne    710 <printf+0x110>
      state = 0;
 72c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 72f:	31 c9                	xor    %ecx,%ecx
 731:	e9 1c ff ff ff       	jmp    652 <printf+0x52>
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 740:	83 ec 0c             	sub    $0xc,%esp
 743:	b9 0a 00 00 00       	mov    $0xa,%ecx
 748:	6a 01                	push   $0x1
 74a:	e9 7b ff ff ff       	jmp    6ca <printf+0xca>
 74f:	90                   	nop
        putc(fd, *ap);
 750:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 753:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 756:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 758:	6a 01                	push   $0x1
 75a:	57                   	push   %edi
 75b:	56                   	push   %esi
        putc(fd, *ap);
 75c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 75f:	e8 55 fd ff ff       	call   4b9 <write>
        ap++;
 764:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 768:	83 c4 10             	add    $0x10,%esp
      state = 0;
 76b:	31 c9                	xor    %ecx,%ecx
 76d:	e9 e0 fe ff ff       	jmp    652 <printf+0x52>
 772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 778:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 77b:	83 ec 04             	sub    $0x4,%esp
 77e:	e9 2a ff ff ff       	jmp    6ad <printf+0xad>
 783:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 787:	90                   	nop
          s = "(null)";
 788:	ba d8 09 00 00       	mov    $0x9d8,%edx
        while(*s != 0){
 78d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 790:	b8 28 00 00 00       	mov    $0x28,%eax
 795:	89 d3                	mov    %edx,%ebx
 797:	e9 74 ff ff ff       	jmp    710 <printf+0x110>
 79c:	66 90                	xchg   %ax,%ax
 79e:	66 90                	xchg   %ax,%ax

000007a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a1:	a1 8c 0d 00 00       	mov    0xd8c,%eax
{
 7a6:	89 e5                	mov    %esp,%ebp
 7a8:	57                   	push   %edi
 7a9:	56                   	push   %esi
 7aa:	53                   	push   %ebx
 7ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7b8:	89 c2                	mov    %eax,%edx
 7ba:	8b 00                	mov    (%eax),%eax
 7bc:	39 ca                	cmp    %ecx,%edx
 7be:	73 30                	jae    7f0 <free+0x50>
 7c0:	39 c1                	cmp    %eax,%ecx
 7c2:	72 04                	jb     7c8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7c4:	39 c2                	cmp    %eax,%edx
 7c6:	72 f0                	jb     7b8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ce:	39 f8                	cmp    %edi,%eax
 7d0:	74 30                	je     802 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7d2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7d5:	8b 42 04             	mov    0x4(%edx),%eax
 7d8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7db:	39 f1                	cmp    %esi,%ecx
 7dd:	74 3a                	je     819 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7df:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7e1:	5b                   	pop    %ebx
  freep = p;
 7e2:	89 15 8c 0d 00 00    	mov    %edx,0xd8c
}
 7e8:	5e                   	pop    %esi
 7e9:	5f                   	pop    %edi
 7ea:	5d                   	pop    %ebp
 7eb:	c3                   	ret    
 7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7f0:	39 c2                	cmp    %eax,%edx
 7f2:	72 c4                	jb     7b8 <free+0x18>
 7f4:	39 c1                	cmp    %eax,%ecx
 7f6:	73 c0                	jae    7b8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7fe:	39 f8                	cmp    %edi,%eax
 800:	75 d0                	jne    7d2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 802:	03 70 04             	add    0x4(%eax),%esi
 805:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 808:	8b 02                	mov    (%edx),%eax
 80a:	8b 00                	mov    (%eax),%eax
 80c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 80f:	8b 42 04             	mov    0x4(%edx),%eax
 812:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 815:	39 f1                	cmp    %esi,%ecx
 817:	75 c6                	jne    7df <free+0x3f>
    p->s.size += bp->s.size;
 819:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 81c:	89 15 8c 0d 00 00    	mov    %edx,0xd8c
    p->s.size += bp->s.size;
 822:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 825:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 828:	89 0a                	mov    %ecx,(%edx)
}
 82a:	5b                   	pop    %ebx
 82b:	5e                   	pop    %esi
 82c:	5f                   	pop    %edi
 82d:	5d                   	pop    %ebp
 82e:	c3                   	ret    
 82f:	90                   	nop

00000830 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 839:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 83c:	8b 3d 8c 0d 00 00    	mov    0xd8c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 842:	8d 70 07             	lea    0x7(%eax),%esi
 845:	c1 ee 03             	shr    $0x3,%esi
 848:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 84b:	85 ff                	test   %edi,%edi
 84d:	0f 84 9d 00 00 00    	je     8f0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 853:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 855:	8b 4a 04             	mov    0x4(%edx),%ecx
 858:	39 f1                	cmp    %esi,%ecx
 85a:	73 6a                	jae    8c6 <malloc+0x96>
 85c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 861:	39 de                	cmp    %ebx,%esi
 863:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 866:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 86d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 870:	eb 17                	jmp    889 <malloc+0x59>
 872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 878:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 87a:	8b 48 04             	mov    0x4(%eax),%ecx
 87d:	39 f1                	cmp    %esi,%ecx
 87f:	73 4f                	jae    8d0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 881:	8b 3d 8c 0d 00 00    	mov    0xd8c,%edi
 887:	89 c2                	mov    %eax,%edx
 889:	39 d7                	cmp    %edx,%edi
 88b:	75 eb                	jne    878 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 88d:	83 ec 0c             	sub    $0xc,%esp
 890:	ff 75 e4             	push   -0x1c(%ebp)
 893:	e8 89 fc ff ff       	call   521 <sbrk>
  if(p == (char*)-1)
 898:	83 c4 10             	add    $0x10,%esp
 89b:	83 f8 ff             	cmp    $0xffffffff,%eax
 89e:	74 1c                	je     8bc <malloc+0x8c>
  hp->s.size = nu;
 8a0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8a3:	83 ec 0c             	sub    $0xc,%esp
 8a6:	83 c0 08             	add    $0x8,%eax
 8a9:	50                   	push   %eax
 8aa:	e8 f1 fe ff ff       	call   7a0 <free>
  return freep;
 8af:	8b 15 8c 0d 00 00    	mov    0xd8c,%edx
      if((p = morecore(nunits)) == 0)
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	85 d2                	test   %edx,%edx
 8ba:	75 bc                	jne    878 <malloc+0x48>
        return 0;
  }
}
 8bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8bf:	31 c0                	xor    %eax,%eax
}
 8c1:	5b                   	pop    %ebx
 8c2:	5e                   	pop    %esi
 8c3:	5f                   	pop    %edi
 8c4:	5d                   	pop    %ebp
 8c5:	c3                   	ret    
    if(p->s.size >= nunits){
 8c6:	89 d0                	mov    %edx,%eax
 8c8:	89 fa                	mov    %edi,%edx
 8ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8d0:	39 ce                	cmp    %ecx,%esi
 8d2:	74 4c                	je     920 <malloc+0xf0>
        p->s.size -= nunits;
 8d4:	29 f1                	sub    %esi,%ecx
 8d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8dc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8df:	89 15 8c 0d 00 00    	mov    %edx,0xd8c
}
 8e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8e8:	83 c0 08             	add    $0x8,%eax
}
 8eb:	5b                   	pop    %ebx
 8ec:	5e                   	pop    %esi
 8ed:	5f                   	pop    %edi
 8ee:	5d                   	pop    %ebp
 8ef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8f0:	c7 05 8c 0d 00 00 90 	movl   $0xd90,0xd8c
 8f7:	0d 00 00 
    base.s.size = 0;
 8fa:	bf 90 0d 00 00       	mov    $0xd90,%edi
    base.s.ptr = freep = prevp = &base;
 8ff:	c7 05 90 0d 00 00 90 	movl   $0xd90,0xd90
 906:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 909:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 90b:	c7 05 94 0d 00 00 00 	movl   $0x0,0xd94
 912:	00 00 00 
    if(p->s.size >= nunits){
 915:	e9 42 ff ff ff       	jmp    85c <malloc+0x2c>
 91a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 920:	8b 08                	mov    (%eax),%ecx
 922:	89 0a                	mov    %ecx,(%edx)
 924:	eb b9                	jmp    8df <malloc+0xaf>
