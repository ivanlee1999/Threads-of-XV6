
_test_2:     file format elf32-i386


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
  13:	e8 ce 05 00 00       	call   5e6 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 bc 0e 00 00       	mov    %eax,0xebc
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 d6 08 00 00       	call   900 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 e9 00 00 00    	je     11e <main+0x11e>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 93 00 00 00    	jne    d8 <main+0xd8>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  45:	50                   	push   %eax
  46:	68 b4 0e 00 00       	push   $0xeb4
  4b:	68 b8 0e 00 00       	push   $0xeb8
  50:	68 90 01 00 00       	push   $0x190
  55:	e8 ac 05 00 00       	call   606 <clone>
   assert(clone_pid > 0);
  5a:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  5d:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  5f:	85 c0                	test   %eax,%eax
  61:	0f 8e 9a 00 00 00    	jle    101 <main+0x101>
  67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6e:	66 90                	xchg   %ax,%ax
   while(global != 33);
  70:	a1 b0 0e 00 00       	mov    0xeb0,%eax
  75:	83 f8 21             	cmp    $0x21,%eax
  78:	75 f6                	jne    70 <main+0x70>
   assert(arg1 == 44);
  7a:	a1 b8 0e 00 00       	mov    0xeb8,%eax
  7f:	83 f8 2c             	cmp    $0x2c,%eax
  82:	75 60                	jne    e4 <main+0xe4>
   assert(arg2 == 55);
  84:	a1 b4 0e 00 00       	mov    0xeb4,%eax
  89:	83 f8 37             	cmp    $0x37,%eax
  8c:	0f 84 ac 00 00 00    	je     13e <main+0x13e>
  92:	6a 28                	push   $0x28
  94:	68 f8 09 00 00       	push   $0x9f8
  99:	68 01 0a 00 00       	push   $0xa01
  9e:	6a 01                	push   $0x1
  a0:	e8 2b 06 00 00       	call   6d0 <printf>
  a5:	83 c4 0c             	add    $0xc,%esp
  a8:	68 59 0a 00 00       	push   $0xa59
   assert(clone_pid > 0);
  ad:	68 15 0a 00 00       	push   $0xa15
  b2:	6a 01                	push   $0x1
  b4:	e8 17 06 00 00       	call   6d0 <printf>
  b9:	5a                   	pop    %edx
  ba:	59                   	pop    %ecx
  bb:	68 29 0a 00 00       	push   $0xa29
  c0:	6a 01                	push   $0x1
  c2:	e8 09 06 00 00       	call   6d0 <printf>
  c7:	5b                   	pop    %ebx
  c8:	ff 35 bc 0e 00 00    	push   0xebc
  ce:	e8 c3 04 00 00       	call   596 <kill>
  d3:	e8 8e 04 00 00       	call   566 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d8:	29 d0                	sub    %edx,%eax
  da:	05 00 10 00 00       	add    $0x1000,%eax
  df:	e9 61 ff ff ff       	jmp    45 <main+0x45>
   assert(arg1 == 44);
  e4:	6a 27                	push   $0x27
  e6:	68 f8 09 00 00       	push   $0x9f8
  eb:	68 01 0a 00 00       	push   $0xa01
  f0:	6a 01                	push   $0x1
  f2:	e8 d9 05 00 00       	call   6d0 <printf>
  f7:	83 c4 0c             	add    $0xc,%esp
  fa:	68 4e 0a 00 00       	push   $0xa4e
  ff:	eb ac                	jmp    ad <main+0xad>
   assert(clone_pid > 0);
 101:	6a 25                	push   $0x25
 103:	68 f8 09 00 00       	push   $0x9f8
 108:	68 01 0a 00 00       	push   $0xa01
 10d:	6a 01                	push   $0x1
 10f:	e8 bc 05 00 00       	call   6d0 <printf>
 114:	83 c4 0c             	add    $0xc,%esp
 117:	68 40 0a 00 00       	push   $0xa40
 11c:	eb 8f                	jmp    ad <main+0xad>
   assert(p != NULL);
 11e:	6a 1e                	push   $0x1e
 120:	68 f8 09 00 00       	push   $0x9f8
 125:	68 01 0a 00 00       	push   $0xa01
 12a:	6a 01                	push   $0x1
 12c:	e8 9f 05 00 00       	call   6d0 <printf>
 131:	83 c4 0c             	add    $0xc,%esp
 134:	68 36 0a 00 00       	push   $0xa36
 139:	e9 6f ff ff ff       	jmp    ad <main+0xad>
   printf(1, "TEST PASSED\n");
 13e:	50                   	push   %eax
 13f:	50                   	push   %eax
 140:	68 64 0a 00 00       	push   $0xa64
 145:	6a 01                	push   $0x1
 147:	e8 84 05 00 00       	call   6d0 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
 14c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 14f:	89 04 24             	mov    %eax,(%esp)
 152:	e8 b7 04 00 00       	call   60e <join>
   assert(join_pid == clone_pid);
 157:	83 c4 10             	add    $0x10,%esp
 15a:	39 c6                	cmp    %eax,%esi
 15c:	74 20                	je     17e <main+0x17e>
 15e:	6a 2d                	push   $0x2d
 160:	68 f8 09 00 00       	push   $0x9f8
 165:	68 01 0a 00 00       	push   $0xa01
 16a:	6a 01                	push   $0x1
 16c:	e8 5f 05 00 00       	call   6d0 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 71 0a 00 00       	push   $0xa71
 179:	e9 2f ff ff ff       	jmp    ad <main+0xad>
   free(p);
 17e:	83 ec 0c             	sub    $0xc,%esp
 181:	53                   	push   %ebx
 182:	e8 e9 06 00 00       	call   870 <free>
   exit();
 187:	e8 da 03 00 00       	call   566 <exit>
 18c:	66 90                	xchg   %ax,%ax
 18e:	66 90                	xchg   %ax,%ax

00000190 <worker>:
}

void
worker(void *arg1, void *arg2) {
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	83 ec 04             	sub    $0x4,%esp
 197:	8b 45 0c             	mov    0xc(%ebp),%eax
 19a:	8b 55 08             	mov    0x8(%ebp),%edx
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 19d:	8b 18                	mov    (%eax),%ebx
   int tmp1 = *(int*)arg1;
 19f:	8b 0a                	mov    (%edx),%ecx
   *(int*)arg1 = 44;
 1a1:	c7 02 2c 00 00 00    	movl   $0x2c,(%edx)
   *(int*)arg2 = 55;
 1a7:	c7 00 37 00 00 00    	movl   $0x37,(%eax)
   assert(global == 1);
 1ad:	a1 b0 0e 00 00       	mov    0xeb0,%eax
 1b2:	83 f8 01             	cmp    $0x1,%eax
 1b5:	74 46                	je     1fd <worker+0x6d>
 1b7:	6a 38                	push   $0x38
 1b9:	68 f8 09 00 00       	push   $0x9f8
 1be:	68 01 0a 00 00       	push   $0xa01
 1c3:	6a 01                	push   $0x1
 1c5:	e8 06 05 00 00       	call   6d0 <printf>
 1ca:	83 c4 0c             	add    $0xc,%esp
 1cd:	68 09 0a 00 00       	push   $0xa09
 1d2:	68 15 0a 00 00       	push   $0xa15
 1d7:	6a 01                	push   $0x1
 1d9:	e8 f2 04 00 00       	call   6d0 <printf>
 1de:	58                   	pop    %eax
 1df:	5a                   	pop    %edx
 1e0:	68 29 0a 00 00       	push   $0xa29
 1e5:	6a 01                	push   $0x1
 1e7:	e8 e4 04 00 00       	call   6d0 <printf>
 1ec:	59                   	pop    %ecx
 1ed:	ff 35 bc 0e 00 00    	push   0xebc
 1f3:	e8 9e 03 00 00       	call   596 <kill>
 1f8:	e8 69 03 00 00       	call   566 <exit>
   global = tmp1 + tmp2;
 1fd:	01 d9                	add    %ebx,%ecx
 1ff:	89 0d b0 0e 00 00    	mov    %ecx,0xeb0
   exit();
 205:	e8 5c 03 00 00       	call   566 <exit>
 20a:	66 90                	xchg   %ax,%ax
 20c:	66 90                	xchg   %ax,%ax
 20e:	66 90                	xchg   %ax,%ax

00000210 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 210:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 211:	31 c0                	xor    %eax,%eax
{
 213:	89 e5                	mov    %esp,%ebp
 215:	53                   	push   %ebx
 216:	8b 4d 08             	mov    0x8(%ebp),%ecx
 219:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 220:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 224:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 227:	83 c0 01             	add    $0x1,%eax
 22a:	84 d2                	test   %dl,%dl
 22c:	75 f2                	jne    220 <strcpy+0x10>
    ;
  return os;
}
 22e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 231:	89 c8                	mov    %ecx,%eax
 233:	c9                   	leave  
 234:	c3                   	ret    
 235:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000240 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
 247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 24a:	0f b6 02             	movzbl (%edx),%eax
 24d:	84 c0                	test   %al,%al
 24f:	75 17                	jne    268 <strcmp+0x28>
 251:	eb 3a                	jmp    28d <strcmp+0x4d>
 253:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 257:	90                   	nop
 258:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 25c:	83 c2 01             	add    $0x1,%edx
 25f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 262:	84 c0                	test   %al,%al
 264:	74 1a                	je     280 <strcmp+0x40>
    p++, q++;
 266:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 268:	0f b6 19             	movzbl (%ecx),%ebx
 26b:	38 c3                	cmp    %al,%bl
 26d:	74 e9                	je     258 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 26f:	29 d8                	sub    %ebx,%eax
}
 271:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 274:	c9                   	leave  
 275:	c3                   	ret    
 276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 280:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 284:	31 c0                	xor    %eax,%eax
 286:	29 d8                	sub    %ebx,%eax
}
 288:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 28b:	c9                   	leave  
 28c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 28d:	0f b6 19             	movzbl (%ecx),%ebx
 290:	31 c0                	xor    %eax,%eax
 292:	eb db                	jmp    26f <strcmp+0x2f>
 294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <strlen>:

uint
strlen(const char *s)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2a6:	80 3a 00             	cmpb   $0x0,(%edx)
 2a9:	74 15                	je     2c0 <strlen+0x20>
 2ab:	31 c0                	xor    %eax,%eax
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
 2b0:	83 c0 01             	add    $0x1,%eax
 2b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2b7:	89 c1                	mov    %eax,%ecx
 2b9:	75 f5                	jne    2b0 <strlen+0x10>
    ;
  return n;
}
 2bb:	89 c8                	mov    %ecx,%eax
 2bd:	5d                   	pop    %ebp
 2be:	c3                   	ret    
 2bf:	90                   	nop
  for(n = 0; s[n]; n++)
 2c0:	31 c9                	xor    %ecx,%ecx
}
 2c2:	5d                   	pop    %ebp
 2c3:	89 c8                	mov    %ecx,%eax
 2c5:	c3                   	ret    
 2c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cd:	8d 76 00             	lea    0x0(%esi),%esi

000002d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2da:	8b 45 0c             	mov    0xc(%ebp),%eax
 2dd:	89 d7                	mov    %edx,%edi
 2df:	fc                   	cld    
 2e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2e5:	89 d0                	mov    %edx,%eax
 2e7:	c9                   	leave  
 2e8:	c3                   	ret    
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strchr>:

char*
strchr(const char *s, char c)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2fa:	0f b6 10             	movzbl (%eax),%edx
 2fd:	84 d2                	test   %dl,%dl
 2ff:	75 12                	jne    313 <strchr+0x23>
 301:	eb 1d                	jmp    320 <strchr+0x30>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 30c:	83 c0 01             	add    $0x1,%eax
 30f:	84 d2                	test   %dl,%dl
 311:	74 0d                	je     320 <strchr+0x30>
    if(*s == c)
 313:	38 d1                	cmp    %dl,%cl
 315:	75 f1                	jne    308 <strchr+0x18>
      return (char*)s;
  return 0;
}
 317:	5d                   	pop    %ebp
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 320:	31 c0                	xor    %eax,%eax
}
 322:	5d                   	pop    %ebp
 323:	c3                   	ret    
 324:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <gets>:

char*
gets(char *buf, int max)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 335:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 338:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 339:	31 db                	xor    %ebx,%ebx
{
 33b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 33e:	eb 27                	jmp    367 <gets+0x37>
    cc = read(0, &c, 1);
 340:	83 ec 04             	sub    $0x4,%esp
 343:	6a 01                	push   $0x1
 345:	57                   	push   %edi
 346:	6a 00                	push   $0x0
 348:	e8 31 02 00 00       	call   57e <read>
    if(cc < 1)
 34d:	83 c4 10             	add    $0x10,%esp
 350:	85 c0                	test   %eax,%eax
 352:	7e 1d                	jle    371 <gets+0x41>
      break;
    buf[i++] = c;
 354:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 358:	8b 55 08             	mov    0x8(%ebp),%edx
 35b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 35f:	3c 0a                	cmp    $0xa,%al
 361:	74 1d                	je     380 <gets+0x50>
 363:	3c 0d                	cmp    $0xd,%al
 365:	74 19                	je     380 <gets+0x50>
  for(i=0; i+1 < max; ){
 367:	89 de                	mov    %ebx,%esi
 369:	83 c3 01             	add    $0x1,%ebx
 36c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 36f:	7c cf                	jl     340 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 371:	8b 45 08             	mov    0x8(%ebp),%eax
 374:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 378:	8d 65 f4             	lea    -0xc(%ebp),%esp
 37b:	5b                   	pop    %ebx
 37c:	5e                   	pop    %esi
 37d:	5f                   	pop    %edi
 37e:	5d                   	pop    %ebp
 37f:	c3                   	ret    
  buf[i] = '\0';
 380:	8b 45 08             	mov    0x8(%ebp),%eax
 383:	89 de                	mov    %ebx,%esi
 385:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 389:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38c:	5b                   	pop    %ebx
 38d:	5e                   	pop    %esi
 38e:	5f                   	pop    %edi
 38f:	5d                   	pop    %ebp
 390:	c3                   	ret    
 391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 398:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop

000003a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	56                   	push   %esi
 3a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3a5:	83 ec 08             	sub    $0x8,%esp
 3a8:	6a 00                	push   $0x0
 3aa:	ff 75 08             	push   0x8(%ebp)
 3ad:	e8 f4 01 00 00       	call   5a6 <open>
  if(fd < 0)
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	85 c0                	test   %eax,%eax
 3b7:	78 27                	js     3e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3b9:	83 ec 08             	sub    $0x8,%esp
 3bc:	ff 75 0c             	push   0xc(%ebp)
 3bf:	89 c3                	mov    %eax,%ebx
 3c1:	50                   	push   %eax
 3c2:	e8 f7 01 00 00       	call   5be <fstat>
  close(fd);
 3c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ca:	89 c6                	mov    %eax,%esi
  close(fd);
 3cc:	e8 bd 01 00 00       	call   58e <close>
  return r;
 3d1:	83 c4 10             	add    $0x10,%esp
}
 3d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d7:	89 f0                	mov    %esi,%eax
 3d9:	5b                   	pop    %ebx
 3da:	5e                   	pop    %esi
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3e5:	eb ed                	jmp    3d4 <stat+0x34>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax

000003f0 <atoi>:

int
atoi(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3f7:	0f be 02             	movsbl (%edx),%eax
 3fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 400:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 405:	77 1e                	ja     425 <atoi+0x35>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 410:	83 c2 01             	add    $0x1,%edx
 413:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 416:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 41a:	0f be 02             	movsbl (%edx),%eax
 41d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 420:	80 fb 09             	cmp    $0x9,%bl
 423:	76 eb                	jbe    410 <atoi+0x20>
  return n;
}
 425:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 428:	89 c8                	mov    %ecx,%eax
 42a:	c9                   	leave  
 42b:	c3                   	ret    
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 45 10             	mov    0x10(%ebp),%eax
 437:	8b 55 08             	mov    0x8(%ebp),%edx
 43a:	56                   	push   %esi
 43b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 43e:	85 c0                	test   %eax,%eax
 440:	7e 13                	jle    455 <memmove+0x25>
 442:	01 d0                	add    %edx,%eax
  dst = vdst;
 444:	89 d7                	mov    %edx,%edi
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 450:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 451:	39 f8                	cmp    %edi,%eax
 453:	75 fb                	jne    450 <memmove+0x20>
  return vdst;
}
 455:	5e                   	pop    %esi
 456:	89 d0                	mov    %edx,%eax
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	53                   	push   %ebx
 464:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 467:	68 00 10 00 00       	push   $0x1000
 46c:	e8 8f 04 00 00       	call   900 <malloc>
  if((int) stack % 4096 != 0){
 471:	83 c4 10             	add    $0x10,%esp
 474:	a9 ff 0f 00 00       	test   $0xfff,%eax
 479:	74 16                	je     491 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 47b:	99                   	cltd   
 47c:	c1 ea 14             	shr    $0x14,%edx
 47f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 482:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 488:	29 ca                	sub    %ecx,%edx
 48a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 491:	50                   	push   %eax
 492:	ff 75 10             	push   0x10(%ebp)
 495:	ff 75 0c             	push   0xc(%ebp)
 498:	ff 75 08             	push   0x8(%ebp)
 49b:	e8 66 01 00 00       	call   606 <clone>
  printf(1, " thread create %d \n", rc);
 4a0:	83 c4 0c             	add    $0xc,%esp
 4a3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 4a4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 4a6:	68 87 0a 00 00       	push   $0xa87
 4ab:	6a 01                	push   $0x1
 4ad:	e8 1e 02 00 00       	call   6d0 <printf>
  return rc;
}
 4b2:	89 d8                	mov    %ebx,%eax
 4b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4b7:	c9                   	leave  
 4b8:	c3                   	ret    
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <thread_join>:

int
thread_join(){
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 4c7:	68 9b 0a 00 00       	push   $0xa9b
 4cc:	6a 01                	push   $0x1
 4ce:	e8 fd 01 00 00       	call   6d0 <printf>
  void** stack = malloc(sizeof(void**));
 4d3:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 4da:	e8 21 04 00 00       	call   900 <malloc>
 4df:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 4e1:	58                   	pop    %eax
 4e2:	5a                   	pop    %edx
 4e3:	68 ab 0a 00 00       	push   $0xaab
 4e8:	6a 01                	push   $0x1
 4ea:	e8 e1 01 00 00       	call   6d0 <printf>
  int rc = join(stack);
 4ef:	89 1c 24             	mov    %ebx,(%esp)
 4f2:	e8 17 01 00 00       	call   60e <join>
  printf(1, "thread join 3 \n");
 4f7:	59                   	pop    %ecx
  int rc = join(stack);
 4f8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 4fa:	58                   	pop    %eax
 4fb:	68 bb 0a 00 00       	push   $0xabb
 500:	6a 01                	push   $0x1
 502:	e8 c9 01 00 00       	call   6d0 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 507:	58                   	pop    %eax
 508:	5a                   	pop    %edx
 509:	68 cb 0a 00 00       	push   $0xacb
 50e:	6a 01                	push   $0x1
 510:	e8 bb 01 00 00       	call   6d0 <printf>
  return rc;
}
 515:	89 d8                	mov    %ebx,%eax
 517:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 51a:	c9                   	leave  
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <lock_acquire>:



void lock_acquire(lock_t * lock){
 520:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 521:	b9 01 00 00 00       	mov    $0x1,%ecx
 526:	89 e5                	mov    %esp,%ebp
 528:	8b 55 08             	mov    0x8(%ebp),%edx
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop
 530:	89 c8                	mov    %ecx,%eax
 532:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 535:	83 f8 01             	cmp    $0x1,%eax
 538:	74 f6                	je     530 <lock_acquire+0x10>
 ; // spin

};
 53a:	5d                   	pop    %ebp
 53b:	c3                   	ret    
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000540 <lock_release>:

void lock_release(lock_t * lock){
 540:	55                   	push   %ebp
 541:	31 c0                	xor    %eax,%eax
 543:	89 e5                	mov    %esp,%ebp
 545:	8b 55 08             	mov    0x8(%ebp),%edx
 548:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 54b:	5d                   	pop    %ebp
 54c:	c3                   	ret    
 54d:	8d 76 00             	lea    0x0(%esi),%esi

00000550 <lock_init>:

void lock_init(lock_t * lock){
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 553:	8b 45 08             	mov    0x8(%ebp),%eax
 556:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 55c:	5d                   	pop    %ebp
 55d:	c3                   	ret    

0000055e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 55e:	b8 01 00 00 00       	mov    $0x1,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <exit>:
SYSCALL(exit)
 566:	b8 02 00 00 00       	mov    $0x2,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <wait>:
SYSCALL(wait)
 56e:	b8 03 00 00 00       	mov    $0x3,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <pipe>:
SYSCALL(pipe)
 576:	b8 04 00 00 00       	mov    $0x4,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <read>:
SYSCALL(read)
 57e:	b8 05 00 00 00       	mov    $0x5,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <write>:
SYSCALL(write)
 586:	b8 10 00 00 00       	mov    $0x10,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <close>:
SYSCALL(close)
 58e:	b8 15 00 00 00       	mov    $0x15,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <kill>:
SYSCALL(kill)
 596:	b8 06 00 00 00       	mov    $0x6,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <exec>:
SYSCALL(exec)
 59e:	b8 07 00 00 00       	mov    $0x7,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <open>:
SYSCALL(open)
 5a6:	b8 0f 00 00 00       	mov    $0xf,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <mknod>:
SYSCALL(mknod)
 5ae:	b8 11 00 00 00       	mov    $0x11,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <unlink>:
SYSCALL(unlink)
 5b6:	b8 12 00 00 00       	mov    $0x12,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <fstat>:
SYSCALL(fstat)
 5be:	b8 08 00 00 00       	mov    $0x8,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <link>:
SYSCALL(link)
 5c6:	b8 13 00 00 00       	mov    $0x13,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <mkdir>:
SYSCALL(mkdir)
 5ce:	b8 14 00 00 00       	mov    $0x14,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <chdir>:
SYSCALL(chdir)
 5d6:	b8 09 00 00 00       	mov    $0x9,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <dup>:
SYSCALL(dup)
 5de:	b8 0a 00 00 00       	mov    $0xa,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <getpid>:
SYSCALL(getpid)
 5e6:	b8 0b 00 00 00       	mov    $0xb,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <sbrk>:
SYSCALL(sbrk)
 5ee:	b8 0c 00 00 00       	mov    $0xc,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <sleep>:
SYSCALL(sleep)
 5f6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <uptime>:
SYSCALL(uptime)
 5fe:	b8 0e 00 00 00       	mov    $0xe,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <clone>:
SYSCALL(clone)
 606:	b8 16 00 00 00       	mov    $0x16,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <join>:
SYSCALL(join)
 60e:	b8 17 00 00 00       	mov    $0x17,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    
 616:	66 90                	xchg   %ax,%ax
 618:	66 90                	xchg   %ax,%ax
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	83 ec 3c             	sub    $0x3c,%esp
 629:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 62c:	89 d1                	mov    %edx,%ecx
{
 62e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 631:	85 d2                	test   %edx,%edx
 633:	0f 89 7f 00 00 00    	jns    6b8 <printint+0x98>
 639:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 63d:	74 79                	je     6b8 <printint+0x98>
    neg = 1;
 63f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 646:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 648:	31 db                	xor    %ebx,%ebx
 64a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 650:	89 c8                	mov    %ecx,%eax
 652:	31 d2                	xor    %edx,%edx
 654:	89 cf                	mov    %ecx,%edi
 656:	f7 75 c4             	divl   -0x3c(%ebp)
 659:	0f b6 92 3c 0b 00 00 	movzbl 0xb3c(%edx),%edx
 660:	89 45 c0             	mov    %eax,-0x40(%ebp)
 663:	89 d8                	mov    %ebx,%eax
 665:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 668:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 66b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 66e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 671:	76 dd                	jbe    650 <printint+0x30>
  if(neg)
 673:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 676:	85 c9                	test   %ecx,%ecx
 678:	74 0c                	je     686 <printint+0x66>
    buf[i++] = '-';
 67a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 67f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 681:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 686:	8b 7d b8             	mov    -0x48(%ebp),%edi
 689:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 68d:	eb 07                	jmp    696 <printint+0x76>
 68f:	90                   	nop
    putc(fd, buf[i]);
 690:	0f b6 13             	movzbl (%ebx),%edx
 693:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 696:	83 ec 04             	sub    $0x4,%esp
 699:	88 55 d7             	mov    %dl,-0x29(%ebp)
 69c:	6a 01                	push   $0x1
 69e:	56                   	push   %esi
 69f:	57                   	push   %edi
 6a0:	e8 e1 fe ff ff       	call   586 <write>
  while(--i >= 0)
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	39 de                	cmp    %ebx,%esi
 6aa:	75 e4                	jne    690 <printint+0x70>
}
 6ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6af:	5b                   	pop    %ebx
 6b0:	5e                   	pop    %esi
 6b1:	5f                   	pop    %edi
 6b2:	5d                   	pop    %ebp
 6b3:	c3                   	ret    
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6bf:	eb 87                	jmp    648 <printint+0x28>
 6c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cf:	90                   	nop

000006d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6df:	0f b6 13             	movzbl (%ebx),%edx
 6e2:	84 d2                	test   %dl,%dl
 6e4:	74 6a                	je     750 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6e6:	8d 45 10             	lea    0x10(%ebp),%eax
 6e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6f4:	eb 36                	jmp    72c <printf+0x5c>
 6f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
 700:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 703:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 708:	83 f8 25             	cmp    $0x25,%eax
 70b:	74 15                	je     722 <printf+0x52>
  write(fd, &c, 1);
 70d:	83 ec 04             	sub    $0x4,%esp
 710:	88 55 e7             	mov    %dl,-0x19(%ebp)
 713:	6a 01                	push   $0x1
 715:	57                   	push   %edi
 716:	56                   	push   %esi
 717:	e8 6a fe ff ff       	call   586 <write>
 71c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 71f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 722:	0f b6 13             	movzbl (%ebx),%edx
 725:	83 c3 01             	add    $0x1,%ebx
 728:	84 d2                	test   %dl,%dl
 72a:	74 24                	je     750 <printf+0x80>
    c = fmt[i] & 0xff;
 72c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 72f:	85 c9                	test   %ecx,%ecx
 731:	74 cd                	je     700 <printf+0x30>
      }
    } else if(state == '%'){
 733:	83 f9 25             	cmp    $0x25,%ecx
 736:	75 ea                	jne    722 <printf+0x52>
      if(c == 'd'){
 738:	83 f8 25             	cmp    $0x25,%eax
 73b:	0f 84 07 01 00 00    	je     848 <printf+0x178>
 741:	83 e8 63             	sub    $0x63,%eax
 744:	83 f8 15             	cmp    $0x15,%eax
 747:	77 17                	ja     760 <printf+0x90>
 749:	ff 24 85 e4 0a 00 00 	jmp    *0xae4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 750:	8d 65 f4             	lea    -0xc(%ebp),%esp
 753:	5b                   	pop    %ebx
 754:	5e                   	pop    %esi
 755:	5f                   	pop    %edi
 756:	5d                   	pop    %ebp
 757:	c3                   	ret    
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop
  write(fd, &c, 1);
 760:	83 ec 04             	sub    $0x4,%esp
 763:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 766:	6a 01                	push   $0x1
 768:	57                   	push   %edi
 769:	56                   	push   %esi
 76a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 76e:	e8 13 fe ff ff       	call   586 <write>
        putc(fd, c);
 773:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 777:	83 c4 0c             	add    $0xc,%esp
 77a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 77d:	6a 01                	push   $0x1
 77f:	57                   	push   %edi
 780:	56                   	push   %esi
 781:	e8 00 fe ff ff       	call   586 <write>
        putc(fd, c);
 786:	83 c4 10             	add    $0x10,%esp
      state = 0;
 789:	31 c9                	xor    %ecx,%ecx
 78b:	eb 95                	jmp    722 <printf+0x52>
 78d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 790:	83 ec 0c             	sub    $0xc,%esp
 793:	b9 10 00 00 00       	mov    $0x10,%ecx
 798:	6a 00                	push   $0x0
 79a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 79d:	8b 10                	mov    (%eax),%edx
 79f:	89 f0                	mov    %esi,%eax
 7a1:	e8 7a fe ff ff       	call   620 <printint>
        ap++;
 7a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ad:	31 c9                	xor    %ecx,%ecx
 7af:	e9 6e ff ff ff       	jmp    722 <printf+0x52>
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7bb:	8b 10                	mov    (%eax),%edx
        ap++;
 7bd:	83 c0 04             	add    $0x4,%eax
 7c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7c3:	85 d2                	test   %edx,%edx
 7c5:	0f 84 8d 00 00 00    	je     858 <printf+0x188>
        while(*s != 0){
 7cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7d0:	84 c0                	test   %al,%al
 7d2:	0f 84 4a ff ff ff    	je     722 <printf+0x52>
 7d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7db:	89 d3                	mov    %edx,%ebx
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7e3:	83 c3 01             	add    $0x1,%ebx
 7e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7e9:	6a 01                	push   $0x1
 7eb:	57                   	push   %edi
 7ec:	56                   	push   %esi
 7ed:	e8 94 fd ff ff       	call   586 <write>
        while(*s != 0){
 7f2:	0f b6 03             	movzbl (%ebx),%eax
 7f5:	83 c4 10             	add    $0x10,%esp
 7f8:	84 c0                	test   %al,%al
 7fa:	75 e4                	jne    7e0 <printf+0x110>
      state = 0;
 7fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7ff:	31 c9                	xor    %ecx,%ecx
 801:	e9 1c ff ff ff       	jmp    722 <printf+0x52>
 806:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 0a 00 00 00       	mov    $0xa,%ecx
 818:	6a 01                	push   $0x1
 81a:	e9 7b ff ff ff       	jmp    79a <printf+0xca>
 81f:	90                   	nop
        putc(fd, *ap);
 820:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 823:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 826:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 828:	6a 01                	push   $0x1
 82a:	57                   	push   %edi
 82b:	56                   	push   %esi
        putc(fd, *ap);
 82c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 82f:	e8 52 fd ff ff       	call   586 <write>
        ap++;
 834:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 838:	83 c4 10             	add    $0x10,%esp
      state = 0;
 83b:	31 c9                	xor    %ecx,%ecx
 83d:	e9 e0 fe ff ff       	jmp    722 <printf+0x52>
 842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 848:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 84b:	83 ec 04             	sub    $0x4,%esp
 84e:	e9 2a ff ff ff       	jmp    77d <printf+0xad>
 853:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 857:	90                   	nop
          s = "(null)";
 858:	ba db 0a 00 00       	mov    $0xadb,%edx
        while(*s != 0){
 85d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 860:	b8 28 00 00 00       	mov    $0x28,%eax
 865:	89 d3                	mov    %edx,%ebx
 867:	e9 74 ff ff ff       	jmp    7e0 <printf+0x110>
 86c:	66 90                	xchg   %ax,%ax
 86e:	66 90                	xchg   %ax,%ax

00000870 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 870:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 871:	a1 c0 0e 00 00       	mov    0xec0,%eax
{
 876:	89 e5                	mov    %esp,%ebp
 878:	57                   	push   %edi
 879:	56                   	push   %esi
 87a:	53                   	push   %ebx
 87b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 87e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 888:	89 c2                	mov    %eax,%edx
 88a:	8b 00                	mov    (%eax),%eax
 88c:	39 ca                	cmp    %ecx,%edx
 88e:	73 30                	jae    8c0 <free+0x50>
 890:	39 c1                	cmp    %eax,%ecx
 892:	72 04                	jb     898 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 894:	39 c2                	cmp    %eax,%edx
 896:	72 f0                	jb     888 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 898:	8b 73 fc             	mov    -0x4(%ebx),%esi
 89b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 89e:	39 f8                	cmp    %edi,%eax
 8a0:	74 30                	je     8d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8a5:	8b 42 04             	mov    0x4(%edx),%eax
 8a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8ab:	39 f1                	cmp    %esi,%ecx
 8ad:	74 3a                	je     8e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8b1:	5b                   	pop    %ebx
  freep = p;
 8b2:	89 15 c0 0e 00 00    	mov    %edx,0xec0
}
 8b8:	5e                   	pop    %esi
 8b9:	5f                   	pop    %edi
 8ba:	5d                   	pop    %ebp
 8bb:	c3                   	ret    
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c0:	39 c2                	cmp    %eax,%edx
 8c2:	72 c4                	jb     888 <free+0x18>
 8c4:	39 c1                	cmp    %eax,%ecx
 8c6:	73 c0                	jae    888 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ce:	39 f8                	cmp    %edi,%eax
 8d0:	75 d0                	jne    8a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8d2:	03 70 04             	add    0x4(%eax),%esi
 8d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8d8:	8b 02                	mov    (%edx),%eax
 8da:	8b 00                	mov    (%eax),%eax
 8dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8df:	8b 42 04             	mov    0x4(%edx),%eax
 8e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8e5:	39 f1                	cmp    %esi,%ecx
 8e7:	75 c6                	jne    8af <free+0x3f>
    p->s.size += bp->s.size;
 8e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8ec:	89 15 c0 0e 00 00    	mov    %edx,0xec0
    p->s.size += bp->s.size;
 8f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8f8:	89 0a                	mov    %ecx,(%edx)
}
 8fa:	5b                   	pop    %ebx
 8fb:	5e                   	pop    %esi
 8fc:	5f                   	pop    %edi
 8fd:	5d                   	pop    %ebp
 8fe:	c3                   	ret    
 8ff:	90                   	nop

00000900 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 909:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 90c:	8b 3d c0 0e 00 00    	mov    0xec0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 912:	8d 70 07             	lea    0x7(%eax),%esi
 915:	c1 ee 03             	shr    $0x3,%esi
 918:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 91b:	85 ff                	test   %edi,%edi
 91d:	0f 84 9d 00 00 00    	je     9c0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 923:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 925:	8b 4a 04             	mov    0x4(%edx),%ecx
 928:	39 f1                	cmp    %esi,%ecx
 92a:	73 6a                	jae    996 <malloc+0x96>
 92c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 931:	39 de                	cmp    %ebx,%esi
 933:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 936:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 93d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 940:	eb 17                	jmp    959 <malloc+0x59>
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 948:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 94a:	8b 48 04             	mov    0x4(%eax),%ecx
 94d:	39 f1                	cmp    %esi,%ecx
 94f:	73 4f                	jae    9a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 951:	8b 3d c0 0e 00 00    	mov    0xec0,%edi
 957:	89 c2                	mov    %eax,%edx
 959:	39 d7                	cmp    %edx,%edi
 95b:	75 eb                	jne    948 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 95d:	83 ec 0c             	sub    $0xc,%esp
 960:	ff 75 e4             	push   -0x1c(%ebp)
 963:	e8 86 fc ff ff       	call   5ee <sbrk>
  if(p == (char*)-1)
 968:	83 c4 10             	add    $0x10,%esp
 96b:	83 f8 ff             	cmp    $0xffffffff,%eax
 96e:	74 1c                	je     98c <malloc+0x8c>
  hp->s.size = nu;
 970:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 973:	83 ec 0c             	sub    $0xc,%esp
 976:	83 c0 08             	add    $0x8,%eax
 979:	50                   	push   %eax
 97a:	e8 f1 fe ff ff       	call   870 <free>
  return freep;
 97f:	8b 15 c0 0e 00 00    	mov    0xec0,%edx
      if((p = morecore(nunits)) == 0)
 985:	83 c4 10             	add    $0x10,%esp
 988:	85 d2                	test   %edx,%edx
 98a:	75 bc                	jne    948 <malloc+0x48>
        return 0;
  }
}
 98c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 98f:	31 c0                	xor    %eax,%eax
}
 991:	5b                   	pop    %ebx
 992:	5e                   	pop    %esi
 993:	5f                   	pop    %edi
 994:	5d                   	pop    %ebp
 995:	c3                   	ret    
    if(p->s.size >= nunits){
 996:	89 d0                	mov    %edx,%eax
 998:	89 fa                	mov    %edi,%edx
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9a0:	39 ce                	cmp    %ecx,%esi
 9a2:	74 4c                	je     9f0 <malloc+0xf0>
        p->s.size -= nunits;
 9a4:	29 f1                	sub    %esi,%ecx
 9a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9af:	89 15 c0 0e 00 00    	mov    %edx,0xec0
}
 9b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9b8:	83 c0 08             	add    $0x8,%eax
}
 9bb:	5b                   	pop    %ebx
 9bc:	5e                   	pop    %esi
 9bd:	5f                   	pop    %edi
 9be:	5d                   	pop    %ebp
 9bf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9c0:	c7 05 c0 0e 00 00 c4 	movl   $0xec4,0xec0
 9c7:	0e 00 00 
    base.s.size = 0;
 9ca:	bf c4 0e 00 00       	mov    $0xec4,%edi
    base.s.ptr = freep = prevp = &base;
 9cf:	c7 05 c4 0e 00 00 c4 	movl   $0xec4,0xec4
 9d6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9db:	c7 05 c8 0e 00 00 00 	movl   $0x0,0xec8
 9e2:	00 00 00 
    if(p->s.size >= nunits){
 9e5:	e9 42 ff ff ff       	jmp    92c <malloc+0x2c>
 9ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9f0:	8b 08                	mov    (%eax),%ecx
 9f2:	89 0a                	mov    %ecx,(%edx)
 9f4:	eb b9                	jmp    9af <malloc+0xaf>
