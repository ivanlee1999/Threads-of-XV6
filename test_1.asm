
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
  13:	e8 d1 04 00 00       	call   4e9 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 24 0d 00 00       	mov    %eax,0xd24
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 d6 07 00 00       	call   800 <malloc>
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
  4f:	e8 b5 04 00 00       	call   509 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 20 0d 00 00    	mov    0xd20,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 4e 09 00 00       	push   $0x94e
  7a:	6a 01                	push   $0x1
  7c:	e8 4f 05 00 00       	call   5d0 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 85 04 00 00       	call   511 <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 f8 08 00 00       	push   $0x8f8
  9a:	68 01 09 00 00       	push   $0x901
  9f:	6a 01                	push   $0x1
  a1:	e8 2a 05 00 00       	call   5d0 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 5b 09 00 00       	push   $0x95b
   assert(clone_pid > 0);
  ae:	68 15 09 00 00       	push   $0x915
  b3:	6a 01                	push   $0x1
  b5:	e8 16 05 00 00       	call   5d0 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 29 09 00 00       	push   $0x929
  c1:	6a 01                	push   $0x1
  c3:	e8 08 05 00 00       	call   5d0 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 24 0d 00 00    	push   0xd24
  cf:	e8 c5 03 00 00       	call   499 <kill>
  d4:	e8 90 03 00 00       	call   469 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 82 06 00 00       	call   770 <free>
   exit();
  ee:	e8 76 03 00 00       	call   469 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 f8 08 00 00       	push   $0x8f8
  fa:	68 01 09 00 00       	push   $0x901
  ff:	6a 01                	push   $0x1
 101:	e8 ca 04 00 00       	call   5d0 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 40 09 00 00       	push   $0x940
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 f8 08 00 00       	push   $0x8f8
 117:	68 01 09 00 00       	push   $0x901
 11c:	6a 01                	push   $0x1
 11e:	e8 ad 04 00 00       	call   5d0 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 36 09 00 00       	push   $0x936
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
 136:	a1 20 0d 00 00       	mov    0xd20,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 f8 08 00 00       	push   $0x8f8
 147:	68 01 09 00 00       	push   $0x901
 14c:	6a 01                	push   $0x1
 14e:	e8 7d 04 00 00       	call   5d0 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 09 09 00 00       	push   $0x909
 15b:	68 15 09 00 00       	push   $0x915
 160:	6a 01                	push   $0x1
 162:	e8 69 04 00 00       	call   5d0 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 29 09 00 00       	push   $0x929
 16e:	6a 01                	push   $0x1
 170:	e8 5b 04 00 00       	call   5d0 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 24 0d 00 00    	push   0xd24
 17c:	e8 18 03 00 00       	call   499 <kill>
 181:	e8 e3 02 00 00       	call   469 <exit>
   global = 5;
 186:	c7 05 20 0d 00 00 05 	movl   $0x5,0xd20
 18d:	00 00 00 
   exit();
 190:	e8 d4 02 00 00       	call   469 <exit>
 195:	66 90                	xchg   %ax,%ax
 197:	66 90                	xchg   %ax,%ax
 199:	66 90                	xchg   %ax,%ax
 19b:	66 90                	xchg   %ax,%ax
 19d:	66 90                	xchg   %ax,%ax
 19f:	90                   	nop

000001a0 <strcpy>:
#include "user.h"
#include "x86.h"

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
 2d8:	e8 a4 01 00 00       	call   481 <read>
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
 33d:	e8 67 01 00 00       	call   4a9 <open>
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
 352:	e8 6a 01 00 00       	call   4c1 <fstat>
  close(fd);
 357:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 35a:	89 c6                	mov    %eax,%esi
  close(fd);
 35c:	e8 30 01 00 00       	call   491 <close>
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
 3f3:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 3f6:	6a 04                	push   $0x4
 3f8:	e8 03 04 00 00       	call   800 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 3fd:	50                   	push   %eax
 3fe:	ff 75 10             	push   0x10(%ebp)
 401:	ff 75 0c             	push   0xc(%ebp)
 404:	ff 75 08             	push   0x8(%ebp)
 407:	e8 fd 00 00 00       	call   509 <clone>
}
 40c:	c9                   	leave  
 40d:	c3                   	ret    
 40e:	66 90                	xchg   %ax,%ax

00000410 <thread_join>:

int
thread_join(){
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	56                   	push   %esi
 414:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 415:	83 ec 0c             	sub    $0xc,%esp
 418:	6a 04                	push   $0x4
 41a:	e8 e1 03 00 00       	call   800 <malloc>
  int rc = join(stack);
 41f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 422:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 424:	e8 e8 00 00 00       	call   511 <join>
 429:	89 c6                	mov    %eax,%esi
  free(*stack);
 42b:	58                   	pop    %eax
 42c:	ff 33                	push   (%ebx)
 42e:	e8 3d 03 00 00       	call   770 <free>
  return rc;
}
 433:	8d 65 f8             	lea    -0x8(%ebp),%esp
 436:	89 f0                	mov    %esi,%eax
 438:	5b                   	pop    %ebx
 439:	5e                   	pop    %esi
 43a:	5d                   	pop    %ebp
 43b:	c3                   	ret    
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 440:	c3                   	ret    
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <lock_release>:
 450:	c3                   	ret    
 451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 458:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <lock_init>:
 460:	c3                   	ret    

00000461 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 461:	b8 01 00 00 00       	mov    $0x1,%eax
 466:	cd 40                	int    $0x40
 468:	c3                   	ret    

00000469 <exit>:
SYSCALL(exit)
 469:	b8 02 00 00 00       	mov    $0x2,%eax
 46e:	cd 40                	int    $0x40
 470:	c3                   	ret    

00000471 <wait>:
SYSCALL(wait)
 471:	b8 03 00 00 00       	mov    $0x3,%eax
 476:	cd 40                	int    $0x40
 478:	c3                   	ret    

00000479 <pipe>:
SYSCALL(pipe)
 479:	b8 04 00 00 00       	mov    $0x4,%eax
 47e:	cd 40                	int    $0x40
 480:	c3                   	ret    

00000481 <read>:
SYSCALL(read)
 481:	b8 05 00 00 00       	mov    $0x5,%eax
 486:	cd 40                	int    $0x40
 488:	c3                   	ret    

00000489 <write>:
SYSCALL(write)
 489:	b8 10 00 00 00       	mov    $0x10,%eax
 48e:	cd 40                	int    $0x40
 490:	c3                   	ret    

00000491 <close>:
SYSCALL(close)
 491:	b8 15 00 00 00       	mov    $0x15,%eax
 496:	cd 40                	int    $0x40
 498:	c3                   	ret    

00000499 <kill>:
SYSCALL(kill)
 499:	b8 06 00 00 00       	mov    $0x6,%eax
 49e:	cd 40                	int    $0x40
 4a0:	c3                   	ret    

000004a1 <exec>:
SYSCALL(exec)
 4a1:	b8 07 00 00 00       	mov    $0x7,%eax
 4a6:	cd 40                	int    $0x40
 4a8:	c3                   	ret    

000004a9 <open>:
SYSCALL(open)
 4a9:	b8 0f 00 00 00       	mov    $0xf,%eax
 4ae:	cd 40                	int    $0x40
 4b0:	c3                   	ret    

000004b1 <mknod>:
SYSCALL(mknod)
 4b1:	b8 11 00 00 00       	mov    $0x11,%eax
 4b6:	cd 40                	int    $0x40
 4b8:	c3                   	ret    

000004b9 <unlink>:
SYSCALL(unlink)
 4b9:	b8 12 00 00 00       	mov    $0x12,%eax
 4be:	cd 40                	int    $0x40
 4c0:	c3                   	ret    

000004c1 <fstat>:
SYSCALL(fstat)
 4c1:	b8 08 00 00 00       	mov    $0x8,%eax
 4c6:	cd 40                	int    $0x40
 4c8:	c3                   	ret    

000004c9 <link>:
SYSCALL(link)
 4c9:	b8 13 00 00 00       	mov    $0x13,%eax
 4ce:	cd 40                	int    $0x40
 4d0:	c3                   	ret    

000004d1 <mkdir>:
SYSCALL(mkdir)
 4d1:	b8 14 00 00 00       	mov    $0x14,%eax
 4d6:	cd 40                	int    $0x40
 4d8:	c3                   	ret    

000004d9 <chdir>:
SYSCALL(chdir)
 4d9:	b8 09 00 00 00       	mov    $0x9,%eax
 4de:	cd 40                	int    $0x40
 4e0:	c3                   	ret    

000004e1 <dup>:
SYSCALL(dup)
 4e1:	b8 0a 00 00 00       	mov    $0xa,%eax
 4e6:	cd 40                	int    $0x40
 4e8:	c3                   	ret    

000004e9 <getpid>:
SYSCALL(getpid)
 4e9:	b8 0b 00 00 00       	mov    $0xb,%eax
 4ee:	cd 40                	int    $0x40
 4f0:	c3                   	ret    

000004f1 <sbrk>:
SYSCALL(sbrk)
 4f1:	b8 0c 00 00 00       	mov    $0xc,%eax
 4f6:	cd 40                	int    $0x40
 4f8:	c3                   	ret    

000004f9 <sleep>:
SYSCALL(sleep)
 4f9:	b8 0d 00 00 00       	mov    $0xd,%eax
 4fe:	cd 40                	int    $0x40
 500:	c3                   	ret    

00000501 <uptime>:
SYSCALL(uptime)
 501:	b8 0e 00 00 00       	mov    $0xe,%eax
 506:	cd 40                	int    $0x40
 508:	c3                   	ret    

00000509 <clone>:
SYSCALL(clone)
 509:	b8 16 00 00 00       	mov    $0x16,%eax
 50e:	cd 40                	int    $0x40
 510:	c3                   	ret    

00000511 <join>:
SYSCALL(join)
 511:	b8 17 00 00 00       	mov    $0x17,%eax
 516:	cd 40                	int    $0x40
 518:	c3                   	ret    
 519:	66 90                	xchg   %ax,%ax
 51b:	66 90                	xchg   %ax,%ax
 51d:	66 90                	xchg   %ax,%ax
 51f:	90                   	nop

00000520 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
 526:	83 ec 3c             	sub    $0x3c,%esp
 529:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 52c:	89 d1                	mov    %edx,%ecx
{
 52e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 531:	85 d2                	test   %edx,%edx
 533:	0f 89 7f 00 00 00    	jns    5b8 <printint+0x98>
 539:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 53d:	74 79                	je     5b8 <printint+0x98>
    neg = 1;
 53f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 546:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 548:	31 db                	xor    %ebx,%ebx
 54a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 54d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 550:	89 c8                	mov    %ecx,%eax
 552:	31 d2                	xor    %edx,%edx
 554:	89 cf                	mov    %ecx,%edi
 556:	f7 75 c4             	divl   -0x3c(%ebp)
 559:	0f b6 92 d0 09 00 00 	movzbl 0x9d0(%edx),%edx
 560:	89 45 c0             	mov    %eax,-0x40(%ebp)
 563:	89 d8                	mov    %ebx,%eax
 565:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 568:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 56b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 56e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 571:	76 dd                	jbe    550 <printint+0x30>
  if(neg)
 573:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 576:	85 c9                	test   %ecx,%ecx
 578:	74 0c                	je     586 <printint+0x66>
    buf[i++] = '-';
 57a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 57f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 581:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 586:	8b 7d b8             	mov    -0x48(%ebp),%edi
 589:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 58d:	eb 07                	jmp    596 <printint+0x76>
 58f:	90                   	nop
    putc(fd, buf[i]);
 590:	0f b6 13             	movzbl (%ebx),%edx
 593:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 596:	83 ec 04             	sub    $0x4,%esp
 599:	88 55 d7             	mov    %dl,-0x29(%ebp)
 59c:	6a 01                	push   $0x1
 59e:	56                   	push   %esi
 59f:	57                   	push   %edi
 5a0:	e8 e4 fe ff ff       	call   489 <write>
  while(--i >= 0)
 5a5:	83 c4 10             	add    $0x10,%esp
 5a8:	39 de                	cmp    %ebx,%esi
 5aa:	75 e4                	jne    590 <printint+0x70>
}
 5ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5bf:	eb 87                	jmp    548 <printint+0x28>
 5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cf:	90                   	nop

000005d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5df:	0f b6 13             	movzbl (%ebx),%edx
 5e2:	84 d2                	test   %dl,%dl
 5e4:	74 6a                	je     650 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5e6:	8d 45 10             	lea    0x10(%ebp),%eax
 5e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5f4:	eb 36                	jmp    62c <printf+0x5c>
 5f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
 600:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 603:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 608:	83 f8 25             	cmp    $0x25,%eax
 60b:	74 15                	je     622 <printf+0x52>
  write(fd, &c, 1);
 60d:	83 ec 04             	sub    $0x4,%esp
 610:	88 55 e7             	mov    %dl,-0x19(%ebp)
 613:	6a 01                	push   $0x1
 615:	57                   	push   %edi
 616:	56                   	push   %esi
 617:	e8 6d fe ff ff       	call   489 <write>
 61c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 61f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 622:	0f b6 13             	movzbl (%ebx),%edx
 625:	83 c3 01             	add    $0x1,%ebx
 628:	84 d2                	test   %dl,%dl
 62a:	74 24                	je     650 <printf+0x80>
    c = fmt[i] & 0xff;
 62c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 62f:	85 c9                	test   %ecx,%ecx
 631:	74 cd                	je     600 <printf+0x30>
      }
    } else if(state == '%'){
 633:	83 f9 25             	cmp    $0x25,%ecx
 636:	75 ea                	jne    622 <printf+0x52>
      if(c == 'd'){
 638:	83 f8 25             	cmp    $0x25,%eax
 63b:	0f 84 07 01 00 00    	je     748 <printf+0x178>
 641:	83 e8 63             	sub    $0x63,%eax
 644:	83 f8 15             	cmp    $0x15,%eax
 647:	77 17                	ja     660 <printf+0x90>
 649:	ff 24 85 78 09 00 00 	jmp    *0x978(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 650:	8d 65 f4             	lea    -0xc(%ebp),%esp
 653:	5b                   	pop    %ebx
 654:	5e                   	pop    %esi
 655:	5f                   	pop    %edi
 656:	5d                   	pop    %ebp
 657:	c3                   	ret    
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop
  write(fd, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 666:	6a 01                	push   $0x1
 668:	57                   	push   %edi
 669:	56                   	push   %esi
 66a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 66e:	e8 16 fe ff ff       	call   489 <write>
        putc(fd, c);
 673:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 677:	83 c4 0c             	add    $0xc,%esp
 67a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 67d:	6a 01                	push   $0x1
 67f:	57                   	push   %edi
 680:	56                   	push   %esi
 681:	e8 03 fe ff ff       	call   489 <write>
        putc(fd, c);
 686:	83 c4 10             	add    $0x10,%esp
      state = 0;
 689:	31 c9                	xor    %ecx,%ecx
 68b:	eb 95                	jmp    622 <printf+0x52>
 68d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 690:	83 ec 0c             	sub    $0xc,%esp
 693:	b9 10 00 00 00       	mov    $0x10,%ecx
 698:	6a 00                	push   $0x0
 69a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 69d:	8b 10                	mov    (%eax),%edx
 69f:	89 f0                	mov    %esi,%eax
 6a1:	e8 7a fe ff ff       	call   520 <printint>
        ap++;
 6a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6ad:	31 c9                	xor    %ecx,%ecx
 6af:	e9 6e ff ff ff       	jmp    622 <printf+0x52>
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6bb:	8b 10                	mov    (%eax),%edx
        ap++;
 6bd:	83 c0 04             	add    $0x4,%eax
 6c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6c3:	85 d2                	test   %edx,%edx
 6c5:	0f 84 8d 00 00 00    	je     758 <printf+0x188>
        while(*s != 0){
 6cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6d0:	84 c0                	test   %al,%al
 6d2:	0f 84 4a ff ff ff    	je     622 <printf+0x52>
 6d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6db:	89 d3                	mov    %edx,%ebx
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6e3:	83 c3 01             	add    $0x1,%ebx
 6e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6e9:	6a 01                	push   $0x1
 6eb:	57                   	push   %edi
 6ec:	56                   	push   %esi
 6ed:	e8 97 fd ff ff       	call   489 <write>
        while(*s != 0){
 6f2:	0f b6 03             	movzbl (%ebx),%eax
 6f5:	83 c4 10             	add    $0x10,%esp
 6f8:	84 c0                	test   %al,%al
 6fa:	75 e4                	jne    6e0 <printf+0x110>
      state = 0;
 6fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6ff:	31 c9                	xor    %ecx,%ecx
 701:	e9 1c ff ff ff       	jmp    622 <printf+0x52>
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 710:	83 ec 0c             	sub    $0xc,%esp
 713:	b9 0a 00 00 00       	mov    $0xa,%ecx
 718:	6a 01                	push   $0x1
 71a:	e9 7b ff ff ff       	jmp    69a <printf+0xca>
 71f:	90                   	nop
        putc(fd, *ap);
 720:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 723:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 726:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 728:	6a 01                	push   $0x1
 72a:	57                   	push   %edi
 72b:	56                   	push   %esi
        putc(fd, *ap);
 72c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 72f:	e8 55 fd ff ff       	call   489 <write>
        ap++;
 734:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 738:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73b:	31 c9                	xor    %ecx,%ecx
 73d:	e9 e0 fe ff ff       	jmp    622 <printf+0x52>
 742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 748:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 74b:	83 ec 04             	sub    $0x4,%esp
 74e:	e9 2a ff ff ff       	jmp    67d <printf+0xad>
 753:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 757:	90                   	nop
          s = "(null)";
 758:	ba 71 09 00 00       	mov    $0x971,%edx
        while(*s != 0){
 75d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 760:	b8 28 00 00 00       	mov    $0x28,%eax
 765:	89 d3                	mov    %edx,%ebx
 767:	e9 74 ff ff ff       	jmp    6e0 <printf+0x110>
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax

00000770 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 770:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 771:	a1 28 0d 00 00       	mov    0xd28,%eax
{
 776:	89 e5                	mov    %esp,%ebp
 778:	57                   	push   %edi
 779:	56                   	push   %esi
 77a:	53                   	push   %ebx
 77b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 77e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	89 c2                	mov    %eax,%edx
 78a:	8b 00                	mov    (%eax),%eax
 78c:	39 ca                	cmp    %ecx,%edx
 78e:	73 30                	jae    7c0 <free+0x50>
 790:	39 c1                	cmp    %eax,%ecx
 792:	72 04                	jb     798 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 794:	39 c2                	cmp    %eax,%edx
 796:	72 f0                	jb     788 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 798:	8b 73 fc             	mov    -0x4(%ebx),%esi
 79b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 79e:	39 f8                	cmp    %edi,%eax
 7a0:	74 30                	je     7d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7a5:	8b 42 04             	mov    0x4(%edx),%eax
 7a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7ab:	39 f1                	cmp    %esi,%ecx
 7ad:	74 3a                	je     7e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7b1:	5b                   	pop    %ebx
  freep = p;
 7b2:	89 15 28 0d 00 00    	mov    %edx,0xd28
}
 7b8:	5e                   	pop    %esi
 7b9:	5f                   	pop    %edi
 7ba:	5d                   	pop    %ebp
 7bb:	c3                   	ret    
 7bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7c0:	39 c2                	cmp    %eax,%edx
 7c2:	72 c4                	jb     788 <free+0x18>
 7c4:	39 c1                	cmp    %eax,%ecx
 7c6:	73 c0                	jae    788 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ce:	39 f8                	cmp    %edi,%eax
 7d0:	75 d0                	jne    7a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7d2:	03 70 04             	add    0x4(%eax),%esi
 7d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7d8:	8b 02                	mov    (%edx),%eax
 7da:	8b 00                	mov    (%eax),%eax
 7dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7df:	8b 42 04             	mov    0x4(%edx),%eax
 7e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7e5:	39 f1                	cmp    %esi,%ecx
 7e7:	75 c6                	jne    7af <free+0x3f>
    p->s.size += bp->s.size;
 7e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7ec:	89 15 28 0d 00 00    	mov    %edx,0xd28
    p->s.size += bp->s.size;
 7f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7f8:	89 0a                	mov    %ecx,(%edx)
}
 7fa:	5b                   	pop    %ebx
 7fb:	5e                   	pop    %esi
 7fc:	5f                   	pop    %edi
 7fd:	5d                   	pop    %ebp
 7fe:	c3                   	ret    
 7ff:	90                   	nop

00000800 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 809:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 80c:	8b 3d 28 0d 00 00    	mov    0xd28,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 812:	8d 70 07             	lea    0x7(%eax),%esi
 815:	c1 ee 03             	shr    $0x3,%esi
 818:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 81b:	85 ff                	test   %edi,%edi
 81d:	0f 84 9d 00 00 00    	je     8c0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 823:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 825:	8b 4a 04             	mov    0x4(%edx),%ecx
 828:	39 f1                	cmp    %esi,%ecx
 82a:	73 6a                	jae    896 <malloc+0x96>
 82c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 831:	39 de                	cmp    %ebx,%esi
 833:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 836:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 83d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 840:	eb 17                	jmp    859 <malloc+0x59>
 842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 848:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 84a:	8b 48 04             	mov    0x4(%eax),%ecx
 84d:	39 f1                	cmp    %esi,%ecx
 84f:	73 4f                	jae    8a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 851:	8b 3d 28 0d 00 00    	mov    0xd28,%edi
 857:	89 c2                	mov    %eax,%edx
 859:	39 d7                	cmp    %edx,%edi
 85b:	75 eb                	jne    848 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 85d:	83 ec 0c             	sub    $0xc,%esp
 860:	ff 75 e4             	push   -0x1c(%ebp)
 863:	e8 89 fc ff ff       	call   4f1 <sbrk>
  if(p == (char*)-1)
 868:	83 c4 10             	add    $0x10,%esp
 86b:	83 f8 ff             	cmp    $0xffffffff,%eax
 86e:	74 1c                	je     88c <malloc+0x8c>
  hp->s.size = nu;
 870:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 873:	83 ec 0c             	sub    $0xc,%esp
 876:	83 c0 08             	add    $0x8,%eax
 879:	50                   	push   %eax
 87a:	e8 f1 fe ff ff       	call   770 <free>
  return freep;
 87f:	8b 15 28 0d 00 00    	mov    0xd28,%edx
      if((p = morecore(nunits)) == 0)
 885:	83 c4 10             	add    $0x10,%esp
 888:	85 d2                	test   %edx,%edx
 88a:	75 bc                	jne    848 <malloc+0x48>
        return 0;
  }
}
 88c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 88f:	31 c0                	xor    %eax,%eax
}
 891:	5b                   	pop    %ebx
 892:	5e                   	pop    %esi
 893:	5f                   	pop    %edi
 894:	5d                   	pop    %ebp
 895:	c3                   	ret    
    if(p->s.size >= nunits){
 896:	89 d0                	mov    %edx,%eax
 898:	89 fa                	mov    %edi,%edx
 89a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8a0:	39 ce                	cmp    %ecx,%esi
 8a2:	74 4c                	je     8f0 <malloc+0xf0>
        p->s.size -= nunits;
 8a4:	29 f1                	sub    %esi,%ecx
 8a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8ac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8af:	89 15 28 0d 00 00    	mov    %edx,0xd28
}
 8b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8b8:	83 c0 08             	add    $0x8,%eax
}
 8bb:	5b                   	pop    %ebx
 8bc:	5e                   	pop    %esi
 8bd:	5f                   	pop    %edi
 8be:	5d                   	pop    %ebp
 8bf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8c0:	c7 05 28 0d 00 00 2c 	movl   $0xd2c,0xd28
 8c7:	0d 00 00 
    base.s.size = 0;
 8ca:	bf 2c 0d 00 00       	mov    $0xd2c,%edi
    base.s.ptr = freep = prevp = &base;
 8cf:	c7 05 2c 0d 00 00 2c 	movl   $0xd2c,0xd2c
 8d6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8db:	c7 05 30 0d 00 00 00 	movl   $0x0,0xd30
 8e2:	00 00 00 
    if(p->s.size >= nunits){
 8e5:	e9 42 ff ff ff       	jmp    82c <malloc+0x2c>
 8ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8f0:	8b 08                	mov    (%eax),%ecx
 8f2:	89 0a                	mov    %ecx,(%edx)
 8f4:	eb b9                	jmp    8af <malloc+0xaf>
