
_test_19:     file format elf32-i386


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
  12:	e8 32 06 00 00       	call   649 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 28 0f 00 00       	mov    %eax,0xf28
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  33:	c7 45 f4 18 00 00 00 	movl   $0x18,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 11 05 00 00       	call   550 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 23 05 00 00       	call   570 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 24 0f 00 00 03 	cmpl   $0x3,0xf24
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 58 0a 00 00       	push   $0xa58
  65:	68 62 0a 00 00       	push   $0xa62
  6a:	6a 01                	push   $0x1
  6c:	e8 bf 06 00 00       	call   730 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 14 0b 00 00       	push   $0xb14
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 58 0a 00 00       	push   $0xa58
  82:	68 62 0a 00 00       	push   $0xa62
  87:	6a 01                	push   $0x1
  89:	e8 a2 06 00 00       	call   730 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 fd 0a 00 00       	push   $0xafd
  96:	68 79 0a 00 00       	push   $0xa79
  9b:	6a 01                	push   $0x1
  9d:	e8 8e 06 00 00       	call   730 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 8d 0a 00 00       	push   $0xa8d
  a9:	6a 01                	push   $0x1
  ab:	e8 80 06 00 00       	call   730 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 28 0f 00 00    	push   0xf28
  b7:	e8 3d 05 00 00       	call   5f9 <kill>
  bc:	e8 08 05 00 00       	call   5c9 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 58 0a 00 00       	push   $0xa58
  c8:	68 62 0a 00 00       	push   $0xa62
  cd:	6a 01                	push   $0x1
  cf:	e8 5c 06 00 00       	call   730 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 de 0a 00 00       	push   $0xade
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 20 0b 00 00       	push   $0xb20
  e5:	6a 01                	push   $0x1
  e7:	e8 44 06 00 00       	call   730 <printf>
   exit();
  ec:	e8 d8 04 00 00       	call   5c9 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}

void nested_worker(void *arg1, void *arg2){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 42);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 2a             	cmpl   $0x2a,(%eax)
 111:	75 1a                	jne    12d <nested_worker+0x2d>
   assert(arg2_int == 24);
 113:	83 fa 18             	cmp    $0x18,%edx
 116:	75 78                	jne    190 <nested_worker+0x90>
   assert(global == 2);
 118:	83 3d 24 0f 00 00 02 	cmpl   $0x2,0xf24
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 24 0f 00 00 03 	movl   $0x3,0xf24
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 58 0a 00 00       	push   $0xa58
 134:	68 62 0a 00 00       	push   $0xa62
 139:	6a 01                	push   $0x1
 13b:	e8 f0 05 00 00       	call   730 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 6a 0a 00 00       	push   $0xa6a
   assert(arg2_int == 24);
 148:	68 79 0a 00 00       	push   $0xa79
 14d:	6a 01                	push   $0x1
 14f:	e8 dc 05 00 00       	call   730 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 8d 0a 00 00       	push   $0xa8d
 15b:	6a 01                	push   $0x1
 15d:	e8 ce 05 00 00       	call   730 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 28 0f 00 00    	push   0xf28
 169:	e8 8b 04 00 00       	call   5f9 <kill>
 16e:	e8 56 04 00 00       	call   5c9 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 58 0a 00 00       	push   $0xa58
 17a:	68 62 0a 00 00       	push   $0xa62
 17f:	6a 01                	push   $0x1
 181:	e8 aa 05 00 00       	call   730 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 a9 0a 00 00       	push   $0xaa9
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 58 0a 00 00       	push   $0xa58
 197:	68 62 0a 00 00       	push   $0xa62
 19c:	6a 01                	push   $0x1
 19e:	e8 8d 05 00 00       	call   730 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 9a 0a 00 00       	push   $0xa9a
 1ab:	eb 9b                	jmp    148 <nested_worker+0x48>
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <worker>:

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	83 ec 14             	sub    $0x14,%esp
   int tmp1 = *(int*)arg1;
 1b7:	8b 45 08             	mov    0x8(%ebp),%eax
   int tmp2 = *(int*)arg2;
 1ba:	8b 55 0c             	mov    0xc(%ebp),%edx
   int tmp1 = *(int*)arg1;
 1bd:	8b 00                	mov    (%eax),%eax
   int tmp2 = *(int*)arg2;
 1bf:	8b 12                	mov    (%edx),%edx
   int tmp1 = *(int*)arg1;
 1c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int tmp2 = *(int*)arg2;
 1c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(tmp1 == 42);
 1c7:	83 f8 2a             	cmp    $0x2a,%eax
 1ca:	75 75                	jne    241 <worker+0x91>
   assert(tmp2 == 24);
 1cc:	83 fa 18             	cmp    $0x18,%edx
 1cf:	75 2a                	jne    1fb <worker+0x4b>
   assert(global == 1);
 1d1:	83 3d 24 0f 00 00 01 	cmpl   $0x1,0xf24
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 58 0a 00 00       	push   $0xa58
 1e5:	68 62 0a 00 00       	push   $0xa62
 1ea:	6a 01                	push   $0x1
 1ec:	e8 3f 05 00 00       	call   730 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 cb 0a 00 00       	push   $0xacb
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 58 0a 00 00       	push   $0xa58
 202:	68 62 0a 00 00       	push   $0xa62
 207:	6a 01                	push   $0x1
 209:	e8 22 05 00 00       	call   730 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 c0 0a 00 00       	push   $0xac0
 216:	68 79 0a 00 00       	push   $0xa79
 21b:	6a 01                	push   $0x1
 21d:	e8 0e 05 00 00       	call   730 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 8d 0a 00 00       	push   $0xa8d
 229:	6a 01                	push   $0x1
 22b:	e8 00 05 00 00       	call   730 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 28 0f 00 00    	push   0xf28
 237:	e8 bd 03 00 00       	call   5f9 <kill>
 23c:	e8 88 03 00 00       	call   5c9 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 58 0a 00 00       	push   $0xa58
 248:	68 62 0a 00 00       	push   $0xa62
 24d:	6a 01                	push   $0x1
 24f:	e8 dc 04 00 00       	call   730 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 b5 0a 00 00       	push   $0xab5
 25c:	eb b8                	jmp    216 <worker+0x66>
   global++;

   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 25e:	50                   	push   %eax
 25f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 262:	50                   	push   %eax
 263:	8d 45 f0             	lea    -0x10(%ebp),%eax
 266:	50                   	push   %eax
 267:	68 00 01 00 00       	push   $0x100
   global++;
 26c:	c7 05 24 0f 00 00 02 	movl   $0x2,0xf24
 273:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 276:	e8 d5 02 00 00       	call   550 <thread_create>
   assert(nested_thread_pid > 0);
 27b:	83 c4 10             	add    $0x10,%esp
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 27e:	89 c3                	mov    %eax,%ebx
   assert(nested_thread_pid > 0);
 280:	85 c0                	test   %eax,%eax
 282:	7e 4d                	jle    2d1 <worker+0x121>
   for(int j=0;j<10000;j++);

   int nested_join_pid = thread_join();
 284:	e8 e7 02 00 00       	call   570 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 58 0a 00 00       	push   $0xa58
 298:	68 62 0a 00 00       	push   $0xa62
 29d:	6a 01                	push   $0x1
 29f:	e8 8c 04 00 00       	call   730 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 30 0b 00 00       	push   $0xb30
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 58 0a 00 00       	push   $0xa58
 2b8:	68 62 0a 00 00       	push   $0xa62
 2bd:	6a 01                	push   $0x1
 2bf:	e8 6c 04 00 00       	call   730 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 ed 0a 00 00       	push   $0xaed
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 58 0a 00 00       	push   $0xa58
 2d8:	68 62 0a 00 00       	push   $0xa62
 2dd:	6a 01                	push   $0x1
 2df:	e8 4c 04 00 00       	call   730 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 d7 0a 00 00       	push   $0xad7
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 d3 02 00 00       	call   5c9 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 300:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 301:	31 c0                	xor    %eax,%eax
{
 303:	89 e5                	mov    %esp,%ebp
 305:	53                   	push   %ebx
 306:	8b 4d 08             	mov    0x8(%ebp),%ecx
 309:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 310:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 314:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 317:	83 c0 01             	add    $0x1,%eax
 31a:	84 d2                	test   %dl,%dl
 31c:	75 f2                	jne    310 <strcpy+0x10>
    ;
  return os;
}
 31e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 321:	89 c8                	mov    %ecx,%eax
 323:	c9                   	leave  
 324:	c3                   	ret    
 325:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000330 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 55 08             	mov    0x8(%ebp),%edx
 337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 33a:	0f b6 02             	movzbl (%edx),%eax
 33d:	84 c0                	test   %al,%al
 33f:	75 17                	jne    358 <strcmp+0x28>
 341:	eb 3a                	jmp    37d <strcmp+0x4d>
 343:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 347:	90                   	nop
 348:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 34c:	83 c2 01             	add    $0x1,%edx
 34f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 352:	84 c0                	test   %al,%al
 354:	74 1a                	je     370 <strcmp+0x40>
    p++, q++;
 356:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 358:	0f b6 19             	movzbl (%ecx),%ebx
 35b:	38 c3                	cmp    %al,%bl
 35d:	74 e9                	je     348 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 35f:	29 d8                	sub    %ebx,%eax
}
 361:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 364:	c9                   	leave  
 365:	c3                   	ret    
 366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 370:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 374:	31 c0                	xor    %eax,%eax
 376:	29 d8                	sub    %ebx,%eax
}
 378:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 37b:	c9                   	leave  
 37c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 37d:	0f b6 19             	movzbl (%ecx),%ebx
 380:	31 c0                	xor    %eax,%eax
 382:	eb db                	jmp    35f <strcmp+0x2f>
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <strlen>:

uint
strlen(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 396:	80 3a 00             	cmpb   $0x0,(%edx)
 399:	74 15                	je     3b0 <strlen+0x20>
 39b:	31 c0                	xor    %eax,%eax
 39d:	8d 76 00             	lea    0x0(%esi),%esi
 3a0:	83 c0 01             	add    $0x1,%eax
 3a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3a7:	89 c1                	mov    %eax,%ecx
 3a9:	75 f5                	jne    3a0 <strlen+0x10>
    ;
  return n;
}
 3ab:	89 c8                	mov    %ecx,%eax
 3ad:	5d                   	pop    %ebp
 3ae:	c3                   	ret    
 3af:	90                   	nop
  for(n = 0; s[n]; n++)
 3b0:	31 c9                	xor    %ecx,%ecx
}
 3b2:	5d                   	pop    %ebp
 3b3:	89 c8                	mov    %ecx,%eax
 3b5:	c3                   	ret    
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 3cd:	89 d7                	mov    %edx,%edi
 3cf:	fc                   	cld    
 3d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3d5:	89 d0                	mov    %edx,%eax
 3d7:	c9                   	leave  
 3d8:	c3                   	ret    
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <strchr>:

char*
strchr(const char *s, char c)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 45 08             	mov    0x8(%ebp),%eax
 3e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ea:	0f b6 10             	movzbl (%eax),%edx
 3ed:	84 d2                	test   %dl,%dl
 3ef:	75 12                	jne    403 <strchr+0x23>
 3f1:	eb 1d                	jmp    410 <strchr+0x30>
 3f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f7:	90                   	nop
 3f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3fc:	83 c0 01             	add    $0x1,%eax
 3ff:	84 d2                	test   %dl,%dl
 401:	74 0d                	je     410 <strchr+0x30>
    if(*s == c)
 403:	38 d1                	cmp    %dl,%cl
 405:	75 f1                	jne    3f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 407:	5d                   	pop    %ebp
 408:	c3                   	ret    
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 410:	31 c0                	xor    %eax,%eax
}
 412:	5d                   	pop    %ebp
 413:	c3                   	ret    
 414:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <gets>:

char*
gets(char *buf, int max)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 425:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 428:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 429:	31 db                	xor    %ebx,%ebx
{
 42b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 42e:	eb 27                	jmp    457 <gets+0x37>
    cc = read(0, &c, 1);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	6a 01                	push   $0x1
 435:	57                   	push   %edi
 436:	6a 00                	push   $0x0
 438:	e8 a4 01 00 00       	call   5e1 <read>
    if(cc < 1)
 43d:	83 c4 10             	add    $0x10,%esp
 440:	85 c0                	test   %eax,%eax
 442:	7e 1d                	jle    461 <gets+0x41>
      break;
    buf[i++] = c;
 444:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 448:	8b 55 08             	mov    0x8(%ebp),%edx
 44b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 44f:	3c 0a                	cmp    $0xa,%al
 451:	74 1d                	je     470 <gets+0x50>
 453:	3c 0d                	cmp    $0xd,%al
 455:	74 19                	je     470 <gets+0x50>
  for(i=0; i+1 < max; ){
 457:	89 de                	mov    %ebx,%esi
 459:	83 c3 01             	add    $0x1,%ebx
 45c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 45f:	7c cf                	jl     430 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 461:	8b 45 08             	mov    0x8(%ebp),%eax
 464:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 468:	8d 65 f4             	lea    -0xc(%ebp),%esp
 46b:	5b                   	pop    %ebx
 46c:	5e                   	pop    %esi
 46d:	5f                   	pop    %edi
 46e:	5d                   	pop    %ebp
 46f:	c3                   	ret    
  buf[i] = '\0';
 470:	8b 45 08             	mov    0x8(%ebp),%eax
 473:	89 de                	mov    %ebx,%esi
 475:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 479:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47c:	5b                   	pop    %ebx
 47d:	5e                   	pop    %esi
 47e:	5f                   	pop    %edi
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <stat>:

int
stat(const char *n, struct stat *st)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	56                   	push   %esi
 494:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 495:	83 ec 08             	sub    $0x8,%esp
 498:	6a 00                	push   $0x0
 49a:	ff 75 08             	push   0x8(%ebp)
 49d:	e8 67 01 00 00       	call   609 <open>
  if(fd < 0)
 4a2:	83 c4 10             	add    $0x10,%esp
 4a5:	85 c0                	test   %eax,%eax
 4a7:	78 27                	js     4d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4a9:	83 ec 08             	sub    $0x8,%esp
 4ac:	ff 75 0c             	push   0xc(%ebp)
 4af:	89 c3                	mov    %eax,%ebx
 4b1:	50                   	push   %eax
 4b2:	e8 6a 01 00 00       	call   621 <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 30 01 00 00       	call   5f1 <close>
  return r;
 4c1:	83 c4 10             	add    $0x10,%esp
}
 4c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c7:	89 f0                	mov    %esi,%eax
 4c9:	5b                   	pop    %ebx
 4ca:	5e                   	pop    %esi
 4cb:	5d                   	pop    %ebp
 4cc:	c3                   	ret    
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4d5:	eb ed                	jmp    4c4 <stat+0x34>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax

000004e0 <atoi>:

int
atoi(const char *s)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4e7:	0f be 02             	movsbl (%edx),%eax
 4ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4f5:	77 1e                	ja     515 <atoi+0x35>
 4f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 500:	83 c2 01             	add    $0x1,%edx
 503:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 506:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 50a:	0f be 02             	movsbl (%edx),%eax
 50d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 510:	80 fb 09             	cmp    $0x9,%bl
 513:	76 eb                	jbe    500 <atoi+0x20>
  return n;
}
 515:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 518:	89 c8                	mov    %ecx,%eax
 51a:	c9                   	leave  
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	8b 45 10             	mov    0x10(%ebp),%eax
 527:	8b 55 08             	mov    0x8(%ebp),%edx
 52a:	56                   	push   %esi
 52b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 52e:	85 c0                	test   %eax,%eax
 530:	7e 13                	jle    545 <memmove+0x25>
 532:	01 d0                	add    %edx,%eax
  dst = vdst;
 534:	89 d7                	mov    %edx,%edi
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 540:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 541:	39 f8                	cmp    %edi,%eax
 543:	75 fb                	jne    540 <memmove+0x20>
  return vdst;
}
 545:	5e                   	pop    %esi
 546:	89 d0                	mov    %edx,%eax
 548:	5f                   	pop    %edi
 549:	5d                   	pop    %ebp
 54a:	c3                   	ret    
 54b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 556:	6a 04                	push   $0x4
 558:	e8 03 04 00 00       	call   960 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 55d:	50                   	push   %eax
 55e:	ff 75 10             	push   0x10(%ebp)
 561:	ff 75 0c             	push   0xc(%ebp)
 564:	ff 75 08             	push   0x8(%ebp)
 567:	e8 fd 00 00 00       	call   669 <clone>
}
 56c:	c9                   	leave  
 56d:	c3                   	ret    
 56e:	66 90                	xchg   %ax,%ax

00000570 <thread_join>:

int
thread_join(){
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 575:	83 ec 0c             	sub    $0xc,%esp
 578:	6a 04                	push   $0x4
 57a:	e8 e1 03 00 00       	call   960 <malloc>
  int rc = join(stack);
 57f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 582:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 584:	e8 e8 00 00 00       	call   671 <join>
 589:	89 c6                	mov    %eax,%esi
  free(*stack);
 58b:	58                   	pop    %eax
 58c:	ff 33                	push   (%ebx)
 58e:	e8 3d 03 00 00       	call   8d0 <free>
  return rc;
}
 593:	8d 65 f8             	lea    -0x8(%ebp),%esp
 596:	89 f0                	mov    %esi,%eax
 598:	5b                   	pop    %ebx
 599:	5e                   	pop    %esi
 59a:	5d                   	pop    %ebp
 59b:	c3                   	ret    
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005a0 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 5a0:	c3                   	ret    
 5a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <lock_release>:
 5b0:	c3                   	ret    
 5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <lock_init>:
 5c0:	c3                   	ret    

000005c1 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5c1:	b8 01 00 00 00       	mov    $0x1,%eax
 5c6:	cd 40                	int    $0x40
 5c8:	c3                   	ret    

000005c9 <exit>:
SYSCALL(exit)
 5c9:	b8 02 00 00 00       	mov    $0x2,%eax
 5ce:	cd 40                	int    $0x40
 5d0:	c3                   	ret    

000005d1 <wait>:
SYSCALL(wait)
 5d1:	b8 03 00 00 00       	mov    $0x3,%eax
 5d6:	cd 40                	int    $0x40
 5d8:	c3                   	ret    

000005d9 <pipe>:
SYSCALL(pipe)
 5d9:	b8 04 00 00 00       	mov    $0x4,%eax
 5de:	cd 40                	int    $0x40
 5e0:	c3                   	ret    

000005e1 <read>:
SYSCALL(read)
 5e1:	b8 05 00 00 00       	mov    $0x5,%eax
 5e6:	cd 40                	int    $0x40
 5e8:	c3                   	ret    

000005e9 <write>:
SYSCALL(write)
 5e9:	b8 10 00 00 00       	mov    $0x10,%eax
 5ee:	cd 40                	int    $0x40
 5f0:	c3                   	ret    

000005f1 <close>:
SYSCALL(close)
 5f1:	b8 15 00 00 00       	mov    $0x15,%eax
 5f6:	cd 40                	int    $0x40
 5f8:	c3                   	ret    

000005f9 <kill>:
SYSCALL(kill)
 5f9:	b8 06 00 00 00       	mov    $0x6,%eax
 5fe:	cd 40                	int    $0x40
 600:	c3                   	ret    

00000601 <exec>:
SYSCALL(exec)
 601:	b8 07 00 00 00       	mov    $0x7,%eax
 606:	cd 40                	int    $0x40
 608:	c3                   	ret    

00000609 <open>:
SYSCALL(open)
 609:	b8 0f 00 00 00       	mov    $0xf,%eax
 60e:	cd 40                	int    $0x40
 610:	c3                   	ret    

00000611 <mknod>:
SYSCALL(mknod)
 611:	b8 11 00 00 00       	mov    $0x11,%eax
 616:	cd 40                	int    $0x40
 618:	c3                   	ret    

00000619 <unlink>:
SYSCALL(unlink)
 619:	b8 12 00 00 00       	mov    $0x12,%eax
 61e:	cd 40                	int    $0x40
 620:	c3                   	ret    

00000621 <fstat>:
SYSCALL(fstat)
 621:	b8 08 00 00 00       	mov    $0x8,%eax
 626:	cd 40                	int    $0x40
 628:	c3                   	ret    

00000629 <link>:
SYSCALL(link)
 629:	b8 13 00 00 00       	mov    $0x13,%eax
 62e:	cd 40                	int    $0x40
 630:	c3                   	ret    

00000631 <mkdir>:
SYSCALL(mkdir)
 631:	b8 14 00 00 00       	mov    $0x14,%eax
 636:	cd 40                	int    $0x40
 638:	c3                   	ret    

00000639 <chdir>:
SYSCALL(chdir)
 639:	b8 09 00 00 00       	mov    $0x9,%eax
 63e:	cd 40                	int    $0x40
 640:	c3                   	ret    

00000641 <dup>:
SYSCALL(dup)
 641:	b8 0a 00 00 00       	mov    $0xa,%eax
 646:	cd 40                	int    $0x40
 648:	c3                   	ret    

00000649 <getpid>:
SYSCALL(getpid)
 649:	b8 0b 00 00 00       	mov    $0xb,%eax
 64e:	cd 40                	int    $0x40
 650:	c3                   	ret    

00000651 <sbrk>:
SYSCALL(sbrk)
 651:	b8 0c 00 00 00       	mov    $0xc,%eax
 656:	cd 40                	int    $0x40
 658:	c3                   	ret    

00000659 <sleep>:
SYSCALL(sleep)
 659:	b8 0d 00 00 00       	mov    $0xd,%eax
 65e:	cd 40                	int    $0x40
 660:	c3                   	ret    

00000661 <uptime>:
SYSCALL(uptime)
 661:	b8 0e 00 00 00       	mov    $0xe,%eax
 666:	cd 40                	int    $0x40
 668:	c3                   	ret    

00000669 <clone>:
SYSCALL(clone)
 669:	b8 16 00 00 00       	mov    $0x16,%eax
 66e:	cd 40                	int    $0x40
 670:	c3                   	ret    

00000671 <join>:
SYSCALL(join)
 671:	b8 17 00 00 00       	mov    $0x17,%eax
 676:	cd 40                	int    $0x40
 678:	c3                   	ret    
 679:	66 90                	xchg   %ax,%ax
 67b:	66 90                	xchg   %ax,%ax
 67d:	66 90                	xchg   %ax,%ax
 67f:	90                   	nop

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
 6b9:	0f b6 92 b4 0b 00 00 	movzbl 0xbb4(%edx),%edx
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
 700:	e8 e4 fe ff ff       	call   5e9 <write>
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
 777:	e8 6d fe ff ff       	call   5e9 <write>
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
 7a9:	ff 24 85 5c 0b 00 00 	jmp    *0xb5c(,%eax,4)
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
 7ce:	e8 16 fe ff ff       	call   5e9 <write>
        putc(fd, c);
 7d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7d7:	83 c4 0c             	add    $0xc,%esp
 7da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7dd:	6a 01                	push   $0x1
 7df:	57                   	push   %edi
 7e0:	56                   	push   %esi
 7e1:	e8 03 fe ff ff       	call   5e9 <write>
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
 84d:	e8 97 fd ff ff       	call   5e9 <write>
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
 88f:	e8 55 fd ff ff       	call   5e9 <write>
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
 8b8:	ba 55 0b 00 00       	mov    $0xb55,%edx
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
 8d1:	a1 2c 0f 00 00       	mov    0xf2c,%eax
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
 912:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
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
 94c:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
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
 96c:	8b 3d 2c 0f 00 00    	mov    0xf2c,%edi
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
 9b1:	8b 3d 2c 0f 00 00    	mov    0xf2c,%edi
 9b7:	89 c2                	mov    %eax,%edx
 9b9:	39 d7                	cmp    %edx,%edi
 9bb:	75 eb                	jne    9a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9bd:	83 ec 0c             	sub    $0xc,%esp
 9c0:	ff 75 e4             	push   -0x1c(%ebp)
 9c3:	e8 89 fc ff ff       	call   651 <sbrk>
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
 9df:	8b 15 2c 0f 00 00    	mov    0xf2c,%edx
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
 a0f:	89 15 2c 0f 00 00    	mov    %edx,0xf2c
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
 a20:	c7 05 2c 0f 00 00 30 	movl   $0xf30,0xf2c
 a27:	0f 00 00 
    base.s.size = 0;
 a2a:	bf 30 0f 00 00       	mov    $0xf30,%edi
    base.s.ptr = freep = prevp = &base;
 a2f:	c7 05 30 0f 00 00 30 	movl   $0xf30,0xf30
 a36:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a3b:	c7 05 34 0f 00 00 00 	movl   $0x0,0xf34
 a42:	00 00 00 
    if(p->s.size >= nunits){
 a45:	e9 42 ff ff ff       	jmp    98c <malloc+0x2c>
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a50:	8b 08                	mov    (%eax),%ecx
 a52:	89 0a                	mov    %ecx,(%edx)
 a54:	eb b9                	jmp    a0f <malloc+0xaf>
