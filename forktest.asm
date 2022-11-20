
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   6:	e8 35 00 00 00       	call   40 <forktest>
  exit();
   b:	e8 66 04 00 00       	call   476 <exit>

00000010 <printf>:
{
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	83 ec 10             	sub    $0x10,%esp
  17:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  1a:	53                   	push   %ebx
  1b:	e8 90 01 00 00       	call   1b0 <strlen>
  20:	83 c4 0c             	add    $0xc,%esp
  23:	50                   	push   %eax
  24:	53                   	push   %ebx
  25:	ff 75 08             	push   0x8(%ebp)
  28:	e8 69 04 00 00       	call   496 <write>
}
  2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  30:	83 c4 10             	add    $0x10,%esp
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000040 <forktest>:
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  for(n=0; n<N; n++){
  44:	31 db                	xor    %ebx,%ebx
{
  46:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  49:	68 b8 06 00 00       	push   $0x6b8
  4e:	e8 5d 01 00 00       	call   1b0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 b8 06 00 00       	push   $0x6b8
  5c:	6a 01                	push   $0x1
  5e:	e8 33 04 00 00       	call   496 <write>
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb 19                	jmp    81 <forktest+0x41>
  68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6f:	90                   	nop
    if(pid == 0)
  70:	74 58                	je     ca <forktest+0x8a>
  for(n=0; n<N; n++){
  72:	83 c3 01             	add    $0x1,%ebx
  75:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  7b:	0f 84 83 00 00 00    	je     104 <forktest+0xc4>
    pid = fork();
  81:	e8 e8 03 00 00       	call   46e <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 e9 03 00 00       	call   47e <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 db 03 00 00       	call   47e <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 ea 06 00 00       	push   $0x6ea
  b0:	e8 fb 00 00 00       	call   1b0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 ea 06 00 00       	push   $0x6ea
  be:	6a 01                	push   $0x1
  c0:	e8 d1 03 00 00       	call   496 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave  
  c9:	c3                   	ret    
      exit();
  ca:	e8 a7 03 00 00       	call   476 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 c3 06 00 00       	push   $0x6c3
  d7:	e8 d4 00 00 00       	call   1b0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 c3 06 00 00       	push   $0x6c3
  e5:	6a 01                	push   $0x1
  e7:	e8 aa 03 00 00       	call   496 <write>
      exit();
  ec:	e8 85 03 00 00       	call   476 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 d7 06 00 00       	push   $0x6d7
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 72 03 00 00       	call   476 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 f8 06 00 00       	push   $0x6f8
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 5b 03 00 00       	call   476 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 120:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 121:	31 c0                	xor    %eax,%eax
{
 123:	89 e5                	mov    %esp,%ebp
 125:	53                   	push   %ebx
 126:	8b 4d 08             	mov    0x8(%ebp),%ecx
 129:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 130:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 134:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 137:	83 c0 01             	add    $0x1,%eax
 13a:	84 d2                	test   %dl,%dl
 13c:	75 f2                	jne    130 <strcpy+0x10>
    ;
  return os;
}
 13e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 141:	89 c8                	mov    %ecx,%eax
 143:	c9                   	leave  
 144:	c3                   	ret    
 145:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	53                   	push   %ebx
 154:	8b 55 08             	mov    0x8(%ebp),%edx
 157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 15a:	0f b6 02             	movzbl (%edx),%eax
 15d:	84 c0                	test   %al,%al
 15f:	75 17                	jne    178 <strcmp+0x28>
 161:	eb 3a                	jmp    19d <strcmp+0x4d>
 163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 167:	90                   	nop
 168:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 16c:	83 c2 01             	add    $0x1,%edx
 16f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 172:	84 c0                	test   %al,%al
 174:	74 1a                	je     190 <strcmp+0x40>
    p++, q++;
 176:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 178:	0f b6 19             	movzbl (%ecx),%ebx
 17b:	38 c3                	cmp    %al,%bl
 17d:	74 e9                	je     168 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 17f:	29 d8                	sub    %ebx,%eax
}
 181:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 184:	c9                   	leave  
 185:	c3                   	ret    
 186:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 190:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 194:	31 c0                	xor    %eax,%eax
 196:	29 d8                	sub    %ebx,%eax
}
 198:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 19b:	c9                   	leave  
 19c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 19d:	0f b6 19             	movzbl (%ecx),%ebx
 1a0:	31 c0                	xor    %eax,%eax
 1a2:	eb db                	jmp    17f <strcmp+0x2f>
 1a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <strlen>:

uint
strlen(const char *s)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1b6:	80 3a 00             	cmpb   $0x0,(%edx)
 1b9:	74 15                	je     1d0 <strlen+0x20>
 1bb:	31 c0                	xor    %eax,%eax
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
 1c0:	83 c0 01             	add    $0x1,%eax
 1c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1c7:	89 c1                	mov    %eax,%ecx
 1c9:	75 f5                	jne    1c0 <strlen+0x10>
    ;
  return n;
}
 1cb:	89 c8                	mov    %ecx,%eax
 1cd:	5d                   	pop    %ebp
 1ce:	c3                   	ret    
 1cf:	90                   	nop
  for(n = 0; s[n]; n++)
 1d0:	31 c9                	xor    %ecx,%ecx
}
 1d2:	5d                   	pop    %ebp
 1d3:	89 c8                	mov    %ecx,%eax
 1d5:	c3                   	ret    
 1d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1dd:	8d 76 00             	lea    0x0(%esi),%esi

000001e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	57                   	push   %edi
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ed:	89 d7                	mov    %edx,%edi
 1ef:	fc                   	cld    
 1f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1f5:	89 d0                	mov    %edx,%eax
 1f7:	c9                   	leave  
 1f8:	c3                   	ret    
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000200 <strchr>:

char*
strchr(const char *s, char c)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	8b 45 08             	mov    0x8(%ebp),%eax
 206:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 20a:	0f b6 10             	movzbl (%eax),%edx
 20d:	84 d2                	test   %dl,%dl
 20f:	75 12                	jne    223 <strchr+0x23>
 211:	eb 1d                	jmp    230 <strchr+0x30>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 21c:	83 c0 01             	add    $0x1,%eax
 21f:	84 d2                	test   %dl,%dl
 221:	74 0d                	je     230 <strchr+0x30>
    if(*s == c)
 223:	38 d1                	cmp    %dl,%cl
 225:	75 f1                	jne    218 <strchr+0x18>
      return (char*)s;
  return 0;
}
 227:	5d                   	pop    %ebp
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 230:	31 c0                	xor    %eax,%eax
}
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <gets>:

char*
gets(char *buf, int max)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 245:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 248:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 249:	31 db                	xor    %ebx,%ebx
{
 24b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 24e:	eb 27                	jmp    277 <gets+0x37>
    cc = read(0, &c, 1);
 250:	83 ec 04             	sub    $0x4,%esp
 253:	6a 01                	push   $0x1
 255:	57                   	push   %edi
 256:	6a 00                	push   $0x0
 258:	e8 31 02 00 00       	call   48e <read>
    if(cc < 1)
 25d:	83 c4 10             	add    $0x10,%esp
 260:	85 c0                	test   %eax,%eax
 262:	7e 1d                	jle    281 <gets+0x41>
      break;
    buf[i++] = c;
 264:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 268:	8b 55 08             	mov    0x8(%ebp),%edx
 26b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 26f:	3c 0a                	cmp    $0xa,%al
 271:	74 1d                	je     290 <gets+0x50>
 273:	3c 0d                	cmp    $0xd,%al
 275:	74 19                	je     290 <gets+0x50>
  for(i=0; i+1 < max; ){
 277:	89 de                	mov    %ebx,%esi
 279:	83 c3 01             	add    $0x1,%ebx
 27c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 27f:	7c cf                	jl     250 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 281:	8b 45 08             	mov    0x8(%ebp),%eax
 284:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 288:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28b:	5b                   	pop    %ebx
 28c:	5e                   	pop    %esi
 28d:	5f                   	pop    %edi
 28e:	5d                   	pop    %ebp
 28f:	c3                   	ret    
  buf[i] = '\0';
 290:	8b 45 08             	mov    0x8(%ebp),%eax
 293:	89 de                	mov    %ebx,%esi
 295:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 299:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29c:	5b                   	pop    %ebx
 29d:	5e                   	pop    %esi
 29e:	5f                   	pop    %edi
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret    
 2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	56                   	push   %esi
 2b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b5:	83 ec 08             	sub    $0x8,%esp
 2b8:	6a 00                	push   $0x0
 2ba:	ff 75 08             	push   0x8(%ebp)
 2bd:	e8 f4 01 00 00       	call   4b6 <open>
  if(fd < 0)
 2c2:	83 c4 10             	add    $0x10,%esp
 2c5:	85 c0                	test   %eax,%eax
 2c7:	78 27                	js     2f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2c9:	83 ec 08             	sub    $0x8,%esp
 2cc:	ff 75 0c             	push   0xc(%ebp)
 2cf:	89 c3                	mov    %eax,%ebx
 2d1:	50                   	push   %eax
 2d2:	e8 f7 01 00 00       	call   4ce <fstat>
  close(fd);
 2d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2da:	89 c6                	mov    %eax,%esi
  close(fd);
 2dc:	e8 bd 01 00 00       	call   49e <close>
  return r;
 2e1:	83 c4 10             	add    $0x10,%esp
}
 2e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2e7:	89 f0                	mov    %esi,%eax
 2e9:	5b                   	pop    %ebx
 2ea:	5e                   	pop    %esi
 2eb:	5d                   	pop    %ebp
 2ec:	c3                   	ret    
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2f5:	eb ed                	jmp    2e4 <stat+0x34>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax

00000300 <atoi>:

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 02             	movsbl (%edx),%eax
 30a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 30d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 310:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 315:	77 1e                	ja     335 <atoi+0x35>
 317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 320:	83 c2 01             	add    $0x1,%edx
 323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 32a:	0f be 02             	movsbl (%edx),%eax
 32d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x20>
  return n;
}
 335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 338:	89 c8                	mov    %ecx,%eax
 33a:	c9                   	leave  
 33b:	c3                   	ret    
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	8b 45 10             	mov    0x10(%ebp),%eax
 347:	8b 55 08             	mov    0x8(%ebp),%edx
 34a:	56                   	push   %esi
 34b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 34e:	85 c0                	test   %eax,%eax
 350:	7e 13                	jle    365 <memmove+0x25>
 352:	01 d0                	add    %edx,%eax
  dst = vdst;
 354:	89 d7                	mov    %edx,%edi
 356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 361:	39 f8                	cmp    %edi,%eax
 363:	75 fb                	jne    360 <memmove+0x20>
  return vdst;
}
 365:	5e                   	pop    %esi
 366:	89 d0                	mov    %edx,%eax
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 377:	68 00 10 00 00       	push   $0x1000
 37c:	e8 3f 02 00 00       	call   5c0 <malloc>
  if((int) stack % 4096 != 0){
 381:	83 c4 10             	add    $0x10,%esp
 384:	a9 ff 0f 00 00       	test   $0xfff,%eax
 389:	74 16                	je     3a1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 38b:	99                   	cltd   
 38c:	c1 ea 14             	shr    $0x14,%edx
 38f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 392:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 398:	29 ca                	sub    %ecx,%edx
 39a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 3a1:	50                   	push   %eax
 3a2:	ff 75 10             	push   0x10(%ebp)
 3a5:	ff 75 0c             	push   0xc(%ebp)
 3a8:	ff 75 08             	push   0x8(%ebp)
 3ab:	e8 66 01 00 00       	call   516 <clone>
  printf(1, " thread create %d \n", rc);
 3b0:	83 c4 0c             	add    $0xc,%esp
 3b3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 3b4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 3b6:	68 17 07 00 00       	push   $0x717
 3bb:	6a 01                	push   $0x1
 3bd:	e8 4e fc ff ff       	call   10 <printf>
  return rc;
}
 3c2:	89 d8                	mov    %ebx,%eax
 3c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c7:	c9                   	leave  
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <thread_join>:

int
thread_join(){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 3d7:	68 2b 07 00 00       	push   $0x72b
 3dc:	6a 01                	push   $0x1
 3de:	e8 2d fc ff ff       	call   10 <printf>
  void** stack = malloc(sizeof(void**));
 3e3:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 3ea:	e8 d1 01 00 00       	call   5c0 <malloc>
 3ef:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 3f1:	58                   	pop    %eax
 3f2:	5a                   	pop    %edx
 3f3:	68 3b 07 00 00       	push   $0x73b
 3f8:	6a 01                	push   $0x1
 3fa:	e8 11 fc ff ff       	call   10 <printf>
  int rc = join(stack);
 3ff:	89 1c 24             	mov    %ebx,(%esp)
 402:	e8 17 01 00 00       	call   51e <join>
  printf(1, "thread join 3 \n");
 407:	59                   	pop    %ecx
  int rc = join(stack);
 408:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 40a:	58                   	pop    %eax
 40b:	68 4b 07 00 00       	push   $0x74b
 410:	6a 01                	push   $0x1
 412:	e8 f9 fb ff ff       	call   10 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 417:	58                   	pop    %eax
 418:	5a                   	pop    %edx
 419:	68 5b 07 00 00       	push   $0x75b
 41e:	6a 01                	push   $0x1
 420:	e8 eb fb ff ff       	call   10 <printf>
  return rc;
}
 425:	89 d8                	mov    %ebx,%eax
 427:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 42a:	c9                   	leave  
 42b:	c3                   	ret    
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <lock_acquire>:



void lock_acquire(lock_t * lock){
 430:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 431:	b9 01 00 00 00       	mov    $0x1,%ecx
 436:	89 e5                	mov    %esp,%ebp
 438:	8b 55 08             	mov    0x8(%ebp),%edx
 43b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop
 440:	89 c8                	mov    %ecx,%eax
 442:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 445:	83 f8 01             	cmp    $0x1,%eax
 448:	74 f6                	je     440 <lock_acquire+0x10>
 ; // spin

};
 44a:	5d                   	pop    %ebp
 44b:	c3                   	ret    
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <lock_release>:

void lock_release(lock_t * lock){
 450:	55                   	push   %ebp
 451:	31 c0                	xor    %eax,%eax
 453:	89 e5                	mov    %esp,%ebp
 455:	8b 55 08             	mov    0x8(%ebp),%edx
 458:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi

00000460 <lock_init>:

void lock_init(lock_t * lock){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 46c:	5d                   	pop    %ebp
 46d:	c3                   	ret    

0000046e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 46e:	b8 01 00 00 00       	mov    $0x1,%eax
 473:	cd 40                	int    $0x40
 475:	c3                   	ret    

00000476 <exit>:
SYSCALL(exit)
 476:	b8 02 00 00 00       	mov    $0x2,%eax
 47b:	cd 40                	int    $0x40
 47d:	c3                   	ret    

0000047e <wait>:
SYSCALL(wait)
 47e:	b8 03 00 00 00       	mov    $0x3,%eax
 483:	cd 40                	int    $0x40
 485:	c3                   	ret    

00000486 <pipe>:
SYSCALL(pipe)
 486:	b8 04 00 00 00       	mov    $0x4,%eax
 48b:	cd 40                	int    $0x40
 48d:	c3                   	ret    

0000048e <read>:
SYSCALL(read)
 48e:	b8 05 00 00 00       	mov    $0x5,%eax
 493:	cd 40                	int    $0x40
 495:	c3                   	ret    

00000496 <write>:
SYSCALL(write)
 496:	b8 10 00 00 00       	mov    $0x10,%eax
 49b:	cd 40                	int    $0x40
 49d:	c3                   	ret    

0000049e <close>:
SYSCALL(close)
 49e:	b8 15 00 00 00       	mov    $0x15,%eax
 4a3:	cd 40                	int    $0x40
 4a5:	c3                   	ret    

000004a6 <kill>:
SYSCALL(kill)
 4a6:	b8 06 00 00 00       	mov    $0x6,%eax
 4ab:	cd 40                	int    $0x40
 4ad:	c3                   	ret    

000004ae <exec>:
SYSCALL(exec)
 4ae:	b8 07 00 00 00       	mov    $0x7,%eax
 4b3:	cd 40                	int    $0x40
 4b5:	c3                   	ret    

000004b6 <open>:
SYSCALL(open)
 4b6:	b8 0f 00 00 00       	mov    $0xf,%eax
 4bb:	cd 40                	int    $0x40
 4bd:	c3                   	ret    

000004be <mknod>:
SYSCALL(mknod)
 4be:	b8 11 00 00 00       	mov    $0x11,%eax
 4c3:	cd 40                	int    $0x40
 4c5:	c3                   	ret    

000004c6 <unlink>:
SYSCALL(unlink)
 4c6:	b8 12 00 00 00       	mov    $0x12,%eax
 4cb:	cd 40                	int    $0x40
 4cd:	c3                   	ret    

000004ce <fstat>:
SYSCALL(fstat)
 4ce:	b8 08 00 00 00       	mov    $0x8,%eax
 4d3:	cd 40                	int    $0x40
 4d5:	c3                   	ret    

000004d6 <link>:
SYSCALL(link)
 4d6:	b8 13 00 00 00       	mov    $0x13,%eax
 4db:	cd 40                	int    $0x40
 4dd:	c3                   	ret    

000004de <mkdir>:
SYSCALL(mkdir)
 4de:	b8 14 00 00 00       	mov    $0x14,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    

000004e6 <chdir>:
SYSCALL(chdir)
 4e6:	b8 09 00 00 00       	mov    $0x9,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    

000004ee <dup>:
SYSCALL(dup)
 4ee:	b8 0a 00 00 00       	mov    $0xa,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <getpid>:
SYSCALL(getpid)
 4f6:	b8 0b 00 00 00       	mov    $0xb,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    

000004fe <sbrk>:
SYSCALL(sbrk)
 4fe:	b8 0c 00 00 00       	mov    $0xc,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    

00000506 <sleep>:
SYSCALL(sleep)
 506:	b8 0d 00 00 00       	mov    $0xd,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    

0000050e <uptime>:
SYSCALL(uptime)
 50e:	b8 0e 00 00 00       	mov    $0xe,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <clone>:
SYSCALL(clone)
 516:	b8 16 00 00 00       	mov    $0x16,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <join>:
SYSCALL(join)
 51e:	b8 17 00 00 00       	mov    $0x17,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    
 526:	66 90                	xchg   %ax,%ax
 528:	66 90                	xchg   %ax,%ax
 52a:	66 90                	xchg   %ax,%ax
 52c:	66 90                	xchg   %ax,%ax
 52e:	66 90                	xchg   %ax,%ax

00000530 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 530:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 531:	a1 8c 0a 00 00       	mov    0xa8c,%eax
{
 536:	89 e5                	mov    %esp,%ebp
 538:	57                   	push   %edi
 539:	56                   	push   %esi
 53a:	53                   	push   %ebx
 53b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 53e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	89 c2                	mov    %eax,%edx
 54a:	8b 00                	mov    (%eax),%eax
 54c:	39 ca                	cmp    %ecx,%edx
 54e:	73 30                	jae    580 <free+0x50>
 550:	39 c1                	cmp    %eax,%ecx
 552:	72 04                	jb     558 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 554:	39 c2                	cmp    %eax,%edx
 556:	72 f0                	jb     548 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 558:	8b 73 fc             	mov    -0x4(%ebx),%esi
 55b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 55e:	39 f8                	cmp    %edi,%eax
 560:	74 30                	je     592 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 562:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 565:	8b 42 04             	mov    0x4(%edx),%eax
 568:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 56b:	39 f1                	cmp    %esi,%ecx
 56d:	74 3a                	je     5a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 56f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 571:	5b                   	pop    %ebx
  freep = p;
 572:	89 15 8c 0a 00 00    	mov    %edx,0xa8c
}
 578:	5e                   	pop    %esi
 579:	5f                   	pop    %edi
 57a:	5d                   	pop    %ebp
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 580:	39 c2                	cmp    %eax,%edx
 582:	72 c4                	jb     548 <free+0x18>
 584:	39 c1                	cmp    %eax,%ecx
 586:	73 c0                	jae    548 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 588:	8b 73 fc             	mov    -0x4(%ebx),%esi
 58b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 58e:	39 f8                	cmp    %edi,%eax
 590:	75 d0                	jne    562 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 592:	03 70 04             	add    0x4(%eax),%esi
 595:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 598:	8b 02                	mov    (%edx),%eax
 59a:	8b 00                	mov    (%eax),%eax
 59c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 59f:	8b 42 04             	mov    0x4(%edx),%eax
 5a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5a5:	39 f1                	cmp    %esi,%ecx
 5a7:	75 c6                	jne    56f <free+0x3f>
    p->s.size += bp->s.size;
 5a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 5ac:	89 15 8c 0a 00 00    	mov    %edx,0xa8c
    p->s.size += bp->s.size;
 5b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 5b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 5b8:	89 0a                	mov    %ecx,(%edx)
}
 5ba:	5b                   	pop    %ebx
 5bb:	5e                   	pop    %esi
 5bc:	5f                   	pop    %edi
 5bd:	5d                   	pop    %ebp
 5be:	c3                   	ret    
 5bf:	90                   	nop

000005c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 5cc:	8b 3d 8c 0a 00 00    	mov    0xa8c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5d2:	8d 70 07             	lea    0x7(%eax),%esi
 5d5:	c1 ee 03             	shr    $0x3,%esi
 5d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 5db:	85 ff                	test   %edi,%edi
 5dd:	0f 84 9d 00 00 00    	je     680 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 5e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 5e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 5e8:	39 f1                	cmp    %esi,%ecx
 5ea:	73 6a                	jae    656 <malloc+0x96>
 5ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 5f1:	39 de                	cmp    %ebx,%esi
 5f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 5f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 5fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 600:	eb 17                	jmp    619 <malloc+0x59>
 602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 608:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 60a:	8b 48 04             	mov    0x4(%eax),%ecx
 60d:	39 f1                	cmp    %esi,%ecx
 60f:	73 4f                	jae    660 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 611:	8b 3d 8c 0a 00 00    	mov    0xa8c,%edi
 617:	89 c2                	mov    %eax,%edx
 619:	39 d7                	cmp    %edx,%edi
 61b:	75 eb                	jne    608 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 61d:	83 ec 0c             	sub    $0xc,%esp
 620:	ff 75 e4             	push   -0x1c(%ebp)
 623:	e8 d6 fe ff ff       	call   4fe <sbrk>
  if(p == (char*)-1)
 628:	83 c4 10             	add    $0x10,%esp
 62b:	83 f8 ff             	cmp    $0xffffffff,%eax
 62e:	74 1c                	je     64c <malloc+0x8c>
  hp->s.size = nu;
 630:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 633:	83 ec 0c             	sub    $0xc,%esp
 636:	83 c0 08             	add    $0x8,%eax
 639:	50                   	push   %eax
 63a:	e8 f1 fe ff ff       	call   530 <free>
  return freep;
 63f:	8b 15 8c 0a 00 00    	mov    0xa8c,%edx
      if((p = morecore(nunits)) == 0)
 645:	83 c4 10             	add    $0x10,%esp
 648:	85 d2                	test   %edx,%edx
 64a:	75 bc                	jne    608 <malloc+0x48>
        return 0;
  }
}
 64c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 64f:	31 c0                	xor    %eax,%eax
}
 651:	5b                   	pop    %ebx
 652:	5e                   	pop    %esi
 653:	5f                   	pop    %edi
 654:	5d                   	pop    %ebp
 655:	c3                   	ret    
    if(p->s.size >= nunits){
 656:	89 d0                	mov    %edx,%eax
 658:	89 fa                	mov    %edi,%edx
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 660:	39 ce                	cmp    %ecx,%esi
 662:	74 4c                	je     6b0 <malloc+0xf0>
        p->s.size -= nunits;
 664:	29 f1                	sub    %esi,%ecx
 666:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 669:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 66c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 66f:	89 15 8c 0a 00 00    	mov    %edx,0xa8c
}
 675:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 678:	83 c0 08             	add    $0x8,%eax
}
 67b:	5b                   	pop    %ebx
 67c:	5e                   	pop    %esi
 67d:	5f                   	pop    %edi
 67e:	5d                   	pop    %ebp
 67f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 680:	c7 05 8c 0a 00 00 90 	movl   $0xa90,0xa8c
 687:	0a 00 00 
    base.s.size = 0;
 68a:	bf 90 0a 00 00       	mov    $0xa90,%edi
    base.s.ptr = freep = prevp = &base;
 68f:	c7 05 90 0a 00 00 90 	movl   $0xa90,0xa90
 696:	0a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 699:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 69b:	c7 05 94 0a 00 00 00 	movl   $0x0,0xa94
 6a2:	00 00 00 
    if(p->s.size >= nunits){
 6a5:	e9 42 ff ff ff       	jmp    5ec <malloc+0x2c>
 6aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 6b0:	8b 08                	mov    (%eax),%ecx
 6b2:	89 0a                	mov    %ecx,(%edx)
 6b4:	eb b9                	jmp    66f <malloc+0xaf>
