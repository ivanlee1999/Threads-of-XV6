
_test_3:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
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
  13:	e8 61 05 00 00       	call   579 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 0c 0e 00 00       	mov    %eax,0xe0c
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 66 08 00 00       	call   890 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 1f 01 00 00    	je     154 <main+0x154>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  37:	89 c6                	mov    %eax,%esi
  39:	25 ff 0f 00 00       	and    $0xfff,%eax
  3e:	75 60                	jne    a0 <main+0xa0>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int fd = open("tmp", O_WRONLY|O_CREATE);
  40:	83 ec 08             	sub    $0x8,%esp
  43:	68 01 02 00 00       	push   $0x201
  48:	68 ec 09 00 00       	push   $0x9ec
  4d:	e8 e7 04 00 00       	call   539 <open>
   assert(fd == 3);
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 03             	cmp    $0x3,%eax
  58:	74 52                	je     ac <main+0xac>
  5a:	6a 24                	push   $0x24
  5c:	68 8f 09 00 00       	push   $0x98f
  61:	68 98 09 00 00       	push   $0x998
  66:	6a 01                	push   $0x1
  68:	e8 f3 05 00 00       	call   660 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 f0 09 00 00       	push   $0x9f0
  75:	68 bc 09 00 00       	push   $0x9bc
  7a:	6a 01                	push   $0x1
  7c:	e8 df 05 00 00       	call   660 <printf>
  81:	59                   	pop    %ecx
  82:	5b                   	pop    %ebx
  83:	68 d0 09 00 00       	push   $0x9d0
  88:	6a 01                	push   $0x1
  8a:	e8 d1 05 00 00       	call   660 <printf>
  8f:	5e                   	pop    %esi
  90:	ff 35 0c 0e 00 00    	push   0xe0c
  96:	e8 8e 04 00 00       	call   529 <kill>
  9b:	e8 59 04 00 00       	call   4f9 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  a0:	89 da                	mov    %ebx,%edx
  a2:	29 c2                	sub    %eax,%edx
  a4:	8d b2 00 10 00 00    	lea    0x1000(%edx),%esi
  aa:	eb 94                	jmp    40 <main+0x40>
   int clone_pid = clone(worker, 0, 0, stack);
  ac:	56                   	push   %esi
  ad:	6a 00                	push   $0x0
  af:	6a 00                	push   $0x0
  b1:	68 b0 01 00 00       	push   $0x1b0
  b6:	e8 de 04 00 00       	call   599 <clone>
   assert(clone_pid > 0);
  bb:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  be:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  c0:	85 c0                	test   %eax,%eax
  c2:	0f 8e ac 00 00 00    	jle    174 <main+0x174>
  c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cf:	90                   	nop
   while(!newfd);
  d0:	a1 08 0e 00 00       	mov    0xe08,%eax
  d5:	85 c0                	test   %eax,%eax
  d7:	74 f7                	je     d0 <main+0xd0>
   assert(write(newfd, "goodbye\n", 8) == -1);
  d9:	a1 08 0e 00 00       	mov    0xe08,%eax
  de:	52                   	push   %edx
  df:	6a 08                	push   $0x8
  e1:	68 06 0a 00 00       	push   $0xa06
  e6:	50                   	push   %eax
  e7:	e8 2d 04 00 00       	call   519 <write>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	83 c0 01             	add    $0x1,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 28                	push   $0x28
  f6:	68 8f 09 00 00       	push   $0x98f
  fb:	68 98 09 00 00       	push   $0x998
 100:	6a 01                	push   $0x1
 102:	e8 59 05 00 00       	call   660 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 34 0a 00 00       	push   $0xa34
 10f:	e9 61 ff ff ff       	jmp    75 <main+0x75>
   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 0f 0a 00 00       	push   $0xa0f
 11b:	6a 01                	push   $0x1
 11d:	e8 3e 05 00 00       	call   660 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
 122:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 125:	89 04 24             	mov    %eax,(%esp)
 128:	e8 74 04 00 00       	call   5a1 <join>
   assert(join_pid == clone_pid);
 12d:	83 c4 10             	add    $0x10,%esp
 130:	39 c6                	cmp    %eax,%esi
 132:	74 60                	je     194 <main+0x194>
 134:	6a 2d                	push   $0x2d
 136:	68 8f 09 00 00       	push   $0x98f
 13b:	68 98 09 00 00       	push   $0x998
 140:	6a 01                	push   $0x1
 142:	e8 19 05 00 00       	call   660 <printf>
 147:	83 c4 0c             	add    $0xc,%esp
 14a:	68 1c 0a 00 00       	push   $0xa1c
 14f:	e9 21 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 154:	6a 1d                	push   $0x1d
 156:	68 8f 09 00 00       	push   $0x98f
 15b:	68 98 09 00 00       	push   $0x998
 160:	6a 01                	push   $0x1
 162:	e8 f9 04 00 00       	call   660 <printf>
 167:	83 c4 0c             	add    $0xc,%esp
 16a:	68 e2 09 00 00       	push   $0x9e2
 16f:	e9 01 ff ff ff       	jmp    75 <main+0x75>
   assert(clone_pid > 0);
 174:	6a 26                	push   $0x26
 176:	68 8f 09 00 00       	push   $0x98f
 17b:	68 98 09 00 00       	push   $0x998
 180:	6a 01                	push   $0x1
 182:	e8 d9 04 00 00       	call   660 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 f8 09 00 00       	push   $0x9f8
 18f:	e9 e1 fe ff ff       	jmp    75 <main+0x75>
   free(p);
 194:	83 ec 0c             	sub    $0xc,%esp
 197:	53                   	push   %ebx
 198:	e8 63 06 00 00       	call   800 <free>
   exit();
 19d:	e8 57 03 00 00       	call   4f9 <exit>
 1a2:	66 90                	xchg   %ax,%ax
 1a4:	66 90                	xchg   %ax,%ax
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	66 90                	xchg   %ax,%ax
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	66 90                	xchg   %ax,%ax
 1ae:	66 90                	xchg   %ax,%ax

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 0c             	sub    $0xc,%esp
   assert(write(3, "hello\n", 6) == 6);
 1b6:	6a 06                	push   $0x6
 1b8:	68 88 09 00 00       	push   $0x988
 1bd:	6a 03                	push   $0x3
 1bf:	e8 55 03 00 00       	call   519 <write>
 1c4:	83 c4 10             	add    $0x10,%esp
 1c7:	83 f8 06             	cmp    $0x6,%eax
 1ca:	74 46                	je     212 <worker+0x62>
 1cc:	6a 34                	push   $0x34
 1ce:	68 8f 09 00 00       	push   $0x98f
 1d3:	68 98 09 00 00       	push   $0x998
 1d8:	6a 01                	push   $0x1
 1da:	e8 81 04 00 00       	call   660 <printf>
 1df:	83 c4 0c             	add    $0xc,%esp
 1e2:	68 a0 09 00 00       	push   $0x9a0
 1e7:	68 bc 09 00 00       	push   $0x9bc
 1ec:	6a 01                	push   $0x1
 1ee:	e8 6d 04 00 00       	call   660 <printf>
 1f3:	5a                   	pop    %edx
 1f4:	59                   	pop    %ecx
 1f5:	68 d0 09 00 00       	push   $0x9d0
 1fa:	6a 01                	push   $0x1
 1fc:	e8 5f 04 00 00       	call   660 <printf>
 201:	58                   	pop    %eax
 202:	ff 35 0c 0e 00 00    	push   0xe0c
 208:	e8 1c 03 00 00       	call   529 <kill>
 20d:	e8 e7 02 00 00       	call   4f9 <exit>
   xchg(&newfd, open("tmp2", O_WRONLY|O_CREATE));
 212:	50                   	push   %eax
 213:	50                   	push   %eax
 214:	68 01 02 00 00       	push   $0x201
 219:	68 dd 09 00 00       	push   $0x9dd
 21e:	e8 16 03 00 00       	call   539 <open>
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 223:	f0 87 05 08 0e 00 00 	lock xchg %eax,0xe08
   exit();
 22a:	e8 ca 02 00 00       	call   4f9 <exit>
 22f:	90                   	nop

00000230 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 230:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 231:	31 c0                	xor    %eax,%eax
{
 233:	89 e5                	mov    %esp,%ebp
 235:	53                   	push   %ebx
 236:	8b 4d 08             	mov    0x8(%ebp),%ecx
 239:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 240:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 244:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 247:	83 c0 01             	add    $0x1,%eax
 24a:	84 d2                	test   %dl,%dl
 24c:	75 f2                	jne    240 <strcpy+0x10>
    ;
  return os;
}
 24e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 251:	89 c8                	mov    %ecx,%eax
 253:	c9                   	leave  
 254:	c3                   	ret    
 255:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000260 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 55 08             	mov    0x8(%ebp),%edx
 267:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 26a:	0f b6 02             	movzbl (%edx),%eax
 26d:	84 c0                	test   %al,%al
 26f:	75 17                	jne    288 <strcmp+0x28>
 271:	eb 3a                	jmp    2ad <strcmp+0x4d>
 273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 277:	90                   	nop
 278:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 27c:	83 c2 01             	add    $0x1,%edx
 27f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 282:	84 c0                	test   %al,%al
 284:	74 1a                	je     2a0 <strcmp+0x40>
    p++, q++;
 286:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 288:	0f b6 19             	movzbl (%ecx),%ebx
 28b:	38 c3                	cmp    %al,%bl
 28d:	74 e9                	je     278 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 28f:	29 d8                	sub    %ebx,%eax
}
 291:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 294:	c9                   	leave  
 295:	c3                   	ret    
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2a4:	31 c0                	xor    %eax,%eax
 2a6:	29 d8                	sub    %ebx,%eax
}
 2a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2ab:	c9                   	leave  
 2ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ad:	0f b6 19             	movzbl (%ecx),%ebx
 2b0:	31 c0                	xor    %eax,%eax
 2b2:	eb db                	jmp    28f <strcmp+0x2f>
 2b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <strlen>:

uint
strlen(const char *s)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2c6:	80 3a 00             	cmpb   $0x0,(%edx)
 2c9:	74 15                	je     2e0 <strlen+0x20>
 2cb:	31 c0                	xor    %eax,%eax
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
 2d0:	83 c0 01             	add    $0x1,%eax
 2d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2d7:	89 c1                	mov    %eax,%ecx
 2d9:	75 f5                	jne    2d0 <strlen+0x10>
    ;
  return n;
}
 2db:	89 c8                	mov    %ecx,%eax
 2dd:	5d                   	pop    %ebp
 2de:	c3                   	ret    
 2df:	90                   	nop
  for(n = 0; s[n]; n++)
 2e0:	31 c9                	xor    %ecx,%ecx
}
 2e2:	5d                   	pop    %ebp
 2e3:	89 c8                	mov    %ecx,%eax
 2e5:	c3                   	ret    
 2e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 2f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2fd:	89 d7                	mov    %edx,%edi
 2ff:	fc                   	cld    
 300:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 302:	8b 7d fc             	mov    -0x4(%ebp),%edi
 305:	89 d0                	mov    %edx,%eax
 307:	c9                   	leave  
 308:	c3                   	ret    
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000310 <strchr>:

char*
strchr(const char *s, char c)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 31a:	0f b6 10             	movzbl (%eax),%edx
 31d:	84 d2                	test   %dl,%dl
 31f:	75 12                	jne    333 <strchr+0x23>
 321:	eb 1d                	jmp    340 <strchr+0x30>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 32c:	83 c0 01             	add    $0x1,%eax
 32f:	84 d2                	test   %dl,%dl
 331:	74 0d                	je     340 <strchr+0x30>
    if(*s == c)
 333:	38 d1                	cmp    %dl,%cl
 335:	75 f1                	jne    328 <strchr+0x18>
      return (char*)s;
  return 0;
}
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 340:	31 c0                	xor    %eax,%eax
}
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <gets>:

char*
gets(char *buf, int max)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 355:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 358:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 359:	31 db                	xor    %ebx,%ebx
{
 35b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 35e:	eb 27                	jmp    387 <gets+0x37>
    cc = read(0, &c, 1);
 360:	83 ec 04             	sub    $0x4,%esp
 363:	6a 01                	push   $0x1
 365:	57                   	push   %edi
 366:	6a 00                	push   $0x0
 368:	e8 a4 01 00 00       	call   511 <read>
    if(cc < 1)
 36d:	83 c4 10             	add    $0x10,%esp
 370:	85 c0                	test   %eax,%eax
 372:	7e 1d                	jle    391 <gets+0x41>
      break;
    buf[i++] = c;
 374:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 378:	8b 55 08             	mov    0x8(%ebp),%edx
 37b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 37f:	3c 0a                	cmp    $0xa,%al
 381:	74 1d                	je     3a0 <gets+0x50>
 383:	3c 0d                	cmp    $0xd,%al
 385:	74 19                	je     3a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 387:	89 de                	mov    %ebx,%esi
 389:	83 c3 01             	add    $0x1,%ebx
 38c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 38f:	7c cf                	jl     360 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 391:	8b 45 08             	mov    0x8(%ebp),%eax
 394:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 398:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39b:	5b                   	pop    %ebx
 39c:	5e                   	pop    %esi
 39d:	5f                   	pop    %edi
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    
  buf[i] = '\0';
 3a0:	8b 45 08             	mov    0x8(%ebp),%eax
 3a3:	89 de                	mov    %ebx,%esi
 3a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ac:	5b                   	pop    %ebx
 3ad:	5e                   	pop    %esi
 3ae:	5f                   	pop    %edi
 3af:	5d                   	pop    %ebp
 3b0:	c3                   	ret    
 3b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop

000003c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	6a 00                	push   $0x0
 3ca:	ff 75 08             	push   0x8(%ebp)
 3cd:	e8 67 01 00 00       	call   539 <open>
  if(fd < 0)
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	85 c0                	test   %eax,%eax
 3d7:	78 27                	js     400 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3d9:	83 ec 08             	sub    $0x8,%esp
 3dc:	ff 75 0c             	push   0xc(%ebp)
 3df:	89 c3                	mov    %eax,%ebx
 3e1:	50                   	push   %eax
 3e2:	e8 6a 01 00 00       	call   551 <fstat>
  close(fd);
 3e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ea:	89 c6                	mov    %eax,%esi
  close(fd);
 3ec:	e8 30 01 00 00       	call   521 <close>
  return r;
 3f1:	83 c4 10             	add    $0x10,%esp
}
 3f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3f7:	89 f0                	mov    %esi,%eax
 3f9:	5b                   	pop    %ebx
 3fa:	5e                   	pop    %esi
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 400:	be ff ff ff ff       	mov    $0xffffffff,%esi
 405:	eb ed                	jmp    3f4 <stat+0x34>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax

00000410 <atoi>:

int
atoi(const char *s)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 417:	0f be 02             	movsbl (%edx),%eax
 41a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 41d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 420:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 425:	77 1e                	ja     445 <atoi+0x35>
 427:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 430:	83 c2 01             	add    $0x1,%edx
 433:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 436:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 43a:	0f be 02             	movsbl (%edx),%eax
 43d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 440:	80 fb 09             	cmp    $0x9,%bl
 443:	76 eb                	jbe    430 <atoi+0x20>
  return n;
}
 445:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 448:	89 c8                	mov    %ecx,%eax
 44a:	c9                   	leave  
 44b:	c3                   	ret    
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 45 10             	mov    0x10(%ebp),%eax
 457:	8b 55 08             	mov    0x8(%ebp),%edx
 45a:	56                   	push   %esi
 45b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 45e:	85 c0                	test   %eax,%eax
 460:	7e 13                	jle    475 <memmove+0x25>
 462:	01 d0                	add    %edx,%eax
  dst = vdst;
 464:	89 d7                	mov    %edx,%edi
 466:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 470:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 471:	39 f8                	cmp    %edi,%eax
 473:	75 fb                	jne    470 <memmove+0x20>
  return vdst;
}
 475:	5e                   	pop    %esi
 476:	89 d0                	mov    %edx,%eax
 478:	5f                   	pop    %edi
 479:	5d                   	pop    %ebp
 47a:	c3                   	ret    
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 486:	6a 04                	push   $0x4
 488:	e8 03 04 00 00       	call   890 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 48d:	50                   	push   %eax
 48e:	ff 75 10             	push   0x10(%ebp)
 491:	ff 75 0c             	push   0xc(%ebp)
 494:	ff 75 08             	push   0x8(%ebp)
 497:	e8 fd 00 00 00       	call   599 <clone>
}
 49c:	c9                   	leave  
 49d:	c3                   	ret    
 49e:	66 90                	xchg   %ax,%ax

000004a0 <thread_join>:

int
thread_join(){
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	56                   	push   %esi
 4a4:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 4a5:	83 ec 0c             	sub    $0xc,%esp
 4a8:	6a 04                	push   $0x4
 4aa:	e8 e1 03 00 00       	call   890 <malloc>
  int rc = join(stack);
 4af:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 4b2:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 4b4:	e8 e8 00 00 00       	call   5a1 <join>
 4b9:	89 c6                	mov    %eax,%esi
  free(*stack);
 4bb:	58                   	pop    %eax
 4bc:	ff 33                	push   (%ebx)
 4be:	e8 3d 03 00 00       	call   800 <free>
  return rc;
}
 4c3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c6:	89 f0                	mov    %esi,%eax
 4c8:	5b                   	pop    %ebx
 4c9:	5e                   	pop    %esi
 4ca:	5d                   	pop    %ebp
 4cb:	c3                   	ret    
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 4d0:	c3                   	ret    
 4d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <lock_release>:
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <lock_init>:
 4f0:	c3                   	ret    

000004f1 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4f1:	b8 01 00 00 00       	mov    $0x1,%eax
 4f6:	cd 40                	int    $0x40
 4f8:	c3                   	ret    

000004f9 <exit>:
SYSCALL(exit)
 4f9:	b8 02 00 00 00       	mov    $0x2,%eax
 4fe:	cd 40                	int    $0x40
 500:	c3                   	ret    

00000501 <wait>:
SYSCALL(wait)
 501:	b8 03 00 00 00       	mov    $0x3,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    

00000509 <pipe>:
SYSCALL(pipe)
 509:	b8 04 00 00 00       	mov    $0x4,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    

00000511 <read>:
SYSCALL(read)
 511:	b8 05 00 00 00       	mov    $0x5,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    

00000519 <write>:
SYSCALL(write)
 519:	b8 10 00 00 00       	mov    $0x10,%eax
 51e:	cd 40                	int    $0x40
 520:	c3                   	ret    

00000521 <close>:
SYSCALL(close)
 521:	b8 15 00 00 00       	mov    $0x15,%eax
 526:	cd 40                	int    $0x40
 528:	c3                   	ret    

00000529 <kill>:
SYSCALL(kill)
 529:	b8 06 00 00 00       	mov    $0x6,%eax
 52e:	cd 40                	int    $0x40
 530:	c3                   	ret    

00000531 <exec>:
SYSCALL(exec)
 531:	b8 07 00 00 00       	mov    $0x7,%eax
 536:	cd 40                	int    $0x40
 538:	c3                   	ret    

00000539 <open>:
SYSCALL(open)
 539:	b8 0f 00 00 00       	mov    $0xf,%eax
 53e:	cd 40                	int    $0x40
 540:	c3                   	ret    

00000541 <mknod>:
SYSCALL(mknod)
 541:	b8 11 00 00 00       	mov    $0x11,%eax
 546:	cd 40                	int    $0x40
 548:	c3                   	ret    

00000549 <unlink>:
SYSCALL(unlink)
 549:	b8 12 00 00 00       	mov    $0x12,%eax
 54e:	cd 40                	int    $0x40
 550:	c3                   	ret    

00000551 <fstat>:
SYSCALL(fstat)
 551:	b8 08 00 00 00       	mov    $0x8,%eax
 556:	cd 40                	int    $0x40
 558:	c3                   	ret    

00000559 <link>:
SYSCALL(link)
 559:	b8 13 00 00 00       	mov    $0x13,%eax
 55e:	cd 40                	int    $0x40
 560:	c3                   	ret    

00000561 <mkdir>:
SYSCALL(mkdir)
 561:	b8 14 00 00 00       	mov    $0x14,%eax
 566:	cd 40                	int    $0x40
 568:	c3                   	ret    

00000569 <chdir>:
SYSCALL(chdir)
 569:	b8 09 00 00 00       	mov    $0x9,%eax
 56e:	cd 40                	int    $0x40
 570:	c3                   	ret    

00000571 <dup>:
SYSCALL(dup)
 571:	b8 0a 00 00 00       	mov    $0xa,%eax
 576:	cd 40                	int    $0x40
 578:	c3                   	ret    

00000579 <getpid>:
SYSCALL(getpid)
 579:	b8 0b 00 00 00       	mov    $0xb,%eax
 57e:	cd 40                	int    $0x40
 580:	c3                   	ret    

00000581 <sbrk>:
SYSCALL(sbrk)
 581:	b8 0c 00 00 00       	mov    $0xc,%eax
 586:	cd 40                	int    $0x40
 588:	c3                   	ret    

00000589 <sleep>:
SYSCALL(sleep)
 589:	b8 0d 00 00 00       	mov    $0xd,%eax
 58e:	cd 40                	int    $0x40
 590:	c3                   	ret    

00000591 <uptime>:
SYSCALL(uptime)
 591:	b8 0e 00 00 00       	mov    $0xe,%eax
 596:	cd 40                	int    $0x40
 598:	c3                   	ret    

00000599 <clone>:
SYSCALL(clone)
 599:	b8 16 00 00 00       	mov    $0x16,%eax
 59e:	cd 40                	int    $0x40
 5a0:	c3                   	ret    

000005a1 <join>:
SYSCALL(join)
 5a1:	b8 17 00 00 00       	mov    $0x17,%eax
 5a6:	cd 40                	int    $0x40
 5a8:	c3                   	ret    
 5a9:	66 90                	xchg   %ax,%ax
 5ab:	66 90                	xchg   %ax,%ax
 5ad:	66 90                	xchg   %ax,%ax
 5af:	90                   	nop

000005b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 3c             	sub    $0x3c,%esp
 5b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5bc:	89 d1                	mov    %edx,%ecx
{
 5be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5c1:	85 d2                	test   %edx,%edx
 5c3:	0f 89 7f 00 00 00    	jns    648 <printint+0x98>
 5c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5cd:	74 79                	je     648 <printint+0x98>
    neg = 1;
 5cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5d8:	31 db                	xor    %ebx,%ebx
 5da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5e0:	89 c8                	mov    %ecx,%eax
 5e2:	31 d2                	xor    %edx,%edx
 5e4:	89 cf                	mov    %ecx,%edi
 5e6:	f7 75 c4             	divl   -0x3c(%ebp)
 5e9:	0f b6 92 b8 0a 00 00 	movzbl 0xab8(%edx),%edx
 5f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5f3:	89 d8                	mov    %ebx,%eax
 5f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 601:	76 dd                	jbe    5e0 <printint+0x30>
  if(neg)
 603:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 606:	85 c9                	test   %ecx,%ecx
 608:	74 0c                	je     616 <printint+0x66>
    buf[i++] = '-';
 60a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 60f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 611:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 616:	8b 7d b8             	mov    -0x48(%ebp),%edi
 619:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 61d:	eb 07                	jmp    626 <printint+0x76>
 61f:	90                   	nop
    putc(fd, buf[i]);
 620:	0f b6 13             	movzbl (%ebx),%edx
 623:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 626:	83 ec 04             	sub    $0x4,%esp
 629:	88 55 d7             	mov    %dl,-0x29(%ebp)
 62c:	6a 01                	push   $0x1
 62e:	56                   	push   %esi
 62f:	57                   	push   %edi
 630:	e8 e4 fe ff ff       	call   519 <write>
  while(--i >= 0)
 635:	83 c4 10             	add    $0x10,%esp
 638:	39 de                	cmp    %ebx,%esi
 63a:	75 e4                	jne    620 <printint+0x70>
}
 63c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63f:	5b                   	pop    %ebx
 640:	5e                   	pop    %esi
 641:	5f                   	pop    %edi
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 648:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 64f:	eb 87                	jmp    5d8 <printint+0x28>
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 66c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 66f:	0f b6 13             	movzbl (%ebx),%edx
 672:	84 d2                	test   %dl,%dl
 674:	74 6a                	je     6e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 676:	8d 45 10             	lea    0x10(%ebp),%eax
 679:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 67c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 67f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 681:	89 45 d0             	mov    %eax,-0x30(%ebp)
 684:	eb 36                	jmp    6bc <printf+0x5c>
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
 690:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 693:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	74 15                	je     6b2 <printf+0x52>
  write(fd, &c, 1);
 69d:	83 ec 04             	sub    $0x4,%esp
 6a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6a3:	6a 01                	push   $0x1
 6a5:	57                   	push   %edi
 6a6:	56                   	push   %esi
 6a7:	e8 6d fe ff ff       	call   519 <write>
 6ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6b2:	0f b6 13             	movzbl (%ebx),%edx
 6b5:	83 c3 01             	add    $0x1,%ebx
 6b8:	84 d2                	test   %dl,%dl
 6ba:	74 24                	je     6e0 <printf+0x80>
    c = fmt[i] & 0xff;
 6bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6bf:	85 c9                	test   %ecx,%ecx
 6c1:	74 cd                	je     690 <printf+0x30>
      }
    } else if(state == '%'){
 6c3:	83 f9 25             	cmp    $0x25,%ecx
 6c6:	75 ea                	jne    6b2 <printf+0x52>
      if(c == 'd'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	0f 84 07 01 00 00    	je     7d8 <printf+0x178>
 6d1:	83 e8 63             	sub    $0x63,%eax
 6d4:	83 f8 15             	cmp    $0x15,%eax
 6d7:	77 17                	ja     6f0 <printf+0x90>
 6d9:	ff 24 85 60 0a 00 00 	jmp    *0xa60(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e3:	5b                   	pop    %ebx
 6e4:	5e                   	pop    %esi
 6e5:	5f                   	pop    %edi
 6e6:	5d                   	pop    %ebp
 6e7:	c3                   	ret    
 6e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ef:	90                   	nop
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
 6f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6f6:	6a 01                	push   $0x1
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fe:	e8 16 fe ff ff       	call   519 <write>
        putc(fd, c);
 703:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 707:	83 c4 0c             	add    $0xc,%esp
 70a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 70d:	6a 01                	push   $0x1
 70f:	57                   	push   %edi
 710:	56                   	push   %esi
 711:	e8 03 fe ff ff       	call   519 <write>
        putc(fd, c);
 716:	83 c4 10             	add    $0x10,%esp
      state = 0;
 719:	31 c9                	xor    %ecx,%ecx
 71b:	eb 95                	jmp    6b2 <printf+0x52>
 71d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 720:	83 ec 0c             	sub    $0xc,%esp
 723:	b9 10 00 00 00       	mov    $0x10,%ecx
 728:	6a 00                	push   $0x0
 72a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 72d:	8b 10                	mov    (%eax),%edx
 72f:	89 f0                	mov    %esi,%eax
 731:	e8 7a fe ff ff       	call   5b0 <printint>
        ap++;
 736:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 73a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73d:	31 c9                	xor    %ecx,%ecx
 73f:	e9 6e ff ff ff       	jmp    6b2 <printf+0x52>
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 748:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74b:	8b 10                	mov    (%eax),%edx
        ap++;
 74d:	83 c0 04             	add    $0x4,%eax
 750:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 753:	85 d2                	test   %edx,%edx
 755:	0f 84 8d 00 00 00    	je     7e8 <printf+0x188>
        while(*s != 0){
 75b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 75e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 760:	84 c0                	test   %al,%al
 762:	0f 84 4a ff ff ff    	je     6b2 <printf+0x52>
 768:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 76b:	89 d3                	mov    %edx,%ebx
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 770:	83 ec 04             	sub    $0x4,%esp
          s++;
 773:	83 c3 01             	add    $0x1,%ebx
 776:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 779:	6a 01                	push   $0x1
 77b:	57                   	push   %edi
 77c:	56                   	push   %esi
 77d:	e8 97 fd ff ff       	call   519 <write>
        while(*s != 0){
 782:	0f b6 03             	movzbl (%ebx),%eax
 785:	83 c4 10             	add    $0x10,%esp
 788:	84 c0                	test   %al,%al
 78a:	75 e4                	jne    770 <printf+0x110>
      state = 0;
 78c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 78f:	31 c9                	xor    %ecx,%ecx
 791:	e9 1c ff ff ff       	jmp    6b2 <printf+0x52>
 796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7a8:	6a 01                	push   $0x1
 7aa:	e9 7b ff ff ff       	jmp    72a <printf+0xca>
 7af:	90                   	nop
        putc(fd, *ap);
 7b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7b8:	6a 01                	push   $0x1
 7ba:	57                   	push   %edi
 7bb:	56                   	push   %esi
        putc(fd, *ap);
 7bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7bf:	e8 55 fd ff ff       	call   519 <write>
        ap++;
 7c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7cb:	31 c9                	xor    %ecx,%ecx
 7cd:	e9 e0 fe ff ff       	jmp    6b2 <printf+0x52>
 7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7db:	83 ec 04             	sub    $0x4,%esp
 7de:	e9 2a ff ff ff       	jmp    70d <printf+0xad>
 7e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7e7:	90                   	nop
          s = "(null)";
 7e8:	ba 57 0a 00 00       	mov    $0xa57,%edx
        while(*s != 0){
 7ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7f0:	b8 28 00 00 00       	mov    $0x28,%eax
 7f5:	89 d3                	mov    %edx,%ebx
 7f7:	e9 74 ff ff ff       	jmp    770 <printf+0x110>
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 800:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	a1 10 0e 00 00       	mov    0xe10,%eax
{
 806:	89 e5                	mov    %esp,%ebp
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	53                   	push   %ebx
 80b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 80e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 818:	89 c2                	mov    %eax,%edx
 81a:	8b 00                	mov    (%eax),%eax
 81c:	39 ca                	cmp    %ecx,%edx
 81e:	73 30                	jae    850 <free+0x50>
 820:	39 c1                	cmp    %eax,%ecx
 822:	72 04                	jb     828 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 824:	39 c2                	cmp    %eax,%edx
 826:	72 f0                	jb     818 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 828:	8b 73 fc             	mov    -0x4(%ebx),%esi
 82b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82e:	39 f8                	cmp    %edi,%eax
 830:	74 30                	je     862 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 832:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 835:	8b 42 04             	mov    0x4(%edx),%eax
 838:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 83b:	39 f1                	cmp    %esi,%ecx
 83d:	74 3a                	je     879 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 83f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 841:	5b                   	pop    %ebx
  freep = p;
 842:	89 15 10 0e 00 00    	mov    %edx,0xe10
}
 848:	5e                   	pop    %esi
 849:	5f                   	pop    %edi
 84a:	5d                   	pop    %ebp
 84b:	c3                   	ret    
 84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 850:	39 c2                	cmp    %eax,%edx
 852:	72 c4                	jb     818 <free+0x18>
 854:	39 c1                	cmp    %eax,%ecx
 856:	73 c0                	jae    818 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	75 d0                	jne    832 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 862:	03 70 04             	add    0x4(%eax),%esi
 865:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 868:	8b 02                	mov    (%edx),%eax
 86a:	8b 00                	mov    (%eax),%eax
 86c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 86f:	8b 42 04             	mov    0x4(%edx),%eax
 872:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 875:	39 f1                	cmp    %esi,%ecx
 877:	75 c6                	jne    83f <free+0x3f>
    p->s.size += bp->s.size;
 879:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 87c:	89 15 10 0e 00 00    	mov    %edx,0xe10
    p->s.size += bp->s.size;
 882:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 885:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 888:	89 0a                	mov    %ecx,(%edx)
}
 88a:	5b                   	pop    %ebx
 88b:	5e                   	pop    %esi
 88c:	5f                   	pop    %edi
 88d:	5d                   	pop    %ebp
 88e:	c3                   	ret    
 88f:	90                   	nop

00000890 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	57                   	push   %edi
 894:	56                   	push   %esi
 895:	53                   	push   %ebx
 896:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 899:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 89c:	8b 3d 10 0e 00 00    	mov    0xe10,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a2:	8d 70 07             	lea    0x7(%eax),%esi
 8a5:	c1 ee 03             	shr    $0x3,%esi
 8a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8ab:	85 ff                	test   %edi,%edi
 8ad:	0f 84 9d 00 00 00    	je     950 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8b8:	39 f1                	cmp    %esi,%ecx
 8ba:	73 6a                	jae    926 <malloc+0x96>
 8bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8c1:	39 de                	cmp    %ebx,%esi
 8c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8d0:	eb 17                	jmp    8e9 <malloc+0x59>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8da:	8b 48 04             	mov    0x4(%eax),%ecx
 8dd:	39 f1                	cmp    %esi,%ecx
 8df:	73 4f                	jae    930 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8e1:	8b 3d 10 0e 00 00    	mov    0xe10,%edi
 8e7:	89 c2                	mov    %eax,%edx
 8e9:	39 d7                	cmp    %edx,%edi
 8eb:	75 eb                	jne    8d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8ed:	83 ec 0c             	sub    $0xc,%esp
 8f0:	ff 75 e4             	push   -0x1c(%ebp)
 8f3:	e8 89 fc ff ff       	call   581 <sbrk>
  if(p == (char*)-1)
 8f8:	83 c4 10             	add    $0x10,%esp
 8fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8fe:	74 1c                	je     91c <malloc+0x8c>
  hp->s.size = nu;
 900:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 903:	83 ec 0c             	sub    $0xc,%esp
 906:	83 c0 08             	add    $0x8,%eax
 909:	50                   	push   %eax
 90a:	e8 f1 fe ff ff       	call   800 <free>
  return freep;
 90f:	8b 15 10 0e 00 00    	mov    0xe10,%edx
      if((p = morecore(nunits)) == 0)
 915:	83 c4 10             	add    $0x10,%esp
 918:	85 d2                	test   %edx,%edx
 91a:	75 bc                	jne    8d8 <malloc+0x48>
        return 0;
  }
}
 91c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 91f:	31 c0                	xor    %eax,%eax
}
 921:	5b                   	pop    %ebx
 922:	5e                   	pop    %esi
 923:	5f                   	pop    %edi
 924:	5d                   	pop    %ebp
 925:	c3                   	ret    
    if(p->s.size >= nunits){
 926:	89 d0                	mov    %edx,%eax
 928:	89 fa                	mov    %edi,%edx
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 930:	39 ce                	cmp    %ecx,%esi
 932:	74 4c                	je     980 <malloc+0xf0>
        p->s.size -= nunits;
 934:	29 f1                	sub    %esi,%ecx
 936:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 939:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 93c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 93f:	89 15 10 0e 00 00    	mov    %edx,0xe10
}
 945:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 948:	83 c0 08             	add    $0x8,%eax
}
 94b:	5b                   	pop    %ebx
 94c:	5e                   	pop    %esi
 94d:	5f                   	pop    %edi
 94e:	5d                   	pop    %ebp
 94f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 950:	c7 05 10 0e 00 00 14 	movl   $0xe14,0xe10
 957:	0e 00 00 
    base.s.size = 0;
 95a:	bf 14 0e 00 00       	mov    $0xe14,%edi
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 14 0e 00 00 14 	movl   $0xe14,0xe14
 966:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 969:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 96b:	c7 05 18 0e 00 00 00 	movl   $0x0,0xe18
 972:	00 00 00 
    if(p->s.size >= nunits){
 975:	e9 42 ff ff ff       	jmp    8bc <malloc+0x2c>
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0xaf>
