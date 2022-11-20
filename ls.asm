
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

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
  10:	bb 01 00 00 00       	mov    $0x1,%ebx
  15:	51                   	push   %ecx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 31                	mov    (%ecx),%esi
  1b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1e:	83 fe 01             	cmp    $0x1,%esi
  21:	7e 1f                	jle    42 <main+0x42>
  23:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  27:	90                   	nop
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
  2e:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  31:	e8 ca 00 00 00       	call   100 <ls>
  for(i=1; i<argc; i++)
  36:	83 c4 10             	add    $0x10,%esp
  39:	39 de                	cmp    %ebx,%esi
  3b:	75 eb                	jne    28 <main+0x28>
  exit();
  3d:	e8 54 06 00 00       	call   696 <exit>
    ls(".");
  42:	83 ec 0c             	sub    $0xc,%esp
  45:	68 70 0b 00 00       	push   $0xb70
  4a:	e8 b1 00 00 00       	call   100 <ls>
    exit();
  4f:	e8 42 06 00 00       	call   696 <exit>
  54:	66 90                	xchg   %ax,%ax
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <fmtname>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 75 08             	mov    0x8(%ebp),%esi
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  68:	83 ec 0c             	sub    $0xc,%esp
  6b:	56                   	push   %esi
  6c:	e8 5f 03 00 00       	call   3d0 <strlen>
  71:	83 c4 10             	add    $0x10,%esp
  74:	01 f0                	add    %esi,%eax
  76:	89 c3                	mov    %eax,%ebx
  78:	73 0f                	jae    89 <fmtname+0x29>
  7a:	eb 12                	jmp    8e <fmtname+0x2e>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  80:	8d 43 ff             	lea    -0x1(%ebx),%eax
  83:	39 c6                	cmp    %eax,%esi
  85:	77 0a                	ja     91 <fmtname+0x31>
  87:	89 c3                	mov    %eax,%ebx
  89:	80 3b 2f             	cmpb   $0x2f,(%ebx)
  8c:	75 f2                	jne    80 <fmtname+0x20>
  p++;
  8e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
  91:	83 ec 0c             	sub    $0xc,%esp
  94:	53                   	push   %ebx
  95:	e8 36 03 00 00       	call   3d0 <strlen>
  9a:	83 c4 10             	add    $0x10,%esp
  9d:	83 f8 0d             	cmp    $0xd,%eax
  a0:	77 4a                	ja     ec <fmtname+0x8c>
  memmove(buf, p, strlen(p));
  a2:	83 ec 0c             	sub    $0xc,%esp
  a5:	53                   	push   %ebx
  a6:	e8 25 03 00 00       	call   3d0 <strlen>
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	50                   	push   %eax
  af:	53                   	push   %ebx
  b0:	68 00 10 00 00       	push   $0x1000
  b5:	e8 a6 04 00 00       	call   560 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 1c 24             	mov    %ebx,(%esp)
  bd:	e8 0e 03 00 00       	call   3d0 <strlen>
  c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  c5:	bb 00 10 00 00       	mov    $0x1000,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	89 c6                	mov    %eax,%esi
  cc:	e8 ff 02 00 00       	call   3d0 <strlen>
  d1:	ba 0e 00 00 00       	mov    $0xe,%edx
  d6:	83 c4 0c             	add    $0xc,%esp
  d9:	29 f2                	sub    %esi,%edx
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	52                   	push   %edx
  e1:	6a 20                	push   $0x20
  e3:	50                   	push   %eax
  e4:	e8 17 03 00 00       	call   400 <memset>
  return buf;
  e9:	83 c4 10             	add    $0x10,%esp
}
  ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
  ef:	89 d8                	mov    %ebx,%eax
  f1:	5b                   	pop    %ebx
  f2:	5e                   	pop    %esi
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret    
  f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000100 <ls>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 64 02 00 00    	sub    $0x264,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 10f:	6a 00                	push   $0x0
 111:	57                   	push   %edi
 112:	e8 bf 05 00 00       	call   6d6 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 88 9e 01 00 00    	js     2c0 <ls+0x1c0>
  if(fstat(fd, &st) < 0){
 122:	83 ec 08             	sub    $0x8,%esp
 125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12b:	89 c3                	mov    %eax,%ebx
 12d:	56                   	push   %esi
 12e:	50                   	push   %eax
 12f:	e8 ba 05 00 00       	call   6ee <fstat>
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	0f 88 c1 01 00 00    	js     300 <ls+0x200>
  switch(st.type){
 13f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 146:	66 83 f8 01          	cmp    $0x1,%ax
 14a:	74 64                	je     1b0 <ls+0xb0>
 14c:	66 83 f8 02          	cmp    $0x2,%ax
 150:	74 1e                	je     170 <ls+0x70>
  close(fd);
 152:	83 ec 0c             	sub    $0xc,%esp
 155:	53                   	push   %ebx
 156:	e8 63 05 00 00       	call   6be <close>
 15b:	83 c4 10             	add    $0x10,%esp
}
 15e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 161:	5b                   	pop    %ebx
 162:	5e                   	pop    %esi
 163:	5f                   	pop    %edi
 164:	5d                   	pop    %ebp
 165:	c3                   	ret    
 166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 170:	83 ec 0c             	sub    $0xc,%esp
 173:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 179:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 17f:	57                   	push   %edi
 180:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 186:	e8 d5 fe ff ff       	call   60 <fmtname>
 18b:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 191:	59                   	pop    %ecx
 192:	5f                   	pop    %edi
 193:	52                   	push   %edx
 194:	56                   	push   %esi
 195:	6a 02                	push   $0x2
 197:	50                   	push   %eax
 198:	68 50 0b 00 00       	push   $0xb50
 19d:	6a 01                	push   $0x1
 19f:	e8 5c 06 00 00       	call   800 <printf>
    break;
 1a4:	83 c4 20             	add    $0x20,%esp
 1a7:	eb a9                	jmp    152 <ls+0x52>
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1b0:	83 ec 0c             	sub    $0xc,%esp
 1b3:	57                   	push   %edi
 1b4:	e8 17 02 00 00       	call   3d0 <strlen>
 1b9:	83 c4 10             	add    $0x10,%esp
 1bc:	83 c0 10             	add    $0x10,%eax
 1bf:	3d 00 02 00 00       	cmp    $0x200,%eax
 1c4:	0f 87 16 01 00 00    	ja     2e0 <ls+0x1e0>
    strcpy(buf, path);
 1ca:	83 ec 08             	sub    $0x8,%esp
 1cd:	57                   	push   %edi
 1ce:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 1d4:	57                   	push   %edi
 1d5:	e8 66 01 00 00       	call   340 <strcpy>
    p = buf+strlen(buf);
 1da:	89 3c 24             	mov    %edi,(%esp)
 1dd:	e8 ee 01 00 00       	call   3d0 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1e2:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 1e5:	01 f8                	add    %edi,%eax
    *p++ = '/';
 1e7:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 1ea:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 1f0:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 1f6:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	83 ec 04             	sub    $0x4,%esp
 203:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 209:	6a 10                	push   $0x10
 20b:	50                   	push   %eax
 20c:	53                   	push   %ebx
 20d:	e8 9c 04 00 00       	call   6ae <read>
 212:	83 c4 10             	add    $0x10,%esp
 215:	83 f8 10             	cmp    $0x10,%eax
 218:	0f 85 34 ff ff ff    	jne    152 <ls+0x52>
      if(de.inum == 0)
 21e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 225:	00 
 226:	74 d8                	je     200 <ls+0x100>
      memmove(p, de.name, DIRSIZ);
 228:	83 ec 04             	sub    $0x4,%esp
 22b:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 231:	6a 0e                	push   $0xe
 233:	50                   	push   %eax
 234:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 23a:	e8 21 03 00 00       	call   560 <memmove>
      p[DIRSIZ] = 0;
 23f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 245:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 249:	58                   	pop    %eax
 24a:	5a                   	pop    %edx
 24b:	56                   	push   %esi
 24c:	57                   	push   %edi
 24d:	e8 7e 02 00 00       	call   4d0 <stat>
 252:	83 c4 10             	add    $0x10,%esp
 255:	85 c0                	test   %eax,%eax
 257:	0f 88 cb 00 00 00    	js     328 <ls+0x228>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 25d:	83 ec 0c             	sub    $0xc,%esp
 260:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 266:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 26c:	57                   	push   %edi
 26d:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 274:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 27a:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 280:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 286:	e8 d5 fd ff ff       	call   60 <fmtname>
 28b:	5a                   	pop    %edx
 28c:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 292:	59                   	pop    %ecx
 293:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 299:	51                   	push   %ecx
 29a:	52                   	push   %edx
 29b:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 2a1:	50                   	push   %eax
 2a2:	68 50 0b 00 00       	push   $0xb50
 2a7:	6a 01                	push   $0x1
 2a9:	e8 52 05 00 00       	call   800 <printf>
 2ae:	83 c4 20             	add    $0x20,%esp
 2b1:	e9 4a ff ff ff       	jmp    200 <ls+0x100>
 2b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	57                   	push   %edi
 2c4:	68 28 0b 00 00       	push   $0xb28
 2c9:	6a 02                	push   $0x2
 2cb:	e8 30 05 00 00       	call   800 <printf>
    return;
 2d0:	83 c4 10             	add    $0x10,%esp
}
 2d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d6:	5b                   	pop    %ebx
 2d7:	5e                   	pop    %esi
 2d8:	5f                   	pop    %edi
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret    
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop
      printf(1, "ls: path too long\n");
 2e0:	83 ec 08             	sub    $0x8,%esp
 2e3:	68 5d 0b 00 00       	push   $0xb5d
 2e8:	6a 01                	push   $0x1
 2ea:	e8 11 05 00 00       	call   800 <printf>
      break;
 2ef:	83 c4 10             	add    $0x10,%esp
 2f2:	e9 5b fe ff ff       	jmp    152 <ls+0x52>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot stat %s\n", path);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	57                   	push   %edi
 304:	68 3c 0b 00 00       	push   $0xb3c
 309:	6a 02                	push   $0x2
 30b:	e8 f0 04 00 00       	call   800 <printf>
    close(fd);
 310:	89 1c 24             	mov    %ebx,(%esp)
 313:	e8 a6 03 00 00       	call   6be <close>
    return;
 318:	83 c4 10             	add    $0x10,%esp
}
 31b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31e:	5b                   	pop    %ebx
 31f:	5e                   	pop    %esi
 320:	5f                   	pop    %edi
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
        printf(1, "ls: cannot stat %s\n", buf);
 328:	83 ec 04             	sub    $0x4,%esp
 32b:	57                   	push   %edi
 32c:	68 3c 0b 00 00       	push   $0xb3c
 331:	6a 01                	push   $0x1
 333:	e8 c8 04 00 00       	call   800 <printf>
        continue;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 c0 fe ff ff       	jmp    200 <ls+0x100>

00000340 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 340:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 341:	31 c0                	xor    %eax,%eax
{
 343:	89 e5                	mov    %esp,%ebp
 345:	53                   	push   %ebx
 346:	8b 4d 08             	mov    0x8(%ebp),%ecx
 349:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 357:	83 c0 01             	add    $0x1,%eax
 35a:	84 d2                	test   %dl,%dl
 35c:	75 f2                	jne    350 <strcpy+0x10>
    ;
  return os;
}
 35e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 361:	89 c8                	mov    %ecx,%eax
 363:	c9                   	leave  
 364:	c3                   	ret    
 365:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 55 08             	mov    0x8(%ebp),%edx
 377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 37a:	0f b6 02             	movzbl (%edx),%eax
 37d:	84 c0                	test   %al,%al
 37f:	75 17                	jne    398 <strcmp+0x28>
 381:	eb 3a                	jmp    3bd <strcmp+0x4d>
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
 388:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 38c:	83 c2 01             	add    $0x1,%edx
 38f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 392:	84 c0                	test   %al,%al
 394:	74 1a                	je     3b0 <strcmp+0x40>
    p++, q++;
 396:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 398:	0f b6 19             	movzbl (%ecx),%ebx
 39b:	38 c3                	cmp    %al,%bl
 39d:	74 e9                	je     388 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 39f:	29 d8                	sub    %ebx,%eax
}
 3a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a4:	c9                   	leave  
 3a5:	c3                   	ret    
 3a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3b4:	31 c0                	xor    %eax,%eax
 3b6:	29 d8                	sub    %ebx,%eax
}
 3b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3bb:	c9                   	leave  
 3bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3bd:	0f b6 19             	movzbl (%ecx),%ebx
 3c0:	31 c0                	xor    %eax,%eax
 3c2:	eb db                	jmp    39f <strcmp+0x2f>
 3c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <strlen>:

uint
strlen(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3d6:	80 3a 00             	cmpb   $0x0,(%edx)
 3d9:	74 15                	je     3f0 <strlen+0x20>
 3db:	31 c0                	xor    %eax,%eax
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
 3e0:	83 c0 01             	add    $0x1,%eax
 3e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3e7:	89 c1                	mov    %eax,%ecx
 3e9:	75 f5                	jne    3e0 <strlen+0x10>
    ;
  return n;
}
 3eb:	89 c8                	mov    %ecx,%eax
 3ed:	5d                   	pop    %ebp
 3ee:	c3                   	ret    
 3ef:	90                   	nop
  for(n = 0; s[n]; n++)
 3f0:	31 c9                	xor    %ecx,%ecx
}
 3f2:	5d                   	pop    %ebp
 3f3:	89 c8                	mov    %ecx,%eax
 3f5:	c3                   	ret    
 3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fd:	8d 76 00             	lea    0x0(%esi),%esi

00000400 <memset>:

void*
memset(void *dst, int c, uint n)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 407:	8b 4d 10             	mov    0x10(%ebp),%ecx
 40a:	8b 45 0c             	mov    0xc(%ebp),%eax
 40d:	89 d7                	mov    %edx,%edi
 40f:	fc                   	cld    
 410:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 412:	8b 7d fc             	mov    -0x4(%ebp),%edi
 415:	89 d0                	mov    %edx,%eax
 417:	c9                   	leave  
 418:	c3                   	ret    
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000420 <strchr>:

char*
strchr(const char *s, char c)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 45 08             	mov    0x8(%ebp),%eax
 426:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 42a:	0f b6 10             	movzbl (%eax),%edx
 42d:	84 d2                	test   %dl,%dl
 42f:	75 12                	jne    443 <strchr+0x23>
 431:	eb 1d                	jmp    450 <strchr+0x30>
 433:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 437:	90                   	nop
 438:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 43c:	83 c0 01             	add    $0x1,%eax
 43f:	84 d2                	test   %dl,%dl
 441:	74 0d                	je     450 <strchr+0x30>
    if(*s == c)
 443:	38 d1                	cmp    %dl,%cl
 445:	75 f1                	jne    438 <strchr+0x18>
      return (char*)s;
  return 0;
}
 447:	5d                   	pop    %ebp
 448:	c3                   	ret    
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 450:	31 c0                	xor    %eax,%eax
}
 452:	5d                   	pop    %ebp
 453:	c3                   	ret    
 454:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <gets>:

char*
gets(char *buf, int max)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 465:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 468:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 469:	31 db                	xor    %ebx,%ebx
{
 46b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 46e:	eb 27                	jmp    497 <gets+0x37>
    cc = read(0, &c, 1);
 470:	83 ec 04             	sub    $0x4,%esp
 473:	6a 01                	push   $0x1
 475:	57                   	push   %edi
 476:	6a 00                	push   $0x0
 478:	e8 31 02 00 00       	call   6ae <read>
    if(cc < 1)
 47d:	83 c4 10             	add    $0x10,%esp
 480:	85 c0                	test   %eax,%eax
 482:	7e 1d                	jle    4a1 <gets+0x41>
      break;
    buf[i++] = c;
 484:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 48f:	3c 0a                	cmp    $0xa,%al
 491:	74 1d                	je     4b0 <gets+0x50>
 493:	3c 0d                	cmp    $0xd,%al
 495:	74 19                	je     4b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 497:	89 de                	mov    %ebx,%esi
 499:	83 c3 01             	add    $0x1,%ebx
 49c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 49f:	7c cf                	jl     470 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ab:	5b                   	pop    %ebx
 4ac:	5e                   	pop    %esi
 4ad:	5f                   	pop    %edi
 4ae:	5d                   	pop    %ebp
 4af:	c3                   	ret    
  buf[i] = '\0';
 4b0:	8b 45 08             	mov    0x8(%ebp),%eax
 4b3:	89 de                	mov    %ebx,%esi
 4b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4bc:	5b                   	pop    %ebx
 4bd:	5e                   	pop    %esi
 4be:	5f                   	pop    %edi
 4bf:	5d                   	pop    %ebp
 4c0:	c3                   	ret    
 4c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop

000004d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4d5:	83 ec 08             	sub    $0x8,%esp
 4d8:	6a 00                	push   $0x0
 4da:	ff 75 08             	push   0x8(%ebp)
 4dd:	e8 f4 01 00 00       	call   6d6 <open>
  if(fd < 0)
 4e2:	83 c4 10             	add    $0x10,%esp
 4e5:	85 c0                	test   %eax,%eax
 4e7:	78 27                	js     510 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4e9:	83 ec 08             	sub    $0x8,%esp
 4ec:	ff 75 0c             	push   0xc(%ebp)
 4ef:	89 c3                	mov    %eax,%ebx
 4f1:	50                   	push   %eax
 4f2:	e8 f7 01 00 00       	call   6ee <fstat>
  close(fd);
 4f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4fa:	89 c6                	mov    %eax,%esi
  close(fd);
 4fc:	e8 bd 01 00 00       	call   6be <close>
  return r;
 501:	83 c4 10             	add    $0x10,%esp
}
 504:	8d 65 f8             	lea    -0x8(%ebp),%esp
 507:	89 f0                	mov    %esi,%eax
 509:	5b                   	pop    %ebx
 50a:	5e                   	pop    %esi
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 510:	be ff ff ff ff       	mov    $0xffffffff,%esi
 515:	eb ed                	jmp    504 <stat+0x34>
 517:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51e:	66 90                	xchg   %ax,%ax

00000520 <atoi>:

int
atoi(const char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 527:	0f be 02             	movsbl (%edx),%eax
 52a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 52d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 530:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 535:	77 1e                	ja     555 <atoi+0x35>
 537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 540:	83 c2 01             	add    $0x1,%edx
 543:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 546:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 54a:	0f be 02             	movsbl (%edx),%eax
 54d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 550:	80 fb 09             	cmp    $0x9,%bl
 553:	76 eb                	jbe    540 <atoi+0x20>
  return n;
}
 555:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 558:	89 c8                	mov    %ecx,%eax
 55a:	c9                   	leave  
 55b:	c3                   	ret    
 55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000560 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	8b 45 10             	mov    0x10(%ebp),%eax
 567:	8b 55 08             	mov    0x8(%ebp),%edx
 56a:	56                   	push   %esi
 56b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 56e:	85 c0                	test   %eax,%eax
 570:	7e 13                	jle    585 <memmove+0x25>
 572:	01 d0                	add    %edx,%eax
  dst = vdst;
 574:	89 d7                	mov    %edx,%edi
 576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 580:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 581:	39 f8                	cmp    %edi,%eax
 583:	75 fb                	jne    580 <memmove+0x20>
  return vdst;
}
 585:	5e                   	pop    %esi
 586:	89 d0                	mov    %edx,%eax
 588:	5f                   	pop    %edi
 589:	5d                   	pop    %ebp
 58a:	c3                   	ret    
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	53                   	push   %ebx
 594:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(4096);
 597:	68 00 10 00 00       	push   $0x1000
 59c:	e8 8f 04 00 00       	call   a30 <malloc>
  if((int) stack % 4096 != 0){
 5a1:	83 c4 10             	add    $0x10,%esp
 5a4:	a9 ff 0f 00 00       	test   $0xfff,%eax
 5a9:	74 16                	je     5c1 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 5ab:	99                   	cltd   
 5ac:	c1 ea 14             	shr    $0x14,%edx
 5af:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 5b2:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 5b8:	29 ca                	sub    %ecx,%edx
 5ba:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 5c1:	50                   	push   %eax
 5c2:	ff 75 10             	push   0x10(%ebp)
 5c5:	ff 75 0c             	push   0xc(%ebp)
 5c8:	ff 75 08             	push   0x8(%ebp)
 5cb:	e8 66 01 00 00       	call   736 <clone>
  printf(1, " thread create %d \n", rc);
 5d0:	83 c4 0c             	add    $0xc,%esp
 5d3:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 5d4:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create %d \n", rc);
 5d6:	68 72 0b 00 00       	push   $0xb72
 5db:	6a 01                	push   $0x1
 5dd:	e8 1e 02 00 00       	call   800 <printf>
  return rc;
}
 5e2:	89 d8                	mov    %ebx,%eax
 5e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5e7:	c9                   	leave  
 5e8:	c3                   	ret    
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005f0 <thread_join>:

int
thread_join(){
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	53                   	push   %ebx
 5f4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 5f7:	68 86 0b 00 00       	push   $0xb86
 5fc:	6a 01                	push   $0x1
 5fe:	e8 fd 01 00 00       	call   800 <printf>
  void** stack = 0;
  printf(1, "thread join 2 \n");
 603:	58                   	pop    %eax
 604:	5a                   	pop    %edx
 605:	68 96 0b 00 00       	push   $0xb96
 60a:	6a 01                	push   $0x1
 60c:	e8 ef 01 00 00       	call   800 <printf>
  int rc = join(stack);
 611:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 618:	e8 21 01 00 00       	call   73e <join>
  printf(1, "thread join 3 \n");
 61d:	59                   	pop    %ecx
  int rc = join(stack);
 61e:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 620:	58                   	pop    %eax
 621:	68 a6 0b 00 00       	push   $0xba6
 626:	6a 01                	push   $0x1
 628:	e8 d3 01 00 00       	call   800 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 62d:	58                   	pop    %eax
 62e:	5a                   	pop    %edx
 62f:	68 b6 0b 00 00       	push   $0xbb6
 634:	6a 01                	push   $0x1
 636:	e8 c5 01 00 00       	call   800 <printf>
  return rc;
}
 63b:	89 d8                	mov    %ebx,%eax
 63d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 640:	c9                   	leave  
 641:	c3                   	ret    
 642:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000650 <lock_acquire>:



void lock_acquire(lock_t * lock){
 650:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 651:	b9 01 00 00 00       	mov    $0x1,%ecx
 656:	89 e5                	mov    %esp,%ebp
 658:	8b 55 08             	mov    0x8(%ebp),%edx
 65b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop
 660:	89 c8                	mov    %ecx,%eax
 662:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 665:	83 f8 01             	cmp    $0x1,%eax
 668:	74 f6                	je     660 <lock_acquire+0x10>
 ; // spin

};
 66a:	5d                   	pop    %ebp
 66b:	c3                   	ret    
 66c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000670 <lock_release>:

void lock_release(lock_t * lock){
 670:	55                   	push   %ebp
 671:	31 c0                	xor    %eax,%eax
 673:	89 e5                	mov    %esp,%ebp
 675:	8b 55 08             	mov    0x8(%ebp),%edx
 678:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 67b:	5d                   	pop    %ebp
 67c:	c3                   	ret    
 67d:	8d 76 00             	lea    0x0(%esi),%esi

00000680 <lock_init>:

void lock_init(lock_t * lock){
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 683:	8b 45 08             	mov    0x8(%ebp),%eax
 686:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 68c:	5d                   	pop    %ebp
 68d:	c3                   	ret    

0000068e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 68e:	b8 01 00 00 00       	mov    $0x1,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <exit>:
SYSCALL(exit)
 696:	b8 02 00 00 00       	mov    $0x2,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <wait>:
SYSCALL(wait)
 69e:	b8 03 00 00 00       	mov    $0x3,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <pipe>:
SYSCALL(pipe)
 6a6:	b8 04 00 00 00       	mov    $0x4,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <read>:
SYSCALL(read)
 6ae:	b8 05 00 00 00       	mov    $0x5,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <write>:
SYSCALL(write)
 6b6:	b8 10 00 00 00       	mov    $0x10,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <close>:
SYSCALL(close)
 6be:	b8 15 00 00 00       	mov    $0x15,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    

000006c6 <kill>:
SYSCALL(kill)
 6c6:	b8 06 00 00 00       	mov    $0x6,%eax
 6cb:	cd 40                	int    $0x40
 6cd:	c3                   	ret    

000006ce <exec>:
SYSCALL(exec)
 6ce:	b8 07 00 00 00       	mov    $0x7,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <open>:
SYSCALL(open)
 6d6:	b8 0f 00 00 00       	mov    $0xf,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <mknod>:
SYSCALL(mknod)
 6de:	b8 11 00 00 00       	mov    $0x11,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <unlink>:
SYSCALL(unlink)
 6e6:	b8 12 00 00 00       	mov    $0x12,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <fstat>:
SYSCALL(fstat)
 6ee:	b8 08 00 00 00       	mov    $0x8,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <link>:
SYSCALL(link)
 6f6:	b8 13 00 00 00       	mov    $0x13,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <mkdir>:
SYSCALL(mkdir)
 6fe:	b8 14 00 00 00       	mov    $0x14,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <chdir>:
SYSCALL(chdir)
 706:	b8 09 00 00 00       	mov    $0x9,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <dup>:
SYSCALL(dup)
 70e:	b8 0a 00 00 00       	mov    $0xa,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <getpid>:
SYSCALL(getpid)
 716:	b8 0b 00 00 00       	mov    $0xb,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <sbrk>:
SYSCALL(sbrk)
 71e:	b8 0c 00 00 00       	mov    $0xc,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <sleep>:
SYSCALL(sleep)
 726:	b8 0d 00 00 00       	mov    $0xd,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <uptime>:
SYSCALL(uptime)
 72e:	b8 0e 00 00 00       	mov    $0xe,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <clone>:
SYSCALL(clone)
 736:	b8 16 00 00 00       	mov    $0x16,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <join>:
SYSCALL(join)
 73e:	b8 17 00 00 00       	mov    $0x17,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    
 746:	66 90                	xchg   %ax,%ax
 748:	66 90                	xchg   %ax,%ax
 74a:	66 90                	xchg   %ax,%ax
 74c:	66 90                	xchg   %ax,%ax
 74e:	66 90                	xchg   %ax,%ax

00000750 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 3c             	sub    $0x3c,%esp
 759:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 75c:	89 d1                	mov    %edx,%ecx
{
 75e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 761:	85 d2                	test   %edx,%edx
 763:	0f 89 7f 00 00 00    	jns    7e8 <printint+0x98>
 769:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 76d:	74 79                	je     7e8 <printint+0x98>
    neg = 1;
 76f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 776:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 778:	31 db                	xor    %ebx,%ebx
 77a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 77d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 780:	89 c8                	mov    %ecx,%eax
 782:	31 d2                	xor    %edx,%edx
 784:	89 cf                	mov    %ecx,%edi
 786:	f7 75 c4             	divl   -0x3c(%ebp)
 789:	0f b6 92 28 0c 00 00 	movzbl 0xc28(%edx),%edx
 790:	89 45 c0             	mov    %eax,-0x40(%ebp)
 793:	89 d8                	mov    %ebx,%eax
 795:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 798:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 79b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 79e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7a1:	76 dd                	jbe    780 <printint+0x30>
  if(neg)
 7a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7a6:	85 c9                	test   %ecx,%ecx
 7a8:	74 0c                	je     7b6 <printint+0x66>
    buf[i++] = '-';
 7aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7bd:	eb 07                	jmp    7c6 <printint+0x76>
 7bf:	90                   	nop
    putc(fd, buf[i]);
 7c0:	0f b6 13             	movzbl (%ebx),%edx
 7c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7c6:	83 ec 04             	sub    $0x4,%esp
 7c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7cc:	6a 01                	push   $0x1
 7ce:	56                   	push   %esi
 7cf:	57                   	push   %edi
 7d0:	e8 e1 fe ff ff       	call   6b6 <write>
  while(--i >= 0)
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	39 de                	cmp    %ebx,%esi
 7da:	75 e4                	jne    7c0 <printint+0x70>
}
 7dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7df:	5b                   	pop    %ebx
 7e0:	5e                   	pop    %esi
 7e1:	5f                   	pop    %edi
 7e2:	5d                   	pop    %ebp
 7e3:	c3                   	ret    
 7e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ef:	eb 87                	jmp    778 <printint+0x28>
 7f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ff:	90                   	nop

00000800 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 809:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 80c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 80f:	0f b6 13             	movzbl (%ebx),%edx
 812:	84 d2                	test   %dl,%dl
 814:	74 6a                	je     880 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 816:	8d 45 10             	lea    0x10(%ebp),%eax
 819:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 81c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 81f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 821:	89 45 d0             	mov    %eax,-0x30(%ebp)
 824:	eb 36                	jmp    85c <printf+0x5c>
 826:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82d:	8d 76 00             	lea    0x0(%esi),%esi
 830:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 833:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 838:	83 f8 25             	cmp    $0x25,%eax
 83b:	74 15                	je     852 <printf+0x52>
  write(fd, &c, 1);
 83d:	83 ec 04             	sub    $0x4,%esp
 840:	88 55 e7             	mov    %dl,-0x19(%ebp)
 843:	6a 01                	push   $0x1
 845:	57                   	push   %edi
 846:	56                   	push   %esi
 847:	e8 6a fe ff ff       	call   6b6 <write>
 84c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 84f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 852:	0f b6 13             	movzbl (%ebx),%edx
 855:	83 c3 01             	add    $0x1,%ebx
 858:	84 d2                	test   %dl,%dl
 85a:	74 24                	je     880 <printf+0x80>
    c = fmt[i] & 0xff;
 85c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 85f:	85 c9                	test   %ecx,%ecx
 861:	74 cd                	je     830 <printf+0x30>
      }
    } else if(state == '%'){
 863:	83 f9 25             	cmp    $0x25,%ecx
 866:	75 ea                	jne    852 <printf+0x52>
      if(c == 'd'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	0f 84 07 01 00 00    	je     978 <printf+0x178>
 871:	83 e8 63             	sub    $0x63,%eax
 874:	83 f8 15             	cmp    $0x15,%eax
 877:	77 17                	ja     890 <printf+0x90>
 879:	ff 24 85 d0 0b 00 00 	jmp    *0xbd0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 880:	8d 65 f4             	lea    -0xc(%ebp),%esp
 883:	5b                   	pop    %ebx
 884:	5e                   	pop    %esi
 885:	5f                   	pop    %edi
 886:	5d                   	pop    %ebp
 887:	c3                   	ret    
 888:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88f:	90                   	nop
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
 893:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 896:	6a 01                	push   $0x1
 898:	57                   	push   %edi
 899:	56                   	push   %esi
 89a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 89e:	e8 13 fe ff ff       	call   6b6 <write>
        putc(fd, c);
 8a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8a7:	83 c4 0c             	add    $0xc,%esp
 8aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8ad:	6a 01                	push   $0x1
 8af:	57                   	push   %edi
 8b0:	56                   	push   %esi
 8b1:	e8 00 fe ff ff       	call   6b6 <write>
        putc(fd, c);
 8b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8b9:	31 c9                	xor    %ecx,%ecx
 8bb:	eb 95                	jmp    852 <printf+0x52>
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8c8:	6a 00                	push   $0x0
 8ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8cd:	8b 10                	mov    (%eax),%edx
 8cf:	89 f0                	mov    %esi,%eax
 8d1:	e8 7a fe ff ff       	call   750 <printint>
        ap++;
 8d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8dd:	31 c9                	xor    %ecx,%ecx
 8df:	e9 6e ff ff ff       	jmp    852 <printf+0x52>
 8e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8eb:	8b 10                	mov    (%eax),%edx
        ap++;
 8ed:	83 c0 04             	add    $0x4,%eax
 8f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8f3:	85 d2                	test   %edx,%edx
 8f5:	0f 84 8d 00 00 00    	je     988 <printf+0x188>
        while(*s != 0){
 8fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 900:	84 c0                	test   %al,%al
 902:	0f 84 4a ff ff ff    	je     852 <printf+0x52>
 908:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 90b:	89 d3                	mov    %edx,%ebx
 90d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 910:	83 ec 04             	sub    $0x4,%esp
          s++;
 913:	83 c3 01             	add    $0x1,%ebx
 916:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 919:	6a 01                	push   $0x1
 91b:	57                   	push   %edi
 91c:	56                   	push   %esi
 91d:	e8 94 fd ff ff       	call   6b6 <write>
        while(*s != 0){
 922:	0f b6 03             	movzbl (%ebx),%eax
 925:	83 c4 10             	add    $0x10,%esp
 928:	84 c0                	test   %al,%al
 92a:	75 e4                	jne    910 <printf+0x110>
      state = 0;
 92c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 92f:	31 c9                	xor    %ecx,%ecx
 931:	e9 1c ff ff ff       	jmp    852 <printf+0x52>
 936:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 93d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 940:	83 ec 0c             	sub    $0xc,%esp
 943:	b9 0a 00 00 00       	mov    $0xa,%ecx
 948:	6a 01                	push   $0x1
 94a:	e9 7b ff ff ff       	jmp    8ca <printf+0xca>
 94f:	90                   	nop
        putc(fd, *ap);
 950:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 953:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 956:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 958:	6a 01                	push   $0x1
 95a:	57                   	push   %edi
 95b:	56                   	push   %esi
        putc(fd, *ap);
 95c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 95f:	e8 52 fd ff ff       	call   6b6 <write>
        ap++;
 964:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 968:	83 c4 10             	add    $0x10,%esp
      state = 0;
 96b:	31 c9                	xor    %ecx,%ecx
 96d:	e9 e0 fe ff ff       	jmp    852 <printf+0x52>
 972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 978:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 97b:	83 ec 04             	sub    $0x4,%esp
 97e:	e9 2a ff ff ff       	jmp    8ad <printf+0xad>
 983:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 987:	90                   	nop
          s = "(null)";
 988:	ba c6 0b 00 00       	mov    $0xbc6,%edx
        while(*s != 0){
 98d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 990:	b8 28 00 00 00       	mov    $0x28,%eax
 995:	89 d3                	mov    %edx,%ebx
 997:	e9 74 ff ff ff       	jmp    910 <printf+0x110>
 99c:	66 90                	xchg   %ax,%ax
 99e:	66 90                	xchg   %ax,%ax

000009a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9a1:	a1 10 10 00 00       	mov    0x1010,%eax
{
 9a6:	89 e5                	mov    %esp,%ebp
 9a8:	57                   	push   %edi
 9a9:	56                   	push   %esi
 9aa:	53                   	push   %ebx
 9ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9b8:	89 c2                	mov    %eax,%edx
 9ba:	8b 00                	mov    (%eax),%eax
 9bc:	39 ca                	cmp    %ecx,%edx
 9be:	73 30                	jae    9f0 <free+0x50>
 9c0:	39 c1                	cmp    %eax,%ecx
 9c2:	72 04                	jb     9c8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9c4:	39 c2                	cmp    %eax,%edx
 9c6:	72 f0                	jb     9b8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ce:	39 f8                	cmp    %edi,%eax
 9d0:	74 30                	je     a02 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9d2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9d5:	8b 42 04             	mov    0x4(%edx),%eax
 9d8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9db:	39 f1                	cmp    %esi,%ecx
 9dd:	74 3a                	je     a19 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9df:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9e1:	5b                   	pop    %ebx
  freep = p;
 9e2:	89 15 10 10 00 00    	mov    %edx,0x1010
}
 9e8:	5e                   	pop    %esi
 9e9:	5f                   	pop    %edi
 9ea:	5d                   	pop    %ebp
 9eb:	c3                   	ret    
 9ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f0:	39 c2                	cmp    %eax,%edx
 9f2:	72 c4                	jb     9b8 <free+0x18>
 9f4:	39 c1                	cmp    %eax,%ecx
 9f6:	73 c0                	jae    9b8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9fe:	39 f8                	cmp    %edi,%eax
 a00:	75 d0                	jne    9d2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a02:	03 70 04             	add    0x4(%eax),%esi
 a05:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a08:	8b 02                	mov    (%edx),%eax
 a0a:	8b 00                	mov    (%eax),%eax
 a0c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a0f:	8b 42 04             	mov    0x4(%edx),%eax
 a12:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a15:	39 f1                	cmp    %esi,%ecx
 a17:	75 c6                	jne    9df <free+0x3f>
    p->s.size += bp->s.size;
 a19:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a1c:	89 15 10 10 00 00    	mov    %edx,0x1010
    p->s.size += bp->s.size;
 a22:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a25:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a28:	89 0a                	mov    %ecx,(%edx)
}
 a2a:	5b                   	pop    %ebx
 a2b:	5e                   	pop    %esi
 a2c:	5f                   	pop    %edi
 a2d:	5d                   	pop    %ebp
 a2e:	c3                   	ret    
 a2f:	90                   	nop

00000a30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a30:	55                   	push   %ebp
 a31:	89 e5                	mov    %esp,%ebp
 a33:	57                   	push   %edi
 a34:	56                   	push   %esi
 a35:	53                   	push   %ebx
 a36:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a3c:	8b 3d 10 10 00 00    	mov    0x1010,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a42:	8d 70 07             	lea    0x7(%eax),%esi
 a45:	c1 ee 03             	shr    $0x3,%esi
 a48:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a4b:	85 ff                	test   %edi,%edi
 a4d:	0f 84 9d 00 00 00    	je     af0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a53:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a55:	8b 4a 04             	mov    0x4(%edx),%ecx
 a58:	39 f1                	cmp    %esi,%ecx
 a5a:	73 6a                	jae    ac6 <malloc+0x96>
 a5c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a61:	39 de                	cmp    %ebx,%esi
 a63:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a66:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a6d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a70:	eb 17                	jmp    a89 <malloc+0x59>
 a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a7a:	8b 48 04             	mov    0x4(%eax),%ecx
 a7d:	39 f1                	cmp    %esi,%ecx
 a7f:	73 4f                	jae    ad0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a81:	8b 3d 10 10 00 00    	mov    0x1010,%edi
 a87:	89 c2                	mov    %eax,%edx
 a89:	39 d7                	cmp    %edx,%edi
 a8b:	75 eb                	jne    a78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a8d:	83 ec 0c             	sub    $0xc,%esp
 a90:	ff 75 e4             	push   -0x1c(%ebp)
 a93:	e8 86 fc ff ff       	call   71e <sbrk>
  if(p == (char*)-1)
 a98:	83 c4 10             	add    $0x10,%esp
 a9b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a9e:	74 1c                	je     abc <malloc+0x8c>
  hp->s.size = nu;
 aa0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 aa3:	83 ec 0c             	sub    $0xc,%esp
 aa6:	83 c0 08             	add    $0x8,%eax
 aa9:	50                   	push   %eax
 aaa:	e8 f1 fe ff ff       	call   9a0 <free>
  return freep;
 aaf:	8b 15 10 10 00 00    	mov    0x1010,%edx
      if((p = morecore(nunits)) == 0)
 ab5:	83 c4 10             	add    $0x10,%esp
 ab8:	85 d2                	test   %edx,%edx
 aba:	75 bc                	jne    a78 <malloc+0x48>
        return 0;
  }
}
 abc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 abf:	31 c0                	xor    %eax,%eax
}
 ac1:	5b                   	pop    %ebx
 ac2:	5e                   	pop    %esi
 ac3:	5f                   	pop    %edi
 ac4:	5d                   	pop    %ebp
 ac5:	c3                   	ret    
    if(p->s.size >= nunits){
 ac6:	89 d0                	mov    %edx,%eax
 ac8:	89 fa                	mov    %edi,%edx
 aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ad0:	39 ce                	cmp    %ecx,%esi
 ad2:	74 4c                	je     b20 <malloc+0xf0>
        p->s.size -= nunits;
 ad4:	29 f1                	sub    %esi,%ecx
 ad6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ad9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 adc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 adf:	89 15 10 10 00 00    	mov    %edx,0x1010
}
 ae5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ae8:	83 c0 08             	add    $0x8,%eax
}
 aeb:	5b                   	pop    %ebx
 aec:	5e                   	pop    %esi
 aed:	5f                   	pop    %edi
 aee:	5d                   	pop    %ebp
 aef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 af0:	c7 05 10 10 00 00 14 	movl   $0x1014,0x1010
 af7:	10 00 00 
    base.s.size = 0;
 afa:	bf 14 10 00 00       	mov    $0x1014,%edi
    base.s.ptr = freep = prevp = &base;
 aff:	c7 05 14 10 00 00 14 	movl   $0x1014,0x1014
 b06:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b09:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b0b:	c7 05 18 10 00 00 00 	movl   $0x0,0x1018
 b12:	00 00 00 
    if(p->s.size >= nunits){
 b15:	e9 42 ff ff ff       	jmp    a5c <malloc+0x2c>
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b20:	8b 08                	mov    (%eax),%ecx
 b22:	89 0a                	mov    %ecx,(%edx)
 b24:	eb b9                	jmp    adf <malloc+0xaf>
