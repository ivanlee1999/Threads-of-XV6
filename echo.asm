
_echo:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

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
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  for(i = 1; i < argc; i++)
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	7e 47                	jle    65 <main+0x65>
  1e:	bb 01 00 00 00       	mov    $0x1,%ebx
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
  23:	83 c3 01             	add    $0x1,%ebx
  26:	8b 44 9f fc          	mov    -0x4(%edi,%ebx,4),%eax
  2a:	39 f3                	cmp    %esi,%ebx
  2c:	74 22                	je     50 <main+0x50>
  2e:	66 90                	xchg   %ax,%ax
  30:	68 58 08 00 00       	push   $0x858
  35:	83 c3 01             	add    $0x1,%ebx
  38:	50                   	push   %eax
  39:	68 5a 08 00 00       	push   $0x85a
  3e:	6a 01                	push   $0x1
  40:	e8 eb 04 00 00       	call   530 <printf>
  45:	8b 44 9f fc          	mov    -0x4(%edi,%ebx,4),%eax
  49:	83 c4 10             	add    $0x10,%esp
  4c:	39 f3                	cmp    %esi,%ebx
  4e:	75 e0                	jne    30 <main+0x30>
  50:	68 81 08 00 00       	push   $0x881
  55:	50                   	push   %eax
  56:	68 5a 08 00 00       	push   $0x85a
  5b:	6a 01                	push   $0x1
  5d:	e8 ce 04 00 00       	call   530 <printf>
  62:	83 c4 10             	add    $0x10,%esp
  exit();
  65:	e8 5c 03 00 00       	call   3c6 <exit>
  6a:	66 90                	xchg   %ax,%ax
  6c:	66 90                	xchg   %ax,%ax
  6e:	66 90                	xchg   %ax,%ax

00000070 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
  70:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  71:	31 c0                	xor    %eax,%eax
{
  73:	89 e5                	mov    %esp,%ebp
  75:	53                   	push   %ebx
  76:	8b 4d 08             	mov    0x8(%ebp),%ecx
  79:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  80:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  84:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  87:	83 c0 01             	add    $0x1,%eax
  8a:	84 d2                	test   %dl,%dl
  8c:	75 f2                	jne    80 <strcpy+0x10>
    ;
  return os;
}
  8e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  91:	89 c8                	mov    %ecx,%eax
  93:	c9                   	leave  
  94:	c3                   	ret    
  95:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	53                   	push   %ebx
  a4:	8b 55 08             	mov    0x8(%ebp),%edx
  a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  aa:	0f b6 02             	movzbl (%edx),%eax
  ad:	84 c0                	test   %al,%al
  af:	75 17                	jne    c8 <strcmp+0x28>
  b1:	eb 3a                	jmp    ed <strcmp+0x4d>
  b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  b7:	90                   	nop
  b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  bc:	83 c2 01             	add    $0x1,%edx
  bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  c2:	84 c0                	test   %al,%al
  c4:	74 1a                	je     e0 <strcmp+0x40>
    p++, q++;
  c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  c8:	0f b6 19             	movzbl (%ecx),%ebx
  cb:	38 c3                	cmp    %al,%bl
  cd:	74 e9                	je     b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  cf:	29 d8                	sub    %ebx,%eax
}
  d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d4:	c9                   	leave  
  d5:	c3                   	ret    
  d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  e4:	31 c0                	xor    %eax,%eax
  e6:	29 d8                	sub    %ebx,%eax
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	c9                   	leave  
  ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  ed:	0f b6 19             	movzbl (%ecx),%ebx
  f0:	31 c0                	xor    %eax,%eax
  f2:	eb db                	jmp    cf <strcmp+0x2f>
  f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  ff:	90                   	nop

00000100 <strlen>:

uint
strlen(const char *s)
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 106:	80 3a 00             	cmpb   $0x0,(%edx)
 109:	74 15                	je     120 <strlen+0x20>
 10b:	31 c0                	xor    %eax,%eax
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	83 c0 01             	add    $0x1,%eax
 113:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 117:	89 c1                	mov    %eax,%ecx
 119:	75 f5                	jne    110 <strlen+0x10>
    ;
  return n;
}
 11b:	89 c8                	mov    %ecx,%eax
 11d:	5d                   	pop    %ebp
 11e:	c3                   	ret    
 11f:	90                   	nop
  for(n = 0; s[n]; n++)
 120:	31 c9                	xor    %ecx,%ecx
}
 122:	5d                   	pop    %ebp
 123:	89 c8                	mov    %ecx,%eax
 125:	c3                   	ret    
 126:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 12d:	8d 76 00             	lea    0x0(%esi),%esi

00000130 <memset>:

void*
memset(void *dst, int c, uint n)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 137:	8b 4d 10             	mov    0x10(%ebp),%ecx
 13a:	8b 45 0c             	mov    0xc(%ebp),%eax
 13d:	89 d7                	mov    %edx,%edi
 13f:	fc                   	cld    
 140:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 142:	8b 7d fc             	mov    -0x4(%ebp),%edi
 145:	89 d0                	mov    %edx,%eax
 147:	c9                   	leave  
 148:	c3                   	ret    
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000150 <strchr>:

char*
strchr(const char *s, char c)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 15a:	0f b6 10             	movzbl (%eax),%edx
 15d:	84 d2                	test   %dl,%dl
 15f:	75 12                	jne    173 <strchr+0x23>
 161:	eb 1d                	jmp    180 <strchr+0x30>
 163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 167:	90                   	nop
 168:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 16c:	83 c0 01             	add    $0x1,%eax
 16f:	84 d2                	test   %dl,%dl
 171:	74 0d                	je     180 <strchr+0x30>
    if(*s == c)
 173:	38 d1                	cmp    %dl,%cl
 175:	75 f1                	jne    168 <strchr+0x18>
      return (char*)s;
  return 0;
}
 177:	5d                   	pop    %ebp
 178:	c3                   	ret    
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 180:	31 c0                	xor    %eax,%eax
}
 182:	5d                   	pop    %ebp
 183:	c3                   	ret    
 184:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 18f:	90                   	nop

00000190 <gets>:

char*
gets(char *buf, int max)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 195:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 198:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 199:	31 db                	xor    %ebx,%ebx
{
 19b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 19e:	eb 27                	jmp    1c7 <gets+0x37>
    cc = read(0, &c, 1);
 1a0:	83 ec 04             	sub    $0x4,%esp
 1a3:	6a 01                	push   $0x1
 1a5:	57                   	push   %edi
 1a6:	6a 00                	push   $0x0
 1a8:	e8 31 02 00 00       	call   3de <read>
    if(cc < 1)
 1ad:	83 c4 10             	add    $0x10,%esp
 1b0:	85 c0                	test   %eax,%eax
 1b2:	7e 1d                	jle    1d1 <gets+0x41>
      break;
    buf[i++] = c;
 1b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1b8:	8b 55 08             	mov    0x8(%ebp),%edx
 1bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1bf:	3c 0a                	cmp    $0xa,%al
 1c1:	74 1d                	je     1e0 <gets+0x50>
 1c3:	3c 0d                	cmp    $0xd,%al
 1c5:	74 19                	je     1e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 1c7:	89 de                	mov    %ebx,%esi
 1c9:	83 c3 01             	add    $0x1,%ebx
 1cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1cf:	7c cf                	jl     1a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 1d1:	8b 45 08             	mov    0x8(%ebp),%eax
 1d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1db:	5b                   	pop    %ebx
 1dc:	5e                   	pop    %esi
 1dd:	5f                   	pop    %edi
 1de:	5d                   	pop    %ebp
 1df:	c3                   	ret    
  buf[i] = '\0';
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	89 de                	mov    %ebx,%esi
 1e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ec:	5b                   	pop    %ebx
 1ed:	5e                   	pop    %esi
 1ee:	5f                   	pop    %edi
 1ef:	5d                   	pop    %ebp
 1f0:	c3                   	ret    
 1f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ff:	90                   	nop

00000200 <stat>:

int
stat(const char *n, struct stat *st)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 205:	83 ec 08             	sub    $0x8,%esp
 208:	6a 00                	push   $0x0
 20a:	ff 75 08             	push   0x8(%ebp)
 20d:	e8 f4 01 00 00       	call   406 <open>
  if(fd < 0)
 212:	83 c4 10             	add    $0x10,%esp
 215:	85 c0                	test   %eax,%eax
 217:	78 27                	js     240 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 219:	83 ec 08             	sub    $0x8,%esp
 21c:	ff 75 0c             	push   0xc(%ebp)
 21f:	89 c3                	mov    %eax,%ebx
 221:	50                   	push   %eax
 222:	e8 f7 01 00 00       	call   41e <fstat>
  close(fd);
 227:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 22a:	89 c6                	mov    %eax,%esi
  close(fd);
 22c:	e8 bd 01 00 00       	call   3ee <close>
  return r;
 231:	83 c4 10             	add    $0x10,%esp
}
 234:	8d 65 f8             	lea    -0x8(%ebp),%esp
 237:	89 f0                	mov    %esi,%eax
 239:	5b                   	pop    %ebx
 23a:	5e                   	pop    %esi
 23b:	5d                   	pop    %ebp
 23c:	c3                   	ret    
 23d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 240:	be ff ff ff ff       	mov    $0xffffffff,%esi
 245:	eb ed                	jmp    234 <stat+0x34>
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <atoi>:

int
atoi(const char *s)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	53                   	push   %ebx
 254:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 257:	0f be 02             	movsbl (%edx),%eax
 25a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 25d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 260:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 265:	77 1e                	ja     285 <atoi+0x35>
 267:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 270:	83 c2 01             	add    $0x1,%edx
 273:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 276:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 27a:	0f be 02             	movsbl (%edx),%eax
 27d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 280:	80 fb 09             	cmp    $0x9,%bl
 283:	76 eb                	jbe    270 <atoi+0x20>
  return n;
}
 285:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 288:	89 c8                	mov    %ecx,%eax
 28a:	c9                   	leave  
 28b:	c3                   	ret    
 28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000290 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	8b 45 10             	mov    0x10(%ebp),%eax
 297:	8b 55 08             	mov    0x8(%ebp),%edx
 29a:	56                   	push   %esi
 29b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 29e:	85 c0                	test   %eax,%eax
 2a0:	7e 13                	jle    2b5 <memmove+0x25>
 2a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2a4:	89 d7                	mov    %edx,%edi
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2b1:	39 f8                	cmp    %edi,%eax
 2b3:	75 fb                	jne    2b0 <memmove+0x20>
  return vdst;
}
 2b5:	5e                   	pop    %esi
 2b6:	89 d0                	mov    %edx,%eax
 2b8:	5f                   	pop    %edi
 2b9:	5d                   	pop    %ebp
 2ba:	c3                   	ret    
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 2c7:	68 00 10 00 00       	push   $0x1000
 2cc:	e8 8f 04 00 00       	call   760 <malloc>
  if((int) stack % 4096 != 0){
 2d1:	83 c4 10             	add    $0x10,%esp
 2d4:	a9 ff 0f 00 00       	test   $0xfff,%eax
 2d9:	74 16                	je     2f1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 2db:	99                   	cltd   
 2dc:	c1 ea 14             	shr    $0x14,%edx
 2df:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 2e2:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 2e8:	29 ca                	sub    %ecx,%edx
 2ea:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 2f1:	50                   	push   %eax
 2f2:	ff 75 10             	push   0x10(%ebp)
 2f5:	ff 75 0c             	push   0xc(%ebp)
 2f8:	ff 75 08             	push   0x8(%ebp)
 2fb:	e8 66 01 00 00       	call   466 <clone>
  printf(1, " thread create %d \n", rc);
 300:	83 c4 0c             	add    $0xc,%esp
 303:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 304:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 306:	68 5f 08 00 00       	push   $0x85f
 30b:	6a 01                	push   $0x1
 30d:	e8 1e 02 00 00       	call   530 <printf>
  return rc;
}
 312:	89 d8                	mov    %ebx,%eax
 314:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 317:	c9                   	leave  
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <thread_join>:

int
thread_join(){
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 327:	68 73 08 00 00       	push   $0x873
 32c:	6a 01                	push   $0x1
 32e:	e8 fd 01 00 00       	call   530 <printf>
  void** stack = malloc(sizeof(void**));
 333:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 33a:	e8 21 04 00 00       	call   760 <malloc>
 33f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 341:	58                   	pop    %eax
 342:	5a                   	pop    %edx
 343:	68 83 08 00 00       	push   $0x883
 348:	6a 01                	push   $0x1
 34a:	e8 e1 01 00 00       	call   530 <printf>
  int rc = join(stack);
 34f:	89 1c 24             	mov    %ebx,(%esp)
 352:	e8 17 01 00 00       	call   46e <join>
  printf(1, "thread join 3 \n");
 357:	59                   	pop    %ecx
  int rc = join(stack);
 358:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 35a:	58                   	pop    %eax
 35b:	68 93 08 00 00       	push   $0x893
 360:	6a 01                	push   $0x1
 362:	e8 c9 01 00 00       	call   530 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 367:	58                   	pop    %eax
 368:	5a                   	pop    %edx
 369:	68 a3 08 00 00       	push   $0x8a3
 36e:	6a 01                	push   $0x1
 370:	e8 bb 01 00 00       	call   530 <printf>
  return rc;
}
 375:	89 d8                	mov    %ebx,%eax
 377:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 37a:	c9                   	leave  
 37b:	c3                   	ret    
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000380 <lock_acquire>:



void lock_acquire(lock_t * lock){
 380:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 381:	b9 01 00 00 00       	mov    $0x1,%ecx
 386:	89 e5                	mov    %esp,%ebp
 388:	8b 55 08             	mov    0x8(%ebp),%edx
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop
 390:	89 c8                	mov    %ecx,%eax
 392:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 395:	83 f8 01             	cmp    $0x1,%eax
 398:	74 f6                	je     390 <lock_acquire+0x10>
 ; // spin

};
 39a:	5d                   	pop    %ebp
 39b:	c3                   	ret    
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <lock_release>:

void lock_release(lock_t * lock){
 3a0:	55                   	push   %ebp
 3a1:	31 c0                	xor    %eax,%eax
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	8b 55 08             	mov    0x8(%ebp),%edx
 3a8:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 3ab:	5d                   	pop    %ebp
 3ac:	c3                   	ret    
 3ad:	8d 76 00             	lea    0x0(%esi),%esi

000003b0 <lock_init>:

void lock_init(lock_t * lock){
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 3bc:	5d                   	pop    %ebp
 3bd:	c3                   	ret    

000003be <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3be:	b8 01 00 00 00       	mov    $0x1,%eax
 3c3:	cd 40                	int    $0x40
 3c5:	c3                   	ret    

000003c6 <exit>:
SYSCALL(exit)
 3c6:	b8 02 00 00 00       	mov    $0x2,%eax
 3cb:	cd 40                	int    $0x40
 3cd:	c3                   	ret    

000003ce <wait>:
SYSCALL(wait)
 3ce:	b8 03 00 00 00       	mov    $0x3,%eax
 3d3:	cd 40                	int    $0x40
 3d5:	c3                   	ret    

000003d6 <pipe>:
SYSCALL(pipe)
 3d6:	b8 04 00 00 00       	mov    $0x4,%eax
 3db:	cd 40                	int    $0x40
 3dd:	c3                   	ret    

000003de <read>:
SYSCALL(read)
 3de:	b8 05 00 00 00       	mov    $0x5,%eax
 3e3:	cd 40                	int    $0x40
 3e5:	c3                   	ret    

000003e6 <write>:
SYSCALL(write)
 3e6:	b8 10 00 00 00       	mov    $0x10,%eax
 3eb:	cd 40                	int    $0x40
 3ed:	c3                   	ret    

000003ee <close>:
SYSCALL(close)
 3ee:	b8 15 00 00 00       	mov    $0x15,%eax
 3f3:	cd 40                	int    $0x40
 3f5:	c3                   	ret    

000003f6 <kill>:
SYSCALL(kill)
 3f6:	b8 06 00 00 00       	mov    $0x6,%eax
 3fb:	cd 40                	int    $0x40
 3fd:	c3                   	ret    

000003fe <exec>:
SYSCALL(exec)
 3fe:	b8 07 00 00 00       	mov    $0x7,%eax
 403:	cd 40                	int    $0x40
 405:	c3                   	ret    

00000406 <open>:
SYSCALL(open)
 406:	b8 0f 00 00 00       	mov    $0xf,%eax
 40b:	cd 40                	int    $0x40
 40d:	c3                   	ret    

0000040e <mknod>:
SYSCALL(mknod)
 40e:	b8 11 00 00 00       	mov    $0x11,%eax
 413:	cd 40                	int    $0x40
 415:	c3                   	ret    

00000416 <unlink>:
SYSCALL(unlink)
 416:	b8 12 00 00 00       	mov    $0x12,%eax
 41b:	cd 40                	int    $0x40
 41d:	c3                   	ret    

0000041e <fstat>:
SYSCALL(fstat)
 41e:	b8 08 00 00 00       	mov    $0x8,%eax
 423:	cd 40                	int    $0x40
 425:	c3                   	ret    

00000426 <link>:
SYSCALL(link)
 426:	b8 13 00 00 00       	mov    $0x13,%eax
 42b:	cd 40                	int    $0x40
 42d:	c3                   	ret    

0000042e <mkdir>:
SYSCALL(mkdir)
 42e:	b8 14 00 00 00       	mov    $0x14,%eax
 433:	cd 40                	int    $0x40
 435:	c3                   	ret    

00000436 <chdir>:
SYSCALL(chdir)
 436:	b8 09 00 00 00       	mov    $0x9,%eax
 43b:	cd 40                	int    $0x40
 43d:	c3                   	ret    

0000043e <dup>:
SYSCALL(dup)
 43e:	b8 0a 00 00 00       	mov    $0xa,%eax
 443:	cd 40                	int    $0x40
 445:	c3                   	ret    

00000446 <getpid>:
SYSCALL(getpid)
 446:	b8 0b 00 00 00       	mov    $0xb,%eax
 44b:	cd 40                	int    $0x40
 44d:	c3                   	ret    

0000044e <sbrk>:
SYSCALL(sbrk)
 44e:	b8 0c 00 00 00       	mov    $0xc,%eax
 453:	cd 40                	int    $0x40
 455:	c3                   	ret    

00000456 <sleep>:
SYSCALL(sleep)
 456:	b8 0d 00 00 00       	mov    $0xd,%eax
 45b:	cd 40                	int    $0x40
 45d:	c3                   	ret    

0000045e <uptime>:
SYSCALL(uptime)
 45e:	b8 0e 00 00 00       	mov    $0xe,%eax
 463:	cd 40                	int    $0x40
 465:	c3                   	ret    

00000466 <clone>:
SYSCALL(clone)
 466:	b8 16 00 00 00       	mov    $0x16,%eax
 46b:	cd 40                	int    $0x40
 46d:	c3                   	ret    

0000046e <join>:
SYSCALL(join)
 46e:	b8 17 00 00 00       	mov    $0x17,%eax
 473:	cd 40                	int    $0x40
 475:	c3                   	ret    
 476:	66 90                	xchg   %ax,%ax
 478:	66 90                	xchg   %ax,%ax
 47a:	66 90                	xchg   %ax,%ax
 47c:	66 90                	xchg   %ax,%ax
 47e:	66 90                	xchg   %ax,%ax

00000480 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
 485:	53                   	push   %ebx
 486:	83 ec 3c             	sub    $0x3c,%esp
 489:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 48c:	89 d1                	mov    %edx,%ecx
{
 48e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 491:	85 d2                	test   %edx,%edx
 493:	0f 89 7f 00 00 00    	jns    518 <printint+0x98>
 499:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 49d:	74 79                	je     518 <printint+0x98>
    neg = 1;
 49f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 4a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 4a8:	31 db                	xor    %ebx,%ebx
 4aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4b0:	89 c8                	mov    %ecx,%eax
 4b2:	31 d2                	xor    %edx,%edx
 4b4:	89 cf                	mov    %ecx,%edi
 4b6:	f7 75 c4             	divl   -0x3c(%ebp)
 4b9:	0f b6 92 14 09 00 00 	movzbl 0x914(%edx),%edx
 4c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 4c3:	89 d8                	mov    %ebx,%eax
 4c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 4c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 4cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 4ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 4d1:	76 dd                	jbe    4b0 <printint+0x30>
  if(neg)
 4d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 4d6:	85 c9                	test   %ecx,%ecx
 4d8:	74 0c                	je     4e6 <printint+0x66>
    buf[i++] = '-';
 4da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 4df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 4e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 4e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 4e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 4ed:	eb 07                	jmp    4f6 <printint+0x76>
 4ef:	90                   	nop
    putc(fd, buf[i]);
 4f0:	0f b6 13             	movzbl (%ebx),%edx
 4f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 4f6:	83 ec 04             	sub    $0x4,%esp
 4f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 4fc:	6a 01                	push   $0x1
 4fe:	56                   	push   %esi
 4ff:	57                   	push   %edi
 500:	e8 e1 fe ff ff       	call   3e6 <write>
  while(--i >= 0)
 505:	83 c4 10             	add    $0x10,%esp
 508:	39 de                	cmp    %ebx,%esi
 50a:	75 e4                	jne    4f0 <printint+0x70>
}
 50c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50f:	5b                   	pop    %ebx
 510:	5e                   	pop    %esi
 511:	5f                   	pop    %edi
 512:	5d                   	pop    %ebp
 513:	c3                   	ret    
 514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 518:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 51f:	eb 87                	jmp    4a8 <printint+0x28>
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 528:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
 536:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 539:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 53c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 53f:	0f b6 13             	movzbl (%ebx),%edx
 542:	84 d2                	test   %dl,%dl
 544:	74 6a                	je     5b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 546:	8d 45 10             	lea    0x10(%ebp),%eax
 549:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 54c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 54f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 551:	89 45 d0             	mov    %eax,-0x30(%ebp)
 554:	eb 36                	jmp    58c <printf+0x5c>
 556:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55d:	8d 76 00             	lea    0x0(%esi),%esi
 560:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 563:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 568:	83 f8 25             	cmp    $0x25,%eax
 56b:	74 15                	je     582 <printf+0x52>
  write(fd, &c, 1);
 56d:	83 ec 04             	sub    $0x4,%esp
 570:	88 55 e7             	mov    %dl,-0x19(%ebp)
 573:	6a 01                	push   $0x1
 575:	57                   	push   %edi
 576:	56                   	push   %esi
 577:	e8 6a fe ff ff       	call   3e6 <write>
 57c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 57f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 582:	0f b6 13             	movzbl (%ebx),%edx
 585:	83 c3 01             	add    $0x1,%ebx
 588:	84 d2                	test   %dl,%dl
 58a:	74 24                	je     5b0 <printf+0x80>
    c = fmt[i] & 0xff;
 58c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 58f:	85 c9                	test   %ecx,%ecx
 591:	74 cd                	je     560 <printf+0x30>
      }
    } else if(state == '%'){
 593:	83 f9 25             	cmp    $0x25,%ecx
 596:	75 ea                	jne    582 <printf+0x52>
      if(c == 'd'){
 598:	83 f8 25             	cmp    $0x25,%eax
 59b:	0f 84 07 01 00 00    	je     6a8 <printf+0x178>
 5a1:	83 e8 63             	sub    $0x63,%eax
 5a4:	83 f8 15             	cmp    $0x15,%eax
 5a7:	77 17                	ja     5c0 <printf+0x90>
 5a9:	ff 24 85 bc 08 00 00 	jmp    *0x8bc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5b3:	5b                   	pop    %ebx
 5b4:	5e                   	pop    %esi
 5b5:	5f                   	pop    %edi
 5b6:	5d                   	pop    %ebp
 5b7:	c3                   	ret    
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop
  write(fd, &c, 1);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 5c6:	6a 01                	push   $0x1
 5c8:	57                   	push   %edi
 5c9:	56                   	push   %esi
 5ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5ce:	e8 13 fe ff ff       	call   3e6 <write>
        putc(fd, c);
 5d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 5d7:	83 c4 0c             	add    $0xc,%esp
 5da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5dd:	6a 01                	push   $0x1
 5df:	57                   	push   %edi
 5e0:	56                   	push   %esi
 5e1:	e8 00 fe ff ff       	call   3e6 <write>
        putc(fd, c);
 5e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5e9:	31 c9                	xor    %ecx,%ecx
 5eb:	eb 95                	jmp    582 <printf+0x52>
 5ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5f0:	83 ec 0c             	sub    $0xc,%esp
 5f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 5f8:	6a 00                	push   $0x0
 5fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5fd:	8b 10                	mov    (%eax),%edx
 5ff:	89 f0                	mov    %esi,%eax
 601:	e8 7a fe ff ff       	call   480 <printint>
        ap++;
 606:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 60a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 60d:	31 c9                	xor    %ecx,%ecx
 60f:	e9 6e ff ff ff       	jmp    582 <printf+0x52>
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 618:	8b 45 d0             	mov    -0x30(%ebp),%eax
 61b:	8b 10                	mov    (%eax),%edx
        ap++;
 61d:	83 c0 04             	add    $0x4,%eax
 620:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 623:	85 d2                	test   %edx,%edx
 625:	0f 84 8d 00 00 00    	je     6b8 <printf+0x188>
        while(*s != 0){
 62b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 62e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 630:	84 c0                	test   %al,%al
 632:	0f 84 4a ff ff ff    	je     582 <printf+0x52>
 638:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 63b:	89 d3                	mov    %edx,%ebx
 63d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
          s++;
 643:	83 c3 01             	add    $0x1,%ebx
 646:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 649:	6a 01                	push   $0x1
 64b:	57                   	push   %edi
 64c:	56                   	push   %esi
 64d:	e8 94 fd ff ff       	call   3e6 <write>
        while(*s != 0){
 652:	0f b6 03             	movzbl (%ebx),%eax
 655:	83 c4 10             	add    $0x10,%esp
 658:	84 c0                	test   %al,%al
 65a:	75 e4                	jne    640 <printf+0x110>
      state = 0;
 65c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 65f:	31 c9                	xor    %ecx,%ecx
 661:	e9 1c ff ff ff       	jmp    582 <printf+0x52>
 666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 670:	83 ec 0c             	sub    $0xc,%esp
 673:	b9 0a 00 00 00       	mov    $0xa,%ecx
 678:	6a 01                	push   $0x1
 67a:	e9 7b ff ff ff       	jmp    5fa <printf+0xca>
 67f:	90                   	nop
        putc(fd, *ap);
 680:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 683:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 686:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 688:	6a 01                	push   $0x1
 68a:	57                   	push   %edi
 68b:	56                   	push   %esi
        putc(fd, *ap);
 68c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 68f:	e8 52 fd ff ff       	call   3e6 <write>
        ap++;
 694:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 698:	83 c4 10             	add    $0x10,%esp
      state = 0;
 69b:	31 c9                	xor    %ecx,%ecx
 69d:	e9 e0 fe ff ff       	jmp    582 <printf+0x52>
 6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 6a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 6ab:	83 ec 04             	sub    $0x4,%esp
 6ae:	e9 2a ff ff ff       	jmp    5dd <printf+0xad>
 6b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6b7:	90                   	nop
          s = "(null)";
 6b8:	ba b3 08 00 00       	mov    $0x8b3,%edx
        while(*s != 0){
 6bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6c0:	b8 28 00 00 00       	mov    $0x28,%eax
 6c5:	89 d3                	mov    %edx,%ebx
 6c7:	e9 74 ff ff ff       	jmp    640 <printf+0x110>
 6cc:	66 90                	xchg   %ax,%ax
 6ce:	66 90                	xchg   %ax,%ax

000006d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	a1 70 0c 00 00       	mov    0xc70,%eax
{
 6d6:	89 e5                	mov    %esp,%ebp
 6d8:	57                   	push   %edi
 6d9:	56                   	push   %esi
 6da:	53                   	push   %ebx
 6db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6e8:	89 c2                	mov    %eax,%edx
 6ea:	8b 00                	mov    (%eax),%eax
 6ec:	39 ca                	cmp    %ecx,%edx
 6ee:	73 30                	jae    720 <free+0x50>
 6f0:	39 c1                	cmp    %eax,%ecx
 6f2:	72 04                	jb     6f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6f4:	39 c2                	cmp    %eax,%edx
 6f6:	72 f0                	jb     6e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6fe:	39 f8                	cmp    %edi,%eax
 700:	74 30                	je     732 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 702:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 705:	8b 42 04             	mov    0x4(%edx),%eax
 708:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 70b:	39 f1                	cmp    %esi,%ecx
 70d:	74 3a                	je     749 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 70f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 711:	5b                   	pop    %ebx
  freep = p;
 712:	89 15 70 0c 00 00    	mov    %edx,0xc70
}
 718:	5e                   	pop    %esi
 719:	5f                   	pop    %edi
 71a:	5d                   	pop    %ebp
 71b:	c3                   	ret    
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 720:	39 c2                	cmp    %eax,%edx
 722:	72 c4                	jb     6e8 <free+0x18>
 724:	39 c1                	cmp    %eax,%ecx
 726:	73 c0                	jae    6e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 728:	8b 73 fc             	mov    -0x4(%ebx),%esi
 72b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 72e:	39 f8                	cmp    %edi,%eax
 730:	75 d0                	jne    702 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 732:	03 70 04             	add    0x4(%eax),%esi
 735:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 738:	8b 02                	mov    (%edx),%eax
 73a:	8b 00                	mov    (%eax),%eax
 73c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 73f:	8b 42 04             	mov    0x4(%edx),%eax
 742:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 745:	39 f1                	cmp    %esi,%ecx
 747:	75 c6                	jne    70f <free+0x3f>
    p->s.size += bp->s.size;
 749:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 74c:	89 15 70 0c 00 00    	mov    %edx,0xc70
    p->s.size += bp->s.size;
 752:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 755:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 758:	89 0a                	mov    %ecx,(%edx)
}
 75a:	5b                   	pop    %ebx
 75b:	5e                   	pop    %esi
 75c:	5f                   	pop    %edi
 75d:	5d                   	pop    %ebp
 75e:	c3                   	ret    
 75f:	90                   	nop

00000760 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 769:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 76c:	8b 3d 70 0c 00 00    	mov    0xc70,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 772:	8d 70 07             	lea    0x7(%eax),%esi
 775:	c1 ee 03             	shr    $0x3,%esi
 778:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 77b:	85 ff                	test   %edi,%edi
 77d:	0f 84 9d 00 00 00    	je     820 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 783:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 785:	8b 4a 04             	mov    0x4(%edx),%ecx
 788:	39 f1                	cmp    %esi,%ecx
 78a:	73 6a                	jae    7f6 <malloc+0x96>
 78c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 791:	39 de                	cmp    %ebx,%esi
 793:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 796:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 79d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7a0:	eb 17                	jmp    7b9 <malloc+0x59>
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7aa:	8b 48 04             	mov    0x4(%eax),%ecx
 7ad:	39 f1                	cmp    %esi,%ecx
 7af:	73 4f                	jae    800 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7b1:	8b 3d 70 0c 00 00    	mov    0xc70,%edi
 7b7:	89 c2                	mov    %eax,%edx
 7b9:	39 d7                	cmp    %edx,%edi
 7bb:	75 eb                	jne    7a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7bd:	83 ec 0c             	sub    $0xc,%esp
 7c0:	ff 75 e4             	push   -0x1c(%ebp)
 7c3:	e8 86 fc ff ff       	call   44e <sbrk>
  if(p == (char*)-1)
 7c8:	83 c4 10             	add    $0x10,%esp
 7cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ce:	74 1c                	je     7ec <malloc+0x8c>
  hp->s.size = nu;
 7d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7d3:	83 ec 0c             	sub    $0xc,%esp
 7d6:	83 c0 08             	add    $0x8,%eax
 7d9:	50                   	push   %eax
 7da:	e8 f1 fe ff ff       	call   6d0 <free>
  return freep;
 7df:	8b 15 70 0c 00 00    	mov    0xc70,%edx
      if((p = morecore(nunits)) == 0)
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	85 d2                	test   %edx,%edx
 7ea:	75 bc                	jne    7a8 <malloc+0x48>
        return 0;
  }
}
 7ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7ef:	31 c0                	xor    %eax,%eax
}
 7f1:	5b                   	pop    %ebx
 7f2:	5e                   	pop    %esi
 7f3:	5f                   	pop    %edi
 7f4:	5d                   	pop    %ebp
 7f5:	c3                   	ret    
    if(p->s.size >= nunits){
 7f6:	89 d0                	mov    %edx,%eax
 7f8:	89 fa                	mov    %edi,%edx
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 800:	39 ce                	cmp    %ecx,%esi
 802:	74 4c                	je     850 <malloc+0xf0>
        p->s.size -= nunits;
 804:	29 f1                	sub    %esi,%ecx
 806:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 809:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 80c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 80f:	89 15 70 0c 00 00    	mov    %edx,0xc70
}
 815:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 818:	83 c0 08             	add    $0x8,%eax
}
 81b:	5b                   	pop    %ebx
 81c:	5e                   	pop    %esi
 81d:	5f                   	pop    %edi
 81e:	5d                   	pop    %ebp
 81f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 820:	c7 05 70 0c 00 00 74 	movl   $0xc74,0xc70
 827:	0c 00 00 
    base.s.size = 0;
 82a:	bf 74 0c 00 00       	mov    $0xc74,%edi
    base.s.ptr = freep = prevp = &base;
 82f:	c7 05 74 0c 00 00 74 	movl   $0xc74,0xc74
 836:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 839:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 83b:	c7 05 78 0c 00 00 00 	movl   $0x0,0xc78
 842:	00 00 00 
    if(p->s.size >= nunits){
 845:	e9 42 ff ff ff       	jmp    78c <malloc+0x2c>
 84a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 850:	8b 08                	mov    (%eax),%ecx
 852:	89 0a                	mov    %ecx,(%edx)
 854:	eb b9                	jmp    80f <malloc+0xaf>
