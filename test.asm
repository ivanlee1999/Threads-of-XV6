
_test:     file format elf32-i386


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
  14:	e8 e0 05 00 00       	call   5f9 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 14 0f 00 00       	mov    %eax,0xf14
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 e5 08 00 00       	call   910 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 90 01 00 00    	je     1c6 <main+0x1c6>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c6                	mov    %eax,%esi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d b2 00 10 00 00    	lea    0x1000(%edx),%esi
   else
     stack = p;

    printf(1, "before clone\n");
  4b:	83 ec 08             	sub    $0x8,%esp
  4e:	68 5c 0a 00 00       	push   $0xa5c
  53:	6a 01                	push   $0x1
  55:	e8 86 06 00 00       	call   6e0 <printf>

   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  5a:	56                   	push   %esi
  5b:	68 0c 0f 00 00       	push   $0xf0c
  60:	68 10 0f 00 00       	push   $0xf10
  65:	68 00 02 00 00       	push   $0x200
  6a:	e8 aa 05 00 00       	call   619 <clone>
   printf(1, "after clone1\n");
  6f:	83 c4 18             	add    $0x18,%esp
  72:	68 6a 0a 00 00       	push   $0xa6a
   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  77:	89 c6                	mov    %eax,%esi
   printf(1, "after clone1\n");
  79:	6a 01                	push   $0x1
  7b:	e8 60 06 00 00       	call   6e0 <printf>
   assert(clone_pid > 0);
  80:	83 c4 10             	add    $0x10,%esp
  83:	85 f6                	test   %esi,%esi
  85:	0f 8e 8b 00 00 00    	jle    116 <main+0x116>
   printf(1, "after clone2\n");
  8b:	51                   	push   %ecx
  8c:	51                   	push   %ecx
  8d:	68 86 0a 00 00       	push   $0xa86
  92:	6a 01                	push   $0x1
  94:	e8 47 06 00 00       	call   6e0 <printf>
   while(global != 33);
  99:	83 c4 10             	add    $0x10,%esp
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  a0:	a1 08 0f 00 00       	mov    0xf08,%eax
  a5:	83 f8 21             	cmp    $0x21,%eax
  a8:	75 f6                	jne    a0 <main+0xa0>
   printf(1, "after clone3, arg1 %d, arg2 %d\n", arg1, arg2);
  aa:	8b 15 0c 0f 00 00    	mov    0xf0c,%edx
  b0:	a1 10 0f 00 00       	mov    0xf10,%eax
  b5:	52                   	push   %edx
  b6:	50                   	push   %eax
  b7:	68 30 0b 00 00       	push   $0xb30
  bc:	6a 01                	push   $0x1
  be:	e8 1d 06 00 00       	call   6e0 <printf>
   assert(arg1 == 44);
  c3:	a1 10 0f 00 00       	mov    0xf10,%eax
  c8:	83 c4 10             	add    $0x10,%esp
  cb:	83 f8 2c             	cmp    $0x2c,%eax
  ce:	74 63                	je     133 <main+0x133>
  d0:	6a 2c                	push   $0x2c
  d2:	68 16 0a 00 00       	push   $0xa16
  d7:	68 1d 0a 00 00       	push   $0xa1d
  dc:	6a 01                	push   $0x1
  de:	e8 fd 05 00 00       	call   6e0 <printf>
  e3:	83 c4 0c             	add    $0xc,%esp
  e6:	68 94 0a 00 00       	push   $0xa94
   assert(clone_pid > 0);
  eb:	68 31 0a 00 00       	push   $0xa31
  f0:	6a 01                	push   $0x1
  f2:	e8 e9 05 00 00       	call   6e0 <printf>
  f7:	5b                   	pop    %ebx
  f8:	5e                   	pop    %esi
  f9:	68 45 0a 00 00       	push   $0xa45
  fe:	6a 01                	push   $0x1
 100:	e8 db 05 00 00       	call   6e0 <printf>
 105:	5f                   	pop    %edi
 106:	ff 35 14 0f 00 00    	push   0xf14
 10c:	e8 98 04 00 00       	call   5a9 <kill>
 111:	e8 63 04 00 00       	call   579 <exit>
 116:	6a 28                	push   $0x28
 118:	68 16 0a 00 00       	push   $0xa16
 11d:	68 1d 0a 00 00       	push   $0xa1d
 122:	6a 01                	push   $0x1
 124:	e8 b7 05 00 00       	call   6e0 <printf>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	68 78 0a 00 00       	push   $0xa78
 131:	eb b8                	jmp    eb <main+0xeb>
   assert(arg2 == 55);
 133:	a1 0c 0f 00 00       	mov    0xf0c,%eax
 138:	83 f8 37             	cmp    $0x37,%eax
 13b:	74 1d                	je     15a <main+0x15a>
 13d:	6a 2d                	push   $0x2d
 13f:	68 16 0a 00 00       	push   $0xa16
 144:	68 1d 0a 00 00       	push   $0xa1d
 149:	6a 01                	push   $0x1
 14b:	e8 90 05 00 00       	call   6e0 <printf>
 150:	83 c4 0c             	add    $0xc,%esp
 153:	68 9f 0a 00 00       	push   $0xa9f
 158:	eb 91                	jmp    eb <main+0xeb>
   printf(1, "after clone4\n");
 15a:	50                   	push   %eax
 15b:	50                   	push   %eax
 15c:	68 aa 0a 00 00       	push   $0xaaa
 161:	6a 01                	push   $0x1
 163:	e8 78 05 00 00       	call   6e0 <printf>
   printf(1, "TEST PASSED\n");
 168:	5a                   	pop    %edx
 169:	59                   	pop    %ecx
 16a:	68 b8 0a 00 00       	push   $0xab8
 16f:	6a 01                	push   $0x1
 171:	e8 6a 05 00 00       	call   6e0 <printf>
   
   void *join_stack;
   printf(1, "before join\n");
 176:	5f                   	pop    %edi
 177:	58                   	pop    %eax
 178:	68 c5 0a 00 00       	push   $0xac5
 17d:	6a 01                	push   $0x1
 17f:	e8 5c 05 00 00       	call   6e0 <printf>
   int join_pid = join(&join_stack);
 184:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 187:	89 04 24             	mov    %eax,(%esp)
 18a:	e8 92 04 00 00       	call   621 <join>
 18f:	89 c7                	mov    %eax,%edi
   printf(1, "after join\n");
 191:	58                   	pop    %eax
 192:	5a                   	pop    %edx
 193:	68 d2 0a 00 00       	push   $0xad2
 198:	6a 01                	push   $0x1
 19a:	e8 41 05 00 00       	call   6e0 <printf>
   assert(join_pid == clone_pid);
 19f:	83 c4 10             	add    $0x10,%esp
 1a2:	39 fe                	cmp    %edi,%esi
 1a4:	74 40                	je     1e6 <main+0x1e6>
 1a6:	6a 35                	push   $0x35
 1a8:	68 16 0a 00 00       	push   $0xa16
 1ad:	68 1d 0a 00 00       	push   $0xa1d
 1b2:	6a 01                	push   $0x1
 1b4:	e8 27 05 00 00       	call   6e0 <printf>
 1b9:	83 c4 0c             	add    $0xc,%esp
 1bc:	68 de 0a 00 00       	push   $0xade
 1c1:	e9 25 ff ff ff       	jmp    eb <main+0xeb>
   assert(p != NULL);
 1c6:	6a 1e                	push   $0x1e
 1c8:	68 16 0a 00 00       	push   $0xa16
 1cd:	68 1d 0a 00 00       	push   $0xa1d
 1d2:	6a 01                	push   $0x1
 1d4:	e8 07 05 00 00       	call   6e0 <printf>
 1d9:	83 c4 0c             	add    $0xc,%esp
 1dc:	68 52 0a 00 00       	push   $0xa52
 1e1:	e9 05 ff ff ff       	jmp    eb <main+0xeb>
   free(p);
 1e6:	83 ec 0c             	sub    $0xc,%esp
 1e9:	53                   	push   %ebx
 1ea:	e8 91 06 00 00       	call   880 <free>
   exit();
 1ef:	e8 85 03 00 00       	call   579 <exit>
 1f4:	66 90                	xchg   %ax,%ax
 1f6:	66 90                	xchg   %ax,%ax
 1f8:	66 90                	xchg   %ax,%ax
 1fa:	66 90                	xchg   %ax,%ax
 1fc:	66 90                	xchg   %ax,%ax
 1fe:	66 90                	xchg   %ax,%ax

00000200 <worker>:
}

void
worker(void *arg1, void *arg2) {
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
 205:	8b 75 0c             	mov    0xc(%ebp),%esi
 208:	8b 5d 08             	mov    0x8(%ebp),%ebx
    printf(1, "start worker\n");    
 20b:	83 ec 08             	sub    $0x8,%esp
 20e:	68 08 0a 00 00       	push   $0xa08
 213:	6a 01                	push   $0x1
 215:	e8 c6 04 00 00       	call   6e0 <printf>
   int tmp1 = *(int*)arg1;
 21a:	8b 13                	mov    (%ebx),%edx
   int tmp2 = *(int*)arg2;
 21c:	8b 0e                	mov    (%esi),%ecx
   *(int*)arg1 = 44;
 21e:	c7 03 2c 00 00 00    	movl   $0x2c,(%ebx)
   *(int*)arg2 = 55;
 224:	c7 06 37 00 00 00    	movl   $0x37,(%esi)
   assert(global == 1);
 22a:	a1 08 0f 00 00       	mov    0xf08,%eax
 22f:	83 c4 10             	add    $0x10,%esp
 232:	83 f8 01             	cmp    $0x1,%eax
 235:	74 46                	je     27d <worker+0x7d>
 237:	6a 41                	push   $0x41
 239:	68 16 0a 00 00       	push   $0xa16
 23e:	68 1d 0a 00 00       	push   $0xa1d
 243:	6a 01                	push   $0x1
 245:	e8 96 04 00 00       	call   6e0 <printf>
 24a:	83 c4 0c             	add    $0xc,%esp
 24d:	68 25 0a 00 00       	push   $0xa25
 252:	68 31 0a 00 00       	push   $0xa31
 257:	6a 01                	push   $0x1
 259:	e8 82 04 00 00       	call   6e0 <printf>
 25e:	58                   	pop    %eax
 25f:	5a                   	pop    %edx
 260:	68 45 0a 00 00       	push   $0xa45
 265:	6a 01                	push   $0x1
 267:	e8 74 04 00 00       	call   6e0 <printf>
 26c:	59                   	pop    %ecx
 26d:	ff 35 14 0f 00 00    	push   0xf14
 273:	e8 31 03 00 00       	call   5a9 <kill>
 278:	e8 fc 02 00 00       	call   579 <exit>
   global = tmp1 + tmp2;
 27d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
   printf(1, "arg1: %d, arg2 : %d, temp1 : %d, temp2 : %d global : %d \n", *(int*)arg1, *(int*)arg2,tmp1, tmp2, global);
 280:	83 ec 04             	sub    $0x4,%esp
   global = tmp1 + tmp2;
 283:	a3 08 0f 00 00       	mov    %eax,0xf08
   printf(1, "arg1: %d, arg2 : %d, temp1 : %d, temp2 : %d global : %d \n", *(int*)arg1, *(int*)arg2,tmp1, tmp2, global);
 288:	a1 08 0f 00 00       	mov    0xf08,%eax
 28d:	50                   	push   %eax
 28e:	51                   	push   %ecx
 28f:	52                   	push   %edx
 290:	ff 36                	push   (%esi)
 292:	ff 33                	push   (%ebx)
 294:	68 f4 0a 00 00       	push   $0xaf4
 299:	6a 01                	push   $0x1
 29b:	e8 40 04 00 00       	call   6e0 <printf>
   exit();
 2a0:	83 c4 20             	add    $0x20,%esp
 2a3:	e8 d1 02 00 00       	call   579 <exit>
 2a8:	66 90                	xchg   %ax,%ax
 2aa:	66 90                	xchg   %ax,%ax
 2ac:	66 90                	xchg   %ax,%ax
 2ae:	66 90                	xchg   %ax,%ax

000002b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2b0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2b1:	31 c0                	xor    %eax,%eax
{
 2b3:	89 e5                	mov    %esp,%ebp
 2b5:	53                   	push   %ebx
 2b6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2c0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2c4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2c7:	83 c0 01             	add    $0x1,%eax
 2ca:	84 d2                	test   %dl,%dl
 2cc:	75 f2                	jne    2c0 <strcpy+0x10>
    ;
  return os;
}
 2ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2d1:	89 c8                	mov    %ecx,%eax
 2d3:	c9                   	leave  
 2d4:	c3                   	ret    
 2d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	53                   	push   %ebx
 2e4:	8b 55 08             	mov    0x8(%ebp),%edx
 2e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ea:	0f b6 02             	movzbl (%edx),%eax
 2ed:	84 c0                	test   %al,%al
 2ef:	75 17                	jne    308 <strcmp+0x28>
 2f1:	eb 3a                	jmp    32d <strcmp+0x4d>
 2f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2f7:	90                   	nop
 2f8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2fc:	83 c2 01             	add    $0x1,%edx
 2ff:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 302:	84 c0                	test   %al,%al
 304:	74 1a                	je     320 <strcmp+0x40>
    p++, q++;
 306:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 308:	0f b6 19             	movzbl (%ecx),%ebx
 30b:	38 c3                	cmp    %al,%bl
 30d:	74 e9                	je     2f8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 30f:	29 d8                	sub    %ebx,%eax
}
 311:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 314:	c9                   	leave  
 315:	c3                   	ret    
 316:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 320:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 324:	31 c0                	xor    %eax,%eax
 326:	29 d8                	sub    %ebx,%eax
}
 328:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 32b:	c9                   	leave  
 32c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 32d:	0f b6 19             	movzbl (%ecx),%ebx
 330:	31 c0                	xor    %eax,%eax
 332:	eb db                	jmp    30f <strcmp+0x2f>
 334:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 33f:	90                   	nop

00000340 <strlen>:

uint
strlen(const char *s)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 346:	80 3a 00             	cmpb   $0x0,(%edx)
 349:	74 15                	je     360 <strlen+0x20>
 34b:	31 c0                	xor    %eax,%eax
 34d:	8d 76 00             	lea    0x0(%esi),%esi
 350:	83 c0 01             	add    $0x1,%eax
 353:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 357:	89 c1                	mov    %eax,%ecx
 359:	75 f5                	jne    350 <strlen+0x10>
    ;
  return n;
}
 35b:	89 c8                	mov    %ecx,%eax
 35d:	5d                   	pop    %ebp
 35e:	c3                   	ret    
 35f:	90                   	nop
  for(n = 0; s[n]; n++)
 360:	31 c9                	xor    %ecx,%ecx
}
 362:	5d                   	pop    %ebp
 363:	89 c8                	mov    %ecx,%eax
 365:	c3                   	ret    
 366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36d:	8d 76 00             	lea    0x0(%esi),%esi

00000370 <memset>:

void*
memset(void *dst, int c, uint n)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 377:	8b 4d 10             	mov    0x10(%ebp),%ecx
 37a:	8b 45 0c             	mov    0xc(%ebp),%eax
 37d:	89 d7                	mov    %edx,%edi
 37f:	fc                   	cld    
 380:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 382:	8b 7d fc             	mov    -0x4(%ebp),%edi
 385:	89 d0                	mov    %edx,%eax
 387:	c9                   	leave  
 388:	c3                   	ret    
 389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000390 <strchr>:

char*
strchr(const char *s, char c)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 45 08             	mov    0x8(%ebp),%eax
 396:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 39a:	0f b6 10             	movzbl (%eax),%edx
 39d:	84 d2                	test   %dl,%dl
 39f:	75 12                	jne    3b3 <strchr+0x23>
 3a1:	eb 1d                	jmp    3c0 <strchr+0x30>
 3a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a7:	90                   	nop
 3a8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3ac:	83 c0 01             	add    $0x1,%eax
 3af:	84 d2                	test   %dl,%dl
 3b1:	74 0d                	je     3c0 <strchr+0x30>
    if(*s == c)
 3b3:	38 d1                	cmp    %dl,%cl
 3b5:	75 f1                	jne    3a8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3b7:	5d                   	pop    %ebp
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3c0:	31 c0                	xor    %eax,%eax
}
 3c2:	5d                   	pop    %ebp
 3c3:	c3                   	ret    
 3c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <gets>:

char*
gets(char *buf, int max)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3d9:	31 db                	xor    %ebx,%ebx
{
 3db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3de:	eb 27                	jmp    407 <gets+0x37>
    cc = read(0, &c, 1);
 3e0:	83 ec 04             	sub    $0x4,%esp
 3e3:	6a 01                	push   $0x1
 3e5:	57                   	push   %edi
 3e6:	6a 00                	push   $0x0
 3e8:	e8 a4 01 00 00       	call   591 <read>
    if(cc < 1)
 3ed:	83 c4 10             	add    $0x10,%esp
 3f0:	85 c0                	test   %eax,%eax
 3f2:	7e 1d                	jle    411 <gets+0x41>
      break;
    buf[i++] = c;
 3f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3f8:	8b 55 08             	mov    0x8(%ebp),%edx
 3fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3ff:	3c 0a                	cmp    $0xa,%al
 401:	74 1d                	je     420 <gets+0x50>
 403:	3c 0d                	cmp    $0xd,%al
 405:	74 19                	je     420 <gets+0x50>
  for(i=0; i+1 < max; ){
 407:	89 de                	mov    %ebx,%esi
 409:	83 c3 01             	add    $0x1,%ebx
 40c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 40f:	7c cf                	jl     3e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 411:	8b 45 08             	mov    0x8(%ebp),%eax
 414:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 418:	8d 65 f4             	lea    -0xc(%ebp),%esp
 41b:	5b                   	pop    %ebx
 41c:	5e                   	pop    %esi
 41d:	5f                   	pop    %edi
 41e:	5d                   	pop    %ebp
 41f:	c3                   	ret    
  buf[i] = '\0';
 420:	8b 45 08             	mov    0x8(%ebp),%eax
 423:	89 de                	mov    %ebx,%esi
 425:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 429:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42c:	5b                   	pop    %ebx
 42d:	5e                   	pop    %esi
 42e:	5f                   	pop    %edi
 42f:	5d                   	pop    %ebp
 430:	c3                   	ret    
 431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 438:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <stat>:

int
stat(const char *n, struct stat *st)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	56                   	push   %esi
 444:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 445:	83 ec 08             	sub    $0x8,%esp
 448:	6a 00                	push   $0x0
 44a:	ff 75 08             	push   0x8(%ebp)
 44d:	e8 67 01 00 00       	call   5b9 <open>
  if(fd < 0)
 452:	83 c4 10             	add    $0x10,%esp
 455:	85 c0                	test   %eax,%eax
 457:	78 27                	js     480 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 459:	83 ec 08             	sub    $0x8,%esp
 45c:	ff 75 0c             	push   0xc(%ebp)
 45f:	89 c3                	mov    %eax,%ebx
 461:	50                   	push   %eax
 462:	e8 6a 01 00 00       	call   5d1 <fstat>
  close(fd);
 467:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 46a:	89 c6                	mov    %eax,%esi
  close(fd);
 46c:	e8 30 01 00 00       	call   5a1 <close>
  return r;
 471:	83 c4 10             	add    $0x10,%esp
}
 474:	8d 65 f8             	lea    -0x8(%ebp),%esp
 477:	89 f0                	mov    %esi,%eax
 479:	5b                   	pop    %ebx
 47a:	5e                   	pop    %esi
 47b:	5d                   	pop    %ebp
 47c:	c3                   	ret    
 47d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 480:	be ff ff ff ff       	mov    $0xffffffff,%esi
 485:	eb ed                	jmp    474 <stat+0x34>
 487:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48e:	66 90                	xchg   %ax,%ax

00000490 <atoi>:

int
atoi(const char *s)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	53                   	push   %ebx
 494:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 497:	0f be 02             	movsbl (%edx),%eax
 49a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 49d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4a5:	77 1e                	ja     4c5 <atoi+0x35>
 4a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ae:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4b0:	83 c2 01             	add    $0x1,%edx
 4b3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4b6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ba:	0f be 02             	movsbl (%edx),%eax
 4bd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4c0:	80 fb 09             	cmp    $0x9,%bl
 4c3:	76 eb                	jbe    4b0 <atoi+0x20>
  return n;
}
 4c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4c8:	89 c8                	mov    %ecx,%eax
 4ca:	c9                   	leave  
 4cb:	c3                   	ret    
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	8b 45 10             	mov    0x10(%ebp),%eax
 4d7:	8b 55 08             	mov    0x8(%ebp),%edx
 4da:	56                   	push   %esi
 4db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4de:	85 c0                	test   %eax,%eax
 4e0:	7e 13                	jle    4f5 <memmove+0x25>
 4e2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4e4:	89 d7                	mov    %edx,%edi
 4e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4f0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4f1:	39 f8                	cmp    %edi,%eax
 4f3:	75 fb                	jne    4f0 <memmove+0x20>
  return vdst;
}
 4f5:	5e                   	pop    %esi
 4f6:	89 d0                	mov    %edx,%eax
 4f8:	5f                   	pop    %edi
 4f9:	5d                   	pop    %ebp
 4fa:	c3                   	ret    
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 506:	6a 04                	push   $0x4
 508:	e8 03 04 00 00       	call   910 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 50d:	50                   	push   %eax
 50e:	ff 75 10             	push   0x10(%ebp)
 511:	ff 75 0c             	push   0xc(%ebp)
 514:	ff 75 08             	push   0x8(%ebp)
 517:	e8 fd 00 00 00       	call   619 <clone>
}
 51c:	c9                   	leave  
 51d:	c3                   	ret    
 51e:	66 90                	xchg   %ax,%ax

00000520 <thread_join>:

int
thread_join(){
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 525:	83 ec 0c             	sub    $0xc,%esp
 528:	6a 04                	push   $0x4
 52a:	e8 e1 03 00 00       	call   910 <malloc>
  int rc = join(stack);
 52f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 532:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 534:	e8 e8 00 00 00       	call   621 <join>
 539:	89 c6                	mov    %eax,%esi
  free(*stack);
 53b:	58                   	pop    %eax
 53c:	ff 33                	push   (%ebx)
 53e:	e8 3d 03 00 00       	call   880 <free>
  return rc;
}
 543:	8d 65 f8             	lea    -0x8(%ebp),%esp
 546:	89 f0                	mov    %esi,%eax
 548:	5b                   	pop    %ebx
 549:	5e                   	pop    %esi
 54a:	5d                   	pop    %ebp
 54b:	c3                   	ret    
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000550 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 550:	c3                   	ret    
 551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 558:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <lock_release>:
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <lock_init>:
 570:	c3                   	ret    

00000571 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 571:	b8 01 00 00 00       	mov    $0x1,%eax
 576:	cd 40                	int    $0x40
 578:	c3                   	ret    

00000579 <exit>:
SYSCALL(exit)
 579:	b8 02 00 00 00       	mov    $0x2,%eax
 57e:	cd 40                	int    $0x40
 580:	c3                   	ret    

00000581 <wait>:
SYSCALL(wait)
 581:	b8 03 00 00 00       	mov    $0x3,%eax
 586:	cd 40                	int    $0x40
 588:	c3                   	ret    

00000589 <pipe>:
SYSCALL(pipe)
 589:	b8 04 00 00 00       	mov    $0x4,%eax
 58e:	cd 40                	int    $0x40
 590:	c3                   	ret    

00000591 <read>:
SYSCALL(read)
 591:	b8 05 00 00 00       	mov    $0x5,%eax
 596:	cd 40                	int    $0x40
 598:	c3                   	ret    

00000599 <write>:
SYSCALL(write)
 599:	b8 10 00 00 00       	mov    $0x10,%eax
 59e:	cd 40                	int    $0x40
 5a0:	c3                   	ret    

000005a1 <close>:
SYSCALL(close)
 5a1:	b8 15 00 00 00       	mov    $0x15,%eax
 5a6:	cd 40                	int    $0x40
 5a8:	c3                   	ret    

000005a9 <kill>:
SYSCALL(kill)
 5a9:	b8 06 00 00 00       	mov    $0x6,%eax
 5ae:	cd 40                	int    $0x40
 5b0:	c3                   	ret    

000005b1 <exec>:
SYSCALL(exec)
 5b1:	b8 07 00 00 00       	mov    $0x7,%eax
 5b6:	cd 40                	int    $0x40
 5b8:	c3                   	ret    

000005b9 <open>:
SYSCALL(open)
 5b9:	b8 0f 00 00 00       	mov    $0xf,%eax
 5be:	cd 40                	int    $0x40
 5c0:	c3                   	ret    

000005c1 <mknod>:
SYSCALL(mknod)
 5c1:	b8 11 00 00 00       	mov    $0x11,%eax
 5c6:	cd 40                	int    $0x40
 5c8:	c3                   	ret    

000005c9 <unlink>:
SYSCALL(unlink)
 5c9:	b8 12 00 00 00       	mov    $0x12,%eax
 5ce:	cd 40                	int    $0x40
 5d0:	c3                   	ret    

000005d1 <fstat>:
SYSCALL(fstat)
 5d1:	b8 08 00 00 00       	mov    $0x8,%eax
 5d6:	cd 40                	int    $0x40
 5d8:	c3                   	ret    

000005d9 <link>:
SYSCALL(link)
 5d9:	b8 13 00 00 00       	mov    $0x13,%eax
 5de:	cd 40                	int    $0x40
 5e0:	c3                   	ret    

000005e1 <mkdir>:
SYSCALL(mkdir)
 5e1:	b8 14 00 00 00       	mov    $0x14,%eax
 5e6:	cd 40                	int    $0x40
 5e8:	c3                   	ret    

000005e9 <chdir>:
SYSCALL(chdir)
 5e9:	b8 09 00 00 00       	mov    $0x9,%eax
 5ee:	cd 40                	int    $0x40
 5f0:	c3                   	ret    

000005f1 <dup>:
SYSCALL(dup)
 5f1:	b8 0a 00 00 00       	mov    $0xa,%eax
 5f6:	cd 40                	int    $0x40
 5f8:	c3                   	ret    

000005f9 <getpid>:
SYSCALL(getpid)
 5f9:	b8 0b 00 00 00       	mov    $0xb,%eax
 5fe:	cd 40                	int    $0x40
 600:	c3                   	ret    

00000601 <sbrk>:
SYSCALL(sbrk)
 601:	b8 0c 00 00 00       	mov    $0xc,%eax
 606:	cd 40                	int    $0x40
 608:	c3                   	ret    

00000609 <sleep>:
SYSCALL(sleep)
 609:	b8 0d 00 00 00       	mov    $0xd,%eax
 60e:	cd 40                	int    $0x40
 610:	c3                   	ret    

00000611 <uptime>:
SYSCALL(uptime)
 611:	b8 0e 00 00 00       	mov    $0xe,%eax
 616:	cd 40                	int    $0x40
 618:	c3                   	ret    

00000619 <clone>:
SYSCALL(clone)
 619:	b8 16 00 00 00       	mov    $0x16,%eax
 61e:	cd 40                	int    $0x40
 620:	c3                   	ret    

00000621 <join>:
SYSCALL(join)
 621:	b8 17 00 00 00       	mov    $0x17,%eax
 626:	cd 40                	int    $0x40
 628:	c3                   	ret    
 629:	66 90                	xchg   %ax,%ax
 62b:	66 90                	xchg   %ax,%ax
 62d:	66 90                	xchg   %ax,%ax
 62f:	90                   	nop

00000630 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 3c             	sub    $0x3c,%esp
 639:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 63c:	89 d1                	mov    %edx,%ecx
{
 63e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 641:	85 d2                	test   %edx,%edx
 643:	0f 89 7f 00 00 00    	jns    6c8 <printint+0x98>
 649:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 64d:	74 79                	je     6c8 <printint+0x98>
    neg = 1;
 64f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 656:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 658:	31 db                	xor    %ebx,%ebx
 65a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 660:	89 c8                	mov    %ecx,%eax
 662:	31 d2                	xor    %edx,%edx
 664:	89 cf                	mov    %ecx,%edi
 666:	f7 75 c4             	divl   -0x3c(%ebp)
 669:	0f b6 92 b0 0b 00 00 	movzbl 0xbb0(%edx),%edx
 670:	89 45 c0             	mov    %eax,-0x40(%ebp)
 673:	89 d8                	mov    %ebx,%eax
 675:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 678:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 67b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 67e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 681:	76 dd                	jbe    660 <printint+0x30>
  if(neg)
 683:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 686:	85 c9                	test   %ecx,%ecx
 688:	74 0c                	je     696 <printint+0x66>
    buf[i++] = '-';
 68a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 68f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 691:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 696:	8b 7d b8             	mov    -0x48(%ebp),%edi
 699:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 69d:	eb 07                	jmp    6a6 <printint+0x76>
 69f:	90                   	nop
    putc(fd, buf[i]);
 6a0:	0f b6 13             	movzbl (%ebx),%edx
 6a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6a6:	83 ec 04             	sub    $0x4,%esp
 6a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6ac:	6a 01                	push   $0x1
 6ae:	56                   	push   %esi
 6af:	57                   	push   %edi
 6b0:	e8 e4 fe ff ff       	call   599 <write>
  while(--i >= 0)
 6b5:	83 c4 10             	add    $0x10,%esp
 6b8:	39 de                	cmp    %ebx,%esi
 6ba:	75 e4                	jne    6a0 <printint+0x70>
}
 6bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6bf:	5b                   	pop    %ebx
 6c0:	5e                   	pop    %esi
 6c1:	5f                   	pop    %edi
 6c2:	5d                   	pop    %ebp
 6c3:	c3                   	ret    
 6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6cf:	eb 87                	jmp    658 <printint+0x28>
 6d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6df:	90                   	nop

000006e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6ef:	0f b6 13             	movzbl (%ebx),%edx
 6f2:	84 d2                	test   %dl,%dl
 6f4:	74 6a                	je     760 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6f6:	8d 45 10             	lea    0x10(%ebp),%eax
 6f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 701:	89 45 d0             	mov    %eax,-0x30(%ebp)
 704:	eb 36                	jmp    73c <printf+0x5c>
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
 710:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 713:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	74 15                	je     732 <printf+0x52>
  write(fd, &c, 1);
 71d:	83 ec 04             	sub    $0x4,%esp
 720:	88 55 e7             	mov    %dl,-0x19(%ebp)
 723:	6a 01                	push   $0x1
 725:	57                   	push   %edi
 726:	56                   	push   %esi
 727:	e8 6d fe ff ff       	call   599 <write>
 72c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 72f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 732:	0f b6 13             	movzbl (%ebx),%edx
 735:	83 c3 01             	add    $0x1,%ebx
 738:	84 d2                	test   %dl,%dl
 73a:	74 24                	je     760 <printf+0x80>
    c = fmt[i] & 0xff;
 73c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 73f:	85 c9                	test   %ecx,%ecx
 741:	74 cd                	je     710 <printf+0x30>
      }
    } else if(state == '%'){
 743:	83 f9 25             	cmp    $0x25,%ecx
 746:	75 ea                	jne    732 <printf+0x52>
      if(c == 'd'){
 748:	83 f8 25             	cmp    $0x25,%eax
 74b:	0f 84 07 01 00 00    	je     858 <printf+0x178>
 751:	83 e8 63             	sub    $0x63,%eax
 754:	83 f8 15             	cmp    $0x15,%eax
 757:	77 17                	ja     770 <printf+0x90>
 759:	ff 24 85 58 0b 00 00 	jmp    *0xb58(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 760:	8d 65 f4             	lea    -0xc(%ebp),%esp
 763:	5b                   	pop    %ebx
 764:	5e                   	pop    %esi
 765:	5f                   	pop    %edi
 766:	5d                   	pop    %ebp
 767:	c3                   	ret    
 768:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76f:	90                   	nop
  write(fd, &c, 1);
 770:	83 ec 04             	sub    $0x4,%esp
 773:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 776:	6a 01                	push   $0x1
 778:	57                   	push   %edi
 779:	56                   	push   %esi
 77a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 77e:	e8 16 fe ff ff       	call   599 <write>
        putc(fd, c);
 783:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 787:	83 c4 0c             	add    $0xc,%esp
 78a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 78d:	6a 01                	push   $0x1
 78f:	57                   	push   %edi
 790:	56                   	push   %esi
 791:	e8 03 fe ff ff       	call   599 <write>
        putc(fd, c);
 796:	83 c4 10             	add    $0x10,%esp
      state = 0;
 799:	31 c9                	xor    %ecx,%ecx
 79b:	eb 95                	jmp    732 <printf+0x52>
 79d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7a8:	6a 00                	push   $0x0
 7aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7ad:	8b 10                	mov    (%eax),%edx
 7af:	89 f0                	mov    %esi,%eax
 7b1:	e8 7a fe ff ff       	call   630 <printint>
        ap++;
 7b6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7ba:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7bd:	31 c9                	xor    %ecx,%ecx
 7bf:	e9 6e ff ff ff       	jmp    732 <printf+0x52>
 7c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7cb:	8b 10                	mov    (%eax),%edx
        ap++;
 7cd:	83 c0 04             	add    $0x4,%eax
 7d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7d3:	85 d2                	test   %edx,%edx
 7d5:	0f 84 8d 00 00 00    	je     868 <printf+0x188>
        while(*s != 0){
 7db:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7de:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7e0:	84 c0                	test   %al,%al
 7e2:	0f 84 4a ff ff ff    	je     732 <printf+0x52>
 7e8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7eb:	89 d3                	mov    %edx,%ebx
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7f0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7f3:	83 c3 01             	add    $0x1,%ebx
 7f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7f9:	6a 01                	push   $0x1
 7fb:	57                   	push   %edi
 7fc:	56                   	push   %esi
 7fd:	e8 97 fd ff ff       	call   599 <write>
        while(*s != 0){
 802:	0f b6 03             	movzbl (%ebx),%eax
 805:	83 c4 10             	add    $0x10,%esp
 808:	84 c0                	test   %al,%al
 80a:	75 e4                	jne    7f0 <printf+0x110>
      state = 0;
 80c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 80f:	31 c9                	xor    %ecx,%ecx
 811:	e9 1c ff ff ff       	jmp    732 <printf+0x52>
 816:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 820:	83 ec 0c             	sub    $0xc,%esp
 823:	b9 0a 00 00 00       	mov    $0xa,%ecx
 828:	6a 01                	push   $0x1
 82a:	e9 7b ff ff ff       	jmp    7aa <printf+0xca>
 82f:	90                   	nop
        putc(fd, *ap);
 830:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 833:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 836:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 838:	6a 01                	push   $0x1
 83a:	57                   	push   %edi
 83b:	56                   	push   %esi
        putc(fd, *ap);
 83c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 83f:	e8 55 fd ff ff       	call   599 <write>
        ap++;
 844:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 848:	83 c4 10             	add    $0x10,%esp
      state = 0;
 84b:	31 c9                	xor    %ecx,%ecx
 84d:	e9 e0 fe ff ff       	jmp    732 <printf+0x52>
 852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 858:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 85b:	83 ec 04             	sub    $0x4,%esp
 85e:	e9 2a ff ff ff       	jmp    78d <printf+0xad>
 863:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 867:	90                   	nop
          s = "(null)";
 868:	ba 50 0b 00 00       	mov    $0xb50,%edx
        while(*s != 0){
 86d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 870:	b8 28 00 00 00       	mov    $0x28,%eax
 875:	89 d3                	mov    %edx,%ebx
 877:	e9 74 ff ff ff       	jmp    7f0 <printf+0x110>
 87c:	66 90                	xchg   %ax,%ax
 87e:	66 90                	xchg   %ax,%ax

00000880 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 880:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 881:	a1 18 0f 00 00       	mov    0xf18,%eax
{
 886:	89 e5                	mov    %esp,%ebp
 888:	57                   	push   %edi
 889:	56                   	push   %esi
 88a:	53                   	push   %ebx
 88b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 88e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 898:	89 c2                	mov    %eax,%edx
 89a:	8b 00                	mov    (%eax),%eax
 89c:	39 ca                	cmp    %ecx,%edx
 89e:	73 30                	jae    8d0 <free+0x50>
 8a0:	39 c1                	cmp    %eax,%ecx
 8a2:	72 04                	jb     8a8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a4:	39 c2                	cmp    %eax,%edx
 8a6:	72 f0                	jb     898 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ae:	39 f8                	cmp    %edi,%eax
 8b0:	74 30                	je     8e2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8b2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8b5:	8b 42 04             	mov    0x4(%edx),%eax
 8b8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8bb:	39 f1                	cmp    %esi,%ecx
 8bd:	74 3a                	je     8f9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8bf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8c1:	5b                   	pop    %ebx
  freep = p;
 8c2:	89 15 18 0f 00 00    	mov    %edx,0xf18
}
 8c8:	5e                   	pop    %esi
 8c9:	5f                   	pop    %edi
 8ca:	5d                   	pop    %ebp
 8cb:	c3                   	ret    
 8cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d0:	39 c2                	cmp    %eax,%edx
 8d2:	72 c4                	jb     898 <free+0x18>
 8d4:	39 c1                	cmp    %eax,%ecx
 8d6:	73 c0                	jae    898 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8de:	39 f8                	cmp    %edi,%eax
 8e0:	75 d0                	jne    8b2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8e2:	03 70 04             	add    0x4(%eax),%esi
 8e5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8e8:	8b 02                	mov    (%edx),%eax
 8ea:	8b 00                	mov    (%eax),%eax
 8ec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ef:	8b 42 04             	mov    0x4(%edx),%eax
 8f2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8f5:	39 f1                	cmp    %esi,%ecx
 8f7:	75 c6                	jne    8bf <free+0x3f>
    p->s.size += bp->s.size;
 8f9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8fc:	89 15 18 0f 00 00    	mov    %edx,0xf18
    p->s.size += bp->s.size;
 902:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 905:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 908:	89 0a                	mov    %ecx,(%edx)
}
 90a:	5b                   	pop    %ebx
 90b:	5e                   	pop    %esi
 90c:	5f                   	pop    %edi
 90d:	5d                   	pop    %ebp
 90e:	c3                   	ret    
 90f:	90                   	nop

00000910 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 919:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 91c:	8b 3d 18 0f 00 00    	mov    0xf18,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 922:	8d 70 07             	lea    0x7(%eax),%esi
 925:	c1 ee 03             	shr    $0x3,%esi
 928:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 92b:	85 ff                	test   %edi,%edi
 92d:	0f 84 9d 00 00 00    	je     9d0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 933:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 935:	8b 4a 04             	mov    0x4(%edx),%ecx
 938:	39 f1                	cmp    %esi,%ecx
 93a:	73 6a                	jae    9a6 <malloc+0x96>
 93c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 941:	39 de                	cmp    %ebx,%esi
 943:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 946:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 94d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 950:	eb 17                	jmp    969 <malloc+0x59>
 952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 958:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 95a:	8b 48 04             	mov    0x4(%eax),%ecx
 95d:	39 f1                	cmp    %esi,%ecx
 95f:	73 4f                	jae    9b0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 961:	8b 3d 18 0f 00 00    	mov    0xf18,%edi
 967:	89 c2                	mov    %eax,%edx
 969:	39 d7                	cmp    %edx,%edi
 96b:	75 eb                	jne    958 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 96d:	83 ec 0c             	sub    $0xc,%esp
 970:	ff 75 e4             	push   -0x1c(%ebp)
 973:	e8 89 fc ff ff       	call   601 <sbrk>
  if(p == (char*)-1)
 978:	83 c4 10             	add    $0x10,%esp
 97b:	83 f8 ff             	cmp    $0xffffffff,%eax
 97e:	74 1c                	je     99c <malloc+0x8c>
  hp->s.size = nu;
 980:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 983:	83 ec 0c             	sub    $0xc,%esp
 986:	83 c0 08             	add    $0x8,%eax
 989:	50                   	push   %eax
 98a:	e8 f1 fe ff ff       	call   880 <free>
  return freep;
 98f:	8b 15 18 0f 00 00    	mov    0xf18,%edx
      if((p = morecore(nunits)) == 0)
 995:	83 c4 10             	add    $0x10,%esp
 998:	85 d2                	test   %edx,%edx
 99a:	75 bc                	jne    958 <malloc+0x48>
        return 0;
  }
}
 99c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 99f:	31 c0                	xor    %eax,%eax
}
 9a1:	5b                   	pop    %ebx
 9a2:	5e                   	pop    %esi
 9a3:	5f                   	pop    %edi
 9a4:	5d                   	pop    %ebp
 9a5:	c3                   	ret    
    if(p->s.size >= nunits){
 9a6:	89 d0                	mov    %edx,%eax
 9a8:	89 fa                	mov    %edi,%edx
 9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9b0:	39 ce                	cmp    %ecx,%esi
 9b2:	74 4c                	je     a00 <malloc+0xf0>
        p->s.size -= nunits;
 9b4:	29 f1                	sub    %esi,%ecx
 9b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9bc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9bf:	89 15 18 0f 00 00    	mov    %edx,0xf18
}
 9c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9c8:	83 c0 08             	add    $0x8,%eax
}
 9cb:	5b                   	pop    %ebx
 9cc:	5e                   	pop    %esi
 9cd:	5f                   	pop    %edi
 9ce:	5d                   	pop    %ebp
 9cf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9d0:	c7 05 18 0f 00 00 1c 	movl   $0xf1c,0xf18
 9d7:	0f 00 00 
    base.s.size = 0;
 9da:	bf 1c 0f 00 00       	mov    $0xf1c,%edi
    base.s.ptr = freep = prevp = &base;
 9df:	c7 05 1c 0f 00 00 1c 	movl   $0xf1c,0xf1c
 9e6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9eb:	c7 05 20 0f 00 00 00 	movl   $0x0,0xf20
 9f2:	00 00 00 
    if(p->s.size >= nunits){
 9f5:	e9 42 ff ff ff       	jmp    93c <malloc+0x2c>
 9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a00:	8b 08                	mov    (%eax),%ecx
 a02:	89 0a                	mov    %ecx,(%edx)
 a04:	eb b9                	jmp    9bf <malloc+0xaf>
