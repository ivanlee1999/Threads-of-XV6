
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
  12:	e8 7f 05 00 00       	call   596 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 6c 0e 00 00       	mov    %eax,0xe6c
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
  48:	e8 23 04 00 00       	call   470 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 2);
  51:	83 3d 68 0e 00 00 02 	cmpl   $0x2,0xe68
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 23                	push   $0x23
  60:	68 a8 09 00 00       	push   $0x9a8
  65:	68 b2 09 00 00       	push   $0x9b2
  6a:	6a 01                	push   $0x1
  6c:	e8 0f 06 00 00       	call   680 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 2b 0a 00 00       	push   $0xa2b
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 22                	push   $0x22
  7d:	68 a8 09 00 00       	push   $0x9a8
  82:	68 b2 09 00 00       	push   $0x9b2
  87:	6a 01                	push   $0x1
  89:	e8 f2 05 00 00       	call   680 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 14 0a 00 00       	push   $0xa14
  96:	68 c9 09 00 00       	push   $0x9c9
  9b:	6a 01                	push   $0x1
  9d:	e8 de 05 00 00       	call   680 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 dd 09 00 00       	push   $0x9dd
  a9:	6a 01                	push   $0x1
  ab:	e8 d0 05 00 00       	call   680 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 6c 0e 00 00    	push   0xe6c
  b7:	e8 8a 04 00 00       	call   546 <kill>
  bc:	e8 55 04 00 00       	call   516 <exit>
   assert(thread_pid > 0);
  c1:	6a 1f                	push   $0x1f
  c3:	68 a8 09 00 00       	push   $0x9a8
  c8:	68 b2 09 00 00       	push   $0x9b2
  cd:	6a 01                	push   $0x1
  cf:	e8 ac 05 00 00       	call   680 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 05 0a 00 00       	push   $0xa05
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 37 0a 00 00       	push   $0xa37
  e5:	6a 01                	push   $0x1
  e7:	e8 94 05 00 00       	call   680 <printf>
   exit();
  ec:	e8 25 04 00 00       	call   516 <exit>
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
 118:	83 3d 68 0e 00 00 01 	cmpl   $0x1,0xe68
 11f:	0f 84 80 00 00 00    	je     1a5 <worker+0xa5>
 125:	6a 2f                	push   $0x2f
 127:	68 a8 09 00 00       	push   $0x9a8
 12c:	68 b2 09 00 00       	push   $0x9b2
 131:	6a 01                	push   $0x1
 133:	e8 48 05 00 00       	call   680 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 f9 09 00 00       	push   $0x9f9
 140:	eb 1b                	jmp    15d <worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2e                	push   $0x2e
 144:	68 a8 09 00 00       	push   $0x9a8
 149:	68 b2 09 00 00       	push   $0x9b2
 14e:	6a 01                	push   $0x1
 150:	e8 2b 05 00 00       	call   680 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 ea 09 00 00       	push   $0x9ea
 15d:	68 c9 09 00 00       	push   $0x9c9
 162:	6a 01                	push   $0x1
 164:	e8 17 05 00 00       	call   680 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 dd 09 00 00       	push   $0x9dd
 170:	6a 01                	push   $0x1
 172:	e8 09 05 00 00       	call   680 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 6c 0e 00 00    	push   0xe6c
 17e:	e8 c3 03 00 00       	call   546 <kill>
 183:	e8 8e 03 00 00       	call   516 <exit>
   assert(arg1_int == 35);
 188:	6a 2d                	push   $0x2d
 18a:	68 a8 09 00 00       	push   $0x9a8
 18f:	68 b2 09 00 00       	push   $0x9b2
 194:	6a 01                	push   $0x1
 196:	e8 e5 04 00 00       	call   680 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 ba 09 00 00       	push   $0x9ba
 1a3:	eb b8                	jmp    15d <worker+0x5d>
   global++;
 1a5:	c7 05 68 0e 00 00 02 	movl   $0x2,0xe68
 1ac:	00 00 00 
   exit();
 1af:	e8 62 03 00 00       	call   516 <exit>
 1b4:	66 90                	xchg   %ax,%ax
 1b6:	66 90                	xchg   %ax,%ax
 1b8:	66 90                	xchg   %ax,%ax
 1ba:	66 90                	xchg   %ax,%ax
 1bc:	66 90                	xchg   %ax,%ax
 1be:	66 90                	xchg   %ax,%ax

000001c0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

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
 2f8:	e8 31 02 00 00       	call   52e <read>
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
 35d:	e8 f4 01 00 00       	call   556 <open>
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
 372:	e8 f7 01 00 00       	call   56e <fstat>
  close(fd);
 377:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 37a:	89 c6                	mov    %eax,%esi
  close(fd);
 37c:	e8 bd 01 00 00       	call   53e <close>
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
 413:	53                   	push   %ebx
 414:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 417:	68 00 20 00 00       	push   $0x2000
 41c:	e8 8f 04 00 00       	call   8b0 <malloc>
  if((int) stack % 4096 != 0){
 421:	83 c4 10             	add    $0x10,%esp
 424:	a9 ff 0f 00 00       	test   $0xfff,%eax
 429:	74 16                	je     441 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 42b:	99                   	cltd   
 42c:	c1 ea 14             	shr    $0x14,%edx
 42f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 432:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 438:	29 ca                	sub    %ecx,%edx
 43a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 441:	50                   	push   %eax
 442:	ff 75 10             	push   0x10(%ebp)
 445:	ff 75 0c             	push   0xc(%ebp)
 448:	ff 75 08             	push   0x8(%ebp)
 44b:	e8 66 01 00 00       	call   5b6 <clone>
  printf(1, " thread create  %d \n", rc);
 450:	83 c4 0c             	add    $0xc,%esp
 453:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 454:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 456:	68 44 0a 00 00       	push   $0xa44
 45b:	6a 01                	push   $0x1
 45d:	e8 1e 02 00 00       	call   680 <printf>
  return rc;
}
 462:	89 d8                	mov    %ebx,%eax
 464:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 467:	c9                   	leave  
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000470 <thread_join>:

int
thread_join(){
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
 474:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 477:	68 59 0a 00 00       	push   $0xa59
 47c:	6a 01                	push   $0x1
 47e:	e8 fd 01 00 00       	call   680 <printf>
  void** stack = malloc(sizeof(void**));
 483:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 48a:	e8 21 04 00 00       	call   8b0 <malloc>
 48f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 491:	58                   	pop    %eax
 492:	5a                   	pop    %edx
 493:	68 69 0a 00 00       	push   $0xa69
 498:	6a 01                	push   $0x1
 49a:	e8 e1 01 00 00       	call   680 <printf>
  int rc = join(stack);
 49f:	89 1c 24             	mov    %ebx,(%esp)
 4a2:	e8 17 01 00 00       	call   5be <join>
  printf(1, "thread join 3 \n");
 4a7:	59                   	pop    %ecx
  int rc = join(stack);
 4a8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 4aa:	58                   	pop    %eax
 4ab:	68 79 0a 00 00       	push   $0xa79
 4b0:	6a 01                	push   $0x1
 4b2:	e8 c9 01 00 00       	call   680 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 4b7:	58                   	pop    %eax
 4b8:	5a                   	pop    %edx
 4b9:	68 89 0a 00 00       	push   $0xa89
 4be:	6a 01                	push   $0x1
 4c0:	e8 bb 01 00 00       	call   680 <printf>
  return rc;
}
 4c5:	89 d8                	mov    %ebx,%eax
 4c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4ca:	c9                   	leave  
 4cb:	c3                   	ret    
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 4d0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4d1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4d6:	89 e5                	mov    %esp,%ebp
 4d8:	8b 55 08             	mov    0x8(%ebp),%edx
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop
 4e0:	89 c8                	mov    %ecx,%eax
 4e2:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 4e5:	83 f8 01             	cmp    $0x1,%eax
 4e8:	74 f6                	je     4e0 <lock_acquire+0x10>
 ; // spin

};
 4ea:	5d                   	pop    %ebp
 4eb:	c3                   	ret    
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004f0 <lock_release>:

void lock_release(lock_t * lock){
 4f0:	55                   	push   %ebp
 4f1:	31 c0                	xor    %eax,%eax
 4f3:	89 e5                	mov    %esp,%ebp
 4f5:	8b 55 08             	mov    0x8(%ebp),%edx
 4f8:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 4fb:	5d                   	pop    %ebp
 4fc:	c3                   	ret    
 4fd:	8d 76 00             	lea    0x0(%esi),%esi

00000500 <lock_init>:

void lock_init(lock_t * lock){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 503:	8b 45 08             	mov    0x8(%ebp),%eax
 506:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 50c:	5d                   	pop    %ebp
 50d:	c3                   	ret    

0000050e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 50e:	b8 01 00 00 00       	mov    $0x1,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <exit>:
SYSCALL(exit)
 516:	b8 02 00 00 00       	mov    $0x2,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <wait>:
SYSCALL(wait)
 51e:	b8 03 00 00 00       	mov    $0x3,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <pipe>:
SYSCALL(pipe)
 526:	b8 04 00 00 00       	mov    $0x4,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <read>:
SYSCALL(read)
 52e:	b8 05 00 00 00       	mov    $0x5,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <write>:
SYSCALL(write)
 536:	b8 10 00 00 00       	mov    $0x10,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <close>:
SYSCALL(close)
 53e:	b8 15 00 00 00       	mov    $0x15,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <kill>:
SYSCALL(kill)
 546:	b8 06 00 00 00       	mov    $0x6,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <exec>:
SYSCALL(exec)
 54e:	b8 07 00 00 00       	mov    $0x7,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <open>:
SYSCALL(open)
 556:	b8 0f 00 00 00       	mov    $0xf,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <mknod>:
SYSCALL(mknod)
 55e:	b8 11 00 00 00       	mov    $0x11,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <unlink>:
SYSCALL(unlink)
 566:	b8 12 00 00 00       	mov    $0x12,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <fstat>:
SYSCALL(fstat)
 56e:	b8 08 00 00 00       	mov    $0x8,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <link>:
SYSCALL(link)
 576:	b8 13 00 00 00       	mov    $0x13,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <mkdir>:
SYSCALL(mkdir)
 57e:	b8 14 00 00 00       	mov    $0x14,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <chdir>:
SYSCALL(chdir)
 586:	b8 09 00 00 00       	mov    $0x9,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <dup>:
SYSCALL(dup)
 58e:	b8 0a 00 00 00       	mov    $0xa,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <getpid>:
SYSCALL(getpid)
 596:	b8 0b 00 00 00       	mov    $0xb,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <sbrk>:
SYSCALL(sbrk)
 59e:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <sleep>:
SYSCALL(sleep)
 5a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <uptime>:
SYSCALL(uptime)
 5ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <clone>:
SYSCALL(clone)
 5b6:	b8 16 00 00 00       	mov    $0x16,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <join>:
SYSCALL(join)
 5be:	b8 17 00 00 00       	mov    $0x17,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    
 5c6:	66 90                	xchg   %ax,%ax
 5c8:	66 90                	xchg   %ax,%ax
 5ca:	66 90                	xchg   %ax,%ax
 5cc:	66 90                	xchg   %ax,%ax
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 3c             	sub    $0x3c,%esp
 5d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5dc:	89 d1                	mov    %edx,%ecx
{
 5de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5e1:	85 d2                	test   %edx,%edx
 5e3:	0f 89 7f 00 00 00    	jns    668 <printint+0x98>
 5e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5ed:	74 79                	je     668 <printint+0x98>
    neg = 1;
 5ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5f8:	31 db                	xor    %ebx,%ebx
 5fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 600:	89 c8                	mov    %ecx,%eax
 602:	31 d2                	xor    %edx,%edx
 604:	89 cf                	mov    %ecx,%edi
 606:	f7 75 c4             	divl   -0x3c(%ebp)
 609:	0f b6 92 f8 0a 00 00 	movzbl 0xaf8(%edx),%edx
 610:	89 45 c0             	mov    %eax,-0x40(%ebp)
 613:	89 d8                	mov    %ebx,%eax
 615:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 618:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 61b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 61e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 621:	76 dd                	jbe    600 <printint+0x30>
  if(neg)
 623:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 626:	85 c9                	test   %ecx,%ecx
 628:	74 0c                	je     636 <printint+0x66>
    buf[i++] = '-';
 62a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 62f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 631:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 636:	8b 7d b8             	mov    -0x48(%ebp),%edi
 639:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 63d:	eb 07                	jmp    646 <printint+0x76>
 63f:	90                   	nop
    putc(fd, buf[i]);
 640:	0f b6 13             	movzbl (%ebx),%edx
 643:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 646:	83 ec 04             	sub    $0x4,%esp
 649:	88 55 d7             	mov    %dl,-0x29(%ebp)
 64c:	6a 01                	push   $0x1
 64e:	56                   	push   %esi
 64f:	57                   	push   %edi
 650:	e8 e1 fe ff ff       	call   536 <write>
  while(--i >= 0)
 655:	83 c4 10             	add    $0x10,%esp
 658:	39 de                	cmp    %ebx,%esi
 65a:	75 e4                	jne    640 <printint+0x70>
}
 65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 668:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 66f:	eb 87                	jmp    5f8 <printint+0x28>
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 689:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 68c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 68f:	0f b6 13             	movzbl (%ebx),%edx
 692:	84 d2                	test   %dl,%dl
 694:	74 6a                	je     700 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 696:	8d 45 10             	lea    0x10(%ebp),%eax
 699:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 69c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 69f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6a4:	eb 36                	jmp    6dc <printf+0x5c>
 6a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
 6b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	74 15                	je     6d2 <printf+0x52>
  write(fd, &c, 1);
 6bd:	83 ec 04             	sub    $0x4,%esp
 6c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6c3:	6a 01                	push   $0x1
 6c5:	57                   	push   %edi
 6c6:	56                   	push   %esi
 6c7:	e8 6a fe ff ff       	call   536 <write>
 6cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6d2:	0f b6 13             	movzbl (%ebx),%edx
 6d5:	83 c3 01             	add    $0x1,%ebx
 6d8:	84 d2                	test   %dl,%dl
 6da:	74 24                	je     700 <printf+0x80>
    c = fmt[i] & 0xff;
 6dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6df:	85 c9                	test   %ecx,%ecx
 6e1:	74 cd                	je     6b0 <printf+0x30>
      }
    } else if(state == '%'){
 6e3:	83 f9 25             	cmp    $0x25,%ecx
 6e6:	75 ea                	jne    6d2 <printf+0x52>
      if(c == 'd'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 07 01 00 00    	je     7f8 <printf+0x178>
 6f1:	83 e8 63             	sub    $0x63,%eax
 6f4:	83 f8 15             	cmp    $0x15,%eax
 6f7:	77 17                	ja     710 <printf+0x90>
 6f9:	ff 24 85 a0 0a 00 00 	jmp    *0xaa0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 700:	8d 65 f4             	lea    -0xc(%ebp),%esp
 703:	5b                   	pop    %ebx
 704:	5e                   	pop    %esi
 705:	5f                   	pop    %edi
 706:	5d                   	pop    %ebp
 707:	c3                   	ret    
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop
  write(fd, &c, 1);
 710:	83 ec 04             	sub    $0x4,%esp
 713:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 716:	6a 01                	push   $0x1
 718:	57                   	push   %edi
 719:	56                   	push   %esi
 71a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 71e:	e8 13 fe ff ff       	call   536 <write>
        putc(fd, c);
 723:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 727:	83 c4 0c             	add    $0xc,%esp
 72a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 72d:	6a 01                	push   $0x1
 72f:	57                   	push   %edi
 730:	56                   	push   %esi
 731:	e8 00 fe ff ff       	call   536 <write>
        putc(fd, c);
 736:	83 c4 10             	add    $0x10,%esp
      state = 0;
 739:	31 c9                	xor    %ecx,%ecx
 73b:	eb 95                	jmp    6d2 <printf+0x52>
 73d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 740:	83 ec 0c             	sub    $0xc,%esp
 743:	b9 10 00 00 00       	mov    $0x10,%ecx
 748:	6a 00                	push   $0x0
 74a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74d:	8b 10                	mov    (%eax),%edx
 74f:	89 f0                	mov    %esi,%eax
 751:	e8 7a fe ff ff       	call   5d0 <printint>
        ap++;
 756:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 75a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 75d:	31 c9                	xor    %ecx,%ecx
 75f:	e9 6e ff ff ff       	jmp    6d2 <printf+0x52>
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 768:	8b 45 d0             	mov    -0x30(%ebp),%eax
 76b:	8b 10                	mov    (%eax),%edx
        ap++;
 76d:	83 c0 04             	add    $0x4,%eax
 770:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 773:	85 d2                	test   %edx,%edx
 775:	0f 84 8d 00 00 00    	je     808 <printf+0x188>
        while(*s != 0){
 77b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 77e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 780:	84 c0                	test   %al,%al
 782:	0f 84 4a ff ff ff    	je     6d2 <printf+0x52>
 788:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 78b:	89 d3                	mov    %edx,%ebx
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 790:	83 ec 04             	sub    $0x4,%esp
          s++;
 793:	83 c3 01             	add    $0x1,%ebx
 796:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 799:	6a 01                	push   $0x1
 79b:	57                   	push   %edi
 79c:	56                   	push   %esi
 79d:	e8 94 fd ff ff       	call   536 <write>
        while(*s != 0){
 7a2:	0f b6 03             	movzbl (%ebx),%eax
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	84 c0                	test   %al,%al
 7aa:	75 e4                	jne    790 <printf+0x110>
      state = 0;
 7ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7af:	31 c9                	xor    %ecx,%ecx
 7b1:	e9 1c ff ff ff       	jmp    6d2 <printf+0x52>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7c8:	6a 01                	push   $0x1
 7ca:	e9 7b ff ff ff       	jmp    74a <printf+0xca>
 7cf:	90                   	nop
        putc(fd, *ap);
 7d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7d8:	6a 01                	push   $0x1
 7da:	57                   	push   %edi
 7db:	56                   	push   %esi
        putc(fd, *ap);
 7dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7df:	e8 52 fd ff ff       	call   536 <write>
        ap++;
 7e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7eb:	31 c9                	xor    %ecx,%ecx
 7ed:	e9 e0 fe ff ff       	jmp    6d2 <printf+0x52>
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7fb:	83 ec 04             	sub    $0x4,%esp
 7fe:	e9 2a ff ff ff       	jmp    72d <printf+0xad>
 803:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 807:	90                   	nop
          s = "(null)";
 808:	ba 99 0a 00 00       	mov    $0xa99,%edx
        while(*s != 0){
 80d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 810:	b8 28 00 00 00       	mov    $0x28,%eax
 815:	89 d3                	mov    %edx,%ebx
 817:	e9 74 ff ff ff       	jmp    790 <printf+0x110>
 81c:	66 90                	xchg   %ax,%ax
 81e:	66 90                	xchg   %ax,%ax

00000820 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 820:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 821:	a1 70 0e 00 00       	mov    0xe70,%eax
{
 826:	89 e5                	mov    %esp,%ebp
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	53                   	push   %ebx
 82b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 82e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 838:	89 c2                	mov    %eax,%edx
 83a:	8b 00                	mov    (%eax),%eax
 83c:	39 ca                	cmp    %ecx,%edx
 83e:	73 30                	jae    870 <free+0x50>
 840:	39 c1                	cmp    %eax,%ecx
 842:	72 04                	jb     848 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 844:	39 c2                	cmp    %eax,%edx
 846:	72 f0                	jb     838 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 848:	8b 73 fc             	mov    -0x4(%ebx),%esi
 84b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 84e:	39 f8                	cmp    %edi,%eax
 850:	74 30                	je     882 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 852:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 855:	8b 42 04             	mov    0x4(%edx),%eax
 858:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 85b:	39 f1                	cmp    %esi,%ecx
 85d:	74 3a                	je     899 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 85f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 861:	5b                   	pop    %ebx
  freep = p;
 862:	89 15 70 0e 00 00    	mov    %edx,0xe70
}
 868:	5e                   	pop    %esi
 869:	5f                   	pop    %edi
 86a:	5d                   	pop    %ebp
 86b:	c3                   	ret    
 86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 870:	39 c2                	cmp    %eax,%edx
 872:	72 c4                	jb     838 <free+0x18>
 874:	39 c1                	cmp    %eax,%ecx
 876:	73 c0                	jae    838 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	75 d0                	jne    852 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 882:	03 70 04             	add    0x4(%eax),%esi
 885:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 888:	8b 02                	mov    (%edx),%eax
 88a:	8b 00                	mov    (%eax),%eax
 88c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 88f:	8b 42 04             	mov    0x4(%edx),%eax
 892:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 895:	39 f1                	cmp    %esi,%ecx
 897:	75 c6                	jne    85f <free+0x3f>
    p->s.size += bp->s.size;
 899:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 89c:	89 15 70 0e 00 00    	mov    %edx,0xe70
    p->s.size += bp->s.size;
 8a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8a8:	89 0a                	mov    %ecx,(%edx)
}
 8aa:	5b                   	pop    %ebx
 8ab:	5e                   	pop    %esi
 8ac:	5f                   	pop    %edi
 8ad:	5d                   	pop    %ebp
 8ae:	c3                   	ret    
 8af:	90                   	nop

000008b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8bc:	8b 3d 70 0e 00 00    	mov    0xe70,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c2:	8d 70 07             	lea    0x7(%eax),%esi
 8c5:	c1 ee 03             	shr    $0x3,%esi
 8c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8cb:	85 ff                	test   %edi,%edi
 8cd:	0f 84 9d 00 00 00    	je     970 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8d8:	39 f1                	cmp    %esi,%ecx
 8da:	73 6a                	jae    946 <malloc+0x96>
 8dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8e1:	39 de                	cmp    %ebx,%esi
 8e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8f0:	eb 17                	jmp    909 <malloc+0x59>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8fa:	8b 48 04             	mov    0x4(%eax),%ecx
 8fd:	39 f1                	cmp    %esi,%ecx
 8ff:	73 4f                	jae    950 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 901:	8b 3d 70 0e 00 00    	mov    0xe70,%edi
 907:	89 c2                	mov    %eax,%edx
 909:	39 d7                	cmp    %edx,%edi
 90b:	75 eb                	jne    8f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 90d:	83 ec 0c             	sub    $0xc,%esp
 910:	ff 75 e4             	push   -0x1c(%ebp)
 913:	e8 86 fc ff ff       	call   59e <sbrk>
  if(p == (char*)-1)
 918:	83 c4 10             	add    $0x10,%esp
 91b:	83 f8 ff             	cmp    $0xffffffff,%eax
 91e:	74 1c                	je     93c <malloc+0x8c>
  hp->s.size = nu;
 920:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 923:	83 ec 0c             	sub    $0xc,%esp
 926:	83 c0 08             	add    $0x8,%eax
 929:	50                   	push   %eax
 92a:	e8 f1 fe ff ff       	call   820 <free>
  return freep;
 92f:	8b 15 70 0e 00 00    	mov    0xe70,%edx
      if((p = morecore(nunits)) == 0)
 935:	83 c4 10             	add    $0x10,%esp
 938:	85 d2                	test   %edx,%edx
 93a:	75 bc                	jne    8f8 <malloc+0x48>
        return 0;
  }
}
 93c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 93f:	31 c0                	xor    %eax,%eax
}
 941:	5b                   	pop    %ebx
 942:	5e                   	pop    %esi
 943:	5f                   	pop    %edi
 944:	5d                   	pop    %ebp
 945:	c3                   	ret    
    if(p->s.size >= nunits){
 946:	89 d0                	mov    %edx,%eax
 948:	89 fa                	mov    %edi,%edx
 94a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 950:	39 ce                	cmp    %ecx,%esi
 952:	74 4c                	je     9a0 <malloc+0xf0>
        p->s.size -= nunits;
 954:	29 f1                	sub    %esi,%ecx
 956:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 959:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 95c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 95f:	89 15 70 0e 00 00    	mov    %edx,0xe70
}
 965:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 968:	83 c0 08             	add    $0x8,%eax
}
 96b:	5b                   	pop    %ebx
 96c:	5e                   	pop    %esi
 96d:	5f                   	pop    %edi
 96e:	5d                   	pop    %ebp
 96f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 970:	c7 05 70 0e 00 00 74 	movl   $0xe74,0xe70
 977:	0e 00 00 
    base.s.size = 0;
 97a:	bf 74 0e 00 00       	mov    $0xe74,%edi
    base.s.ptr = freep = prevp = &base;
 97f:	c7 05 74 0e 00 00 74 	movl   $0xe74,0xe74
 986:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 989:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 98b:	c7 05 78 0e 00 00 00 	movl   $0x0,0xe78
 992:	00 00 00 
    if(p->s.size >= nunits){
 995:	e9 42 ff ff ff       	jmp    8dc <malloc+0x2c>
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9a0:	8b 08                	mov    (%eax),%ecx
 9a2:	89 0a                	mov    %ecx,(%edx)
 9a4:	eb b9                	jmp    95f <malloc+0xaf>
