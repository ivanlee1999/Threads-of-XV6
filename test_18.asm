
_test_18:     file format elf32-i386


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
   ppid = getpid();
   f:	e8 02 06 00 00       	call   616 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 18 0f 00 00       	push   $0xf18
   ppid = getpid();
  1c:	a3 20 0f 00 00       	mov    %eax,0xf20
   lock_init(&lock);
  21:	e8 5a 05 00 00       	call   580 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 14 0f 00 00       	mov    0xf14,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 14 0f 00 00       	mov    0xf14,%eax
  45:	83 c3 01             	add    $0x1,%ebx
  48:	39 d8                	cmp    %ebx,%eax
  4a:	7e 5e                	jle    aa <main+0xaa>
      int thread_pid = thread_create(worker, 0, 0);
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	6a 00                	push   $0x0
  51:	6a 00                	push   $0x0
  53:	68 60 01 00 00       	push   $0x160
  58:	e8 33 04 00 00       	call   490 <thread_create>
      assert(thread_pid > 0);
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	7f dc                	jg     40 <main+0x40>
  64:	6a 26                	push   $0x26
  66:	68 28 0a 00 00       	push   $0xa28
  6b:	68 32 0a 00 00       	push   $0xa32
  70:	6a 01                	push   $0x1
  72:	e8 89 06 00 00       	call   700 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 41 0a 00 00       	push   $0xa41
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 50 0a 00 00       	push   $0xa50
  84:	6a 01                	push   $0x1
  86:	e8 75 06 00 00       	call   700 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 64 0a 00 00       	push   $0xa64
  92:	6a 01                	push   $0x1
  94:	e8 67 06 00 00       	call   700 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 20 0f 00 00    	push   0xf20
  a0:	e8 21 05 00 00       	call   5c6 <kill>
  a5:	e8 ec 04 00 00       	call   596 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 14 0f 00 00       	mov    0xf14,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 27 04 00 00       	call   4f0 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2b                	push   $0x2b
  cf:	68 28 0a 00 00       	push   $0xa28
  d4:	68 32 0a 00 00       	push   $0xa32
  d9:	6a 01                	push   $0x1
  db:	e8 20 06 00 00       	call   700 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 78 0a 00 00       	push   $0xa78
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * 2);
  ea:	01 c0                	add    %eax,%eax
  ec:	3b 05 1c 0f 00 00    	cmp    0xf1c,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 2e                	push   $0x2e
  f6:	68 28 0a 00 00       	push   $0xa28
  fb:	68 32 0a 00 00       	push   $0xa32
 100:	6a 01                	push   $0x1
 102:	e8 f9 05 00 00       	call   700 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 85 0a 00 00       	push   $0xa85
 10f:	e9 6b ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 9f 0a 00 00       	push   $0xa9f
 11b:	6a 01                	push   $0x1
 11d:	e8 de 05 00 00       	call   700 <printf>
   exit();
 122:	e8 6f 04 00 00       	call   596 <exit>
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker2>:
}

void worker2(void *arg1,void *arg2){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 14             	sub    $0x14,%esp
    int j;
    lock_acquire(&lock);
 136:	68 18 0f 00 00       	push   $0xf18
 13b:	e8 10 04 00 00       	call   550 <lock_acquire>
    for(j=0;j<50;j++);
    global++;
    lock_release(&lock);
 140:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
    global++;
 147:	83 05 1c 0f 00 00 01 	addl   $0x1,0xf1c
    lock_release(&lock);
 14e:	e8 1d 04 00 00       	call   570 <lock_release>
    exit();
 153:	e8 3e 04 00 00       	call   596 <exit>
 158:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 15f:	90                   	nop

00000160 <worker>:
    
}
void
worker(void *arg1, void *arg2) {
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	53                   	push   %ebx
 164:	83 ec 10             	sub    $0x10,%esp
   
    lock_acquire(&lock);
 167:	68 18 0f 00 00       	push   $0xf18
 16c:	e8 df 03 00 00       	call   550 <lock_acquire>
    int j;
    for(j = 0; j < 50; j++); // take some time
    global++;
    lock_release(&lock);
 171:	c7 04 24 18 0f 00 00 	movl   $0xf18,(%esp)
    global++;
 178:	83 05 1c 0f 00 00 01 	addl   $0x1,0xf1c
    lock_release(&lock);
 17f:	e8 ec 03 00 00       	call   570 <lock_release>

    int nested_thread_pid = thread_create(worker2, 0, 0);
 184:	83 c4 0c             	add    $0xc,%esp
 187:	6a 00                	push   $0x0
 189:	6a 00                	push   $0x0
 18b:	68 30 01 00 00       	push   $0x130
 190:	e8 fb 02 00 00       	call   490 <thread_create>
    assert(nested_thread_pid > 0);
 195:	83 c4 10             	add    $0x10,%esp
 198:	85 c0                	test   %eax,%eax
 19a:	7e 59                	jle    1f5 <worker+0x95>
 19c:	89 c3                	mov    %eax,%ebx
    int nested_join_pid = thread_join();
 19e:	e8 4d 03 00 00       	call   4f0 <thread_join>
    assert(nested_join_pid > 0);
 1a3:	85 c0                	test   %eax,%eax
 1a5:	7e 6b                	jle    212 <worker+0xb2>
    
    assert(nested_thread_pid==nested_join_pid);
 1a7:	39 c3                	cmp    %eax,%ebx
 1a9:	0f 84 80 00 00 00    	je     22f <worker+0xcf>
 1af:	6a 4b                	push   $0x4b
 1b1:	68 28 0a 00 00       	push   $0xa28
 1b6:	68 32 0a 00 00       	push   $0xa32
 1bb:	6a 01                	push   $0x1
 1bd:	e8 3e 05 00 00       	call   700 <printf>
 1c2:	83 c4 0c             	add    $0xc,%esp
 1c5:	68 ac 0a 00 00       	push   $0xaac
    assert(nested_join_pid > 0);
 1ca:	68 50 0a 00 00       	push   $0xa50
 1cf:	6a 01                	push   $0x1
 1d1:	e8 2a 05 00 00       	call   700 <printf>
 1d6:	58                   	pop    %eax
 1d7:	5a                   	pop    %edx
 1d8:	68 64 0a 00 00       	push   $0xa64
 1dd:	6a 01                	push   $0x1
 1df:	e8 1c 05 00 00       	call   700 <printf>
 1e4:	59                   	pop    %ecx
 1e5:	ff 35 20 0f 00 00    	push   0xf20
 1eb:	e8 d6 03 00 00       	call   5c6 <kill>
 1f0:	e8 a1 03 00 00       	call   596 <exit>
    assert(nested_thread_pid > 0);
 1f5:	6a 47                	push   $0x47
 1f7:	68 28 0a 00 00       	push   $0xa28
 1fc:	68 32 0a 00 00       	push   $0xa32
 201:	6a 01                	push   $0x1
 203:	e8 f8 04 00 00       	call   700 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 3a 0a 00 00       	push   $0xa3a
 210:	eb b8                	jmp    1ca <worker+0x6a>
    assert(nested_join_pid > 0);
 212:	6a 49                	push   $0x49
 214:	68 28 0a 00 00       	push   $0xa28
 219:	68 32 0a 00 00       	push   $0xa32
 21e:	6a 01                	push   $0x1
 220:	e8 db 04 00 00       	call   700 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 71 0a 00 00       	push   $0xa71
 22d:	eb 9b                	jmp    1ca <worker+0x6a>

   exit();
 22f:	e8 62 03 00 00       	call   596 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

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
 378:	e8 31 02 00 00       	call   5ae <read>
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
 3dd:	e8 f4 01 00 00       	call   5d6 <open>
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
 3f2:	e8 f7 01 00 00       	call   5ee <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 bd 01 00 00       	call   5be <close>
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
 493:	53                   	push   %ebx
 494:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 497:	68 00 20 00 00       	push   $0x2000
 49c:	e8 8f 04 00 00       	call   930 <malloc>
  if((int) stack % 4096 != 0){
 4a1:	83 c4 10             	add    $0x10,%esp
 4a4:	a9 ff 0f 00 00       	test   $0xfff,%eax
 4a9:	74 16                	je     4c1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 4ab:	99                   	cltd   
 4ac:	c1 ea 14             	shr    $0x14,%edx
 4af:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 4b2:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 4b8:	29 ca                	sub    %ecx,%edx
 4ba:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 4c1:	50                   	push   %eax
 4c2:	ff 75 10             	push   0x10(%ebp)
 4c5:	ff 75 0c             	push   0xc(%ebp)
 4c8:	ff 75 08             	push   0x8(%ebp)
 4cb:	e8 66 01 00 00       	call   636 <clone>
  printf(1, " thread create  %d \n", rc);
 4d0:	83 c4 0c             	add    $0xc,%esp
 4d3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 4d4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 4d6:	68 cf 0a 00 00       	push   $0xacf
 4db:	6a 01                	push   $0x1
 4dd:	e8 1e 02 00 00       	call   700 <printf>
  return rc;
}
 4e2:	89 d8                	mov    %ebx,%eax
 4e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4e7:	c9                   	leave  
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <thread_join>:

int
thread_join(){
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 4f7:	68 e4 0a 00 00       	push   $0xae4
 4fc:	6a 01                	push   $0x1
 4fe:	e8 fd 01 00 00       	call   700 <printf>
  void** stack = malloc(sizeof(void**));
 503:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 50a:	e8 21 04 00 00       	call   930 <malloc>
 50f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 511:	58                   	pop    %eax
 512:	5a                   	pop    %edx
 513:	68 f4 0a 00 00       	push   $0xaf4
 518:	6a 01                	push   $0x1
 51a:	e8 e1 01 00 00       	call   700 <printf>
  int rc = join(stack);
 51f:	89 1c 24             	mov    %ebx,(%esp)
 522:	e8 17 01 00 00       	call   63e <join>
  printf(1, "thread join 3 \n");
 527:	59                   	pop    %ecx
  int rc = join(stack);
 528:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 52a:	58                   	pop    %eax
 52b:	68 04 0b 00 00       	push   $0xb04
 530:	6a 01                	push   $0x1
 532:	e8 c9 01 00 00       	call   700 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 537:	58                   	pop    %eax
 538:	5a                   	pop    %edx
 539:	68 14 0b 00 00       	push   $0xb14
 53e:	6a 01                	push   $0x1
 540:	e8 bb 01 00 00       	call   700 <printf>
  return rc;
}
 545:	89 d8                	mov    %ebx,%eax
 547:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 54a:	c9                   	leave  
 54b:	c3                   	ret    
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000550 <lock_acquire>:



void lock_acquire(lock_t * lock){
 550:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 551:	b9 01 00 00 00       	mov    $0x1,%ecx
 556:	89 e5                	mov    %esp,%ebp
 558:	8b 55 08             	mov    0x8(%ebp),%edx
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop
 560:	89 c8                	mov    %ecx,%eax
 562:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 565:	83 f8 01             	cmp    $0x1,%eax
 568:	74 f6                	je     560 <lock_acquire+0x10>
 ; // spin

};
 56a:	5d                   	pop    %ebp
 56b:	c3                   	ret    
 56c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000570 <lock_release>:

void lock_release(lock_t * lock){
 570:	55                   	push   %ebp
 571:	31 c0                	xor    %eax,%eax
 573:	89 e5                	mov    %esp,%ebp
 575:	8b 55 08             	mov    0x8(%ebp),%edx
 578:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 57b:	5d                   	pop    %ebp
 57c:	c3                   	ret    
 57d:	8d 76 00             	lea    0x0(%esi),%esi

00000580 <lock_init>:

void lock_init(lock_t * lock){
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 583:	8b 45 08             	mov    0x8(%ebp),%eax
 586:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 58c:	5d                   	pop    %ebp
 58d:	c3                   	ret    

0000058e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 58e:	b8 01 00 00 00       	mov    $0x1,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <exit>:
SYSCALL(exit)
 596:	b8 02 00 00 00       	mov    $0x2,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <wait>:
SYSCALL(wait)
 59e:	b8 03 00 00 00       	mov    $0x3,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <pipe>:
SYSCALL(pipe)
 5a6:	b8 04 00 00 00       	mov    $0x4,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <read>:
SYSCALL(read)
 5ae:	b8 05 00 00 00       	mov    $0x5,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <write>:
SYSCALL(write)
 5b6:	b8 10 00 00 00       	mov    $0x10,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <close>:
SYSCALL(close)
 5be:	b8 15 00 00 00       	mov    $0x15,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <kill>:
SYSCALL(kill)
 5c6:	b8 06 00 00 00       	mov    $0x6,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <exec>:
SYSCALL(exec)
 5ce:	b8 07 00 00 00       	mov    $0x7,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <open>:
SYSCALL(open)
 5d6:	b8 0f 00 00 00       	mov    $0xf,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <mknod>:
SYSCALL(mknod)
 5de:	b8 11 00 00 00       	mov    $0x11,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <unlink>:
SYSCALL(unlink)
 5e6:	b8 12 00 00 00       	mov    $0x12,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <fstat>:
SYSCALL(fstat)
 5ee:	b8 08 00 00 00       	mov    $0x8,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <link>:
SYSCALL(link)
 5f6:	b8 13 00 00 00       	mov    $0x13,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <mkdir>:
SYSCALL(mkdir)
 5fe:	b8 14 00 00 00       	mov    $0x14,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <chdir>:
SYSCALL(chdir)
 606:	b8 09 00 00 00       	mov    $0x9,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <dup>:
SYSCALL(dup)
 60e:	b8 0a 00 00 00       	mov    $0xa,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <getpid>:
SYSCALL(getpid)
 616:	b8 0b 00 00 00       	mov    $0xb,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <sbrk>:
SYSCALL(sbrk)
 61e:	b8 0c 00 00 00       	mov    $0xc,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <sleep>:
SYSCALL(sleep)
 626:	b8 0d 00 00 00       	mov    $0xd,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <uptime>:
SYSCALL(uptime)
 62e:	b8 0e 00 00 00       	mov    $0xe,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <clone>:
SYSCALL(clone)
 636:	b8 16 00 00 00       	mov    $0x16,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <join>:
SYSCALL(join)
 63e:	b8 17 00 00 00       	mov    $0x17,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    
 646:	66 90                	xchg   %ax,%ax
 648:	66 90                	xchg   %ax,%ax
 64a:	66 90                	xchg   %ax,%ax
 64c:	66 90                	xchg   %ax,%ax
 64e:	66 90                	xchg   %ax,%ax

00000650 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
 656:	83 ec 3c             	sub    $0x3c,%esp
 659:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 65c:	89 d1                	mov    %edx,%ecx
{
 65e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 661:	85 d2                	test   %edx,%edx
 663:	0f 89 7f 00 00 00    	jns    6e8 <printint+0x98>
 669:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 66d:	74 79                	je     6e8 <printint+0x98>
    neg = 1;
 66f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 676:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 678:	31 db                	xor    %ebx,%ebx
 67a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 67d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 680:	89 c8                	mov    %ecx,%eax
 682:	31 d2                	xor    %edx,%edx
 684:	89 cf                	mov    %ecx,%edi
 686:	f7 75 c4             	divl   -0x3c(%ebp)
 689:	0f b6 92 84 0b 00 00 	movzbl 0xb84(%edx),%edx
 690:	89 45 c0             	mov    %eax,-0x40(%ebp)
 693:	89 d8                	mov    %ebx,%eax
 695:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 698:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 69b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 69e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6a1:	76 dd                	jbe    680 <printint+0x30>
  if(neg)
 6a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6a6:	85 c9                	test   %ecx,%ecx
 6a8:	74 0c                	je     6b6 <printint+0x66>
    buf[i++] = '-';
 6aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6bd:	eb 07                	jmp    6c6 <printint+0x76>
 6bf:	90                   	nop
    putc(fd, buf[i]);
 6c0:	0f b6 13             	movzbl (%ebx),%edx
 6c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6c6:	83 ec 04             	sub    $0x4,%esp
 6c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6cc:	6a 01                	push   $0x1
 6ce:	56                   	push   %esi
 6cf:	57                   	push   %edi
 6d0:	e8 e1 fe ff ff       	call   5b6 <write>
  while(--i >= 0)
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	39 de                	cmp    %ebx,%esi
 6da:	75 e4                	jne    6c0 <printint+0x70>
}
 6dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6df:	5b                   	pop    %ebx
 6e0:	5e                   	pop    %esi
 6e1:	5f                   	pop    %edi
 6e2:	5d                   	pop    %ebp
 6e3:	c3                   	ret    
 6e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6ef:	eb 87                	jmp    678 <printint+0x28>
 6f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ff:	90                   	nop

00000700 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
 706:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 709:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 70c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 70f:	0f b6 13             	movzbl (%ebx),%edx
 712:	84 d2                	test   %dl,%dl
 714:	74 6a                	je     780 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 716:	8d 45 10             	lea    0x10(%ebp),%eax
 719:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 71c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 71f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 721:	89 45 d0             	mov    %eax,-0x30(%ebp)
 724:	eb 36                	jmp    75c <printf+0x5c>
 726:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72d:	8d 76 00             	lea    0x0(%esi),%esi
 730:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 733:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 738:	83 f8 25             	cmp    $0x25,%eax
 73b:	74 15                	je     752 <printf+0x52>
  write(fd, &c, 1);
 73d:	83 ec 04             	sub    $0x4,%esp
 740:	88 55 e7             	mov    %dl,-0x19(%ebp)
 743:	6a 01                	push   $0x1
 745:	57                   	push   %edi
 746:	56                   	push   %esi
 747:	e8 6a fe ff ff       	call   5b6 <write>
 74c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 74f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 752:	0f b6 13             	movzbl (%ebx),%edx
 755:	83 c3 01             	add    $0x1,%ebx
 758:	84 d2                	test   %dl,%dl
 75a:	74 24                	je     780 <printf+0x80>
    c = fmt[i] & 0xff;
 75c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 75f:	85 c9                	test   %ecx,%ecx
 761:	74 cd                	je     730 <printf+0x30>
      }
    } else if(state == '%'){
 763:	83 f9 25             	cmp    $0x25,%ecx
 766:	75 ea                	jne    752 <printf+0x52>
      if(c == 'd'){
 768:	83 f8 25             	cmp    $0x25,%eax
 76b:	0f 84 07 01 00 00    	je     878 <printf+0x178>
 771:	83 e8 63             	sub    $0x63,%eax
 774:	83 f8 15             	cmp    $0x15,%eax
 777:	77 17                	ja     790 <printf+0x90>
 779:	ff 24 85 2c 0b 00 00 	jmp    *0xb2c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 780:	8d 65 f4             	lea    -0xc(%ebp),%esp
 783:	5b                   	pop    %ebx
 784:	5e                   	pop    %esi
 785:	5f                   	pop    %edi
 786:	5d                   	pop    %ebp
 787:	c3                   	ret    
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop
  write(fd, &c, 1);
 790:	83 ec 04             	sub    $0x4,%esp
 793:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 796:	6a 01                	push   $0x1
 798:	57                   	push   %edi
 799:	56                   	push   %esi
 79a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 79e:	e8 13 fe ff ff       	call   5b6 <write>
        putc(fd, c);
 7a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7a7:	83 c4 0c             	add    $0xc,%esp
 7aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7ad:	6a 01                	push   $0x1
 7af:	57                   	push   %edi
 7b0:	56                   	push   %esi
 7b1:	e8 00 fe ff ff       	call   5b6 <write>
        putc(fd, c);
 7b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7b9:	31 c9                	xor    %ecx,%ecx
 7bb:	eb 95                	jmp    752 <printf+0x52>
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7c8:	6a 00                	push   $0x0
 7ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7cd:	8b 10                	mov    (%eax),%edx
 7cf:	89 f0                	mov    %esi,%eax
 7d1:	e8 7a fe ff ff       	call   650 <printint>
        ap++;
 7d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7dd:	31 c9                	xor    %ecx,%ecx
 7df:	e9 6e ff ff ff       	jmp    752 <printf+0x52>
 7e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7eb:	8b 10                	mov    (%eax),%edx
        ap++;
 7ed:	83 c0 04             	add    $0x4,%eax
 7f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7f3:	85 d2                	test   %edx,%edx
 7f5:	0f 84 8d 00 00 00    	je     888 <printf+0x188>
        while(*s != 0){
 7fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 800:	84 c0                	test   %al,%al
 802:	0f 84 4a ff ff ff    	je     752 <printf+0x52>
 808:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 80b:	89 d3                	mov    %edx,%ebx
 80d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
          s++;
 813:	83 c3 01             	add    $0x1,%ebx
 816:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 819:	6a 01                	push   $0x1
 81b:	57                   	push   %edi
 81c:	56                   	push   %esi
 81d:	e8 94 fd ff ff       	call   5b6 <write>
        while(*s != 0){
 822:	0f b6 03             	movzbl (%ebx),%eax
 825:	83 c4 10             	add    $0x10,%esp
 828:	84 c0                	test   %al,%al
 82a:	75 e4                	jne    810 <printf+0x110>
      state = 0;
 82c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 82f:	31 c9                	xor    %ecx,%ecx
 831:	e9 1c ff ff ff       	jmp    752 <printf+0x52>
 836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 0a 00 00 00       	mov    $0xa,%ecx
 848:	6a 01                	push   $0x1
 84a:	e9 7b ff ff ff       	jmp    7ca <printf+0xca>
 84f:	90                   	nop
        putc(fd, *ap);
 850:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 853:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 856:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 858:	6a 01                	push   $0x1
 85a:	57                   	push   %edi
 85b:	56                   	push   %esi
        putc(fd, *ap);
 85c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 85f:	e8 52 fd ff ff       	call   5b6 <write>
        ap++;
 864:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 868:	83 c4 10             	add    $0x10,%esp
      state = 0;
 86b:	31 c9                	xor    %ecx,%ecx
 86d:	e9 e0 fe ff ff       	jmp    752 <printf+0x52>
 872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 878:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 87b:	83 ec 04             	sub    $0x4,%esp
 87e:	e9 2a ff ff ff       	jmp    7ad <printf+0xad>
 883:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 887:	90                   	nop
          s = "(null)";
 888:	ba 24 0b 00 00       	mov    $0xb24,%edx
        while(*s != 0){
 88d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 890:	b8 28 00 00 00       	mov    $0x28,%eax
 895:	89 d3                	mov    %edx,%ebx
 897:	e9 74 ff ff ff       	jmp    810 <printf+0x110>
 89c:	66 90                	xchg   %ax,%ax
 89e:	66 90                	xchg   %ax,%ax

000008a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8a1:	a1 24 0f 00 00       	mov    0xf24,%eax
{
 8a6:	89 e5                	mov    %esp,%ebp
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	53                   	push   %ebx
 8ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8b8:	89 c2                	mov    %eax,%edx
 8ba:	8b 00                	mov    (%eax),%eax
 8bc:	39 ca                	cmp    %ecx,%edx
 8be:	73 30                	jae    8f0 <free+0x50>
 8c0:	39 c1                	cmp    %eax,%ecx
 8c2:	72 04                	jb     8c8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c4:	39 c2                	cmp    %eax,%edx
 8c6:	72 f0                	jb     8b8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ce:	39 f8                	cmp    %edi,%eax
 8d0:	74 30                	je     902 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8d2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8d5:	8b 42 04             	mov    0x4(%edx),%eax
 8d8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8db:	39 f1                	cmp    %esi,%ecx
 8dd:	74 3a                	je     919 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8df:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8e1:	5b                   	pop    %ebx
  freep = p;
 8e2:	89 15 24 0f 00 00    	mov    %edx,0xf24
}
 8e8:	5e                   	pop    %esi
 8e9:	5f                   	pop    %edi
 8ea:	5d                   	pop    %ebp
 8eb:	c3                   	ret    
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f0:	39 c2                	cmp    %eax,%edx
 8f2:	72 c4                	jb     8b8 <free+0x18>
 8f4:	39 c1                	cmp    %eax,%ecx
 8f6:	73 c0                	jae    8b8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8fe:	39 f8                	cmp    %edi,%eax
 900:	75 d0                	jne    8d2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 902:	03 70 04             	add    0x4(%eax),%esi
 905:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 908:	8b 02                	mov    (%edx),%eax
 90a:	8b 00                	mov    (%eax),%eax
 90c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 90f:	8b 42 04             	mov    0x4(%edx),%eax
 912:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 915:	39 f1                	cmp    %esi,%ecx
 917:	75 c6                	jne    8df <free+0x3f>
    p->s.size += bp->s.size;
 919:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 91c:	89 15 24 0f 00 00    	mov    %edx,0xf24
    p->s.size += bp->s.size;
 922:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 925:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 928:	89 0a                	mov    %ecx,(%edx)
}
 92a:	5b                   	pop    %ebx
 92b:	5e                   	pop    %esi
 92c:	5f                   	pop    %edi
 92d:	5d                   	pop    %ebp
 92e:	c3                   	ret    
 92f:	90                   	nop

00000930 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 939:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 93c:	8b 3d 24 0f 00 00    	mov    0xf24,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 942:	8d 70 07             	lea    0x7(%eax),%esi
 945:	c1 ee 03             	shr    $0x3,%esi
 948:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 94b:	85 ff                	test   %edi,%edi
 94d:	0f 84 9d 00 00 00    	je     9f0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 953:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 955:	8b 4a 04             	mov    0x4(%edx),%ecx
 958:	39 f1                	cmp    %esi,%ecx
 95a:	73 6a                	jae    9c6 <malloc+0x96>
 95c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 961:	39 de                	cmp    %ebx,%esi
 963:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 966:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 96d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 970:	eb 17                	jmp    989 <malloc+0x59>
 972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 978:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 97a:	8b 48 04             	mov    0x4(%eax),%ecx
 97d:	39 f1                	cmp    %esi,%ecx
 97f:	73 4f                	jae    9d0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 981:	8b 3d 24 0f 00 00    	mov    0xf24,%edi
 987:	89 c2                	mov    %eax,%edx
 989:	39 d7                	cmp    %edx,%edi
 98b:	75 eb                	jne    978 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 98d:	83 ec 0c             	sub    $0xc,%esp
 990:	ff 75 e4             	push   -0x1c(%ebp)
 993:	e8 86 fc ff ff       	call   61e <sbrk>
  if(p == (char*)-1)
 998:	83 c4 10             	add    $0x10,%esp
 99b:	83 f8 ff             	cmp    $0xffffffff,%eax
 99e:	74 1c                	je     9bc <malloc+0x8c>
  hp->s.size = nu;
 9a0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9a3:	83 ec 0c             	sub    $0xc,%esp
 9a6:	83 c0 08             	add    $0x8,%eax
 9a9:	50                   	push   %eax
 9aa:	e8 f1 fe ff ff       	call   8a0 <free>
  return freep;
 9af:	8b 15 24 0f 00 00    	mov    0xf24,%edx
      if((p = morecore(nunits)) == 0)
 9b5:	83 c4 10             	add    $0x10,%esp
 9b8:	85 d2                	test   %edx,%edx
 9ba:	75 bc                	jne    978 <malloc+0x48>
        return 0;
  }
}
 9bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9bf:	31 c0                	xor    %eax,%eax
}
 9c1:	5b                   	pop    %ebx
 9c2:	5e                   	pop    %esi
 9c3:	5f                   	pop    %edi
 9c4:	5d                   	pop    %ebp
 9c5:	c3                   	ret    
    if(p->s.size >= nunits){
 9c6:	89 d0                	mov    %edx,%eax
 9c8:	89 fa                	mov    %edi,%edx
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9d0:	39 ce                	cmp    %ecx,%esi
 9d2:	74 4c                	je     a20 <malloc+0xf0>
        p->s.size -= nunits;
 9d4:	29 f1                	sub    %esi,%ecx
 9d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9dc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9df:	89 15 24 0f 00 00    	mov    %edx,0xf24
}
 9e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9e8:	83 c0 08             	add    $0x8,%eax
}
 9eb:	5b                   	pop    %ebx
 9ec:	5e                   	pop    %esi
 9ed:	5f                   	pop    %edi
 9ee:	5d                   	pop    %ebp
 9ef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9f0:	c7 05 24 0f 00 00 28 	movl   $0xf28,0xf24
 9f7:	0f 00 00 
    base.s.size = 0;
 9fa:	bf 28 0f 00 00       	mov    $0xf28,%edi
    base.s.ptr = freep = prevp = &base;
 9ff:	c7 05 28 0f 00 00 28 	movl   $0xf28,0xf28
 a06:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a09:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a0b:	c7 05 2c 0f 00 00 00 	movl   $0x0,0xf2c
 a12:	00 00 00 
    if(p->s.size >= nunits){
 a15:	e9 42 ff ff ff       	jmp    95c <malloc+0x2c>
 a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a20:	8b 08                	mov    (%eax),%ecx
 a22:	89 0a                	mov    %ecx,(%edx)
 a24:	eb b9                	jmp    9df <malloc+0xaf>
