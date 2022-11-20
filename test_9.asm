
_test_9:     file format elf32-i386


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
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 ae 05 00 00       	call   5c6 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 fc 0e 00 00       	mov    %eax,0xefc
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 b6 08 00 00       	call   8e0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 d3 00 00 00    	je     108 <main+0x108>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 8c 00 00 00    	jne    d1 <main+0xd1>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, stack, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	50                   	push   %eax
  49:	68 30 01 00 00       	push   $0x130
  4e:	e8 93 05 00 00       	call   5e6 <clone>
   assert(clone_pid > 0);
  53:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, stack, 0, stack);
  56:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  58:	85 c0                	test   %eax,%eax
  5a:	0f 8e 8b 00 00 00    	jle    eb <main+0xeb>
   while(global != 5);
  60:	8b 15 f8 0e 00 00    	mov    0xef8,%edx
  66:	83 fa 05             	cmp    $0x5,%edx
  69:	75 f5                	jne    60 <main+0x60>
   printf(1, "TEST PASSED\n");
  6b:	50                   	push   %eax
  6c:	50                   	push   %eax
  6d:	68 22 0a 00 00       	push   $0xa22
  72:	6a 01                	push   $0x1
  74:	e8 37 06 00 00       	call   6b0 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
  79:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7c:	89 04 24             	mov    %eax,(%esp)
  7f:	e8 6a 05 00 00       	call   5ee <join>
   assert(join_pid == clone_pid);
  84:	83 c4 10             	add    $0x10,%esp
  87:	39 c6                	cmp    %eax,%esi
  89:	74 52                	je     dd <main+0xdd>
  8b:	6a 29                	push   $0x29
  8d:	68 d8 09 00 00       	push   $0x9d8
  92:	68 e1 09 00 00       	push   $0x9e1
  97:	6a 01                	push   $0x1
  99:	e8 12 06 00 00       	call   6b0 <printf>
  9e:	83 c4 0c             	add    $0xc,%esp
  a1:	68 2f 0a 00 00       	push   $0xa2f
   assert(clone_pid > 0);
  a6:	68 e9 09 00 00       	push   $0x9e9
  ab:	6a 01                	push   $0x1
  ad:	e8 fe 05 00 00       	call   6b0 <printf>
  b2:	5a                   	pop    %edx
  b3:	59                   	pop    %ecx
  b4:	68 fd 09 00 00       	push   $0x9fd
  b9:	6a 01                	push   $0x1
  bb:	e8 f0 05 00 00       	call   6b0 <printf>
  c0:	5b                   	pop    %ebx
  c1:	ff 35 fc 0e 00 00    	push   0xefc
  c7:	e8 aa 04 00 00       	call   576 <kill>
  cc:	e8 75 04 00 00       	call   546 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d1:	29 d0                	sub    %edx,%eax
  d3:	05 00 10 00 00       	add    $0x1000,%eax
  d8:	e9 68 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  dd:	83 ec 0c             	sub    $0xc,%esp
  e0:	53                   	push   %ebx
  e1:	e8 6a 07 00 00       	call   850 <free>
   exit();
  e6:	e8 5b 04 00 00       	call   546 <exit>
   assert(clone_pid > 0);
  eb:	6a 23                	push   $0x23
  ed:	68 d8 09 00 00       	push   $0x9d8
  f2:	68 e1 09 00 00       	push   $0x9e1
  f7:	6a 01                	push   $0x1
  f9:	e8 b2 05 00 00       	call   6b0 <printf>
  fe:	83 c4 0c             	add    $0xc,%esp
 101:	68 14 0a 00 00       	push   $0xa14
 106:	eb 9e                	jmp    a6 <main+0xa6>
   assert(p != NULL);
 108:	6a 1c                	push   $0x1c
 10a:	68 d8 09 00 00       	push   $0x9d8
 10f:	68 e1 09 00 00       	push   $0x9e1
 114:	6a 01                	push   $0x1
 116:	e8 95 05 00 00       	call   6b0 <printf>
 11b:	83 c4 0c             	add    $0xc,%esp
 11e:	68 0a 0a 00 00       	push   $0xa0a
 123:	eb 81                	jmp    a6 <main+0xa6>
 125:	66 90                	xchg   %ax,%ax
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 136:	8b 45 08             	mov    0x8(%ebp),%eax
 139:	8d 4d 0c             	lea    0xc(%ebp),%ecx
 13c:	8d 90 fc 0f 00 00    	lea    0xffc(%eax),%edx
 142:	39 d1                	cmp    %edx,%ecx
 144:	75 7d                	jne    1c3 <worker+0x93>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 146:	8d 90 f8 0f 00 00    	lea    0xff8(%eax),%edx
 14c:	8d 4d 08             	lea    0x8(%ebp),%ecx
 14f:	39 d1                	cmp    %edx,%ecx
 151:	75 2a                	jne    17d <worker+0x4d>
   assert(*((uint*) (arg1 + PGSIZE - 12)) == 0xffffffff);
 153:	83 b8 f4 0f 00 00 ff 	cmpl   $0xffffffff,0xff4(%eax)
 15a:	0f 84 80 00 00 00    	je     1e0 <worker+0xb0>
 160:	6a 32                	push   $0x32
 162:	68 d8 09 00 00       	push   $0x9d8
 167:	68 e1 09 00 00       	push   $0x9e1
 16c:	6a 01                	push   $0x1
 16e:	e8 3d 05 00 00       	call   6b0 <printf>
 173:	83 c4 0c             	add    $0xc,%esp
 176:	68 a0 0a 00 00       	push   $0xaa0
 17b:	eb 1b                	jmp    198 <worker+0x68>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 17d:	6a 31                	push   $0x31
 17f:	68 d8 09 00 00       	push   $0x9d8
 184:	68 e1 09 00 00       	push   $0x9e1
 189:	6a 01                	push   $0x1
 18b:	e8 20 05 00 00       	call   6b0 <printf>
 190:	83 c4 0c             	add    $0xc,%esp
 193:	68 74 0a 00 00       	push   $0xa74
 198:	68 e9 09 00 00       	push   $0x9e9
 19d:	6a 01                	push   $0x1
 19f:	e8 0c 05 00 00       	call   6b0 <printf>
 1a4:	58                   	pop    %eax
 1a5:	5a                   	pop    %edx
 1a6:	68 fd 09 00 00       	push   $0x9fd
 1ab:	6a 01                	push   $0x1
 1ad:	e8 fe 04 00 00       	call   6b0 <printf>
 1b2:	59                   	pop    %ecx
 1b3:	ff 35 fc 0e 00 00    	push   0xefc
 1b9:	e8 b8 03 00 00       	call   576 <kill>
 1be:	e8 83 03 00 00       	call   546 <exit>
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 1c3:	6a 30                	push   $0x30
 1c5:	68 d8 09 00 00       	push   $0x9d8
 1ca:	68 e1 09 00 00       	push   $0x9e1
 1cf:	6a 01                	push   $0x1
 1d1:	e8 da 04 00 00       	call   6b0 <printf>
 1d6:	83 c4 0c             	add    $0xc,%esp
 1d9:	68 48 0a 00 00       	push   $0xa48
 1de:	eb b8                	jmp    198 <worker+0x68>
   global = 5;
 1e0:	c7 05 f8 0e 00 00 05 	movl   $0x5,0xef8
 1e7:	00 00 00 
   exit();
 1ea:	e8 57 03 00 00       	call   546 <exit>
 1ef:	90                   	nop

000001f0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 1f0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1f1:	31 c0                	xor    %eax,%eax
{
 1f3:	89 e5                	mov    %esp,%ebp
 1f5:	53                   	push   %ebx
 1f6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 200:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 204:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 207:	83 c0 01             	add    $0x1,%eax
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strcpy+0x10>
    ;
  return os;
}
 20e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 211:	89 c8                	mov    %ecx,%eax
 213:	c9                   	leave  
 214:	c3                   	ret    
 215:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	53                   	push   %ebx
 224:	8b 55 08             	mov    0x8(%ebp),%edx
 227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 22a:	0f b6 02             	movzbl (%edx),%eax
 22d:	84 c0                	test   %al,%al
 22f:	75 17                	jne    248 <strcmp+0x28>
 231:	eb 3a                	jmp    26d <strcmp+0x4d>
 233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 237:	90                   	nop
 238:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 23c:	83 c2 01             	add    $0x1,%edx
 23f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 242:	84 c0                	test   %al,%al
 244:	74 1a                	je     260 <strcmp+0x40>
    p++, q++;
 246:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 248:	0f b6 19             	movzbl (%ecx),%ebx
 24b:	38 c3                	cmp    %al,%bl
 24d:	74 e9                	je     238 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 24f:	29 d8                	sub    %ebx,%eax
}
 251:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 254:	c9                   	leave  
 255:	c3                   	ret    
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 260:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 264:	31 c0                	xor    %eax,%eax
 266:	29 d8                	sub    %ebx,%eax
}
 268:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 26b:	c9                   	leave  
 26c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 26d:	0f b6 19             	movzbl (%ecx),%ebx
 270:	31 c0                	xor    %eax,%eax
 272:	eb db                	jmp    24f <strcmp+0x2f>
 274:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 27f:	90                   	nop

00000280 <strlen>:

uint
strlen(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 286:	80 3a 00             	cmpb   $0x0,(%edx)
 289:	74 15                	je     2a0 <strlen+0x20>
 28b:	31 c0                	xor    %eax,%eax
 28d:	8d 76 00             	lea    0x0(%esi),%esi
 290:	83 c0 01             	add    $0x1,%eax
 293:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 297:	89 c1                	mov    %eax,%ecx
 299:	75 f5                	jne    290 <strlen+0x10>
    ;
  return n;
}
 29b:	89 c8                	mov    %ecx,%eax
 29d:	5d                   	pop    %ebp
 29e:	c3                   	ret    
 29f:	90                   	nop
  for(n = 0; s[n]; n++)
 2a0:	31 c9                	xor    %ecx,%ecx
}
 2a2:	5d                   	pop    %ebp
 2a3:	89 c8                	mov    %ecx,%eax
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi

000002b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 2bd:	89 d7                	mov    %edx,%edi
 2bf:	fc                   	cld    
 2c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2c2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2c5:	89 d0                	mov    %edx,%eax
 2c7:	c9                   	leave  
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002d0 <strchr>:

char*
strchr(const char *s, char c)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2da:	0f b6 10             	movzbl (%eax),%edx
 2dd:	84 d2                	test   %dl,%dl
 2df:	75 12                	jne    2f3 <strchr+0x23>
 2e1:	eb 1d                	jmp    300 <strchr+0x30>
 2e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e7:	90                   	nop
 2e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2ec:	83 c0 01             	add    $0x1,%eax
 2ef:	84 d2                	test   %dl,%dl
 2f1:	74 0d                	je     300 <strchr+0x30>
    if(*s == c)
 2f3:	38 d1                	cmp    %dl,%cl
 2f5:	75 f1                	jne    2e8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2f7:	5d                   	pop    %ebp
 2f8:	c3                   	ret    
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 300:	31 c0                	xor    %eax,%eax
}
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <gets>:

char*
gets(char *buf, int max)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 315:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 318:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 319:	31 db                	xor    %ebx,%ebx
{
 31b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 31e:	eb 27                	jmp    347 <gets+0x37>
    cc = read(0, &c, 1);
 320:	83 ec 04             	sub    $0x4,%esp
 323:	6a 01                	push   $0x1
 325:	57                   	push   %edi
 326:	6a 00                	push   $0x0
 328:	e8 31 02 00 00       	call   55e <read>
    if(cc < 1)
 32d:	83 c4 10             	add    $0x10,%esp
 330:	85 c0                	test   %eax,%eax
 332:	7e 1d                	jle    351 <gets+0x41>
      break;
    buf[i++] = c;
 334:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 338:	8b 55 08             	mov    0x8(%ebp),%edx
 33b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 33f:	3c 0a                	cmp    $0xa,%al
 341:	74 1d                	je     360 <gets+0x50>
 343:	3c 0d                	cmp    $0xd,%al
 345:	74 19                	je     360 <gets+0x50>
  for(i=0; i+1 < max; ){
 347:	89 de                	mov    %ebx,%esi
 349:	83 c3 01             	add    $0x1,%ebx
 34c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 34f:	7c cf                	jl     320 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 351:	8b 45 08             	mov    0x8(%ebp),%eax
 354:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
 35b:	5b                   	pop    %ebx
 35c:	5e                   	pop    %esi
 35d:	5f                   	pop    %edi
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
  buf[i] = '\0';
 360:	8b 45 08             	mov    0x8(%ebp),%eax
 363:	89 de                	mov    %ebx,%esi
 365:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 369:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36c:	5b                   	pop    %ebx
 36d:	5e                   	pop    %esi
 36e:	5f                   	pop    %edi
 36f:	5d                   	pop    %ebp
 370:	c3                   	ret    
 371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 378:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <stat>:

int
stat(const char *n, struct stat *st)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 385:	83 ec 08             	sub    $0x8,%esp
 388:	6a 00                	push   $0x0
 38a:	ff 75 08             	push   0x8(%ebp)
 38d:	e8 f4 01 00 00       	call   586 <open>
  if(fd < 0)
 392:	83 c4 10             	add    $0x10,%esp
 395:	85 c0                	test   %eax,%eax
 397:	78 27                	js     3c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 399:	83 ec 08             	sub    $0x8,%esp
 39c:	ff 75 0c             	push   0xc(%ebp)
 39f:	89 c3                	mov    %eax,%ebx
 3a1:	50                   	push   %eax
 3a2:	e8 f7 01 00 00       	call   59e <fstat>
  close(fd);
 3a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3aa:	89 c6                	mov    %eax,%esi
  close(fd);
 3ac:	e8 bd 01 00 00       	call   56e <close>
  return r;
 3b1:	83 c4 10             	add    $0x10,%esp
}
 3b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b7:	89 f0                	mov    %esi,%eax
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3c5:	eb ed                	jmp    3b4 <stat+0x34>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax

000003d0 <atoi>:

int
atoi(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3d7:	0f be 02             	movsbl (%edx),%eax
 3da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3e5:	77 1e                	ja     405 <atoi+0x35>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3f0:	83 c2 01             	add    $0x1,%edx
 3f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3fa:	0f be 02             	movsbl (%edx),%eax
 3fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 400:	80 fb 09             	cmp    $0x9,%bl
 403:	76 eb                	jbe    3f0 <atoi+0x20>
  return n;
}
 405:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 408:	89 c8                	mov    %ecx,%eax
 40a:	c9                   	leave  
 40b:	c3                   	ret    
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 45 10             	mov    0x10(%ebp),%eax
 417:	8b 55 08             	mov    0x8(%ebp),%edx
 41a:	56                   	push   %esi
 41b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 41e:	85 c0                	test   %eax,%eax
 420:	7e 13                	jle    435 <memmove+0x25>
 422:	01 d0                	add    %edx,%eax
  dst = vdst;
 424:	89 d7                	mov    %edx,%edi
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 430:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 431:	39 f8                	cmp    %edi,%eax
 433:	75 fb                	jne    430 <memmove+0x20>
  return vdst;
}
 435:	5e                   	pop    %esi
 436:	89 d0                	mov    %edx,%eax
 438:	5f                   	pop    %edi
 439:	5d                   	pop    %ebp
 43a:	c3                   	ret    
 43b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	53                   	push   %ebx
 444:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 447:	68 00 10 00 00       	push   $0x1000
 44c:	e8 8f 04 00 00       	call   8e0 <malloc>
  if((int) stack % 4096 != 0){
 451:	83 c4 10             	add    $0x10,%esp
 454:	a9 ff 0f 00 00       	test   $0xfff,%eax
 459:	74 16                	je     471 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 45b:	99                   	cltd   
 45c:	c1 ea 14             	shr    $0x14,%edx
 45f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 462:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 468:	29 ca                	sub    %ecx,%edx
 46a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 471:	50                   	push   %eax
 472:	ff 75 10             	push   0x10(%ebp)
 475:	ff 75 0c             	push   0xc(%ebp)
 478:	ff 75 08             	push   0x8(%ebp)
 47b:	e8 66 01 00 00       	call   5e6 <clone>
  printf(1, " thread create %d \n", rc);
 480:	83 c4 0c             	add    $0xc,%esp
 483:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 484:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 486:	68 ce 0a 00 00       	push   $0xace
 48b:	6a 01                	push   $0x1
 48d:	e8 1e 02 00 00       	call   6b0 <printf>
  return rc;
}
 492:	89 d8                	mov    %ebx,%eax
 494:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 497:	c9                   	leave  
 498:	c3                   	ret    
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <thread_join>:

int
thread_join(){
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 4a7:	68 e2 0a 00 00       	push   $0xae2
 4ac:	6a 01                	push   $0x1
 4ae:	e8 fd 01 00 00       	call   6b0 <printf>
  void** stack = malloc(sizeof(void**));
 4b3:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 4ba:	e8 21 04 00 00       	call   8e0 <malloc>
 4bf:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 4c1:	58                   	pop    %eax
 4c2:	5a                   	pop    %edx
 4c3:	68 f2 0a 00 00       	push   $0xaf2
 4c8:	6a 01                	push   $0x1
 4ca:	e8 e1 01 00 00       	call   6b0 <printf>
  int rc = join(stack);
 4cf:	89 1c 24             	mov    %ebx,(%esp)
 4d2:	e8 17 01 00 00       	call   5ee <join>
  printf(1, "thread join 3 \n");
 4d7:	59                   	pop    %ecx
  int rc = join(stack);
 4d8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 4da:	58                   	pop    %eax
 4db:	68 02 0b 00 00       	push   $0xb02
 4e0:	6a 01                	push   $0x1
 4e2:	e8 c9 01 00 00       	call   6b0 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 4e7:	58                   	pop    %eax
 4e8:	5a                   	pop    %edx
 4e9:	68 12 0b 00 00       	push   $0xb12
 4ee:	6a 01                	push   $0x1
 4f0:	e8 bb 01 00 00       	call   6b0 <printf>
  return rc;
}
 4f5:	89 d8                	mov    %ebx,%eax
 4f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4fa:	c9                   	leave  
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <lock_acquire>:



void lock_acquire(lock_t * lock){
 500:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 501:	b9 01 00 00 00       	mov    $0x1,%ecx
 506:	89 e5                	mov    %esp,%ebp
 508:	8b 55 08             	mov    0x8(%ebp),%edx
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop
 510:	89 c8                	mov    %ecx,%eax
 512:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 515:	83 f8 01             	cmp    $0x1,%eax
 518:	74 f6                	je     510 <lock_acquire+0x10>
 ; // spin

};
 51a:	5d                   	pop    %ebp
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <lock_release>:

void lock_release(lock_t * lock){
 520:	55                   	push   %ebp
 521:	31 c0                	xor    %eax,%eax
 523:	89 e5                	mov    %esp,%ebp
 525:	8b 55 08             	mov    0x8(%ebp),%edx
 528:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <lock_init>:

void lock_init(lock_t * lock){
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 533:	8b 45 08             	mov    0x8(%ebp),%eax
 536:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 53c:	5d                   	pop    %ebp
 53d:	c3                   	ret    

0000053e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 53e:	b8 01 00 00 00       	mov    $0x1,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <exit>:
SYSCALL(exit)
 546:	b8 02 00 00 00       	mov    $0x2,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <wait>:
SYSCALL(wait)
 54e:	b8 03 00 00 00       	mov    $0x3,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <pipe>:
SYSCALL(pipe)
 556:	b8 04 00 00 00       	mov    $0x4,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <read>:
SYSCALL(read)
 55e:	b8 05 00 00 00       	mov    $0x5,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <write>:
SYSCALL(write)
 566:	b8 10 00 00 00       	mov    $0x10,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <close>:
SYSCALL(close)
 56e:	b8 15 00 00 00       	mov    $0x15,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <kill>:
SYSCALL(kill)
 576:	b8 06 00 00 00       	mov    $0x6,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <exec>:
SYSCALL(exec)
 57e:	b8 07 00 00 00       	mov    $0x7,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <open>:
SYSCALL(open)
 586:	b8 0f 00 00 00       	mov    $0xf,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <mknod>:
SYSCALL(mknod)
 58e:	b8 11 00 00 00       	mov    $0x11,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <unlink>:
SYSCALL(unlink)
 596:	b8 12 00 00 00       	mov    $0x12,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <fstat>:
SYSCALL(fstat)
 59e:	b8 08 00 00 00       	mov    $0x8,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <link>:
SYSCALL(link)
 5a6:	b8 13 00 00 00       	mov    $0x13,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <mkdir>:
SYSCALL(mkdir)
 5ae:	b8 14 00 00 00       	mov    $0x14,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <chdir>:
SYSCALL(chdir)
 5b6:	b8 09 00 00 00       	mov    $0x9,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <dup>:
SYSCALL(dup)
 5be:	b8 0a 00 00 00       	mov    $0xa,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <getpid>:
SYSCALL(getpid)
 5c6:	b8 0b 00 00 00       	mov    $0xb,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <sbrk>:
SYSCALL(sbrk)
 5ce:	b8 0c 00 00 00       	mov    $0xc,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <sleep>:
SYSCALL(sleep)
 5d6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <uptime>:
SYSCALL(uptime)
 5de:	b8 0e 00 00 00       	mov    $0xe,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <clone>:
SYSCALL(clone)
 5e6:	b8 16 00 00 00       	mov    $0x16,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <join>:
SYSCALL(join)
 5ee:	b8 17 00 00 00       	mov    $0x17,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    
 5f6:	66 90                	xchg   %ax,%ax
 5f8:	66 90                	xchg   %ax,%ax
 5fa:	66 90                	xchg   %ax,%ax
 5fc:	66 90                	xchg   %ax,%ax
 5fe:	66 90                	xchg   %ax,%ax

00000600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 3c             	sub    $0x3c,%esp
 609:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 60c:	89 d1                	mov    %edx,%ecx
{
 60e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 611:	85 d2                	test   %edx,%edx
 613:	0f 89 7f 00 00 00    	jns    698 <printint+0x98>
 619:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 61d:	74 79                	je     698 <printint+0x98>
    neg = 1;
 61f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 626:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 628:	31 db                	xor    %ebx,%ebx
 62a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 630:	89 c8                	mov    %ecx,%eax
 632:	31 d2                	xor    %edx,%edx
 634:	89 cf                	mov    %ecx,%edi
 636:	f7 75 c4             	divl   -0x3c(%ebp)
 639:	0f b6 92 84 0b 00 00 	movzbl 0xb84(%edx),%edx
 640:	89 45 c0             	mov    %eax,-0x40(%ebp)
 643:	89 d8                	mov    %ebx,%eax
 645:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 648:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 64b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 64e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 651:	76 dd                	jbe    630 <printint+0x30>
  if(neg)
 653:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 656:	85 c9                	test   %ecx,%ecx
 658:	74 0c                	je     666 <printint+0x66>
    buf[i++] = '-';
 65a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 65f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 661:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 666:	8b 7d b8             	mov    -0x48(%ebp),%edi
 669:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 66d:	eb 07                	jmp    676 <printint+0x76>
 66f:	90                   	nop
    putc(fd, buf[i]);
 670:	0f b6 13             	movzbl (%ebx),%edx
 673:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 676:	83 ec 04             	sub    $0x4,%esp
 679:	88 55 d7             	mov    %dl,-0x29(%ebp)
 67c:	6a 01                	push   $0x1
 67e:	56                   	push   %esi
 67f:	57                   	push   %edi
 680:	e8 e1 fe ff ff       	call   566 <write>
  while(--i >= 0)
 685:	83 c4 10             	add    $0x10,%esp
 688:	39 de                	cmp    %ebx,%esi
 68a:	75 e4                	jne    670 <printint+0x70>
}
 68c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68f:	5b                   	pop    %ebx
 690:	5e                   	pop    %esi
 691:	5f                   	pop    %edi
 692:	5d                   	pop    %ebp
 693:	c3                   	ret    
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 698:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 69f:	eb 87                	jmp    628 <printint+0x28>
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6bf:	0f b6 13             	movzbl (%ebx),%edx
 6c2:	84 d2                	test   %dl,%dl
 6c4:	74 6a                	je     730 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6c6:	8d 45 10             	lea    0x10(%ebp),%eax
 6c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d4:	eb 36                	jmp    70c <printf+0x5c>
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
 6e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	74 15                	je     702 <printf+0x52>
  write(fd, &c, 1);
 6ed:	83 ec 04             	sub    $0x4,%esp
 6f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6f3:	6a 01                	push   $0x1
 6f5:	57                   	push   %edi
 6f6:	56                   	push   %esi
 6f7:	e8 6a fe ff ff       	call   566 <write>
 6fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 702:	0f b6 13             	movzbl (%ebx),%edx
 705:	83 c3 01             	add    $0x1,%ebx
 708:	84 d2                	test   %dl,%dl
 70a:	74 24                	je     730 <printf+0x80>
    c = fmt[i] & 0xff;
 70c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 70f:	85 c9                	test   %ecx,%ecx
 711:	74 cd                	je     6e0 <printf+0x30>
      }
    } else if(state == '%'){
 713:	83 f9 25             	cmp    $0x25,%ecx
 716:	75 ea                	jne    702 <printf+0x52>
      if(c == 'd'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	0f 84 07 01 00 00    	je     828 <printf+0x178>
 721:	83 e8 63             	sub    $0x63,%eax
 724:	83 f8 15             	cmp    $0x15,%eax
 727:	77 17                	ja     740 <printf+0x90>
 729:	ff 24 85 2c 0b 00 00 	jmp    *0xb2c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 730:	8d 65 f4             	lea    -0xc(%ebp),%esp
 733:	5b                   	pop    %ebx
 734:	5e                   	pop    %esi
 735:	5f                   	pop    %edi
 736:	5d                   	pop    %ebp
 737:	c3                   	ret    
 738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop
  write(fd, &c, 1);
 740:	83 ec 04             	sub    $0x4,%esp
 743:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 746:	6a 01                	push   $0x1
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 74e:	e8 13 fe ff ff       	call   566 <write>
        putc(fd, c);
 753:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 757:	83 c4 0c             	add    $0xc,%esp
 75a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 75d:	6a 01                	push   $0x1
 75f:	57                   	push   %edi
 760:	56                   	push   %esi
 761:	e8 00 fe ff ff       	call   566 <write>
        putc(fd, c);
 766:	83 c4 10             	add    $0x10,%esp
      state = 0;
 769:	31 c9                	xor    %ecx,%ecx
 76b:	eb 95                	jmp    702 <printf+0x52>
 76d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 10 00 00 00       	mov    $0x10,%ecx
 778:	6a 00                	push   $0x0
 77a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77d:	8b 10                	mov    (%eax),%edx
 77f:	89 f0                	mov    %esi,%eax
 781:	e8 7a fe ff ff       	call   600 <printint>
        ap++;
 786:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 78a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 78d:	31 c9                	xor    %ecx,%ecx
 78f:	e9 6e ff ff ff       	jmp    702 <printf+0x52>
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 798:	8b 45 d0             	mov    -0x30(%ebp),%eax
 79b:	8b 10                	mov    (%eax),%edx
        ap++;
 79d:	83 c0 04             	add    $0x4,%eax
 7a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7a3:	85 d2                	test   %edx,%edx
 7a5:	0f 84 8d 00 00 00    	je     838 <printf+0x188>
        while(*s != 0){
 7ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7b0:	84 c0                	test   %al,%al
 7b2:	0f 84 4a ff ff ff    	je     702 <printf+0x52>
 7b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7bb:	89 d3                	mov    %edx,%ebx
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7c3:	83 c3 01             	add    $0x1,%ebx
 7c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7c9:	6a 01                	push   $0x1
 7cb:	57                   	push   %edi
 7cc:	56                   	push   %esi
 7cd:	e8 94 fd ff ff       	call   566 <write>
        while(*s != 0){
 7d2:	0f b6 03             	movzbl (%ebx),%eax
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	84 c0                	test   %al,%al
 7da:	75 e4                	jne    7c0 <printf+0x110>
      state = 0;
 7dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7df:	31 c9                	xor    %ecx,%ecx
 7e1:	e9 1c ff ff ff       	jmp    702 <printf+0x52>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7f8:	6a 01                	push   $0x1
 7fa:	e9 7b ff ff ff       	jmp    77a <printf+0xca>
 7ff:	90                   	nop
        putc(fd, *ap);
 800:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 803:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 806:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 808:	6a 01                	push   $0x1
 80a:	57                   	push   %edi
 80b:	56                   	push   %esi
        putc(fd, *ap);
 80c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 80f:	e8 52 fd ff ff       	call   566 <write>
        ap++;
 814:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 818:	83 c4 10             	add    $0x10,%esp
      state = 0;
 81b:	31 c9                	xor    %ecx,%ecx
 81d:	e9 e0 fe ff ff       	jmp    702 <printf+0x52>
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 828:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 82b:	83 ec 04             	sub    $0x4,%esp
 82e:	e9 2a ff ff ff       	jmp    75d <printf+0xad>
 833:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 837:	90                   	nop
          s = "(null)";
 838:	ba 22 0b 00 00       	mov    $0xb22,%edx
        while(*s != 0){
 83d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 840:	b8 28 00 00 00       	mov    $0x28,%eax
 845:	89 d3                	mov    %edx,%ebx
 847:	e9 74 ff ff ff       	jmp    7c0 <printf+0x110>
 84c:	66 90                	xchg   %ax,%ax
 84e:	66 90                	xchg   %ax,%ax

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	a1 00 0f 00 00       	mov    0xf00,%eax
{
 856:	89 e5                	mov    %esp,%ebp
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	53                   	push   %ebx
 85b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 85e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	89 c2                	mov    %eax,%edx
 86a:	8b 00                	mov    (%eax),%eax
 86c:	39 ca                	cmp    %ecx,%edx
 86e:	73 30                	jae    8a0 <free+0x50>
 870:	39 c1                	cmp    %eax,%ecx
 872:	72 04                	jb     878 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 874:	39 c2                	cmp    %eax,%edx
 876:	72 f0                	jb     868 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	74 30                	je     8b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 882:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 885:	8b 42 04             	mov    0x4(%edx),%eax
 888:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 88b:	39 f1                	cmp    %esi,%ecx
 88d:	74 3a                	je     8c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 88f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 891:	5b                   	pop    %ebx
  freep = p;
 892:	89 15 00 0f 00 00    	mov    %edx,0xf00
}
 898:	5e                   	pop    %esi
 899:	5f                   	pop    %edi
 89a:	5d                   	pop    %ebp
 89b:	c3                   	ret    
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a0:	39 c2                	cmp    %eax,%edx
 8a2:	72 c4                	jb     868 <free+0x18>
 8a4:	39 c1                	cmp    %eax,%ecx
 8a6:	73 c0                	jae    868 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ae:	39 f8                	cmp    %edi,%eax
 8b0:	75 d0                	jne    882 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8b2:	03 70 04             	add    0x4(%eax),%esi
 8b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b8:	8b 02                	mov    (%edx),%eax
 8ba:	8b 00                	mov    (%eax),%eax
 8bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8bf:	8b 42 04             	mov    0x4(%edx),%eax
 8c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8c5:	39 f1                	cmp    %esi,%ecx
 8c7:	75 c6                	jne    88f <free+0x3f>
    p->s.size += bp->s.size;
 8c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8cc:	89 15 00 0f 00 00    	mov    %edx,0xf00
    p->s.size += bp->s.size;
 8d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8d8:	89 0a                	mov    %ecx,(%edx)
}
 8da:	5b                   	pop    %ebx
 8db:	5e                   	pop    %esi
 8dc:	5f                   	pop    %edi
 8dd:	5d                   	pop    %ebp
 8de:	c3                   	ret    
 8df:	90                   	nop

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ec:	8b 3d 00 0f 00 00    	mov    0xf00,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f2:	8d 70 07             	lea    0x7(%eax),%esi
 8f5:	c1 ee 03             	shr    $0x3,%esi
 8f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8fb:	85 ff                	test   %edi,%edi
 8fd:	0f 84 9d 00 00 00    	je     9a0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 903:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 905:	8b 4a 04             	mov    0x4(%edx),%ecx
 908:	39 f1                	cmp    %esi,%ecx
 90a:	73 6a                	jae    976 <malloc+0x96>
 90c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 911:	39 de                	cmp    %ebx,%esi
 913:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 916:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 91d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 920:	eb 17                	jmp    939 <malloc+0x59>
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 928:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 92a:	8b 48 04             	mov    0x4(%eax),%ecx
 92d:	39 f1                	cmp    %esi,%ecx
 92f:	73 4f                	jae    980 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 931:	8b 3d 00 0f 00 00    	mov    0xf00,%edi
 937:	89 c2                	mov    %eax,%edx
 939:	39 d7                	cmp    %edx,%edi
 93b:	75 eb                	jne    928 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 93d:	83 ec 0c             	sub    $0xc,%esp
 940:	ff 75 e4             	push   -0x1c(%ebp)
 943:	e8 86 fc ff ff       	call   5ce <sbrk>
  if(p == (char*)-1)
 948:	83 c4 10             	add    $0x10,%esp
 94b:	83 f8 ff             	cmp    $0xffffffff,%eax
 94e:	74 1c                	je     96c <malloc+0x8c>
  hp->s.size = nu;
 950:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 953:	83 ec 0c             	sub    $0xc,%esp
 956:	83 c0 08             	add    $0x8,%eax
 959:	50                   	push   %eax
 95a:	e8 f1 fe ff ff       	call   850 <free>
  return freep;
 95f:	8b 15 00 0f 00 00    	mov    0xf00,%edx
      if((p = morecore(nunits)) == 0)
 965:	83 c4 10             	add    $0x10,%esp
 968:	85 d2                	test   %edx,%edx
 96a:	75 bc                	jne    928 <malloc+0x48>
        return 0;
  }
}
 96c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 96f:	31 c0                	xor    %eax,%eax
}
 971:	5b                   	pop    %ebx
 972:	5e                   	pop    %esi
 973:	5f                   	pop    %edi
 974:	5d                   	pop    %ebp
 975:	c3                   	ret    
    if(p->s.size >= nunits){
 976:	89 d0                	mov    %edx,%eax
 978:	89 fa                	mov    %edi,%edx
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 980:	39 ce                	cmp    %ecx,%esi
 982:	74 4c                	je     9d0 <malloc+0xf0>
        p->s.size -= nunits;
 984:	29 f1                	sub    %esi,%ecx
 986:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 989:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 98c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 98f:	89 15 00 0f 00 00    	mov    %edx,0xf00
}
 995:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 998:	83 c0 08             	add    $0x8,%eax
}
 99b:	5b                   	pop    %ebx
 99c:	5e                   	pop    %esi
 99d:	5f                   	pop    %edi
 99e:	5d                   	pop    %ebp
 99f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9a0:	c7 05 00 0f 00 00 04 	movl   $0xf04,0xf00
 9a7:	0f 00 00 
    base.s.size = 0;
 9aa:	bf 04 0f 00 00       	mov    $0xf04,%edi
    base.s.ptr = freep = prevp = &base;
 9af:	c7 05 04 0f 00 00 04 	movl   $0xf04,0xf04
 9b6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9bb:	c7 05 08 0f 00 00 00 	movl   $0x0,0xf08
 9c2:	00 00 00 
    if(p->s.size >= nunits){
 9c5:	e9 42 ff ff ff       	jmp    90c <malloc+0x2c>
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9d0:	8b 08                	mov    (%eax),%ecx
 9d2:	89 0a                	mov    %ecx,(%edx)
 9d4:	eb b9                	jmp    98f <malloc+0xaf>
