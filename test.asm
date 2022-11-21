
_test:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
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
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 bd 08 00 00       	call   8d6 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 34 12 00 00       	mov    %eax,0x1234
   assert(fib(28) == 317811);
  23:	e8 48 01 00 00       	call   170 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 a6 00 00 00    	jne    dc <main+0xdc>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d 2c 12 00 00 00 	cmpl   $0x0,0x122c
   int arg1 = 11, arg2 = 22;
  3d:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
  44:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   for (int i = 0; i < num_threads; i++) {
  4b:	0f 8e fe 00 00 00    	jle    14f <main+0x14f>
  51:	31 db                	xor    %ebx,%ebx
  53:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  56:	8d 75 e0             	lea    -0x20(%ebp),%esi
  59:	eb 15                	jmp    70 <main+0x70>
  5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  5f:	90                   	nop
  60:	a1 2c 12 00 00       	mov    0x122c,%eax
  65:	83 c3 01             	add    $0x1,%ebx
  68:	39 d8                	cmp    %ebx,%eax
  6a:	0f 8e 89 00 00 00    	jle    f9 <main+0xf9>
      printf(1, " create : i : %d \n", i);
  70:	83 ec 04             	sub    $0x4,%esp
  73:	53                   	push   %ebx
  74:	68 8d 0d 00 00       	push   $0xd8d
  79:	6a 01                	push   $0x1
  7b:	e8 40 09 00 00       	call   9c0 <printf>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  80:	83 c4 0c             	add    $0xc,%esp
  83:	57                   	push   %edi
  84:	56                   	push   %esi
  85:	68 80 03 00 00       	push   $0x380
  8a:	e8 c1 06 00 00       	call   750 <thread_create>
      assert(thread_pid > 0);
  8f:	83 c4 10             	add    $0x10,%esp
  92:	85 c0                	test   %eax,%eax
  94:	7f ca                	jg     60 <main+0x60>
  96:	6a 2f                	push   $0x2f
  98:	68 e8 0c 00 00       	push   $0xce8
  9d:	68 ef 0c 00 00       	push   $0xcef
  a2:	6a 01                	push   $0x1
  a4:	e8 17 09 00 00       	call   9c0 <printf>
  a9:	83 c4 0c             	add    $0xc,%esp
  ac:	68 a0 0d 00 00       	push   $0xda0
  b1:	68 02 0d 00 00       	push   $0xd02
  b6:	6a 01                	push   $0x1
  b8:	e8 03 09 00 00       	call   9c0 <printf>
  bd:	58                   	pop    %eax
  be:	5a                   	pop    %edx
  bf:	68 16 0d 00 00       	push   $0xd16
  c4:	6a 01                	push   $0x1
  c6:	e8 f5 08 00 00       	call   9c0 <printf>
  cb:	59                   	pop    %ecx
  cc:	ff 35 34 12 00 00    	push   0x1234
  d2:	e8 af 07 00 00       	call   886 <kill>
  d7:	e8 7a 07 00 00       	call   856 <exit>
   assert(fib(28) == 317811);
  dc:	6a 28                	push   $0x28
  de:	68 e8 0c 00 00       	push   $0xce8
  e3:	68 ef 0c 00 00       	push   $0xcef
  e8:	6a 01                	push   $0x1
  ea:	e8 d1 08 00 00       	call   9c0 <printf>
  ef:	83 c4 0c             	add    $0xc,%esp
  f2:	68 6e 0d 00 00       	push   $0xd6e
  f7:	eb b8                	jmp    b1 <main+0xb1>
   }

   for (int i = 0; i < num_threads; i++) {
  f9:	85 c0                	test   %eax,%eax
  fb:	7e 52                	jle    14f <main+0x14f>
  fd:	31 db                	xor    %ebx,%ebx
  ff:	eb 12                	jmp    113 <main+0x113>
 101:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 108:	83 c3 01             	add    $0x1,%ebx
 10b:	39 1d 2c 12 00 00    	cmp    %ebx,0x122c
 111:	7e 3c                	jle    14f <main+0x14f>
      printf(1, " join : i : %d \n", i);
 113:	83 ec 04             	sub    $0x4,%esp
 116:	53                   	push   %ebx
 117:	68 af 0d 00 00       	push   $0xdaf
 11c:	6a 01                	push   $0x1
 11e:	e8 9d 08 00 00       	call   9c0 <printf>
      int join_pid = thread_join();
 123:	e8 88 06 00 00       	call   7b0 <thread_join>
      assert(join_pid > 0);
 128:	83 c4 10             	add    $0x10,%esp
 12b:	85 c0                	test   %eax,%eax
 12d:	7f d9                	jg     108 <main+0x108>
 12f:	6a 35                	push   $0x35
 131:	68 e8 0c 00 00       	push   $0xce8
 136:	68 ef 0c 00 00       	push   $0xcef
 13b:	6a 01                	push   $0x1
 13d:	e8 7e 08 00 00       	call   9c0 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 c0 0d 00 00       	push   $0xdc0
 14a:	e9 62 ff ff ff       	jmp    b1 <main+0xb1>
   }

   printf(1, "TEST PASSED\n");
 14f:	53                   	push   %ebx
 150:	53                   	push   %ebx
 151:	68 80 0d 00 00       	push   $0xd80
 156:	6a 01                	push   $0x1
 158:	e8 63 08 00 00       	call   9c0 <printf>
   exit();
 15d:	e8 f4 06 00 00       	call   856 <exit>
 162:	66 90                	xchg   %ax,%ax
 164:	66 90                	xchg   %ax,%ax
 166:	66 90                	xchg   %ax,%ax
 168:	66 90                	xchg   %ax,%ax
 16a:	66 90                	xchg   %ax,%ax
 16c:	66 90                	xchg   %ax,%ax
 16e:	66 90                	xchg   %ax,%ax

00000170 <fib>:
unsigned int fib(unsigned int n) {
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 4c             	sub    $0x4c,%esp
   if (n == 0) {
 179:	8b 45 08             	mov    0x8(%ebp),%eax
 17c:	85 c0                	test   %eax,%eax
 17e:	0f 84 7d 01 00 00    	je     301 <fib+0x191>
   } else if (n == 1) {
 184:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 188:	0f 84 73 01 00 00    	je     301 <fib+0x191>
 18e:	8b 45 08             	mov    0x8(%ebp),%eax
 191:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
 198:	89 45 d8             	mov    %eax,-0x28(%ebp)
      return fib(n - 1) + fib(n - 2);
 19b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 19e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 1a5:	83 e8 01             	sub    $0x1,%eax
 1a8:	89 45 b8             	mov    %eax,-0x48(%ebp)
   } else if (n == 1) {
 1ab:	8b 45 b8             	mov    -0x48(%ebp),%eax
 1ae:	83 f8 01             	cmp    $0x1,%eax
 1b1:	0f 84 2c 01 00 00    	je     2e3 <fib+0x173>
      return fib(n - 1) + fib(n - 2);
 1b7:	83 e8 01             	sub    $0x1,%eax
 1ba:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 1c1:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   } else if (n == 1) {
 1c4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 1c7:	83 f8 01             	cmp    $0x1,%eax
 1ca:	0f 84 90 01 00 00    	je     360 <fib+0x1f0>
      return fib(n - 1) + fib(n - 2);
 1d0:	83 e8 01             	sub    $0x1,%eax
 1d3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 1da:	89 45 ac             	mov    %eax,-0x54(%ebp)
   } else if (n == 1) {
 1dd:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1e0:	83 f8 01             	cmp    $0x1,%eax
 1e3:	0f 84 5e 01 00 00    	je     347 <fib+0x1d7>
      return fib(n - 1) + fib(n - 2);
 1e9:	83 e8 01             	sub    $0x1,%eax
 1ec:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 1f3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   } else if (n == 1) {
 1f6:	8b 45 b0             	mov    -0x50(%ebp),%eax
 1f9:	83 f8 01             	cmp    $0x1,%eax
 1fc:	0f 84 3c 01 00 00    	je     33e <fib+0x1ce>
      return fib(n - 1) + fib(n - 2);
 202:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 209:	8d 48 ff             	lea    -0x1(%eax),%ecx
 20c:	89 cb                	mov    %ecx,%ebx
   } else if (n == 1) {
 20e:	83 fb 01             	cmp    $0x1,%ebx
 211:	0f 84 13 01 00 00    	je     32a <fib+0x1ba>
      return fib(n - 1) + fib(n - 2);
 217:	8d 43 ff             	lea    -0x1(%ebx),%eax
 21a:	83 eb 02             	sub    $0x2,%ebx
 21d:	31 c9                	xor    %ecx,%ecx
 21f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 222:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 225:	89 5d c4             	mov    %ebx,-0x3c(%ebp)
   } else if (n == 1) {
 228:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 22c:	0f 84 01 01 00 00    	je     333 <fib+0x1c3>
 232:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 235:	31 c0                	xor    %eax,%eax
 237:	89 d7                	mov    %edx,%edi
 239:	89 c2                	mov    %eax,%edx
 23b:	83 ff 01             	cmp    $0x1,%edi
 23e:	0f 84 dc 00 00 00    	je     320 <fib+0x1b0>
      return fib(n - 1) + fib(n - 2);
 244:	89 7d c0             	mov    %edi,-0x40(%ebp)
 247:	8d 5f ff             	lea    -0x1(%edi),%ebx
 24a:	31 f6                	xor    %esi,%esi
 24c:	89 cf                	mov    %ecx,%edi
   } else if (n == 1) {
 24e:	83 fb 01             	cmp    $0x1,%ebx
 251:	0f 84 b9 00 00 00    	je     310 <fib+0x1a0>
      return fib(n - 1) + fib(n - 2);
 257:	83 ec 0c             	sub    $0xc,%esp
 25a:	8d 43 ff             	lea    -0x1(%ebx),%eax
 25d:	89 55 bc             	mov    %edx,-0x44(%ebp)
 260:	50                   	push   %eax
 261:	e8 0a ff ff ff       	call   170 <fib>
 266:	83 c4 10             	add    $0x10,%esp
   if (n == 0) {
 269:	8b 55 bc             	mov    -0x44(%ebp),%edx
 26c:	01 c6                	add    %eax,%esi
 26e:	83 eb 02             	sub    $0x2,%ebx
 271:	75 db                	jne    24e <fib+0xde>
 273:	89 f9                	mov    %edi,%ecx
 275:	8b 7d c0             	mov    -0x40(%ebp),%edi
 278:	01 f2                	add    %esi,%edx
 27a:	83 ef 02             	sub    $0x2,%edi
 27d:	75 bc                	jne    23b <fib+0xcb>
 27f:	89 d7                	mov    %edx,%edi
 281:	83 6d e4 02          	subl   $0x2,-0x1c(%ebp)
 285:	01 f9                	add    %edi,%ecx
 287:	83 6d e0 02          	subl   $0x2,-0x20(%ebp)
 28b:	75 9b                	jne    228 <fib+0xb8>
 28d:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 290:	01 4d dc             	add    %ecx,-0x24(%ebp)
 293:	85 db                	test   %ebx,%ebx
 295:	0f 85 73 ff ff ff    	jne    20e <fib+0x9e>
 29b:	8b 75 dc             	mov    -0x24(%ebp),%esi
 29e:	01 75 c8             	add    %esi,-0x38(%ebp)
 2a1:	83 6d b0 02          	subl   $0x2,-0x50(%ebp)
 2a5:	0f 85 4b ff ff ff    	jne    1f6 <fib+0x86>
 2ab:	8b 75 c8             	mov    -0x38(%ebp),%esi
 2ae:	01 75 cc             	add    %esi,-0x34(%ebp)
 2b1:	83 6d ac 02          	subl   $0x2,-0x54(%ebp)
 2b5:	0f 85 22 ff ff ff    	jne    1dd <fib+0x6d>
 2bb:	8b 75 cc             	mov    -0x34(%ebp),%esi
 2be:	01 75 d0             	add    %esi,-0x30(%ebp)
 2c1:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 2c5:	0f 85 f9 fe ff ff    	jne    1c4 <fib+0x54>
 2cb:	8b 75 d0             	mov    -0x30(%ebp),%esi
 2ce:	01 75 d4             	add    %esi,-0x2c(%ebp)
 2d1:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 2d5:	74 10                	je     2e7 <fib+0x177>
   } else if (n == 1) {
 2d7:	8b 45 b8             	mov    -0x48(%ebp),%eax
 2da:	83 f8 01             	cmp    $0x1,%eax
 2dd:	0f 85 d4 fe ff ff    	jne    1b7 <fib+0x47>
 2e3:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 2e7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 2ea:	01 45 08             	add    %eax,0x8(%ebp)
   if (n == 0) {
 2ed:	83 6d d8 02          	subl   $0x2,-0x28(%ebp)
 2f1:	74 0e                	je     301 <fib+0x191>
   } else if (n == 1) {
 2f3:	83 7d d8 01          	cmpl   $0x1,-0x28(%ebp)
 2f7:	0f 85 9e fe ff ff    	jne    19b <fib+0x2b>
 2fd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
}
 301:	8b 45 08             	mov    0x8(%ebp),%eax
 304:	8d 65 f4             	lea    -0xc(%ebp),%esp
 307:	5b                   	pop    %ebx
 308:	5e                   	pop    %esi
 309:	5f                   	pop    %edi
 30a:	5d                   	pop    %ebp
 30b:	c3                   	ret    
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 310:	89 f9                	mov    %edi,%ecx
 312:	83 c6 01             	add    $0x1,%esi
 315:	8b 7d c0             	mov    -0x40(%ebp),%edi
 318:	e9 5b ff ff ff       	jmp    278 <fib+0x108>
 31d:	8d 76 00             	lea    0x0(%esi),%esi
 320:	89 d7                	mov    %edx,%edi
 322:	83 c7 01             	add    $0x1,%edi
 325:	e9 57 ff ff ff       	jmp    281 <fib+0x111>
 32a:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 32e:	e9 68 ff ff ff       	jmp    29b <fib+0x12b>
 333:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 336:	83 c1 01             	add    $0x1,%ecx
 339:	e9 52 ff ff ff       	jmp    290 <fib+0x120>
 33e:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 342:	e9 64 ff ff ff       	jmp    2ab <fib+0x13b>
 347:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 34b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 34e:	01 75 d0             	add    %esi,-0x30(%ebp)
   if (n == 0) {
 351:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 355:	0f 85 69 fe ff ff    	jne    1c4 <fib+0x54>
 35b:	e9 6b ff ff ff       	jmp    2cb <fib+0x15b>
 360:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 364:	8b 75 d0             	mov    -0x30(%ebp),%esi
 367:	01 75 d4             	add    %esi,-0x2c(%ebp)
 36a:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 36e:	0f 85 63 ff ff ff    	jne    2d7 <fib+0x167>
 374:	e9 6e ff ff ff       	jmp    2e7 <fib+0x177>
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000380 <worker>:
}

void
worker(void *arg1, void *arg2) {
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 386:	8b 45 0c             	mov    0xc(%ebp),%eax
 389:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 11);
 38b:	8b 45 08             	mov    0x8(%ebp),%eax
 38e:	83 38 0b             	cmpl   $0xb,(%eax)
 391:	75 75                	jne    408 <worker+0x88>
   assert(tmp2 == 22);
 393:	83 fa 16             	cmp    $0x16,%edx
 396:	75 2a                	jne    3c2 <worker+0x42>
   assert(global == 1);
 398:	83 3d 30 12 00 00 01 	cmpl   $0x1,0x1230
 39f:	0f 84 80 00 00 00    	je     425 <worker+0xa5>
 3a5:	6a 42                	push   $0x42
 3a7:	68 e8 0c 00 00       	push   $0xce8
 3ac:	68 ef 0c 00 00       	push   $0xcef
 3b1:	6a 01                	push   $0x1
 3b3:	e8 08 06 00 00       	call   9c0 <printf>
 3b8:	83 c4 0c             	add    $0xc,%esp
 3bb:	68 2e 0d 00 00       	push   $0xd2e
 3c0:	eb 1b                	jmp    3dd <worker+0x5d>
   assert(tmp2 == 22);
 3c2:	6a 41                	push   $0x41
 3c4:	68 e8 0c 00 00       	push   $0xce8
 3c9:	68 ef 0c 00 00       	push   $0xcef
 3ce:	6a 01                	push   $0x1
 3d0:	e8 eb 05 00 00       	call   9c0 <printf>
 3d5:	83 c4 0c             	add    $0xc,%esp
 3d8:	68 23 0d 00 00       	push   $0xd23
 3dd:	68 02 0d 00 00       	push   $0xd02
 3e2:	6a 01                	push   $0x1
 3e4:	e8 d7 05 00 00       	call   9c0 <printf>
 3e9:	58                   	pop    %eax
 3ea:	5a                   	pop    %edx
 3eb:	68 16 0d 00 00       	push   $0xd16
 3f0:	6a 01                	push   $0x1
 3f2:	e8 c9 05 00 00       	call   9c0 <printf>
 3f7:	59                   	pop    %ecx
 3f8:	ff 35 34 12 00 00    	push   0x1234
 3fe:	e8 83 04 00 00       	call   886 <kill>
 403:	e8 4e 04 00 00       	call   856 <exit>
   assert(tmp1 == 11);
 408:	6a 40                	push   $0x40
 40a:	68 e8 0c 00 00       	push   $0xce8
 40f:	68 ef 0c 00 00       	push   $0xcef
 414:	6a 01                	push   $0x1
 416:	e8 a5 05 00 00       	call   9c0 <printf>
 41b:	83 c4 0c             	add    $0xc,%esp
 41e:	68 f7 0c 00 00       	push   $0xcf7
 423:	eb b8                	jmp    3dd <worker+0x5d>
   assert(fib(2) == 1);
 425:	83 ec 0c             	sub    $0xc,%esp
 428:	6a 02                	push   $0x2
 42a:	e8 41 fd ff ff       	call   170 <fib>
 42f:	83 c4 10             	add    $0x10,%esp
 432:	83 e8 01             	sub    $0x1,%eax
 435:	74 1d                	je     454 <worker+0xd4>
 437:	6a 43                	push   $0x43
 439:	68 e8 0c 00 00       	push   $0xce8
 43e:	68 ef 0c 00 00       	push   $0xcef
 443:	6a 01                	push   $0x1
 445:	e8 76 05 00 00       	call   9c0 <printf>
 44a:	83 c4 0c             	add    $0xc,%esp
 44d:	68 3a 0d 00 00       	push   $0xd3a
 452:	eb 89                	jmp    3dd <worker+0x5d>
   assert(fib(3) == 2);
 454:	83 ec 0c             	sub    $0xc,%esp
 457:	6a 03                	push   $0x3
 459:	e8 12 fd ff ff       	call   170 <fib>
 45e:	83 c4 10             	add    $0x10,%esp
 461:	83 f8 02             	cmp    $0x2,%eax
 464:	74 20                	je     486 <worker+0x106>
 466:	6a 44                	push   $0x44
 468:	68 e8 0c 00 00       	push   $0xce8
 46d:	68 ef 0c 00 00       	push   $0xcef
 472:	6a 01                	push   $0x1
 474:	e8 47 05 00 00       	call   9c0 <printf>
 479:	83 c4 0c             	add    $0xc,%esp
 47c:	68 46 0d 00 00       	push   $0xd46
 481:	e9 57 ff ff ff       	jmp    3dd <worker+0x5d>
   assert(fib(9) == 34);
 486:	83 ec 0c             	sub    $0xc,%esp
 489:	6a 09                	push   $0x9
 48b:	e8 e0 fc ff ff       	call   170 <fib>
 490:	83 c4 10             	add    $0x10,%esp
 493:	83 f8 22             	cmp    $0x22,%eax
 496:	74 20                	je     4b8 <worker+0x138>
 498:	6a 45                	push   $0x45
 49a:	68 e8 0c 00 00       	push   $0xce8
 49f:	68 ef 0c 00 00       	push   $0xcef
 4a4:	6a 01                	push   $0x1
 4a6:	e8 15 05 00 00       	call   9c0 <printf>
 4ab:	83 c4 0c             	add    $0xc,%esp
 4ae:	68 52 0d 00 00       	push   $0xd52
 4b3:	e9 25 ff ff ff       	jmp    3dd <worker+0x5d>
   assert(fib(15) == 610);
 4b8:	83 ec 0c             	sub    $0xc,%esp
 4bb:	6a 0f                	push   $0xf
 4bd:	e8 ae fc ff ff       	call   170 <fib>
 4c2:	83 c4 10             	add    $0x10,%esp
 4c5:	3d 62 02 00 00       	cmp    $0x262,%eax
 4ca:	74 20                	je     4ec <worker+0x16c>
 4cc:	6a 46                	push   $0x46
 4ce:	68 e8 0c 00 00       	push   $0xce8
 4d3:	68 ef 0c 00 00       	push   $0xcef
 4d8:	6a 01                	push   $0x1
 4da:	e8 e1 04 00 00       	call   9c0 <printf>
 4df:	83 c4 0c             	add    $0xc,%esp
 4e2:	68 5f 0d 00 00       	push   $0xd5f
 4e7:	e9 f1 fe ff ff       	jmp    3dd <worker+0x5d>
   exit();
 4ec:	e8 65 03 00 00       	call   856 <exit>
 4f1:	66 90                	xchg   %ax,%ax
 4f3:	66 90                	xchg   %ax,%ax
 4f5:	66 90                	xchg   %ax,%ax
 4f7:	66 90                	xchg   %ax,%ax
 4f9:	66 90                	xchg   %ax,%ax
 4fb:	66 90                	xchg   %ax,%ax
 4fd:	66 90                	xchg   %ax,%ax
 4ff:	90                   	nop

00000500 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

char*
strcpy(char *s, const char *t)
{
 500:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 501:	31 c0                	xor    %eax,%eax
{
 503:	89 e5                	mov    %esp,%ebp
 505:	53                   	push   %ebx
 506:	8b 4d 08             	mov    0x8(%ebp),%ecx
 509:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 510:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 514:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 517:	83 c0 01             	add    $0x1,%eax
 51a:	84 d2                	test   %dl,%dl
 51c:	75 f2                	jne    510 <strcpy+0x10>
    ;
  return os;
}
 51e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 521:	89 c8                	mov    %ecx,%eax
 523:	c9                   	leave  
 524:	c3                   	ret    
 525:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	53                   	push   %ebx
 534:	8b 55 08             	mov    0x8(%ebp),%edx
 537:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 53a:	0f b6 02             	movzbl (%edx),%eax
 53d:	84 c0                	test   %al,%al
 53f:	75 17                	jne    558 <strcmp+0x28>
 541:	eb 3a                	jmp    57d <strcmp+0x4d>
 543:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 547:	90                   	nop
 548:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 54c:	83 c2 01             	add    $0x1,%edx
 54f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 552:	84 c0                	test   %al,%al
 554:	74 1a                	je     570 <strcmp+0x40>
    p++, q++;
 556:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 558:	0f b6 19             	movzbl (%ecx),%ebx
 55b:	38 c3                	cmp    %al,%bl
 55d:	74 e9                	je     548 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 55f:	29 d8                	sub    %ebx,%eax
}
 561:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 564:	c9                   	leave  
 565:	c3                   	ret    
 566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 570:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 574:	31 c0                	xor    %eax,%eax
 576:	29 d8                	sub    %ebx,%eax
}
 578:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 57b:	c9                   	leave  
 57c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 57d:	0f b6 19             	movzbl (%ecx),%ebx
 580:	31 c0                	xor    %eax,%eax
 582:	eb db                	jmp    55f <strcmp+0x2f>
 584:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <strlen>:

uint
strlen(const char *s)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 596:	80 3a 00             	cmpb   $0x0,(%edx)
 599:	74 15                	je     5b0 <strlen+0x20>
 59b:	31 c0                	xor    %eax,%eax
 59d:	8d 76 00             	lea    0x0(%esi),%esi
 5a0:	83 c0 01             	add    $0x1,%eax
 5a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 5a7:	89 c1                	mov    %eax,%ecx
 5a9:	75 f5                	jne    5a0 <strlen+0x10>
    ;
  return n;
}
 5ab:	89 c8                	mov    %ecx,%eax
 5ad:	5d                   	pop    %ebp
 5ae:	c3                   	ret    
 5af:	90                   	nop
  for(n = 0; s[n]; n++)
 5b0:	31 c9                	xor    %ecx,%ecx
}
 5b2:	5d                   	pop    %ebp
 5b3:	89 c8                	mov    %ecx,%eax
 5b5:	c3                   	ret    
 5b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bd:	8d 76 00             	lea    0x0(%esi),%esi

000005c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 5cd:	89 d7                	mov    %edx,%edi
 5cf:	fc                   	cld    
 5d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5d5:	89 d0                	mov    %edx,%eax
 5d7:	c9                   	leave  
 5d8:	c3                   	ret    
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005e0 <strchr>:

char*
strchr(const char *s, char c)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	8b 45 08             	mov    0x8(%ebp),%eax
 5e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 5ea:	0f b6 10             	movzbl (%eax),%edx
 5ed:	84 d2                	test   %dl,%dl
 5ef:	75 12                	jne    603 <strchr+0x23>
 5f1:	eb 1d                	jmp    610 <strchr+0x30>
 5f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5f7:	90                   	nop
 5f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 5fc:	83 c0 01             	add    $0x1,%eax
 5ff:	84 d2                	test   %dl,%dl
 601:	74 0d                	je     610 <strchr+0x30>
    if(*s == c)
 603:	38 d1                	cmp    %dl,%cl
 605:	75 f1                	jne    5f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 607:	5d                   	pop    %ebp
 608:	c3                   	ret    
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 610:	31 c0                	xor    %eax,%eax
}
 612:	5d                   	pop    %ebp
 613:	c3                   	ret    
 614:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 61f:	90                   	nop

00000620 <gets>:

char*
gets(char *buf, int max)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 625:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 628:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 629:	31 db                	xor    %ebx,%ebx
{
 62b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 62e:	eb 27                	jmp    657 <gets+0x37>
    cc = read(0, &c, 1);
 630:	83 ec 04             	sub    $0x4,%esp
 633:	6a 01                	push   $0x1
 635:	57                   	push   %edi
 636:	6a 00                	push   $0x0
 638:	e8 31 02 00 00       	call   86e <read>
    if(cc < 1)
 63d:	83 c4 10             	add    $0x10,%esp
 640:	85 c0                	test   %eax,%eax
 642:	7e 1d                	jle    661 <gets+0x41>
      break;
    buf[i++] = c;
 644:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 648:	8b 55 08             	mov    0x8(%ebp),%edx
 64b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 64f:	3c 0a                	cmp    $0xa,%al
 651:	74 1d                	je     670 <gets+0x50>
 653:	3c 0d                	cmp    $0xd,%al
 655:	74 19                	je     670 <gets+0x50>
  for(i=0; i+1 < max; ){
 657:	89 de                	mov    %ebx,%esi
 659:	83 c3 01             	add    $0x1,%ebx
 65c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 65f:	7c cf                	jl     630 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 661:	8b 45 08             	mov    0x8(%ebp),%eax
 664:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 668:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66b:	5b                   	pop    %ebx
 66c:	5e                   	pop    %esi
 66d:	5f                   	pop    %edi
 66e:	5d                   	pop    %ebp
 66f:	c3                   	ret    
  buf[i] = '\0';
 670:	8b 45 08             	mov    0x8(%ebp),%eax
 673:	89 de                	mov    %ebx,%esi
 675:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 679:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67c:	5b                   	pop    %ebx
 67d:	5e                   	pop    %esi
 67e:	5f                   	pop    %edi
 67f:	5d                   	pop    %ebp
 680:	c3                   	ret    
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <stat>:

int
stat(const char *n, struct stat *st)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	56                   	push   %esi
 694:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 695:	83 ec 08             	sub    $0x8,%esp
 698:	6a 00                	push   $0x0
 69a:	ff 75 08             	push   0x8(%ebp)
 69d:	e8 f4 01 00 00       	call   896 <open>
  if(fd < 0)
 6a2:	83 c4 10             	add    $0x10,%esp
 6a5:	85 c0                	test   %eax,%eax
 6a7:	78 27                	js     6d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6a9:	83 ec 08             	sub    $0x8,%esp
 6ac:	ff 75 0c             	push   0xc(%ebp)
 6af:	89 c3                	mov    %eax,%ebx
 6b1:	50                   	push   %eax
 6b2:	e8 f7 01 00 00       	call   8ae <fstat>
  close(fd);
 6b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ba:	89 c6                	mov    %eax,%esi
  close(fd);
 6bc:	e8 bd 01 00 00       	call   87e <close>
  return r;
 6c1:	83 c4 10             	add    $0x10,%esp
}
 6c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6c7:	89 f0                	mov    %esi,%eax
 6c9:	5b                   	pop    %ebx
 6ca:	5e                   	pop    %esi
 6cb:	5d                   	pop    %ebp
 6cc:	c3                   	ret    
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6d5:	eb ed                	jmp    6c4 <stat+0x34>
 6d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6de:	66 90                	xchg   %ax,%ax

000006e0 <atoi>:

int
atoi(const char *s)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	53                   	push   %ebx
 6e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6e7:	0f be 02             	movsbl (%edx),%eax
 6ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 6f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 6f5:	77 1e                	ja     715 <atoi+0x35>
 6f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 700:	83 c2 01             	add    $0x1,%edx
 703:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 706:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 70a:	0f be 02             	movsbl (%edx),%eax
 70d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 710:	80 fb 09             	cmp    $0x9,%bl
 713:	76 eb                	jbe    700 <atoi+0x20>
  return n;
}
 715:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 718:	89 c8                	mov    %ecx,%eax
 71a:	c9                   	leave  
 71b:	c3                   	ret    
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000720 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	8b 45 10             	mov    0x10(%ebp),%eax
 727:	8b 55 08             	mov    0x8(%ebp),%edx
 72a:	56                   	push   %esi
 72b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 72e:	85 c0                	test   %eax,%eax
 730:	7e 13                	jle    745 <memmove+0x25>
 732:	01 d0                	add    %edx,%eax
  dst = vdst;
 734:	89 d7                	mov    %edx,%edi
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 740:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 741:	39 f8                	cmp    %edi,%eax
 743:	75 fb                	jne    740 <memmove+0x20>
  return vdst;
}
 745:	5e                   	pop    %esi
 746:	89 d0                	mov    %edx,%eax
 748:	5f                   	pop    %edi
 749:	5d                   	pop    %ebp
 74a:	c3                   	ret    
 74b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop

00000750 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	53                   	push   %ebx
 754:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 757:	68 00 20 00 00       	push   $0x2000
 75c:	e8 8f 04 00 00       	call   bf0 <malloc>
  if((int) stack % 4096 != 0){
 761:	83 c4 10             	add    $0x10,%esp
 764:	a9 ff 0f 00 00       	test   $0xfff,%eax
 769:	74 16                	je     781 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 76b:	99                   	cltd   
 76c:	c1 ea 14             	shr    $0x14,%edx
 76f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 772:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 778:	29 ca                	sub    %ecx,%edx
 77a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 781:	50                   	push   %eax
 782:	ff 75 10             	push   0x10(%ebp)
 785:	ff 75 0c             	push   0xc(%ebp)
 788:	ff 75 08             	push   0x8(%ebp)
 78b:	e8 66 01 00 00       	call   8f6 <clone>
  printf(1, " thread create  %d \n", rc);
 790:	83 c4 0c             	add    $0xc,%esp
 793:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 794:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 796:	68 cd 0d 00 00       	push   $0xdcd
 79b:	6a 01                	push   $0x1
 79d:	e8 1e 02 00 00       	call   9c0 <printf>
  return rc;
}
 7a2:	89 d8                	mov    %ebx,%eax
 7a4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7a7:	c9                   	leave  
 7a8:	c3                   	ret    
 7a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007b0 <thread_join>:

int
thread_join(){
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	53                   	push   %ebx
 7b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 7b7:	68 e2 0d 00 00       	push   $0xde2
 7bc:	6a 01                	push   $0x1
 7be:	e8 fd 01 00 00       	call   9c0 <printf>
  void** stack = malloc(sizeof(void**));
 7c3:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 7ca:	e8 21 04 00 00       	call   bf0 <malloc>
 7cf:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 7d1:	58                   	pop    %eax
 7d2:	5a                   	pop    %edx
 7d3:	68 f2 0d 00 00       	push   $0xdf2
 7d8:	6a 01                	push   $0x1
 7da:	e8 e1 01 00 00       	call   9c0 <printf>
  int rc = join(stack);
 7df:	89 1c 24             	mov    %ebx,(%esp)
 7e2:	e8 17 01 00 00       	call   8fe <join>
  printf(1, "thread join 3 \n");
 7e7:	59                   	pop    %ecx
  int rc = join(stack);
 7e8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 7ea:	58                   	pop    %eax
 7eb:	68 02 0e 00 00       	push   $0xe02
 7f0:	6a 01                	push   $0x1
 7f2:	e8 c9 01 00 00       	call   9c0 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 7f7:	58                   	pop    %eax
 7f8:	5a                   	pop    %edx
 7f9:	68 12 0e 00 00       	push   $0xe12
 7fe:	6a 01                	push   $0x1
 800:	e8 bb 01 00 00       	call   9c0 <printf>
  return rc;
}
 805:	89 d8                	mov    %ebx,%eax
 807:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80a:	c9                   	leave  
 80b:	c3                   	ret    
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000810 <lock_acquire>:



void lock_acquire(lock_t * lock){
 810:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 811:	b9 01 00 00 00       	mov    $0x1,%ecx
 816:	89 e5                	mov    %esp,%ebp
 818:	8b 55 08             	mov    0x8(%ebp),%edx
 81b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
 820:	89 c8                	mov    %ecx,%eax
 822:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 825:	83 f8 01             	cmp    $0x1,%eax
 828:	74 f6                	je     820 <lock_acquire+0x10>
 ; // spin

};
 82a:	5d                   	pop    %ebp
 82b:	c3                   	ret    
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <lock_release>:

void lock_release(lock_t * lock){
 830:	55                   	push   %ebp
 831:	31 c0                	xor    %eax,%eax
 833:	89 e5                	mov    %esp,%ebp
 835:	8b 55 08             	mov    0x8(%ebp),%edx
 838:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 83b:	5d                   	pop    %ebp
 83c:	c3                   	ret    
 83d:	8d 76 00             	lea    0x0(%esi),%esi

00000840 <lock_init>:

void lock_init(lock_t * lock){
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 843:	8b 45 08             	mov    0x8(%ebp),%eax
 846:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 84c:	5d                   	pop    %ebp
 84d:	c3                   	ret    

0000084e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 84e:	b8 01 00 00 00       	mov    $0x1,%eax
 853:	cd 40                	int    $0x40
 855:	c3                   	ret    

00000856 <exit>:
SYSCALL(exit)
 856:	b8 02 00 00 00       	mov    $0x2,%eax
 85b:	cd 40                	int    $0x40
 85d:	c3                   	ret    

0000085e <wait>:
SYSCALL(wait)
 85e:	b8 03 00 00 00       	mov    $0x3,%eax
 863:	cd 40                	int    $0x40
 865:	c3                   	ret    

00000866 <pipe>:
SYSCALL(pipe)
 866:	b8 04 00 00 00       	mov    $0x4,%eax
 86b:	cd 40                	int    $0x40
 86d:	c3                   	ret    

0000086e <read>:
SYSCALL(read)
 86e:	b8 05 00 00 00       	mov    $0x5,%eax
 873:	cd 40                	int    $0x40
 875:	c3                   	ret    

00000876 <write>:
SYSCALL(write)
 876:	b8 10 00 00 00       	mov    $0x10,%eax
 87b:	cd 40                	int    $0x40
 87d:	c3                   	ret    

0000087e <close>:
SYSCALL(close)
 87e:	b8 15 00 00 00       	mov    $0x15,%eax
 883:	cd 40                	int    $0x40
 885:	c3                   	ret    

00000886 <kill>:
SYSCALL(kill)
 886:	b8 06 00 00 00       	mov    $0x6,%eax
 88b:	cd 40                	int    $0x40
 88d:	c3                   	ret    

0000088e <exec>:
SYSCALL(exec)
 88e:	b8 07 00 00 00       	mov    $0x7,%eax
 893:	cd 40                	int    $0x40
 895:	c3                   	ret    

00000896 <open>:
SYSCALL(open)
 896:	b8 0f 00 00 00       	mov    $0xf,%eax
 89b:	cd 40                	int    $0x40
 89d:	c3                   	ret    

0000089e <mknod>:
SYSCALL(mknod)
 89e:	b8 11 00 00 00       	mov    $0x11,%eax
 8a3:	cd 40                	int    $0x40
 8a5:	c3                   	ret    

000008a6 <unlink>:
SYSCALL(unlink)
 8a6:	b8 12 00 00 00       	mov    $0x12,%eax
 8ab:	cd 40                	int    $0x40
 8ad:	c3                   	ret    

000008ae <fstat>:
SYSCALL(fstat)
 8ae:	b8 08 00 00 00       	mov    $0x8,%eax
 8b3:	cd 40                	int    $0x40
 8b5:	c3                   	ret    

000008b6 <link>:
SYSCALL(link)
 8b6:	b8 13 00 00 00       	mov    $0x13,%eax
 8bb:	cd 40                	int    $0x40
 8bd:	c3                   	ret    

000008be <mkdir>:
SYSCALL(mkdir)
 8be:	b8 14 00 00 00       	mov    $0x14,%eax
 8c3:	cd 40                	int    $0x40
 8c5:	c3                   	ret    

000008c6 <chdir>:
SYSCALL(chdir)
 8c6:	b8 09 00 00 00       	mov    $0x9,%eax
 8cb:	cd 40                	int    $0x40
 8cd:	c3                   	ret    

000008ce <dup>:
SYSCALL(dup)
 8ce:	b8 0a 00 00 00       	mov    $0xa,%eax
 8d3:	cd 40                	int    $0x40
 8d5:	c3                   	ret    

000008d6 <getpid>:
SYSCALL(getpid)
 8d6:	b8 0b 00 00 00       	mov    $0xb,%eax
 8db:	cd 40                	int    $0x40
 8dd:	c3                   	ret    

000008de <sbrk>:
SYSCALL(sbrk)
 8de:	b8 0c 00 00 00       	mov    $0xc,%eax
 8e3:	cd 40                	int    $0x40
 8e5:	c3                   	ret    

000008e6 <sleep>:
SYSCALL(sleep)
 8e6:	b8 0d 00 00 00       	mov    $0xd,%eax
 8eb:	cd 40                	int    $0x40
 8ed:	c3                   	ret    

000008ee <uptime>:
SYSCALL(uptime)
 8ee:	b8 0e 00 00 00       	mov    $0xe,%eax
 8f3:	cd 40                	int    $0x40
 8f5:	c3                   	ret    

000008f6 <clone>:
SYSCALL(clone)
 8f6:	b8 16 00 00 00       	mov    $0x16,%eax
 8fb:	cd 40                	int    $0x40
 8fd:	c3                   	ret    

000008fe <join>:
SYSCALL(join)
 8fe:	b8 17 00 00 00       	mov    $0x17,%eax
 903:	cd 40                	int    $0x40
 905:	c3                   	ret    
 906:	66 90                	xchg   %ax,%ax
 908:	66 90                	xchg   %ax,%ax
 90a:	66 90                	xchg   %ax,%ax
 90c:	66 90                	xchg   %ax,%ax
 90e:	66 90                	xchg   %ax,%ax

00000910 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 3c             	sub    $0x3c,%esp
 919:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 91c:	89 d1                	mov    %edx,%ecx
{
 91e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 921:	85 d2                	test   %edx,%edx
 923:	0f 89 7f 00 00 00    	jns    9a8 <printint+0x98>
 929:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 92d:	74 79                	je     9a8 <printint+0x98>
    neg = 1;
 92f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 936:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 938:	31 db                	xor    %ebx,%ebx
 93a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 93d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 940:	89 c8                	mov    %ecx,%eax
 942:	31 d2                	xor    %edx,%edx
 944:	89 cf                	mov    %ecx,%edi
 946:	f7 75 c4             	divl   -0x3c(%ebp)
 949:	0f b6 92 84 0e 00 00 	movzbl 0xe84(%edx),%edx
 950:	89 45 c0             	mov    %eax,-0x40(%ebp)
 953:	89 d8                	mov    %ebx,%eax
 955:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 958:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 95b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 95e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 961:	76 dd                	jbe    940 <printint+0x30>
  if(neg)
 963:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 966:	85 c9                	test   %ecx,%ecx
 968:	74 0c                	je     976 <printint+0x66>
    buf[i++] = '-';
 96a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 96f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 971:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 976:	8b 7d b8             	mov    -0x48(%ebp),%edi
 979:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 97d:	eb 07                	jmp    986 <printint+0x76>
 97f:	90                   	nop
    putc(fd, buf[i]);
 980:	0f b6 13             	movzbl (%ebx),%edx
 983:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 986:	83 ec 04             	sub    $0x4,%esp
 989:	88 55 d7             	mov    %dl,-0x29(%ebp)
 98c:	6a 01                	push   $0x1
 98e:	56                   	push   %esi
 98f:	57                   	push   %edi
 990:	e8 e1 fe ff ff       	call   876 <write>
  while(--i >= 0)
 995:	83 c4 10             	add    $0x10,%esp
 998:	39 de                	cmp    %ebx,%esi
 99a:	75 e4                	jne    980 <printint+0x70>
}
 99c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 99f:	5b                   	pop    %ebx
 9a0:	5e                   	pop    %esi
 9a1:	5f                   	pop    %edi
 9a2:	5d                   	pop    %ebp
 9a3:	c3                   	ret    
 9a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 9af:	eb 87                	jmp    938 <printint+0x28>
 9b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9bf:	90                   	nop

000009c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 9cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 9cf:	0f b6 13             	movzbl (%ebx),%edx
 9d2:	84 d2                	test   %dl,%dl
 9d4:	74 6a                	je     a40 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 9d6:	8d 45 10             	lea    0x10(%ebp),%eax
 9d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 9e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9e4:	eb 36                	jmp    a1c <printf+0x5c>
 9e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
 9f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 9f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 9f8:	83 f8 25             	cmp    $0x25,%eax
 9fb:	74 15                	je     a12 <printf+0x52>
  write(fd, &c, 1);
 9fd:	83 ec 04             	sub    $0x4,%esp
 a00:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a03:	6a 01                	push   $0x1
 a05:	57                   	push   %edi
 a06:	56                   	push   %esi
 a07:	e8 6a fe ff ff       	call   876 <write>
 a0c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a0f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a12:	0f b6 13             	movzbl (%ebx),%edx
 a15:	83 c3 01             	add    $0x1,%ebx
 a18:	84 d2                	test   %dl,%dl
 a1a:	74 24                	je     a40 <printf+0x80>
    c = fmt[i] & 0xff;
 a1c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a1f:	85 c9                	test   %ecx,%ecx
 a21:	74 cd                	je     9f0 <printf+0x30>
      }
    } else if(state == '%'){
 a23:	83 f9 25             	cmp    $0x25,%ecx
 a26:	75 ea                	jne    a12 <printf+0x52>
      if(c == 'd'){
 a28:	83 f8 25             	cmp    $0x25,%eax
 a2b:	0f 84 07 01 00 00    	je     b38 <printf+0x178>
 a31:	83 e8 63             	sub    $0x63,%eax
 a34:	83 f8 15             	cmp    $0x15,%eax
 a37:	77 17                	ja     a50 <printf+0x90>
 a39:	ff 24 85 2c 0e 00 00 	jmp    *0xe2c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a40:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a43:	5b                   	pop    %ebx
 a44:	5e                   	pop    %esi
 a45:	5f                   	pop    %edi
 a46:	5d                   	pop    %ebp
 a47:	c3                   	ret    
 a48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a4f:	90                   	nop
  write(fd, &c, 1);
 a50:	83 ec 04             	sub    $0x4,%esp
 a53:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 a56:	6a 01                	push   $0x1
 a58:	57                   	push   %edi
 a59:	56                   	push   %esi
 a5a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a5e:	e8 13 fe ff ff       	call   876 <write>
        putc(fd, c);
 a63:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 a67:	83 c4 0c             	add    $0xc,%esp
 a6a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a6d:	6a 01                	push   $0x1
 a6f:	57                   	push   %edi
 a70:	56                   	push   %esi
 a71:	e8 00 fe ff ff       	call   876 <write>
        putc(fd, c);
 a76:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a79:	31 c9                	xor    %ecx,%ecx
 a7b:	eb 95                	jmp    a12 <printf+0x52>
 a7d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a80:	83 ec 0c             	sub    $0xc,%esp
 a83:	b9 10 00 00 00       	mov    $0x10,%ecx
 a88:	6a 00                	push   $0x0
 a8a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a8d:	8b 10                	mov    (%eax),%edx
 a8f:	89 f0                	mov    %esi,%eax
 a91:	e8 7a fe ff ff       	call   910 <printint>
        ap++;
 a96:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a9a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a9d:	31 c9                	xor    %ecx,%ecx
 a9f:	e9 6e ff ff ff       	jmp    a12 <printf+0x52>
 aa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 aa8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 aab:	8b 10                	mov    (%eax),%edx
        ap++;
 aad:	83 c0 04             	add    $0x4,%eax
 ab0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 ab3:	85 d2                	test   %edx,%edx
 ab5:	0f 84 8d 00 00 00    	je     b48 <printf+0x188>
        while(*s != 0){
 abb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 abe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 ac0:	84 c0                	test   %al,%al
 ac2:	0f 84 4a ff ff ff    	je     a12 <printf+0x52>
 ac8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 acb:	89 d3                	mov    %edx,%ebx
 acd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 ad0:	83 ec 04             	sub    $0x4,%esp
          s++;
 ad3:	83 c3 01             	add    $0x1,%ebx
 ad6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ad9:	6a 01                	push   $0x1
 adb:	57                   	push   %edi
 adc:	56                   	push   %esi
 add:	e8 94 fd ff ff       	call   876 <write>
        while(*s != 0){
 ae2:	0f b6 03             	movzbl (%ebx),%eax
 ae5:	83 c4 10             	add    $0x10,%esp
 ae8:	84 c0                	test   %al,%al
 aea:	75 e4                	jne    ad0 <printf+0x110>
      state = 0;
 aec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 aef:	31 c9                	xor    %ecx,%ecx
 af1:	e9 1c ff ff ff       	jmp    a12 <printf+0x52>
 af6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 afd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b00:	83 ec 0c             	sub    $0xc,%esp
 b03:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b08:	6a 01                	push   $0x1
 b0a:	e9 7b ff ff ff       	jmp    a8a <printf+0xca>
 b0f:	90                   	nop
        putc(fd, *ap);
 b10:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b13:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b16:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b18:	6a 01                	push   $0x1
 b1a:	57                   	push   %edi
 b1b:	56                   	push   %esi
        putc(fd, *ap);
 b1c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b1f:	e8 52 fd ff ff       	call   876 <write>
        ap++;
 b24:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b28:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b2b:	31 c9                	xor    %ecx,%ecx
 b2d:	e9 e0 fe ff ff       	jmp    a12 <printf+0x52>
 b32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b38:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b3b:	83 ec 04             	sub    $0x4,%esp
 b3e:	e9 2a ff ff ff       	jmp    a6d <printf+0xad>
 b43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b47:	90                   	nop
          s = "(null)";
 b48:	ba 22 0e 00 00       	mov    $0xe22,%edx
        while(*s != 0){
 b4d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b50:	b8 28 00 00 00       	mov    $0x28,%eax
 b55:	89 d3                	mov    %edx,%ebx
 b57:	e9 74 ff ff ff       	jmp    ad0 <printf+0x110>
 b5c:	66 90                	xchg   %ax,%ax
 b5e:	66 90                	xchg   %ax,%ax

00000b60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b61:	a1 38 12 00 00       	mov    0x1238,%eax
{
 b66:	89 e5                	mov    %esp,%ebp
 b68:	57                   	push   %edi
 b69:	56                   	push   %esi
 b6a:	53                   	push   %ebx
 b6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b78:	89 c2                	mov    %eax,%edx
 b7a:	8b 00                	mov    (%eax),%eax
 b7c:	39 ca                	cmp    %ecx,%edx
 b7e:	73 30                	jae    bb0 <free+0x50>
 b80:	39 c1                	cmp    %eax,%ecx
 b82:	72 04                	jb     b88 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b84:	39 c2                	cmp    %eax,%edx
 b86:	72 f0                	jb     b78 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b88:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b8b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b8e:	39 f8                	cmp    %edi,%eax
 b90:	74 30                	je     bc2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 b92:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b95:	8b 42 04             	mov    0x4(%edx),%eax
 b98:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b9b:	39 f1                	cmp    %esi,%ecx
 b9d:	74 3a                	je     bd9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 b9f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ba1:	5b                   	pop    %ebx
  freep = p;
 ba2:	89 15 38 12 00 00    	mov    %edx,0x1238
}
 ba8:	5e                   	pop    %esi
 ba9:	5f                   	pop    %edi
 baa:	5d                   	pop    %ebp
 bab:	c3                   	ret    
 bac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bb0:	39 c2                	cmp    %eax,%edx
 bb2:	72 c4                	jb     b78 <free+0x18>
 bb4:	39 c1                	cmp    %eax,%ecx
 bb6:	73 c0                	jae    b78 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 bb8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bbb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bbe:	39 f8                	cmp    %edi,%eax
 bc0:	75 d0                	jne    b92 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 bc2:	03 70 04             	add    0x4(%eax),%esi
 bc5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 bc8:	8b 02                	mov    (%edx),%eax
 bca:	8b 00                	mov    (%eax),%eax
 bcc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 bcf:	8b 42 04             	mov    0x4(%edx),%eax
 bd2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bd5:	39 f1                	cmp    %esi,%ecx
 bd7:	75 c6                	jne    b9f <free+0x3f>
    p->s.size += bp->s.size;
 bd9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 bdc:	89 15 38 12 00 00    	mov    %edx,0x1238
    p->s.size += bp->s.size;
 be2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 be5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 be8:	89 0a                	mov    %ecx,(%edx)
}
 bea:	5b                   	pop    %ebx
 beb:	5e                   	pop    %esi
 bec:	5f                   	pop    %edi
 bed:	5d                   	pop    %ebp
 bee:	c3                   	ret    
 bef:	90                   	nop

00000bf0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 bf0:	55                   	push   %ebp
 bf1:	89 e5                	mov    %esp,%ebp
 bf3:	57                   	push   %edi
 bf4:	56                   	push   %esi
 bf5:	53                   	push   %ebx
 bf6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bf9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 bfc:	8b 3d 38 12 00 00    	mov    0x1238,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c02:	8d 70 07             	lea    0x7(%eax),%esi
 c05:	c1 ee 03             	shr    $0x3,%esi
 c08:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c0b:	85 ff                	test   %edi,%edi
 c0d:	0f 84 9d 00 00 00    	je     cb0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c13:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c15:	8b 4a 04             	mov    0x4(%edx),%ecx
 c18:	39 f1                	cmp    %esi,%ecx
 c1a:	73 6a                	jae    c86 <malloc+0x96>
 c1c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c21:	39 de                	cmp    %ebx,%esi
 c23:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c26:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c30:	eb 17                	jmp    c49 <malloc+0x59>
 c32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c38:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c3a:	8b 48 04             	mov    0x4(%eax),%ecx
 c3d:	39 f1                	cmp    %esi,%ecx
 c3f:	73 4f                	jae    c90 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c41:	8b 3d 38 12 00 00    	mov    0x1238,%edi
 c47:	89 c2                	mov    %eax,%edx
 c49:	39 d7                	cmp    %edx,%edi
 c4b:	75 eb                	jne    c38 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c4d:	83 ec 0c             	sub    $0xc,%esp
 c50:	ff 75 e4             	push   -0x1c(%ebp)
 c53:	e8 86 fc ff ff       	call   8de <sbrk>
  if(p == (char*)-1)
 c58:	83 c4 10             	add    $0x10,%esp
 c5b:	83 f8 ff             	cmp    $0xffffffff,%eax
 c5e:	74 1c                	je     c7c <malloc+0x8c>
  hp->s.size = nu;
 c60:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c63:	83 ec 0c             	sub    $0xc,%esp
 c66:	83 c0 08             	add    $0x8,%eax
 c69:	50                   	push   %eax
 c6a:	e8 f1 fe ff ff       	call   b60 <free>
  return freep;
 c6f:	8b 15 38 12 00 00    	mov    0x1238,%edx
      if((p = morecore(nunits)) == 0)
 c75:	83 c4 10             	add    $0x10,%esp
 c78:	85 d2                	test   %edx,%edx
 c7a:	75 bc                	jne    c38 <malloc+0x48>
        return 0;
  }
}
 c7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c7f:	31 c0                	xor    %eax,%eax
}
 c81:	5b                   	pop    %ebx
 c82:	5e                   	pop    %esi
 c83:	5f                   	pop    %edi
 c84:	5d                   	pop    %ebp
 c85:	c3                   	ret    
    if(p->s.size >= nunits){
 c86:	89 d0                	mov    %edx,%eax
 c88:	89 fa                	mov    %edi,%edx
 c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 c90:	39 ce                	cmp    %ecx,%esi
 c92:	74 4c                	je     ce0 <malloc+0xf0>
        p->s.size -= nunits;
 c94:	29 f1                	sub    %esi,%ecx
 c96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c9c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 c9f:	89 15 38 12 00 00    	mov    %edx,0x1238
}
 ca5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ca8:	83 c0 08             	add    $0x8,%eax
}
 cab:	5b                   	pop    %ebx
 cac:	5e                   	pop    %esi
 cad:	5f                   	pop    %edi
 cae:	5d                   	pop    %ebp
 caf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 cb0:	c7 05 38 12 00 00 3c 	movl   $0x123c,0x1238
 cb7:	12 00 00 
    base.s.size = 0;
 cba:	bf 3c 12 00 00       	mov    $0x123c,%edi
    base.s.ptr = freep = prevp = &base;
 cbf:	c7 05 3c 12 00 00 3c 	movl   $0x123c,0x123c
 cc6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 cc9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 ccb:	c7 05 40 12 00 00 00 	movl   $0x0,0x1240
 cd2:	00 00 00 
    if(p->s.size >= nunits){
 cd5:	e9 42 ff ff ff       	jmp    c1c <malloc+0x2c>
 cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ce0:	8b 08                	mov    (%eax),%ecx
 ce2:	89 0a                	mov    %ecx,(%edx)
 ce4:	eb b9                	jmp    c9f <malloc+0xaf>
