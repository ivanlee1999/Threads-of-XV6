
_test_1:     file format elf32-i386


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
  13:	e8 5e 05 00 00       	call   576 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 30 0e 00 00       	mov    %eax,0xe30
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 66 08 00 00       	call   890 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 db 00 00 00    	je     110 <main+0x110>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 94 00 00 00    	jne    d9 <main+0xd9>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, 0, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	6a 00                	push   $0x0
  4a:	68 30 01 00 00       	push   $0x130
  4f:	e8 42 05 00 00       	call   596 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 2c 0e 00 00    	mov    0xe2c,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 de 09 00 00       	push   $0x9de
  7a:	6a 01                	push   $0x1
  7c:	e8 df 05 00 00       	call   660 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 12 05 00 00       	call   59e <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 88 09 00 00       	push   $0x988
  9a:	68 91 09 00 00       	push   $0x991
  9f:	6a 01                	push   $0x1
  a1:	e8 ba 05 00 00       	call   660 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 eb 09 00 00       	push   $0x9eb
   assert(clone_pid > 0);
  ae:	68 a5 09 00 00       	push   $0x9a5
  b3:	6a 01                	push   $0x1
  b5:	e8 a6 05 00 00       	call   660 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 b9 09 00 00       	push   $0x9b9
  c1:	6a 01                	push   $0x1
  c3:	e8 98 05 00 00       	call   660 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 30 0e 00 00    	push   0xe30
  cf:	e8 52 04 00 00       	call   526 <kill>
  d4:	e8 1d 04 00 00       	call   4f6 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 12 07 00 00       	call   800 <free>
   exit();
  ee:	e8 03 04 00 00       	call   4f6 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 88 09 00 00       	push   $0x988
  fa:	68 91 09 00 00       	push   $0x991
  ff:	6a 01                	push   $0x1
 101:	e8 5a 05 00 00       	call   660 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 d0 09 00 00       	push   $0x9d0
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 88 09 00 00       	push   $0x988
 117:	68 91 09 00 00       	push   $0x991
 11c:	6a 01                	push   $0x1
 11e:	e8 3d 05 00 00       	call   660 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 c6 09 00 00       	push   $0x9c6
 12b:	eb 81                	jmp    ae <main+0xae>
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert(global == 1);
 136:	a1 2c 0e 00 00       	mov    0xe2c,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 88 09 00 00       	push   $0x988
 147:	68 91 09 00 00       	push   $0x991
 14c:	6a 01                	push   $0x1
 14e:	e8 0d 05 00 00       	call   660 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 99 09 00 00       	push   $0x999
 15b:	68 a5 09 00 00       	push   $0x9a5
 160:	6a 01                	push   $0x1
 162:	e8 f9 04 00 00       	call   660 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 b9 09 00 00       	push   $0x9b9
 16e:	6a 01                	push   $0x1
 170:	e8 eb 04 00 00       	call   660 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 30 0e 00 00    	push   0xe30
 17c:	e8 a5 03 00 00       	call   526 <kill>
 181:	e8 70 03 00 00       	call   4f6 <exit>
   global = 5;
 186:	c7 05 2c 0e 00 00 05 	movl   $0x5,0xe2c
 18d:	00 00 00 
   exit();
 190:	e8 61 03 00 00       	call   4f6 <exit>
 195:	66 90                	xchg   %ax,%ax
 197:	66 90                	xchg   %ax,%ax
 199:	66 90                	xchg   %ax,%ax
 19b:	66 90                	xchg   %ax,%ax
 19d:	66 90                	xchg   %ax,%ax
 19f:	90                   	nop

000001a0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 1a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1a1:	31 c0                	xor    %eax,%eax
{
 1a3:	89 e5                	mov    %esp,%ebp
 1a5:	53                   	push   %ebx
 1a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1b7:	83 c0 01             	add    $0x1,%eax
 1ba:	84 d2                	test   %dl,%dl
 1bc:	75 f2                	jne    1b0 <strcpy+0x10>
    ;
  return os;
}
 1be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1c1:	89 c8                	mov    %ecx,%eax
 1c3:	c9                   	leave  
 1c4:	c3                   	ret    
 1c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	53                   	push   %ebx
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
 1d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1da:	0f b6 02             	movzbl (%edx),%eax
 1dd:	84 c0                	test   %al,%al
 1df:	75 17                	jne    1f8 <strcmp+0x28>
 1e1:	eb 3a                	jmp    21d <strcmp+0x4d>
 1e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1e7:	90                   	nop
 1e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1ec:	83 c2 01             	add    $0x1,%edx
 1ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1f2:	84 c0                	test   %al,%al
 1f4:	74 1a                	je     210 <strcmp+0x40>
    p++, q++;
 1f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1f8:	0f b6 19             	movzbl (%ecx),%ebx
 1fb:	38 c3                	cmp    %al,%bl
 1fd:	74 e9                	je     1e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1ff:	29 d8                	sub    %ebx,%eax
}
 201:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 204:	c9                   	leave  
 205:	c3                   	ret    
 206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 210:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 214:	31 c0                	xor    %eax,%eax
 216:	29 d8                	sub    %ebx,%eax
}
 218:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 21b:	c9                   	leave  
 21c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 21d:	0f b6 19             	movzbl (%ecx),%ebx
 220:	31 c0                	xor    %eax,%eax
 222:	eb db                	jmp    1ff <strcmp+0x2f>
 224:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <strlen>:

uint
strlen(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 3a 00             	cmpb   $0x0,(%edx)
 239:	74 15                	je     250 <strlen+0x20>
 23b:	31 c0                	xor    %eax,%eax
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c0 01             	add    $0x1,%eax
 243:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 247:	89 c1                	mov    %eax,%ecx
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	89 c8                	mov    %ecx,%eax
 24d:	5d                   	pop    %ebp
 24e:	c3                   	ret    
 24f:	90                   	nop
  for(n = 0; s[n]; n++)
 250:	31 c9                	xor    %ecx,%ecx
}
 252:	5d                   	pop    %ebp
 253:	89 c8                	mov    %ecx,%eax
 255:	c3                   	ret    
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	8b 7d fc             	mov    -0x4(%ebp),%edi
 275:	89 d0                	mov    %edx,%eax
 277:	c9                   	leave  
 278:	c3                   	ret    
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 45 08             	mov    0x8(%ebp),%eax
 286:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 28a:	0f b6 10             	movzbl (%eax),%edx
 28d:	84 d2                	test   %dl,%dl
 28f:	75 12                	jne    2a3 <strchr+0x23>
 291:	eb 1d                	jmp    2b0 <strchr+0x30>
 293:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 297:	90                   	nop
 298:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 29c:	83 c0 01             	add    $0x1,%eax
 29f:	84 d2                	test   %dl,%dl
 2a1:	74 0d                	je     2b0 <strchr+0x30>
    if(*s == c)
 2a3:	38 d1                	cmp    %dl,%cl
 2a5:	75 f1                	jne    298 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2a7:	5d                   	pop    %ebp
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2b0:	31 c0                	xor    %eax,%eax
}
 2b2:	5d                   	pop    %ebp
 2b3:	c3                   	ret    
 2b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2c5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2c9:	31 db                	xor    %ebx,%ebx
{
 2cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ce:	eb 27                	jmp    2f7 <gets+0x37>
    cc = read(0, &c, 1);
 2d0:	83 ec 04             	sub    $0x4,%esp
 2d3:	6a 01                	push   $0x1
 2d5:	57                   	push   %edi
 2d6:	6a 00                	push   $0x0
 2d8:	e8 31 02 00 00       	call   50e <read>
    if(cc < 1)
 2dd:	83 c4 10             	add    $0x10,%esp
 2e0:	85 c0                	test   %eax,%eax
 2e2:	7e 1d                	jle    301 <gets+0x41>
      break;
    buf[i++] = c;
 2e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2e8:	8b 55 08             	mov    0x8(%ebp),%edx
 2eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2ef:	3c 0a                	cmp    $0xa,%al
 2f1:	74 1d                	je     310 <gets+0x50>
 2f3:	3c 0d                	cmp    $0xd,%al
 2f5:	74 19                	je     310 <gets+0x50>
  for(i=0; i+1 < max; ){
 2f7:	89 de                	mov    %ebx,%esi
 2f9:	83 c3 01             	add    $0x1,%ebx
 2fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ff:	7c cf                	jl     2d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 301:	8b 45 08             	mov    0x8(%ebp),%eax
 304:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 308:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30b:	5b                   	pop    %ebx
 30c:	5e                   	pop    %esi
 30d:	5f                   	pop    %edi
 30e:	5d                   	pop    %ebp
 30f:	c3                   	ret    
  buf[i] = '\0';
 310:	8b 45 08             	mov    0x8(%ebp),%eax
 313:	89 de                	mov    %ebx,%esi
 315:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 319:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31c:	5b                   	pop    %ebx
 31d:	5e                   	pop    %esi
 31e:	5f                   	pop    %edi
 31f:	5d                   	pop    %ebp
 320:	c3                   	ret    
 321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <stat>:

int
stat(const char *n, struct stat *st)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 335:	83 ec 08             	sub    $0x8,%esp
 338:	6a 00                	push   $0x0
 33a:	ff 75 08             	push   0x8(%ebp)
 33d:	e8 f4 01 00 00       	call   536 <open>
  if(fd < 0)
 342:	83 c4 10             	add    $0x10,%esp
 345:	85 c0                	test   %eax,%eax
 347:	78 27                	js     370 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 349:	83 ec 08             	sub    $0x8,%esp
 34c:	ff 75 0c             	push   0xc(%ebp)
 34f:	89 c3                	mov    %eax,%ebx
 351:	50                   	push   %eax
 352:	e8 f7 01 00 00       	call   54e <fstat>
  close(fd);
 357:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 35a:	89 c6                	mov    %eax,%esi
  close(fd);
 35c:	e8 bd 01 00 00       	call   51e <close>
  return r;
 361:	83 c4 10             	add    $0x10,%esp
}
 364:	8d 65 f8             	lea    -0x8(%ebp),%esp
 367:	89 f0                	mov    %esi,%eax
 369:	5b                   	pop    %ebx
 36a:	5e                   	pop    %esi
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
 36d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 370:	be ff ff ff ff       	mov    $0xffffffff,%esi
 375:	eb ed                	jmp    364 <stat+0x34>
 377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37e:	66 90                	xchg   %ax,%ax

00000380 <atoi>:

int
atoi(const char *s)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 387:	0f be 02             	movsbl (%edx),%eax
 38a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 38d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 390:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 395:	77 1e                	ja     3b5 <atoi+0x35>
 397:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3a0:	83 c2 01             	add    $0x1,%edx
 3a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3aa:	0f be 02             	movsbl (%edx),%eax
 3ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3b0:	80 fb 09             	cmp    $0x9,%bl
 3b3:	76 eb                	jbe    3a0 <atoi+0x20>
  return n;
}
 3b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3b8:	89 c8                	mov    %ecx,%eax
 3ba:	c9                   	leave  
 3bb:	c3                   	ret    
 3bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 45 10             	mov    0x10(%ebp),%eax
 3c7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ca:	56                   	push   %esi
 3cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ce:	85 c0                	test   %eax,%eax
 3d0:	7e 13                	jle    3e5 <memmove+0x25>
 3d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3d4:	89 d7                	mov    %edx,%edi
 3d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3e1:	39 f8                	cmp    %edi,%eax
 3e3:	75 fb                	jne    3e0 <memmove+0x20>
  return vdst;
}
 3e5:	5e                   	pop    %esi
 3e6:	89 d0                	mov    %edx,%eax
 3e8:	5f                   	pop    %edi
 3e9:	5d                   	pop    %ebp
 3ea:	c3                   	ret    
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 3f7:	68 00 20 00 00       	push   $0x2000
 3fc:	e8 8f 04 00 00       	call   890 <malloc>
  if((int) stack % 4096 != 0){
 401:	83 c4 10             	add    $0x10,%esp
 404:	a9 ff 0f 00 00       	test   $0xfff,%eax
 409:	74 16                	je     421 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 40b:	99                   	cltd   
 40c:	c1 ea 14             	shr    $0x14,%edx
 40f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 412:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 418:	29 ca                	sub    %ecx,%edx
 41a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 421:	50                   	push   %eax
 422:	ff 75 10             	push   0x10(%ebp)
 425:	ff 75 0c             	push   0xc(%ebp)
 428:	ff 75 08             	push   0x8(%ebp)
 42b:	e8 66 01 00 00       	call   596 <clone>
  printf(1, " thread create  %d \n", rc);
 430:	83 c4 0c             	add    $0xc,%esp
 433:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 434:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 436:	68 01 0a 00 00       	push   $0xa01
 43b:	6a 01                	push   $0x1
 43d:	e8 1e 02 00 00       	call   660 <printf>
  return rc;
}
 442:	89 d8                	mov    %ebx,%eax
 444:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 447:	c9                   	leave  
 448:	c3                   	ret    
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000450 <thread_join>:

int
thread_join(){
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 457:	68 16 0a 00 00       	push   $0xa16
 45c:	6a 01                	push   $0x1
 45e:	e8 fd 01 00 00       	call   660 <printf>
  void** stack = malloc(sizeof(void**));
 463:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 46a:	e8 21 04 00 00       	call   890 <malloc>
 46f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 471:	58                   	pop    %eax
 472:	5a                   	pop    %edx
 473:	68 26 0a 00 00       	push   $0xa26
 478:	6a 01                	push   $0x1
 47a:	e8 e1 01 00 00       	call   660 <printf>
  int rc = join(stack);
 47f:	89 1c 24             	mov    %ebx,(%esp)
 482:	e8 17 01 00 00       	call   59e <join>
  printf(1, "thread join 3 \n");
 487:	59                   	pop    %ecx
  int rc = join(stack);
 488:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 48a:	58                   	pop    %eax
 48b:	68 36 0a 00 00       	push   $0xa36
 490:	6a 01                	push   $0x1
 492:	e8 c9 01 00 00       	call   660 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 497:	58                   	pop    %eax
 498:	5a                   	pop    %edx
 499:	68 46 0a 00 00       	push   $0xa46
 49e:	6a 01                	push   $0x1
 4a0:	e8 bb 01 00 00       	call   660 <printf>
  return rc;
}
 4a5:	89 d8                	mov    %ebx,%eax
 4a7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4aa:	c9                   	leave  
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 4b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4b6:	89 e5                	mov    %esp,%ebp
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop
 4c0:	89 c8                	mov    %ecx,%eax
 4c2:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 4c5:	83 f8 01             	cmp    $0x1,%eax
 4c8:	74 f6                	je     4c0 <lock_acquire+0x10>
 ; // spin

};
 4ca:	5d                   	pop    %ebp
 4cb:	c3                   	ret    
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <lock_release>:

void lock_release(lock_t * lock){
 4d0:	55                   	push   %ebp
 4d1:	31 c0                	xor    %eax,%eax
 4d3:	89 e5                	mov    %esp,%ebp
 4d5:	8b 55 08             	mov    0x8(%ebp),%edx
 4d8:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
 4dd:	8d 76 00             	lea    0x0(%esi),%esi

000004e0 <lock_init>:

void lock_init(lock_t * lock){
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
 4e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 4ec:	5d                   	pop    %ebp
 4ed:	c3                   	ret    

000004ee <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ee:	b8 01 00 00 00       	mov    $0x1,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <exit>:
SYSCALL(exit)
 4f6:	b8 02 00 00 00       	mov    $0x2,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    

000004fe <wait>:
SYSCALL(wait)
 4fe:	b8 03 00 00 00       	mov    $0x3,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    

00000506 <pipe>:
SYSCALL(pipe)
 506:	b8 04 00 00 00       	mov    $0x4,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    

0000050e <read>:
SYSCALL(read)
 50e:	b8 05 00 00 00       	mov    $0x5,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <write>:
SYSCALL(write)
 516:	b8 10 00 00 00       	mov    $0x10,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <close>:
SYSCALL(close)
 51e:	b8 15 00 00 00       	mov    $0x15,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <kill>:
SYSCALL(kill)
 526:	b8 06 00 00 00       	mov    $0x6,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <exec>:
SYSCALL(exec)
 52e:	b8 07 00 00 00       	mov    $0x7,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <open>:
SYSCALL(open)
 536:	b8 0f 00 00 00       	mov    $0xf,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <mknod>:
SYSCALL(mknod)
 53e:	b8 11 00 00 00       	mov    $0x11,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <unlink>:
SYSCALL(unlink)
 546:	b8 12 00 00 00       	mov    $0x12,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <fstat>:
SYSCALL(fstat)
 54e:	b8 08 00 00 00       	mov    $0x8,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <link>:
SYSCALL(link)
 556:	b8 13 00 00 00       	mov    $0x13,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <mkdir>:
SYSCALL(mkdir)
 55e:	b8 14 00 00 00       	mov    $0x14,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <chdir>:
SYSCALL(chdir)
 566:	b8 09 00 00 00       	mov    $0x9,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <dup>:
SYSCALL(dup)
 56e:	b8 0a 00 00 00       	mov    $0xa,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <getpid>:
SYSCALL(getpid)
 576:	b8 0b 00 00 00       	mov    $0xb,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <sbrk>:
SYSCALL(sbrk)
 57e:	b8 0c 00 00 00       	mov    $0xc,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <sleep>:
SYSCALL(sleep)
 586:	b8 0d 00 00 00       	mov    $0xd,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <uptime>:
SYSCALL(uptime)
 58e:	b8 0e 00 00 00       	mov    $0xe,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <clone>:
SYSCALL(clone)
 596:	b8 16 00 00 00       	mov    $0x16,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <join>:
SYSCALL(join)
 59e:	b8 17 00 00 00       	mov    $0x17,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    
 5a6:	66 90                	xchg   %ax,%ax
 5a8:	66 90                	xchg   %ax,%ax
 5aa:	66 90                	xchg   %ax,%ax
 5ac:	66 90                	xchg   %ax,%ax
 5ae:	66 90                	xchg   %ax,%ax

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
 630:	e8 e1 fe ff ff       	call   516 <write>
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
 6a7:	e8 6a fe ff ff       	call   516 <write>
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
 6fe:	e8 13 fe ff ff       	call   516 <write>
        putc(fd, c);
 703:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 707:	83 c4 0c             	add    $0xc,%esp
 70a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 70d:	6a 01                	push   $0x1
 70f:	57                   	push   %edi
 710:	56                   	push   %esi
 711:	e8 00 fe ff ff       	call   516 <write>
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
 77d:	e8 94 fd ff ff       	call   516 <write>
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
 7bf:	e8 52 fd ff ff       	call   516 <write>
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
 7e8:	ba 56 0a 00 00       	mov    $0xa56,%edx
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
 801:	a1 34 0e 00 00       	mov    0xe34,%eax
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
 842:	89 15 34 0e 00 00    	mov    %edx,0xe34
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
 87c:	89 15 34 0e 00 00    	mov    %edx,0xe34
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
 89c:	8b 3d 34 0e 00 00    	mov    0xe34,%edi
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
 8e1:	8b 3d 34 0e 00 00    	mov    0xe34,%edi
 8e7:	89 c2                	mov    %eax,%edx
 8e9:	39 d7                	cmp    %edx,%edi
 8eb:	75 eb                	jne    8d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8ed:	83 ec 0c             	sub    $0xc,%esp
 8f0:	ff 75 e4             	push   -0x1c(%ebp)
 8f3:	e8 86 fc ff ff       	call   57e <sbrk>
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
 90f:	8b 15 34 0e 00 00    	mov    0xe34,%edx
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
 93f:	89 15 34 0e 00 00    	mov    %edx,0xe34
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
 950:	c7 05 34 0e 00 00 38 	movl   $0xe38,0xe34
 957:	0e 00 00 
    base.s.size = 0;
 95a:	bf 38 0e 00 00       	mov    $0xe38,%edi
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 38 0e 00 00 38 	movl   $0xe38,0xe38
 966:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 969:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 96b:	c7 05 3c 0e 00 00 00 	movl   $0x0,0xe3c
 972:	00 00 00 
    if(p->s.size >= nunits){
 975:	e9 42 ff ff ff       	jmp    8bc <malloc+0x2c>
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0xaf>
