
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
  12:	e8 bf 06 00 00       	call   6d6 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 30 10 00 00       	mov    %eax,0x1030
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
  48:	e8 63 05 00 00       	call   5b0 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 2c 10 00 00 03 	cmpl   $0x3,0x102c
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 e8 0a 00 00       	push   $0xae8
  65:	68 f2 0a 00 00       	push   $0xaf2
  6a:	6a 01                	push   $0x1
  6c:	e8 4f 07 00 00       	call   7c0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 a4 0b 00 00       	push   $0xba4
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 e8 0a 00 00       	push   $0xae8
  82:	68 f2 0a 00 00       	push   $0xaf2
  87:	6a 01                	push   $0x1
  89:	e8 32 07 00 00       	call   7c0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 8d 0b 00 00       	push   $0xb8d
  96:	68 09 0b 00 00       	push   $0xb09
  9b:	6a 01                	push   $0x1
  9d:	e8 1e 07 00 00       	call   7c0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 1d 0b 00 00       	push   $0xb1d
  a9:	6a 01                	push   $0x1
  ab:	e8 10 07 00 00       	call   7c0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 30 10 00 00    	push   0x1030
  b7:	e8 ca 05 00 00       	call   686 <kill>
  bc:	e8 95 05 00 00       	call   656 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 e8 0a 00 00       	push   $0xae8
  c8:	68 f2 0a 00 00       	push   $0xaf2
  cd:	6a 01                	push   $0x1
  cf:	e8 ec 06 00 00       	call   7c0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 6e 0b 00 00       	push   $0xb6e
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 b0 0b 00 00       	push   $0xbb0
  e5:	6a 01                	push   $0x1
  e7:	e8 d4 06 00 00       	call   7c0 <printf>
   exit();
  ec:	e8 65 05 00 00       	call   656 <exit>
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
 118:	83 3d 2c 10 00 00 02 	cmpl   $0x2,0x102c
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 2c 10 00 00 03 	movl   $0x3,0x102c
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 e8 0a 00 00       	push   $0xae8
 134:	68 f2 0a 00 00       	push   $0xaf2
 139:	6a 01                	push   $0x1
 13b:	e8 80 06 00 00       	call   7c0 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 fa 0a 00 00       	push   $0xafa
   assert(arg2_int == 24);
 148:	68 09 0b 00 00       	push   $0xb09
 14d:	6a 01                	push   $0x1
 14f:	e8 6c 06 00 00       	call   7c0 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 1d 0b 00 00       	push   $0xb1d
 15b:	6a 01                	push   $0x1
 15d:	e8 5e 06 00 00       	call   7c0 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 30 10 00 00    	push   0x1030
 169:	e8 18 05 00 00       	call   686 <kill>
 16e:	e8 e3 04 00 00       	call   656 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 e8 0a 00 00       	push   $0xae8
 17a:	68 f2 0a 00 00       	push   $0xaf2
 17f:	6a 01                	push   $0x1
 181:	e8 3a 06 00 00       	call   7c0 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 39 0b 00 00       	push   $0xb39
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 e8 0a 00 00       	push   $0xae8
 197:	68 f2 0a 00 00       	push   $0xaf2
 19c:	6a 01                	push   $0x1
 19e:	e8 1d 06 00 00       	call   7c0 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 2a 0b 00 00       	push   $0xb2a
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
 1d1:	83 3d 2c 10 00 00 01 	cmpl   $0x1,0x102c
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 e8 0a 00 00       	push   $0xae8
 1e5:	68 f2 0a 00 00       	push   $0xaf2
 1ea:	6a 01                	push   $0x1
 1ec:	e8 cf 05 00 00       	call   7c0 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 5b 0b 00 00       	push   $0xb5b
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 e8 0a 00 00       	push   $0xae8
 202:	68 f2 0a 00 00       	push   $0xaf2
 207:	6a 01                	push   $0x1
 209:	e8 b2 05 00 00       	call   7c0 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 50 0b 00 00       	push   $0xb50
 216:	68 09 0b 00 00       	push   $0xb09
 21b:	6a 01                	push   $0x1
 21d:	e8 9e 05 00 00       	call   7c0 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 1d 0b 00 00       	push   $0xb1d
 229:	6a 01                	push   $0x1
 22b:	e8 90 05 00 00       	call   7c0 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 30 10 00 00    	push   0x1030
 237:	e8 4a 04 00 00       	call   686 <kill>
 23c:	e8 15 04 00 00       	call   656 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 e8 0a 00 00       	push   $0xae8
 248:	68 f2 0a 00 00       	push   $0xaf2
 24d:	6a 01                	push   $0x1
 24f:	e8 6c 05 00 00       	call   7c0 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 45 0b 00 00       	push   $0xb45
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
 26c:	c7 05 2c 10 00 00 02 	movl   $0x2,0x102c
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
 284:	e8 27 03 00 00       	call   5b0 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 e8 0a 00 00       	push   $0xae8
 298:	68 f2 0a 00 00       	push   $0xaf2
 29d:	6a 01                	push   $0x1
 29f:	e8 1c 05 00 00       	call   7c0 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 c0 0b 00 00       	push   $0xbc0
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 e8 0a 00 00       	push   $0xae8
 2b8:	68 f2 0a 00 00       	push   $0xaf2
 2bd:	6a 01                	push   $0x1
 2bf:	e8 fc 04 00 00       	call   7c0 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 7d 0b 00 00       	push   $0xb7d
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 e8 0a 00 00       	push   $0xae8
 2d8:	68 f2 0a 00 00       	push   $0xaf2
 2dd:	6a 01                	push   $0x1
 2df:	e8 dc 04 00 00       	call   7c0 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 67 0b 00 00       	push   $0xb67
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 60 03 00 00       	call   656 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

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
 438:	e8 31 02 00 00       	call   66e <read>
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
 49d:	e8 f4 01 00 00       	call   696 <open>
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
 4b2:	e8 f7 01 00 00       	call   6ae <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 bd 01 00 00       	call   67e <close>
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
 553:	53                   	push   %ebx
 554:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 557:	68 00 10 00 00       	push   $0x1000
 55c:	e8 8f 04 00 00       	call   9f0 <malloc>
  if((int) stack % 4096 != 0){
 561:	83 c4 10             	add    $0x10,%esp
 564:	a9 ff 0f 00 00       	test   $0xfff,%eax
 569:	74 16                	je     581 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 56b:	99                   	cltd   
 56c:	c1 ea 14             	shr    $0x14,%edx
 56f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 572:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 578:	29 ca                	sub    %ecx,%edx
 57a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 581:	50                   	push   %eax
 582:	ff 75 10             	push   0x10(%ebp)
 585:	ff 75 0c             	push   0xc(%ebp)
 588:	ff 75 08             	push   0x8(%ebp)
 58b:	e8 66 01 00 00       	call   6f6 <clone>
  printf(1, " thread create %d \n", rc);
 590:	83 c4 0c             	add    $0xc,%esp
 593:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 594:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 596:	68 e5 0b 00 00       	push   $0xbe5
 59b:	6a 01                	push   $0x1
 59d:	e8 1e 02 00 00       	call   7c0 <printf>
  return rc;
}
 5a2:	89 d8                	mov    %ebx,%eax
 5a4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a7:	c9                   	leave  
 5a8:	c3                   	ret    
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005b0 <thread_join>:

int
thread_join(){
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	53                   	push   %ebx
 5b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 5b7:	68 f9 0b 00 00       	push   $0xbf9
 5bc:	6a 01                	push   $0x1
 5be:	e8 fd 01 00 00       	call   7c0 <printf>
  void** stack = malloc(sizeof(void**));
 5c3:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 5ca:	e8 21 04 00 00       	call   9f0 <malloc>
 5cf:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 5d1:	58                   	pop    %eax
 5d2:	5a                   	pop    %edx
 5d3:	68 09 0c 00 00       	push   $0xc09
 5d8:	6a 01                	push   $0x1
 5da:	e8 e1 01 00 00       	call   7c0 <printf>
  int rc = join(stack);
 5df:	89 1c 24             	mov    %ebx,(%esp)
 5e2:	e8 17 01 00 00       	call   6fe <join>
  printf(1, "thread join 3 \n");
 5e7:	59                   	pop    %ecx
  int rc = join(stack);
 5e8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 5ea:	58                   	pop    %eax
 5eb:	68 19 0c 00 00       	push   $0xc19
 5f0:	6a 01                	push   $0x1
 5f2:	e8 c9 01 00 00       	call   7c0 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 5f7:	58                   	pop    %eax
 5f8:	5a                   	pop    %edx
 5f9:	68 29 0c 00 00       	push   $0xc29
 5fe:	6a 01                	push   $0x1
 600:	e8 bb 01 00 00       	call   7c0 <printf>
  return rc;
}
 605:	89 d8                	mov    %ebx,%eax
 607:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 60a:	c9                   	leave  
 60b:	c3                   	ret    
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000610 <lock_acquire>:



void lock_acquire(lock_t * lock){
 610:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 611:	b9 01 00 00 00       	mov    $0x1,%ecx
 616:	89 e5                	mov    %esp,%ebp
 618:	8b 55 08             	mov    0x8(%ebp),%edx
 61b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 61f:	90                   	nop
 620:	89 c8                	mov    %ecx,%eax
 622:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 625:	83 f8 01             	cmp    $0x1,%eax
 628:	74 f6                	je     620 <lock_acquire+0x10>
 ; // spin

};
 62a:	5d                   	pop    %ebp
 62b:	c3                   	ret    
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <lock_release>:

void lock_release(lock_t * lock){
 630:	55                   	push   %ebp
 631:	31 c0                	xor    %eax,%eax
 633:	89 e5                	mov    %esp,%ebp
 635:	8b 55 08             	mov    0x8(%ebp),%edx
 638:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 63b:	5d                   	pop    %ebp
 63c:	c3                   	ret    
 63d:	8d 76 00             	lea    0x0(%esi),%esi

00000640 <lock_init>:

void lock_init(lock_t * lock){
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 643:	8b 45 08             	mov    0x8(%ebp),%eax
 646:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 64c:	5d                   	pop    %ebp
 64d:	c3                   	ret    

0000064e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 64e:	b8 01 00 00 00       	mov    $0x1,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <exit>:
SYSCALL(exit)
 656:	b8 02 00 00 00       	mov    $0x2,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <wait>:
SYSCALL(wait)
 65e:	b8 03 00 00 00       	mov    $0x3,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <pipe>:
SYSCALL(pipe)
 666:	b8 04 00 00 00       	mov    $0x4,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <read>:
SYSCALL(read)
 66e:	b8 05 00 00 00       	mov    $0x5,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    

00000676 <write>:
SYSCALL(write)
 676:	b8 10 00 00 00       	mov    $0x10,%eax
 67b:	cd 40                	int    $0x40
 67d:	c3                   	ret    

0000067e <close>:
SYSCALL(close)
 67e:	b8 15 00 00 00       	mov    $0x15,%eax
 683:	cd 40                	int    $0x40
 685:	c3                   	ret    

00000686 <kill>:
SYSCALL(kill)
 686:	b8 06 00 00 00       	mov    $0x6,%eax
 68b:	cd 40                	int    $0x40
 68d:	c3                   	ret    

0000068e <exec>:
SYSCALL(exec)
 68e:	b8 07 00 00 00       	mov    $0x7,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <open>:
SYSCALL(open)
 696:	b8 0f 00 00 00       	mov    $0xf,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <mknod>:
SYSCALL(mknod)
 69e:	b8 11 00 00 00       	mov    $0x11,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <unlink>:
SYSCALL(unlink)
 6a6:	b8 12 00 00 00       	mov    $0x12,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <fstat>:
SYSCALL(fstat)
 6ae:	b8 08 00 00 00       	mov    $0x8,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <link>:
SYSCALL(link)
 6b6:	b8 13 00 00 00       	mov    $0x13,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <mkdir>:
SYSCALL(mkdir)
 6be:	b8 14 00 00 00       	mov    $0x14,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    

000006c6 <chdir>:
SYSCALL(chdir)
 6c6:	b8 09 00 00 00       	mov    $0x9,%eax
 6cb:	cd 40                	int    $0x40
 6cd:	c3                   	ret    

000006ce <dup>:
SYSCALL(dup)
 6ce:	b8 0a 00 00 00       	mov    $0xa,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <getpid>:
SYSCALL(getpid)
 6d6:	b8 0b 00 00 00       	mov    $0xb,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <sbrk>:
SYSCALL(sbrk)
 6de:	b8 0c 00 00 00       	mov    $0xc,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <sleep>:
SYSCALL(sleep)
 6e6:	b8 0d 00 00 00       	mov    $0xd,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <uptime>:
SYSCALL(uptime)
 6ee:	b8 0e 00 00 00       	mov    $0xe,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <clone>:
SYSCALL(clone)
 6f6:	b8 16 00 00 00       	mov    $0x16,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <join>:
SYSCALL(join)
 6fe:	b8 17 00 00 00       	mov    $0x17,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    
 706:	66 90                	xchg   %ax,%ax
 708:	66 90                	xchg   %ax,%ax
 70a:	66 90                	xchg   %ax,%ax
 70c:	66 90                	xchg   %ax,%ax
 70e:	66 90                	xchg   %ax,%ax

00000710 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 3c             	sub    $0x3c,%esp
 719:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 71c:	89 d1                	mov    %edx,%ecx
{
 71e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 721:	85 d2                	test   %edx,%edx
 723:	0f 89 7f 00 00 00    	jns    7a8 <printint+0x98>
 729:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 72d:	74 79                	je     7a8 <printint+0x98>
    neg = 1;
 72f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 736:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 738:	31 db                	xor    %ebx,%ebx
 73a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 740:	89 c8                	mov    %ecx,%eax
 742:	31 d2                	xor    %edx,%edx
 744:	89 cf                	mov    %ecx,%edi
 746:	f7 75 c4             	divl   -0x3c(%ebp)
 749:	0f b6 92 98 0c 00 00 	movzbl 0xc98(%edx),%edx
 750:	89 45 c0             	mov    %eax,-0x40(%ebp)
 753:	89 d8                	mov    %ebx,%eax
 755:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 758:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 75b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 75e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 761:	76 dd                	jbe    740 <printint+0x30>
  if(neg)
 763:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 766:	85 c9                	test   %ecx,%ecx
 768:	74 0c                	je     776 <printint+0x66>
    buf[i++] = '-';
 76a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 76f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 771:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 776:	8b 7d b8             	mov    -0x48(%ebp),%edi
 779:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 77d:	eb 07                	jmp    786 <printint+0x76>
 77f:	90                   	nop
    putc(fd, buf[i]);
 780:	0f b6 13             	movzbl (%ebx),%edx
 783:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 786:	83 ec 04             	sub    $0x4,%esp
 789:	88 55 d7             	mov    %dl,-0x29(%ebp)
 78c:	6a 01                	push   $0x1
 78e:	56                   	push   %esi
 78f:	57                   	push   %edi
 790:	e8 e1 fe ff ff       	call   676 <write>
  while(--i >= 0)
 795:	83 c4 10             	add    $0x10,%esp
 798:	39 de                	cmp    %ebx,%esi
 79a:	75 e4                	jne    780 <printint+0x70>
}
 79c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 79f:	5b                   	pop    %ebx
 7a0:	5e                   	pop    %esi
 7a1:	5f                   	pop    %edi
 7a2:	5d                   	pop    %ebp
 7a3:	c3                   	ret    
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7af:	eb 87                	jmp    738 <printint+0x28>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop

000007c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7cf:	0f b6 13             	movzbl (%ebx),%edx
 7d2:	84 d2                	test   %dl,%dl
 7d4:	74 6a                	je     840 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7d6:	8d 45 10             	lea    0x10(%ebp),%eax
 7d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7e4:	eb 36                	jmp    81c <printf+0x5c>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
 7f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	74 15                	je     812 <printf+0x52>
  write(fd, &c, 1);
 7fd:	83 ec 04             	sub    $0x4,%esp
 800:	88 55 e7             	mov    %dl,-0x19(%ebp)
 803:	6a 01                	push   $0x1
 805:	57                   	push   %edi
 806:	56                   	push   %esi
 807:	e8 6a fe ff ff       	call   676 <write>
 80c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 80f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 812:	0f b6 13             	movzbl (%ebx),%edx
 815:	83 c3 01             	add    $0x1,%ebx
 818:	84 d2                	test   %dl,%dl
 81a:	74 24                	je     840 <printf+0x80>
    c = fmt[i] & 0xff;
 81c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 81f:	85 c9                	test   %ecx,%ecx
 821:	74 cd                	je     7f0 <printf+0x30>
      }
    } else if(state == '%'){
 823:	83 f9 25             	cmp    $0x25,%ecx
 826:	75 ea                	jne    812 <printf+0x52>
      if(c == 'd'){
 828:	83 f8 25             	cmp    $0x25,%eax
 82b:	0f 84 07 01 00 00    	je     938 <printf+0x178>
 831:	83 e8 63             	sub    $0x63,%eax
 834:	83 f8 15             	cmp    $0x15,%eax
 837:	77 17                	ja     850 <printf+0x90>
 839:	ff 24 85 40 0c 00 00 	jmp    *0xc40(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 840:	8d 65 f4             	lea    -0xc(%ebp),%esp
 843:	5b                   	pop    %ebx
 844:	5e                   	pop    %esi
 845:	5f                   	pop    %edi
 846:	5d                   	pop    %ebp
 847:	c3                   	ret    
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
 853:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 856:	6a 01                	push   $0x1
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 85e:	e8 13 fe ff ff       	call   676 <write>
        putc(fd, c);
 863:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 867:	83 c4 0c             	add    $0xc,%esp
 86a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 86d:	6a 01                	push   $0x1
 86f:	57                   	push   %edi
 870:	56                   	push   %esi
 871:	e8 00 fe ff ff       	call   676 <write>
        putc(fd, c);
 876:	83 c4 10             	add    $0x10,%esp
      state = 0;
 879:	31 c9                	xor    %ecx,%ecx
 87b:	eb 95                	jmp    812 <printf+0x52>
 87d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 10 00 00 00       	mov    $0x10,%ecx
 888:	6a 00                	push   $0x0
 88a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 88d:	8b 10                	mov    (%eax),%edx
 88f:	89 f0                	mov    %esi,%eax
 891:	e8 7a fe ff ff       	call   710 <printint>
        ap++;
 896:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 89a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89d:	31 c9                	xor    %ecx,%ecx
 89f:	e9 6e ff ff ff       	jmp    812 <printf+0x52>
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8ab:	8b 10                	mov    (%eax),%edx
        ap++;
 8ad:	83 c0 04             	add    $0x4,%eax
 8b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8b3:	85 d2                	test   %edx,%edx
 8b5:	0f 84 8d 00 00 00    	je     948 <printf+0x188>
        while(*s != 0){
 8bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8c0:	84 c0                	test   %al,%al
 8c2:	0f 84 4a ff ff ff    	je     812 <printf+0x52>
 8c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8cb:	89 d3                	mov    %edx,%ebx
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8d3:	83 c3 01             	add    $0x1,%ebx
 8d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8d9:	6a 01                	push   $0x1
 8db:	57                   	push   %edi
 8dc:	56                   	push   %esi
 8dd:	e8 94 fd ff ff       	call   676 <write>
        while(*s != 0){
 8e2:	0f b6 03             	movzbl (%ebx),%eax
 8e5:	83 c4 10             	add    $0x10,%esp
 8e8:	84 c0                	test   %al,%al
 8ea:	75 e4                	jne    8d0 <printf+0x110>
      state = 0;
 8ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ef:	31 c9                	xor    %ecx,%ecx
 8f1:	e9 1c ff ff ff       	jmp    812 <printf+0x52>
 8f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 900:	83 ec 0c             	sub    $0xc,%esp
 903:	b9 0a 00 00 00       	mov    $0xa,%ecx
 908:	6a 01                	push   $0x1
 90a:	e9 7b ff ff ff       	jmp    88a <printf+0xca>
 90f:	90                   	nop
        putc(fd, *ap);
 910:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 913:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 916:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 918:	6a 01                	push   $0x1
 91a:	57                   	push   %edi
 91b:	56                   	push   %esi
        putc(fd, *ap);
 91c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 91f:	e8 52 fd ff ff       	call   676 <write>
        ap++;
 924:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 928:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92b:	31 c9                	xor    %ecx,%ecx
 92d:	e9 e0 fe ff ff       	jmp    812 <printf+0x52>
 932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 938:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 93b:	83 ec 04             	sub    $0x4,%esp
 93e:	e9 2a ff ff ff       	jmp    86d <printf+0xad>
 943:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 947:	90                   	nop
          s = "(null)";
 948:	ba 39 0c 00 00       	mov    $0xc39,%edx
        while(*s != 0){
 94d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 950:	b8 28 00 00 00       	mov    $0x28,%eax
 955:	89 d3                	mov    %edx,%ebx
 957:	e9 74 ff ff ff       	jmp    8d0 <printf+0x110>
 95c:	66 90                	xchg   %ax,%ax
 95e:	66 90                	xchg   %ax,%ax

00000960 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 960:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	a1 34 10 00 00       	mov    0x1034,%eax
{
 966:	89 e5                	mov    %esp,%ebp
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	53                   	push   %ebx
 96b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 96e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 978:	89 c2                	mov    %eax,%edx
 97a:	8b 00                	mov    (%eax),%eax
 97c:	39 ca                	cmp    %ecx,%edx
 97e:	73 30                	jae    9b0 <free+0x50>
 980:	39 c1                	cmp    %eax,%ecx
 982:	72 04                	jb     988 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 984:	39 c2                	cmp    %eax,%edx
 986:	72 f0                	jb     978 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	74 30                	je     9c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 992:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 995:	8b 42 04             	mov    0x4(%edx),%eax
 998:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 99b:	39 f1                	cmp    %esi,%ecx
 99d:	74 3a                	je     9d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 99f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9a1:	5b                   	pop    %ebx
  freep = p;
 9a2:	89 15 34 10 00 00    	mov    %edx,0x1034
}
 9a8:	5e                   	pop    %esi
 9a9:	5f                   	pop    %edi
 9aa:	5d                   	pop    %ebp
 9ab:	c3                   	ret    
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b0:	39 c2                	cmp    %eax,%edx
 9b2:	72 c4                	jb     978 <free+0x18>
 9b4:	39 c1                	cmp    %eax,%ecx
 9b6:	73 c0                	jae    978 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9be:	39 f8                	cmp    %edi,%eax
 9c0:	75 d0                	jne    992 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9c2:	03 70 04             	add    0x4(%eax),%esi
 9c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9c8:	8b 02                	mov    (%edx),%eax
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9cf:	8b 42 04             	mov    0x4(%edx),%eax
 9d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9d5:	39 f1                	cmp    %esi,%ecx
 9d7:	75 c6                	jne    99f <free+0x3f>
    p->s.size += bp->s.size;
 9d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9dc:	89 15 34 10 00 00    	mov    %edx,0x1034
    p->s.size += bp->s.size;
 9e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9e8:	89 0a                	mov    %ecx,(%edx)
}
 9ea:	5b                   	pop    %ebx
 9eb:	5e                   	pop    %esi
 9ec:	5f                   	pop    %edi
 9ed:	5d                   	pop    %ebp
 9ee:	c3                   	ret    
 9ef:	90                   	nop

000009f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9f0:	55                   	push   %ebp
 9f1:	89 e5                	mov    %esp,%ebp
 9f3:	57                   	push   %edi
 9f4:	56                   	push   %esi
 9f5:	53                   	push   %ebx
 9f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9fc:	8b 3d 34 10 00 00    	mov    0x1034,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a02:	8d 70 07             	lea    0x7(%eax),%esi
 a05:	c1 ee 03             	shr    $0x3,%esi
 a08:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a0b:	85 ff                	test   %edi,%edi
 a0d:	0f 84 9d 00 00 00    	je     ab0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a13:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a15:	8b 4a 04             	mov    0x4(%edx),%ecx
 a18:	39 f1                	cmp    %esi,%ecx
 a1a:	73 6a                	jae    a86 <malloc+0x96>
 a1c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a21:	39 de                	cmp    %ebx,%esi
 a23:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a26:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a30:	eb 17                	jmp    a49 <malloc+0x59>
 a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a38:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a3a:	8b 48 04             	mov    0x4(%eax),%ecx
 a3d:	39 f1                	cmp    %esi,%ecx
 a3f:	73 4f                	jae    a90 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a41:	8b 3d 34 10 00 00    	mov    0x1034,%edi
 a47:	89 c2                	mov    %eax,%edx
 a49:	39 d7                	cmp    %edx,%edi
 a4b:	75 eb                	jne    a38 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a4d:	83 ec 0c             	sub    $0xc,%esp
 a50:	ff 75 e4             	push   -0x1c(%ebp)
 a53:	e8 86 fc ff ff       	call   6de <sbrk>
  if(p == (char*)-1)
 a58:	83 c4 10             	add    $0x10,%esp
 a5b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a5e:	74 1c                	je     a7c <malloc+0x8c>
  hp->s.size = nu;
 a60:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a63:	83 ec 0c             	sub    $0xc,%esp
 a66:	83 c0 08             	add    $0x8,%eax
 a69:	50                   	push   %eax
 a6a:	e8 f1 fe ff ff       	call   960 <free>
  return freep;
 a6f:	8b 15 34 10 00 00    	mov    0x1034,%edx
      if((p = morecore(nunits)) == 0)
 a75:	83 c4 10             	add    $0x10,%esp
 a78:	85 d2                	test   %edx,%edx
 a7a:	75 bc                	jne    a38 <malloc+0x48>
        return 0;
  }
}
 a7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a7f:	31 c0                	xor    %eax,%eax
}
 a81:	5b                   	pop    %ebx
 a82:	5e                   	pop    %esi
 a83:	5f                   	pop    %edi
 a84:	5d                   	pop    %ebp
 a85:	c3                   	ret    
    if(p->s.size >= nunits){
 a86:	89 d0                	mov    %edx,%eax
 a88:	89 fa                	mov    %edi,%edx
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a90:	39 ce                	cmp    %ecx,%esi
 a92:	74 4c                	je     ae0 <malloc+0xf0>
        p->s.size -= nunits;
 a94:	29 f1                	sub    %esi,%ecx
 a96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a9c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a9f:	89 15 34 10 00 00    	mov    %edx,0x1034
}
 aa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 aa8:	83 c0 08             	add    $0x8,%eax
}
 aab:	5b                   	pop    %ebx
 aac:	5e                   	pop    %esi
 aad:	5f                   	pop    %edi
 aae:	5d                   	pop    %ebp
 aaf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ab0:	c7 05 34 10 00 00 38 	movl   $0x1038,0x1034
 ab7:	10 00 00 
    base.s.size = 0;
 aba:	bf 38 10 00 00       	mov    $0x1038,%edi
    base.s.ptr = freep = prevp = &base;
 abf:	c7 05 38 10 00 00 38 	movl   $0x1038,0x1038
 ac6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 acb:	c7 05 3c 10 00 00 00 	movl   $0x0,0x103c
 ad2:	00 00 00 
    if(p->s.size >= nunits){
 ad5:	e9 42 ff ff ff       	jmp    a1c <malloc+0x2c>
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ae0:	8b 08                	mov    (%eax),%ecx
 ae2:	89 0a                	mov    %ecx,(%edx)
 ae4:	eb b9                	jmp    a9f <malloc+0xaf>
