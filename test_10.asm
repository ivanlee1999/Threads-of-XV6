
_test_10:     file format elf32-i386


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
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 f2 04 00 00       	call   509 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 64 0d 00 00       	mov    %eax,0xd64
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 00 01 00 00       	push   $0x100
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 d1 03 00 00       	call   410 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 e3 03 00 00       	call   430 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 2);
  51:	83 3d 60 0d 00 00 02 	cmpl   $0x2,0xd60
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 23                	push   $0x23
  60:	68 18 09 00 00       	push   $0x918
  65:	68 22 09 00 00       	push   $0x922
  6a:	6a 01                	push   $0x1
  6c:	e8 7f 05 00 00       	call   5f0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 9b 09 00 00       	push   $0x99b
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 22                	push   $0x22
  7d:	68 18 09 00 00       	push   $0x918
  82:	68 22 09 00 00       	push   $0x922
  87:	6a 01                	push   $0x1
  89:	e8 62 05 00 00       	call   5f0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 84 09 00 00       	push   $0x984
  96:	68 39 09 00 00       	push   $0x939
  9b:	6a 01                	push   $0x1
  9d:	e8 4e 05 00 00       	call   5f0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 4d 09 00 00       	push   $0x94d
  a9:	6a 01                	push   $0x1
  ab:	e8 40 05 00 00       	call   5f0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 64 0d 00 00    	push   0xd64
  b7:	e8 fd 03 00 00       	call   4b9 <kill>
  bc:	e8 c8 03 00 00       	call   489 <exit>
   assert(thread_pid > 0);
  c1:	6a 1f                	push   $0x1f
  c3:	68 18 09 00 00       	push   $0x918
  c8:	68 22 09 00 00       	push   $0x922
  cd:	6a 01                	push   $0x1
  cf:	e8 1c 05 00 00       	call   5f0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 75 09 00 00       	push   $0x975
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 a7 09 00 00       	push   $0x9a7
  e5:	6a 01                	push   $0x1
  e7:	e8 04 05 00 00       	call   5f0 <printf>
   exit();
  ec:	e8 98 03 00 00       	call   489 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <worker>:
}

void
worker(void *arg1, void *arg2) {
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
 111:	75 75                	jne    188 <worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <worker+0x42>
   assert(global == 1);
 118:	83 3d 60 0d 00 00 01 	cmpl   $0x1,0xd60
 11f:	0f 84 80 00 00 00    	je     1a5 <worker+0xa5>
 125:	6a 2f                	push   $0x2f
 127:	68 18 09 00 00       	push   $0x918
 12c:	68 22 09 00 00       	push   $0x922
 131:	6a 01                	push   $0x1
 133:	e8 b8 04 00 00       	call   5f0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 69 09 00 00       	push   $0x969
 140:	eb 1b                	jmp    15d <worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2e                	push   $0x2e
 144:	68 18 09 00 00       	push   $0x918
 149:	68 22 09 00 00       	push   $0x922
 14e:	6a 01                	push   $0x1
 150:	e8 9b 04 00 00       	call   5f0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 5a 09 00 00       	push   $0x95a
 15d:	68 39 09 00 00       	push   $0x939
 162:	6a 01                	push   $0x1
 164:	e8 87 04 00 00       	call   5f0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 4d 09 00 00       	push   $0x94d
 170:	6a 01                	push   $0x1
 172:	e8 79 04 00 00       	call   5f0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 64 0d 00 00    	push   0xd64
 17e:	e8 36 03 00 00       	call   4b9 <kill>
 183:	e8 01 03 00 00       	call   489 <exit>
   assert(arg1_int == 35);
 188:	6a 2d                	push   $0x2d
 18a:	68 18 09 00 00       	push   $0x918
 18f:	68 22 09 00 00       	push   $0x922
 194:	6a 01                	push   $0x1
 196:	e8 55 04 00 00       	call   5f0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 2a 09 00 00       	push   $0x92a
 1a3:	eb b8                	jmp    15d <worker+0x5d>
   global++;
 1a5:	c7 05 60 0d 00 00 02 	movl   $0x2,0xd60
 1ac:	00 00 00 
   exit();
 1af:	e8 d5 02 00 00       	call   489 <exit>
 1b4:	66 90                	xchg   %ax,%ax
 1b6:	66 90                	xchg   %ax,%ax
 1b8:	66 90                	xchg   %ax,%ax
 1ba:	66 90                	xchg   %ax,%ax
 1bc:	66 90                	xchg   %ax,%ax
 1be:	66 90                	xchg   %ax,%ax

000001c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 1c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1c1:	31 c0                	xor    %eax,%eax
{
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	53                   	push   %ebx
 1c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1d7:	83 c0 01             	add    $0x1,%eax
 1da:	84 d2                	test   %dl,%dl
 1dc:	75 f2                	jne    1d0 <strcpy+0x10>
    ;
  return os;
}
 1de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1e1:	89 c8                	mov    %ecx,%eax
 1e3:	c9                   	leave  
 1e4:	c3                   	ret    
 1e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 55 08             	mov    0x8(%ebp),%edx
 1f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1fa:	0f b6 02             	movzbl (%edx),%eax
 1fd:	84 c0                	test   %al,%al
 1ff:	75 17                	jne    218 <strcmp+0x28>
 201:	eb 3a                	jmp    23d <strcmp+0x4d>
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
 208:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 20c:	83 c2 01             	add    $0x1,%edx
 20f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 212:	84 c0                	test   %al,%al
 214:	74 1a                	je     230 <strcmp+0x40>
    p++, q++;
 216:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 218:	0f b6 19             	movzbl (%ecx),%ebx
 21b:	38 c3                	cmp    %al,%bl
 21d:	74 e9                	je     208 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 21f:	29 d8                	sub    %ebx,%eax
}
 221:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 224:	c9                   	leave  
 225:	c3                   	ret    
 226:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 230:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 234:	31 c0                	xor    %eax,%eax
 236:	29 d8                	sub    %ebx,%eax
}
 238:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 23b:	c9                   	leave  
 23c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 23d:	0f b6 19             	movzbl (%ecx),%ebx
 240:	31 c0                	xor    %eax,%eax
 242:	eb db                	jmp    21f <strcmp+0x2f>
 244:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 24f:	90                   	nop

00000250 <strlen>:

uint
strlen(const char *s)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 256:	80 3a 00             	cmpb   $0x0,(%edx)
 259:	74 15                	je     270 <strlen+0x20>
 25b:	31 c0                	xor    %eax,%eax
 25d:	8d 76 00             	lea    0x0(%esi),%esi
 260:	83 c0 01             	add    $0x1,%eax
 263:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 267:	89 c1                	mov    %eax,%ecx
 269:	75 f5                	jne    260 <strlen+0x10>
    ;
  return n;
}
 26b:	89 c8                	mov    %ecx,%eax
 26d:	5d                   	pop    %ebp
 26e:	c3                   	ret    
 26f:	90                   	nop
  for(n = 0; s[n]; n++)
 270:	31 c9                	xor    %ecx,%ecx
}
 272:	5d                   	pop    %ebp
 273:	89 c8                	mov    %ecx,%eax
 275:	c3                   	ret    
 276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27d:	8d 76 00             	lea    0x0(%esi),%esi

00000280 <memset>:

void*
memset(void *dst, int c, uint n)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 287:	8b 4d 10             	mov    0x10(%ebp),%ecx
 28a:	8b 45 0c             	mov    0xc(%ebp),%eax
 28d:	89 d7                	mov    %edx,%edi
 28f:	fc                   	cld    
 290:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 292:	8b 7d fc             	mov    -0x4(%ebp),%edi
 295:	89 d0                	mov    %edx,%eax
 297:	c9                   	leave  
 298:	c3                   	ret    
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002a0 <strchr>:

char*
strchr(const char *s, char c)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 45 08             	mov    0x8(%ebp),%eax
 2a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2aa:	0f b6 10             	movzbl (%eax),%edx
 2ad:	84 d2                	test   %dl,%dl
 2af:	75 12                	jne    2c3 <strchr+0x23>
 2b1:	eb 1d                	jmp    2d0 <strchr+0x30>
 2b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b7:	90                   	nop
 2b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2bc:	83 c0 01             	add    $0x1,%eax
 2bf:	84 d2                	test   %dl,%dl
 2c1:	74 0d                	je     2d0 <strchr+0x30>
    if(*s == c)
 2c3:	38 d1                	cmp    %dl,%cl
 2c5:	75 f1                	jne    2b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2c7:	5d                   	pop    %ebp
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2d0:	31 c0                	xor    %eax,%eax
}
 2d2:	5d                   	pop    %ebp
 2d3:	c3                   	ret    
 2d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop

000002e0 <gets>:

char*
gets(char *buf, int max)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2e9:	31 db                	xor    %ebx,%ebx
{
 2eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ee:	eb 27                	jmp    317 <gets+0x37>
    cc = read(0, &c, 1);
 2f0:	83 ec 04             	sub    $0x4,%esp
 2f3:	6a 01                	push   $0x1
 2f5:	57                   	push   %edi
 2f6:	6a 00                	push   $0x0
 2f8:	e8 a4 01 00 00       	call   4a1 <read>
    if(cc < 1)
 2fd:	83 c4 10             	add    $0x10,%esp
 300:	85 c0                	test   %eax,%eax
 302:	7e 1d                	jle    321 <gets+0x41>
      break;
    buf[i++] = c;
 304:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 308:	8b 55 08             	mov    0x8(%ebp),%edx
 30b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 30f:	3c 0a                	cmp    $0xa,%al
 311:	74 1d                	je     330 <gets+0x50>
 313:	3c 0d                	cmp    $0xd,%al
 315:	74 19                	je     330 <gets+0x50>
  for(i=0; i+1 < max; ){
 317:	89 de                	mov    %ebx,%esi
 319:	83 c3 01             	add    $0x1,%ebx
 31c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 31f:	7c cf                	jl     2f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 321:	8b 45 08             	mov    0x8(%ebp),%eax
 324:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 328:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32b:	5b                   	pop    %ebx
 32c:	5e                   	pop    %esi
 32d:	5f                   	pop    %edi
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    
  buf[i] = '\0';
 330:	8b 45 08             	mov    0x8(%ebp),%eax
 333:	89 de                	mov    %ebx,%esi
 335:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 339:	8d 65 f4             	lea    -0xc(%ebp),%esp
 33c:	5b                   	pop    %ebx
 33d:	5e                   	pop    %esi
 33e:	5f                   	pop    %edi
 33f:	5d                   	pop    %ebp
 340:	c3                   	ret    
 341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 348:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <stat>:

int
stat(const char *n, struct stat *st)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 355:	83 ec 08             	sub    $0x8,%esp
 358:	6a 00                	push   $0x0
 35a:	ff 75 08             	push   0x8(%ebp)
 35d:	e8 67 01 00 00       	call   4c9 <open>
  if(fd < 0)
 362:	83 c4 10             	add    $0x10,%esp
 365:	85 c0                	test   %eax,%eax
 367:	78 27                	js     390 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 369:	83 ec 08             	sub    $0x8,%esp
 36c:	ff 75 0c             	push   0xc(%ebp)
 36f:	89 c3                	mov    %eax,%ebx
 371:	50                   	push   %eax
 372:	e8 6a 01 00 00       	call   4e1 <fstat>
  close(fd);
 377:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 37a:	89 c6                	mov    %eax,%esi
  close(fd);
 37c:	e8 30 01 00 00       	call   4b1 <close>
  return r;
 381:	83 c4 10             	add    $0x10,%esp
}
 384:	8d 65 f8             	lea    -0x8(%ebp),%esp
 387:	89 f0                	mov    %esi,%eax
 389:	5b                   	pop    %ebx
 38a:	5e                   	pop    %esi
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 390:	be ff ff ff ff       	mov    $0xffffffff,%esi
 395:	eb ed                	jmp    384 <stat+0x34>
 397:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39e:	66 90                	xchg   %ax,%ax

000003a0 <atoi>:

int
atoi(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3a7:	0f be 02             	movsbl (%edx),%eax
 3aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3b5:	77 1e                	ja     3d5 <atoi+0x35>
 3b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3c0:	83 c2 01             	add    $0x1,%edx
 3c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3ca:	0f be 02             	movsbl (%edx),%eax
 3cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3d0:	80 fb 09             	cmp    $0x9,%bl
 3d3:	76 eb                	jbe    3c0 <atoi+0x20>
  return n;
}
 3d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3d8:	89 c8                	mov    %ecx,%eax
 3da:	c9                   	leave  
 3db:	c3                   	ret    
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	8b 45 10             	mov    0x10(%ebp),%eax
 3e7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ea:	56                   	push   %esi
 3eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ee:	85 c0                	test   %eax,%eax
 3f0:	7e 13                	jle    405 <memmove+0x25>
 3f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3f4:	89 d7                	mov    %edx,%edi
 3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 400:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 401:	39 f8                	cmp    %edi,%eax
 403:	75 fb                	jne    400 <memmove+0x20>
  return vdst;
}
 405:	5e                   	pop    %esi
 406:	89 d0                	mov    %edx,%eax
 408:	5f                   	pop    %edi
 409:	5d                   	pop    %ebp
 40a:	c3                   	ret    
 40b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 40f:	90                   	nop

00000410 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 416:	6a 04                	push   $0x4
 418:	e8 03 04 00 00       	call   820 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 41d:	50                   	push   %eax
 41e:	ff 75 10             	push   0x10(%ebp)
 421:	ff 75 0c             	push   0xc(%ebp)
 424:	ff 75 08             	push   0x8(%ebp)
 427:	e8 fd 00 00 00       	call   529 <clone>
}
 42c:	c9                   	leave  
 42d:	c3                   	ret    
 42e:	66 90                	xchg   %ax,%ax

00000430 <thread_join>:

int
thread_join(){
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	56                   	push   %esi
 434:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 435:	83 ec 0c             	sub    $0xc,%esp
 438:	6a 04                	push   $0x4
 43a:	e8 e1 03 00 00       	call   820 <malloc>
  int rc = join(stack);
 43f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 442:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 444:	e8 e8 00 00 00       	call   531 <join>
 449:	89 c6                	mov    %eax,%esi
  free(*stack);
 44b:	58                   	pop    %eax
 44c:	ff 33                	push   (%ebx)
 44e:	e8 3d 03 00 00       	call   790 <free>
  return rc;
}
 453:	8d 65 f8             	lea    -0x8(%ebp),%esp
 456:	89 f0                	mov    %esi,%eax
 458:	5b                   	pop    %ebx
 459:	5e                   	pop    %esi
 45a:	5d                   	pop    %ebp
 45b:	c3                   	ret    
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <lock_release>:
 470:	c3                   	ret    
 471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 478:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <lock_init>:
 480:	c3                   	ret    

00000481 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 481:	b8 01 00 00 00       	mov    $0x1,%eax
 486:	cd 40                	int    $0x40
 488:	c3                   	ret    

00000489 <exit>:
SYSCALL(exit)
 489:	b8 02 00 00 00       	mov    $0x2,%eax
 48e:	cd 40                	int    $0x40
 490:	c3                   	ret    

00000491 <wait>:
SYSCALL(wait)
 491:	b8 03 00 00 00       	mov    $0x3,%eax
 496:	cd 40                	int    $0x40
 498:	c3                   	ret    

00000499 <pipe>:
SYSCALL(pipe)
 499:	b8 04 00 00 00       	mov    $0x4,%eax
 49e:	cd 40                	int    $0x40
 4a0:	c3                   	ret    

000004a1 <read>:
SYSCALL(read)
 4a1:	b8 05 00 00 00       	mov    $0x5,%eax
 4a6:	cd 40                	int    $0x40
 4a8:	c3                   	ret    

000004a9 <write>:
SYSCALL(write)
 4a9:	b8 10 00 00 00       	mov    $0x10,%eax
 4ae:	cd 40                	int    $0x40
 4b0:	c3                   	ret    

000004b1 <close>:
SYSCALL(close)
 4b1:	b8 15 00 00 00       	mov    $0x15,%eax
 4b6:	cd 40                	int    $0x40
 4b8:	c3                   	ret    

000004b9 <kill>:
SYSCALL(kill)
 4b9:	b8 06 00 00 00       	mov    $0x6,%eax
 4be:	cd 40                	int    $0x40
 4c0:	c3                   	ret    

000004c1 <exec>:
SYSCALL(exec)
 4c1:	b8 07 00 00 00       	mov    $0x7,%eax
 4c6:	cd 40                	int    $0x40
 4c8:	c3                   	ret    

000004c9 <open>:
SYSCALL(open)
 4c9:	b8 0f 00 00 00       	mov    $0xf,%eax
 4ce:	cd 40                	int    $0x40
 4d0:	c3                   	ret    

000004d1 <mknod>:
SYSCALL(mknod)
 4d1:	b8 11 00 00 00       	mov    $0x11,%eax
 4d6:	cd 40                	int    $0x40
 4d8:	c3                   	ret    

000004d9 <unlink>:
SYSCALL(unlink)
 4d9:	b8 12 00 00 00       	mov    $0x12,%eax
 4de:	cd 40                	int    $0x40
 4e0:	c3                   	ret    

000004e1 <fstat>:
SYSCALL(fstat)
 4e1:	b8 08 00 00 00       	mov    $0x8,%eax
 4e6:	cd 40                	int    $0x40
 4e8:	c3                   	ret    

000004e9 <link>:
SYSCALL(link)
 4e9:	b8 13 00 00 00       	mov    $0x13,%eax
 4ee:	cd 40                	int    $0x40
 4f0:	c3                   	ret    

000004f1 <mkdir>:
SYSCALL(mkdir)
 4f1:	b8 14 00 00 00       	mov    $0x14,%eax
 4f6:	cd 40                	int    $0x40
 4f8:	c3                   	ret    

000004f9 <chdir>:
SYSCALL(chdir)
 4f9:	b8 09 00 00 00       	mov    $0x9,%eax
 4fe:	cd 40                	int    $0x40
 500:	c3                   	ret    

00000501 <dup>:
SYSCALL(dup)
 501:	b8 0a 00 00 00       	mov    $0xa,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    

00000509 <getpid>:
SYSCALL(getpid)
 509:	b8 0b 00 00 00       	mov    $0xb,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    

00000511 <sbrk>:
SYSCALL(sbrk)
 511:	b8 0c 00 00 00       	mov    $0xc,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    

00000519 <sleep>:
SYSCALL(sleep)
 519:	b8 0d 00 00 00       	mov    $0xd,%eax
 51e:	cd 40                	int    $0x40
 520:	c3                   	ret    

00000521 <uptime>:
SYSCALL(uptime)
 521:	b8 0e 00 00 00       	mov    $0xe,%eax
 526:	cd 40                	int    $0x40
 528:	c3                   	ret    

00000529 <clone>:
SYSCALL(clone)
 529:	b8 16 00 00 00       	mov    $0x16,%eax
 52e:	cd 40                	int    $0x40
 530:	c3                   	ret    

00000531 <join>:
SYSCALL(join)
 531:	b8 17 00 00 00       	mov    $0x17,%eax
 536:	cd 40                	int    $0x40
 538:	c3                   	ret    
 539:	66 90                	xchg   %ax,%ax
 53b:	66 90                	xchg   %ax,%ax
 53d:	66 90                	xchg   %ax,%ax
 53f:	90                   	nop

00000540 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	57                   	push   %edi
 544:	56                   	push   %esi
 545:	53                   	push   %ebx
 546:	83 ec 3c             	sub    $0x3c,%esp
 549:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 54c:	89 d1                	mov    %edx,%ecx
{
 54e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 551:	85 d2                	test   %edx,%edx
 553:	0f 89 7f 00 00 00    	jns    5d8 <printint+0x98>
 559:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 55d:	74 79                	je     5d8 <printint+0x98>
    neg = 1;
 55f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 566:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 568:	31 db                	xor    %ebx,%ebx
 56a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 56d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 570:	89 c8                	mov    %ecx,%eax
 572:	31 d2                	xor    %edx,%edx
 574:	89 cf                	mov    %ecx,%edi
 576:	f7 75 c4             	divl   -0x3c(%ebp)
 579:	0f b6 92 14 0a 00 00 	movzbl 0xa14(%edx),%edx
 580:	89 45 c0             	mov    %eax,-0x40(%ebp)
 583:	89 d8                	mov    %ebx,%eax
 585:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 588:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 58b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 58e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 591:	76 dd                	jbe    570 <printint+0x30>
  if(neg)
 593:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 596:	85 c9                	test   %ecx,%ecx
 598:	74 0c                	je     5a6 <printint+0x66>
    buf[i++] = '-';
 59a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 59f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5ad:	eb 07                	jmp    5b6 <printint+0x76>
 5af:	90                   	nop
    putc(fd, buf[i]);
 5b0:	0f b6 13             	movzbl (%ebx),%edx
 5b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5b6:	83 ec 04             	sub    $0x4,%esp
 5b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5bc:	6a 01                	push   $0x1
 5be:	56                   	push   %esi
 5bf:	57                   	push   %edi
 5c0:	e8 e4 fe ff ff       	call   4a9 <write>
  while(--i >= 0)
 5c5:	83 c4 10             	add    $0x10,%esp
 5c8:	39 de                	cmp    %ebx,%esi
 5ca:	75 e4                	jne    5b0 <printint+0x70>
}
 5cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5cf:	5b                   	pop    %ebx
 5d0:	5e                   	pop    %esi
 5d1:	5f                   	pop    %edi
 5d2:	5d                   	pop    %ebp
 5d3:	c3                   	ret    
 5d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5df:	eb 87                	jmp    568 <printint+0x28>
 5e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ef:	90                   	nop

000005f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5ff:	0f b6 13             	movzbl (%ebx),%edx
 602:	84 d2                	test   %dl,%dl
 604:	74 6a                	je     670 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 606:	8d 45 10             	lea    0x10(%ebp),%eax
 609:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 60c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 60f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 611:	89 45 d0             	mov    %eax,-0x30(%ebp)
 614:	eb 36                	jmp    64c <printf+0x5c>
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
 620:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 623:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 628:	83 f8 25             	cmp    $0x25,%eax
 62b:	74 15                	je     642 <printf+0x52>
  write(fd, &c, 1);
 62d:	83 ec 04             	sub    $0x4,%esp
 630:	88 55 e7             	mov    %dl,-0x19(%ebp)
 633:	6a 01                	push   $0x1
 635:	57                   	push   %edi
 636:	56                   	push   %esi
 637:	e8 6d fe ff ff       	call   4a9 <write>
 63c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 63f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 642:	0f b6 13             	movzbl (%ebx),%edx
 645:	83 c3 01             	add    $0x1,%ebx
 648:	84 d2                	test   %dl,%dl
 64a:	74 24                	je     670 <printf+0x80>
    c = fmt[i] & 0xff;
 64c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 64f:	85 c9                	test   %ecx,%ecx
 651:	74 cd                	je     620 <printf+0x30>
      }
    } else if(state == '%'){
 653:	83 f9 25             	cmp    $0x25,%ecx
 656:	75 ea                	jne    642 <printf+0x52>
      if(c == 'd'){
 658:	83 f8 25             	cmp    $0x25,%eax
 65b:	0f 84 07 01 00 00    	je     768 <printf+0x178>
 661:	83 e8 63             	sub    $0x63,%eax
 664:	83 f8 15             	cmp    $0x15,%eax
 667:	77 17                	ja     680 <printf+0x90>
 669:	ff 24 85 bc 09 00 00 	jmp    *0x9bc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 670:	8d 65 f4             	lea    -0xc(%ebp),%esp
 673:	5b                   	pop    %ebx
 674:	5e                   	pop    %esi
 675:	5f                   	pop    %edi
 676:	5d                   	pop    %ebp
 677:	c3                   	ret    
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop
  write(fd, &c, 1);
 680:	83 ec 04             	sub    $0x4,%esp
 683:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 686:	6a 01                	push   $0x1
 688:	57                   	push   %edi
 689:	56                   	push   %esi
 68a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 68e:	e8 16 fe ff ff       	call   4a9 <write>
        putc(fd, c);
 693:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 697:	83 c4 0c             	add    $0xc,%esp
 69a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 69d:	6a 01                	push   $0x1
 69f:	57                   	push   %edi
 6a0:	56                   	push   %esi
 6a1:	e8 03 fe ff ff       	call   4a9 <write>
        putc(fd, c);
 6a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6a9:	31 c9                	xor    %ecx,%ecx
 6ab:	eb 95                	jmp    642 <printf+0x52>
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6b0:	83 ec 0c             	sub    $0xc,%esp
 6b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6b8:	6a 00                	push   $0x0
 6ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6bd:	8b 10                	mov    (%eax),%edx
 6bf:	89 f0                	mov    %esi,%eax
 6c1:	e8 7a fe ff ff       	call   540 <printint>
        ap++;
 6c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6cd:	31 c9                	xor    %ecx,%ecx
 6cf:	e9 6e ff ff ff       	jmp    642 <printf+0x52>
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6db:	8b 10                	mov    (%eax),%edx
        ap++;
 6dd:	83 c0 04             	add    $0x4,%eax
 6e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6e3:	85 d2                	test   %edx,%edx
 6e5:	0f 84 8d 00 00 00    	je     778 <printf+0x188>
        while(*s != 0){
 6eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6f0:	84 c0                	test   %al,%al
 6f2:	0f 84 4a ff ff ff    	je     642 <printf+0x52>
 6f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6fb:	89 d3                	mov    %edx,%ebx
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 700:	83 ec 04             	sub    $0x4,%esp
          s++;
 703:	83 c3 01             	add    $0x1,%ebx
 706:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 709:	6a 01                	push   $0x1
 70b:	57                   	push   %edi
 70c:	56                   	push   %esi
 70d:	e8 97 fd ff ff       	call   4a9 <write>
        while(*s != 0){
 712:	0f b6 03             	movzbl (%ebx),%eax
 715:	83 c4 10             	add    $0x10,%esp
 718:	84 c0                	test   %al,%al
 71a:	75 e4                	jne    700 <printf+0x110>
      state = 0;
 71c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 71f:	31 c9                	xor    %ecx,%ecx
 721:	e9 1c ff ff ff       	jmp    642 <printf+0x52>
 726:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 730:	83 ec 0c             	sub    $0xc,%esp
 733:	b9 0a 00 00 00       	mov    $0xa,%ecx
 738:	6a 01                	push   $0x1
 73a:	e9 7b ff ff ff       	jmp    6ba <printf+0xca>
 73f:	90                   	nop
        putc(fd, *ap);
 740:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 743:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 746:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 748:	6a 01                	push   $0x1
 74a:	57                   	push   %edi
 74b:	56                   	push   %esi
        putc(fd, *ap);
 74c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 74f:	e8 55 fd ff ff       	call   4a9 <write>
        ap++;
 754:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 758:	83 c4 10             	add    $0x10,%esp
      state = 0;
 75b:	31 c9                	xor    %ecx,%ecx
 75d:	e9 e0 fe ff ff       	jmp    642 <printf+0x52>
 762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 768:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 76b:	83 ec 04             	sub    $0x4,%esp
 76e:	e9 2a ff ff ff       	jmp    69d <printf+0xad>
 773:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 777:	90                   	nop
          s = "(null)";
 778:	ba b4 09 00 00       	mov    $0x9b4,%edx
        while(*s != 0){
 77d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 780:	b8 28 00 00 00       	mov    $0x28,%eax
 785:	89 d3                	mov    %edx,%ebx
 787:	e9 74 ff ff ff       	jmp    700 <printf+0x110>
 78c:	66 90                	xchg   %ax,%ax
 78e:	66 90                	xchg   %ax,%ax

00000790 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 790:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 791:	a1 68 0d 00 00       	mov    0xd68,%eax
{
 796:	89 e5                	mov    %esp,%ebp
 798:	57                   	push   %edi
 799:	56                   	push   %esi
 79a:	53                   	push   %ebx
 79b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 79e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a8:	89 c2                	mov    %eax,%edx
 7aa:	8b 00                	mov    (%eax),%eax
 7ac:	39 ca                	cmp    %ecx,%edx
 7ae:	73 30                	jae    7e0 <free+0x50>
 7b0:	39 c1                	cmp    %eax,%ecx
 7b2:	72 04                	jb     7b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7b4:	39 c2                	cmp    %eax,%edx
 7b6:	72 f0                	jb     7a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7be:	39 f8                	cmp    %edi,%eax
 7c0:	74 30                	je     7f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7c5:	8b 42 04             	mov    0x4(%edx),%eax
 7c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7cb:	39 f1                	cmp    %esi,%ecx
 7cd:	74 3a                	je     809 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7d1:	5b                   	pop    %ebx
  freep = p;
 7d2:	89 15 68 0d 00 00    	mov    %edx,0xd68
}
 7d8:	5e                   	pop    %esi
 7d9:	5f                   	pop    %edi
 7da:	5d                   	pop    %ebp
 7db:	c3                   	ret    
 7dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7e0:	39 c2                	cmp    %eax,%edx
 7e2:	72 c4                	jb     7a8 <free+0x18>
 7e4:	39 c1                	cmp    %eax,%ecx
 7e6:	73 c0                	jae    7a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ee:	39 f8                	cmp    %edi,%eax
 7f0:	75 d0                	jne    7c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7f2:	03 70 04             	add    0x4(%eax),%esi
 7f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7f8:	8b 02                	mov    (%edx),%eax
 7fa:	8b 00                	mov    (%eax),%eax
 7fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7ff:	8b 42 04             	mov    0x4(%edx),%eax
 802:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 805:	39 f1                	cmp    %esi,%ecx
 807:	75 c6                	jne    7cf <free+0x3f>
    p->s.size += bp->s.size;
 809:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 80c:	89 15 68 0d 00 00    	mov    %edx,0xd68
    p->s.size += bp->s.size;
 812:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 815:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 818:	89 0a                	mov    %ecx,(%edx)
}
 81a:	5b                   	pop    %ebx
 81b:	5e                   	pop    %esi
 81c:	5f                   	pop    %edi
 81d:	5d                   	pop    %ebp
 81e:	c3                   	ret    
 81f:	90                   	nop

00000820 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 829:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 82c:	8b 3d 68 0d 00 00    	mov    0xd68,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 832:	8d 70 07             	lea    0x7(%eax),%esi
 835:	c1 ee 03             	shr    $0x3,%esi
 838:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 83b:	85 ff                	test   %edi,%edi
 83d:	0f 84 9d 00 00 00    	je     8e0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 843:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 845:	8b 4a 04             	mov    0x4(%edx),%ecx
 848:	39 f1                	cmp    %esi,%ecx
 84a:	73 6a                	jae    8b6 <malloc+0x96>
 84c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 851:	39 de                	cmp    %ebx,%esi
 853:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 856:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 85d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 860:	eb 17                	jmp    879 <malloc+0x59>
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 868:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 86a:	8b 48 04             	mov    0x4(%eax),%ecx
 86d:	39 f1                	cmp    %esi,%ecx
 86f:	73 4f                	jae    8c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 871:	8b 3d 68 0d 00 00    	mov    0xd68,%edi
 877:	89 c2                	mov    %eax,%edx
 879:	39 d7                	cmp    %edx,%edi
 87b:	75 eb                	jne    868 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 87d:	83 ec 0c             	sub    $0xc,%esp
 880:	ff 75 e4             	push   -0x1c(%ebp)
 883:	e8 89 fc ff ff       	call   511 <sbrk>
  if(p == (char*)-1)
 888:	83 c4 10             	add    $0x10,%esp
 88b:	83 f8 ff             	cmp    $0xffffffff,%eax
 88e:	74 1c                	je     8ac <malloc+0x8c>
  hp->s.size = nu;
 890:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 893:	83 ec 0c             	sub    $0xc,%esp
 896:	83 c0 08             	add    $0x8,%eax
 899:	50                   	push   %eax
 89a:	e8 f1 fe ff ff       	call   790 <free>
  return freep;
 89f:	8b 15 68 0d 00 00    	mov    0xd68,%edx
      if((p = morecore(nunits)) == 0)
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	85 d2                	test   %edx,%edx
 8aa:	75 bc                	jne    868 <malloc+0x48>
        return 0;
  }
}
 8ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8af:	31 c0                	xor    %eax,%eax
}
 8b1:	5b                   	pop    %ebx
 8b2:	5e                   	pop    %esi
 8b3:	5f                   	pop    %edi
 8b4:	5d                   	pop    %ebp
 8b5:	c3                   	ret    
    if(p->s.size >= nunits){
 8b6:	89 d0                	mov    %edx,%eax
 8b8:	89 fa                	mov    %edi,%edx
 8ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8c0:	39 ce                	cmp    %ecx,%esi
 8c2:	74 4c                	je     910 <malloc+0xf0>
        p->s.size -= nunits;
 8c4:	29 f1                	sub    %esi,%ecx
 8c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8cc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8cf:	89 15 68 0d 00 00    	mov    %edx,0xd68
}
 8d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8d8:	83 c0 08             	add    $0x8,%eax
}
 8db:	5b                   	pop    %ebx
 8dc:	5e                   	pop    %esi
 8dd:	5f                   	pop    %edi
 8de:	5d                   	pop    %ebp
 8df:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8e0:	c7 05 68 0d 00 00 6c 	movl   $0xd6c,0xd68
 8e7:	0d 00 00 
    base.s.size = 0;
 8ea:	bf 6c 0d 00 00       	mov    $0xd6c,%edi
    base.s.ptr = freep = prevp = &base;
 8ef:	c7 05 6c 0d 00 00 6c 	movl   $0xd6c,0xd6c
 8f6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8fb:	c7 05 70 0d 00 00 00 	movl   $0x0,0xd70
 902:	00 00 00 
    if(p->s.size >= nunits){
 905:	e9 42 ff ff ff       	jmp    84c <malloc+0x2c>
 90a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 910:	8b 08                	mov    (%eax),%ecx
 912:	89 0a                	mov    %ecx,(%edx)
 914:	eb b9                	jmp    8cf <malloc+0xaf>
