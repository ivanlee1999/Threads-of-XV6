
_test_13:     file format elf32-i386


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
  14:	e8 00 08 00 00       	call   819 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 d8 10 00 00       	mov    %eax,0x10d8
   assert(fib(28) == 317811);
  23:	e8 18 01 00 00       	call   140 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 92 00 00 00    	jne    c8 <main+0xc8>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d d0 10 00 00 00 	cmpl   $0x0,0x10d0
   int arg1 = 11, arg2 = 22;
  3d:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
  44:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   for (int i = 0; i < num_threads; i++) {
  4b:	0f 8e d3 00 00 00    	jle    124 <main+0x124>
  51:	31 db                	xor    %ebx,%ebx
  53:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  56:	8d 75 e0             	lea    -0x20(%ebp),%esi
  59:	eb 11                	jmp    6c <main+0x6c>
  5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  5f:	90                   	nop
  60:	a1 d0 10 00 00       	mov    0x10d0,%eax
  65:	83 c3 01             	add    $0x1,%ebx
  68:	39 d8                	cmp    %ebx,%eax
  6a:	7e 79                	jle    e5 <main+0xe5>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  6c:	83 ec 04             	sub    $0x4,%esp
  6f:	57                   	push   %edi
  70:	56                   	push   %esi
  71:	68 50 03 00 00       	push   $0x350
  76:	e8 a5 06 00 00       	call   720 <thread_create>
      assert(thread_pid > 0);
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	7f de                	jg     60 <main+0x60>
  82:	6a 2e                	push   $0x2e
  84:	68 28 0c 00 00       	push   $0xc28
  89:	68 32 0c 00 00       	push   $0xc32
  8e:	6a 01                	push   $0x1
  90:	e8 6b 08 00 00       	call   900 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 d0 0c 00 00       	push   $0xcd0
  9d:	68 45 0c 00 00       	push   $0xc45
  a2:	6a 01                	push   $0x1
  a4:	e8 57 08 00 00       	call   900 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 59 0c 00 00       	push   $0xc59
  b0:	6a 01                	push   $0x1
  b2:	e8 49 08 00 00       	call   900 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 d8 10 00 00    	push   0x10d8
  be:	e8 06 07 00 00       	call   7c9 <kill>
  c3:	e8 d1 06 00 00       	call   799 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 28 0c 00 00       	push   $0xc28
  cf:	68 32 0c 00 00       	push   $0xc32
  d4:	6a 01                	push   $0x1
  d6:	e8 25 08 00 00       	call   900 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 b1 0c 00 00       	push   $0xcb1
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d d0 10 00 00    	cmp    %ebx,0x10d0
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 40 06 00 00       	call   740 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 28 0c 00 00       	push   $0xc28
 10b:	68 32 0c 00 00       	push   $0xc32
 110:	6a 01                	push   $0x1
 112:	e8 e9 07 00 00       	call   900 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 df 0c 00 00       	push   $0xcdf
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 c3 0c 00 00       	push   $0xcc3
 12b:	6a 01                	push   $0x1
 12d:	e8 ce 07 00 00       	call   900 <printf>
   exit();
 132:	e8 62 06 00 00       	call   799 <exit>
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <fib>:
unsigned int fib(unsigned int n) {
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	83 ec 4c             	sub    $0x4c,%esp
   if (n == 0) {
 149:	8b 45 08             	mov    0x8(%ebp),%eax
 14c:	85 c0                	test   %eax,%eax
 14e:	0f 84 7d 01 00 00    	je     2d1 <fib+0x191>
   } else if (n == 1) {
 154:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 158:	0f 84 73 01 00 00    	je     2d1 <fib+0x191>
 15e:	8b 45 08             	mov    0x8(%ebp),%eax
 161:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
 168:	89 45 d8             	mov    %eax,-0x28(%ebp)
      return fib(n - 1) + fib(n - 2);
 16b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 16e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 175:	83 e8 01             	sub    $0x1,%eax
 178:	89 45 b8             	mov    %eax,-0x48(%ebp)
   } else if (n == 1) {
 17b:	8b 45 b8             	mov    -0x48(%ebp),%eax
 17e:	83 f8 01             	cmp    $0x1,%eax
 181:	0f 84 2c 01 00 00    	je     2b3 <fib+0x173>
      return fib(n - 1) + fib(n - 2);
 187:	83 e8 01             	sub    $0x1,%eax
 18a:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 191:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   } else if (n == 1) {
 194:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 197:	83 f8 01             	cmp    $0x1,%eax
 19a:	0f 84 90 01 00 00    	je     330 <fib+0x1f0>
      return fib(n - 1) + fib(n - 2);
 1a0:	83 e8 01             	sub    $0x1,%eax
 1a3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 1aa:	89 45 ac             	mov    %eax,-0x54(%ebp)
   } else if (n == 1) {
 1ad:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1b0:	83 f8 01             	cmp    $0x1,%eax
 1b3:	0f 84 5e 01 00 00    	je     317 <fib+0x1d7>
      return fib(n - 1) + fib(n - 2);
 1b9:	83 e8 01             	sub    $0x1,%eax
 1bc:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 1c3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   } else if (n == 1) {
 1c6:	8b 45 b0             	mov    -0x50(%ebp),%eax
 1c9:	83 f8 01             	cmp    $0x1,%eax
 1cc:	0f 84 3c 01 00 00    	je     30e <fib+0x1ce>
      return fib(n - 1) + fib(n - 2);
 1d2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 1d9:	8d 48 ff             	lea    -0x1(%eax),%ecx
 1dc:	89 cb                	mov    %ecx,%ebx
   } else if (n == 1) {
 1de:	83 fb 01             	cmp    $0x1,%ebx
 1e1:	0f 84 13 01 00 00    	je     2fa <fib+0x1ba>
      return fib(n - 1) + fib(n - 2);
 1e7:	8d 43 ff             	lea    -0x1(%ebx),%eax
 1ea:	83 eb 02             	sub    $0x2,%ebx
 1ed:	31 c9                	xor    %ecx,%ecx
 1ef:	89 45 e0             	mov    %eax,-0x20(%ebp)
 1f2:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 1f5:	89 5d c4             	mov    %ebx,-0x3c(%ebp)
   } else if (n == 1) {
 1f8:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 1fc:	0f 84 01 01 00 00    	je     303 <fib+0x1c3>
 202:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 205:	31 c0                	xor    %eax,%eax
 207:	89 d7                	mov    %edx,%edi
 209:	89 c2                	mov    %eax,%edx
 20b:	83 ff 01             	cmp    $0x1,%edi
 20e:	0f 84 dc 00 00 00    	je     2f0 <fib+0x1b0>
      return fib(n - 1) + fib(n - 2);
 214:	89 7d c0             	mov    %edi,-0x40(%ebp)
 217:	8d 5f ff             	lea    -0x1(%edi),%ebx
 21a:	31 f6                	xor    %esi,%esi
 21c:	89 cf                	mov    %ecx,%edi
   } else if (n == 1) {
 21e:	83 fb 01             	cmp    $0x1,%ebx
 221:	0f 84 b9 00 00 00    	je     2e0 <fib+0x1a0>
      return fib(n - 1) + fib(n - 2);
 227:	83 ec 0c             	sub    $0xc,%esp
 22a:	8d 43 ff             	lea    -0x1(%ebx),%eax
 22d:	89 55 bc             	mov    %edx,-0x44(%ebp)
 230:	50                   	push   %eax
 231:	e8 0a ff ff ff       	call   140 <fib>
 236:	83 c4 10             	add    $0x10,%esp
   if (n == 0) {
 239:	8b 55 bc             	mov    -0x44(%ebp),%edx
 23c:	01 c6                	add    %eax,%esi
 23e:	83 eb 02             	sub    $0x2,%ebx
 241:	75 db                	jne    21e <fib+0xde>
 243:	89 f9                	mov    %edi,%ecx
 245:	8b 7d c0             	mov    -0x40(%ebp),%edi
 248:	01 f2                	add    %esi,%edx
 24a:	83 ef 02             	sub    $0x2,%edi
 24d:	75 bc                	jne    20b <fib+0xcb>
 24f:	89 d7                	mov    %edx,%edi
 251:	83 6d e4 02          	subl   $0x2,-0x1c(%ebp)
 255:	01 f9                	add    %edi,%ecx
 257:	83 6d e0 02          	subl   $0x2,-0x20(%ebp)
 25b:	75 9b                	jne    1f8 <fib+0xb8>
 25d:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 260:	01 4d dc             	add    %ecx,-0x24(%ebp)
 263:	85 db                	test   %ebx,%ebx
 265:	0f 85 73 ff ff ff    	jne    1de <fib+0x9e>
 26b:	8b 75 dc             	mov    -0x24(%ebp),%esi
 26e:	01 75 c8             	add    %esi,-0x38(%ebp)
 271:	83 6d b0 02          	subl   $0x2,-0x50(%ebp)
 275:	0f 85 4b ff ff ff    	jne    1c6 <fib+0x86>
 27b:	8b 75 c8             	mov    -0x38(%ebp),%esi
 27e:	01 75 cc             	add    %esi,-0x34(%ebp)
 281:	83 6d ac 02          	subl   $0x2,-0x54(%ebp)
 285:	0f 85 22 ff ff ff    	jne    1ad <fib+0x6d>
 28b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 28e:	01 75 d0             	add    %esi,-0x30(%ebp)
 291:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 295:	0f 85 f9 fe ff ff    	jne    194 <fib+0x54>
 29b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 29e:	01 75 d4             	add    %esi,-0x2c(%ebp)
 2a1:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 2a5:	74 10                	je     2b7 <fib+0x177>
   } else if (n == 1) {
 2a7:	8b 45 b8             	mov    -0x48(%ebp),%eax
 2aa:	83 f8 01             	cmp    $0x1,%eax
 2ad:	0f 85 d4 fe ff ff    	jne    187 <fib+0x47>
 2b3:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 2b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 2ba:	01 45 08             	add    %eax,0x8(%ebp)
   if (n == 0) {
 2bd:	83 6d d8 02          	subl   $0x2,-0x28(%ebp)
 2c1:	74 0e                	je     2d1 <fib+0x191>
   } else if (n == 1) {
 2c3:	83 7d d8 01          	cmpl   $0x1,-0x28(%ebp)
 2c7:	0f 85 9e fe ff ff    	jne    16b <fib+0x2b>
 2cd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
}
 2d1:	8b 45 08             	mov    0x8(%ebp),%eax
 2d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d7:	5b                   	pop    %ebx
 2d8:	5e                   	pop    %esi
 2d9:	5f                   	pop    %edi
 2da:	5d                   	pop    %ebp
 2db:	c3                   	ret    
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	89 f9                	mov    %edi,%ecx
 2e2:	83 c6 01             	add    $0x1,%esi
 2e5:	8b 7d c0             	mov    -0x40(%ebp),%edi
 2e8:	e9 5b ff ff ff       	jmp    248 <fib+0x108>
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	89 d7                	mov    %edx,%edi
 2f2:	83 c7 01             	add    $0x1,%edi
 2f5:	e9 57 ff ff ff       	jmp    251 <fib+0x111>
 2fa:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 2fe:	e9 68 ff ff ff       	jmp    26b <fib+0x12b>
 303:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 306:	83 c1 01             	add    $0x1,%ecx
 309:	e9 52 ff ff ff       	jmp    260 <fib+0x120>
 30e:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 312:	e9 64 ff ff ff       	jmp    27b <fib+0x13b>
 317:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 31b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 31e:	01 75 d0             	add    %esi,-0x30(%ebp)
   if (n == 0) {
 321:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 325:	0f 85 69 fe ff ff    	jne    194 <fib+0x54>
 32b:	e9 6b ff ff ff       	jmp    29b <fib+0x15b>
 330:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 334:	8b 75 d0             	mov    -0x30(%ebp),%esi
 337:	01 75 d4             	add    %esi,-0x2c(%ebp)
 33a:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 33e:	0f 85 63 ff ff ff    	jne    2a7 <fib+0x167>
 344:	e9 6e ff ff ff       	jmp    2b7 <fib+0x177>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <worker>:
}

void
worker(void *arg1, void *arg2) {
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 356:	8b 45 0c             	mov    0xc(%ebp),%eax
 359:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 11);
 35b:	8b 45 08             	mov    0x8(%ebp),%eax
 35e:	83 38 0b             	cmpl   $0xb,(%eax)
 361:	75 75                	jne    3d8 <worker+0x88>
   assert(tmp2 == 22);
 363:	83 fa 16             	cmp    $0x16,%edx
 366:	75 2a                	jne    392 <worker+0x42>
   assert(global == 1);
 368:	83 3d d4 10 00 00 01 	cmpl   $0x1,0x10d4
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 28 0c 00 00       	push   $0xc28
 37c:	68 32 0c 00 00       	push   $0xc32
 381:	6a 01                	push   $0x1
 383:	e8 78 05 00 00       	call   900 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 71 0c 00 00       	push   $0xc71
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 28 0c 00 00       	push   $0xc28
 399:	68 32 0c 00 00       	push   $0xc32
 39e:	6a 01                	push   $0x1
 3a0:	e8 5b 05 00 00       	call   900 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 66 0c 00 00       	push   $0xc66
 3ad:	68 45 0c 00 00       	push   $0xc45
 3b2:	6a 01                	push   $0x1
 3b4:	e8 47 05 00 00       	call   900 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 59 0c 00 00       	push   $0xc59
 3c0:	6a 01                	push   $0x1
 3c2:	e8 39 05 00 00       	call   900 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 d8 10 00 00    	push   0x10d8
 3ce:	e8 f6 03 00 00       	call   7c9 <kill>
 3d3:	e8 c1 03 00 00       	call   799 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 28 0c 00 00       	push   $0xc28
 3df:	68 32 0c 00 00       	push   $0xc32
 3e4:	6a 01                	push   $0x1
 3e6:	e8 15 05 00 00       	call   900 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 3a 0c 00 00       	push   $0xc3a
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 28 0c 00 00       	push   $0xc28
 40e:	68 32 0c 00 00       	push   $0xc32
 413:	6a 01                	push   $0x1
 415:	e8 e6 04 00 00       	call   900 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 7d 0c 00 00       	push   $0xc7d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 28 0c 00 00       	push   $0xc28
 43d:	68 32 0c 00 00       	push   $0xc32
 442:	6a 01                	push   $0x1
 444:	e8 b7 04 00 00       	call   900 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 89 0c 00 00       	push   $0xc89
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 28 0c 00 00       	push   $0xc28
 46f:	68 32 0c 00 00       	push   $0xc32
 474:	6a 01                	push   $0x1
 476:	e8 85 04 00 00       	call   900 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 95 0c 00 00       	push   $0xc95
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 28 0c 00 00       	push   $0xc28
 4a3:	68 32 0c 00 00       	push   $0xc32
 4a8:	6a 01                	push   $0x1
 4aa:	e8 51 04 00 00       	call   900 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 a2 0c 00 00       	push   $0xca2
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 d8 02 00 00       	call   799 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 4d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4d1:	31 c0                	xor    %eax,%eax
{
 4d3:	89 e5                	mov    %esp,%ebp
 4d5:	53                   	push   %ebx
 4d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 4e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 4e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 4e7:	83 c0 01             	add    $0x1,%eax
 4ea:	84 d2                	test   %dl,%dl
 4ec:	75 f2                	jne    4e0 <strcpy+0x10>
    ;
  return os;
}
 4ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f1:	89 c8                	mov    %ecx,%eax
 4f3:	c9                   	leave  
 4f4:	c3                   	ret    
 4f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	53                   	push   %ebx
 504:	8b 55 08             	mov    0x8(%ebp),%edx
 507:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 50a:	0f b6 02             	movzbl (%edx),%eax
 50d:	84 c0                	test   %al,%al
 50f:	75 17                	jne    528 <strcmp+0x28>
 511:	eb 3a                	jmp    54d <strcmp+0x4d>
 513:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 517:	90                   	nop
 518:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 51c:	83 c2 01             	add    $0x1,%edx
 51f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 522:	84 c0                	test   %al,%al
 524:	74 1a                	je     540 <strcmp+0x40>
    p++, q++;
 526:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 528:	0f b6 19             	movzbl (%ecx),%ebx
 52b:	38 c3                	cmp    %al,%bl
 52d:	74 e9                	je     518 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 52f:	29 d8                	sub    %ebx,%eax
}
 531:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 534:	c9                   	leave  
 535:	c3                   	ret    
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 540:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 544:	31 c0                	xor    %eax,%eax
 546:	29 d8                	sub    %ebx,%eax
}
 548:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 54b:	c9                   	leave  
 54c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 54d:	0f b6 19             	movzbl (%ecx),%ebx
 550:	31 c0                	xor    %eax,%eax
 552:	eb db                	jmp    52f <strcmp+0x2f>
 554:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <strlen>:

uint
strlen(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 566:	80 3a 00             	cmpb   $0x0,(%edx)
 569:	74 15                	je     580 <strlen+0x20>
 56b:	31 c0                	xor    %eax,%eax
 56d:	8d 76 00             	lea    0x0(%esi),%esi
 570:	83 c0 01             	add    $0x1,%eax
 573:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 577:	89 c1                	mov    %eax,%ecx
 579:	75 f5                	jne    570 <strlen+0x10>
    ;
  return n;
}
 57b:	89 c8                	mov    %ecx,%eax
 57d:	5d                   	pop    %ebp
 57e:	c3                   	ret    
 57f:	90                   	nop
  for(n = 0; s[n]; n++)
 580:	31 c9                	xor    %ecx,%ecx
}
 582:	5d                   	pop    %ebp
 583:	89 c8                	mov    %ecx,%eax
 585:	c3                   	ret    
 586:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi

00000590 <memset>:

void*
memset(void *dst, int c, uint n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 597:	8b 4d 10             	mov    0x10(%ebp),%ecx
 59a:	8b 45 0c             	mov    0xc(%ebp),%eax
 59d:	89 d7                	mov    %edx,%edi
 59f:	fc                   	cld    
 5a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5a5:	89 d0                	mov    %edx,%eax
 5a7:	c9                   	leave  
 5a8:	c3                   	ret    
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005b0 <strchr>:

char*
strchr(const char *s, char c)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
 5b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 5ba:	0f b6 10             	movzbl (%eax),%edx
 5bd:	84 d2                	test   %dl,%dl
 5bf:	75 12                	jne    5d3 <strchr+0x23>
 5c1:	eb 1d                	jmp    5e0 <strchr+0x30>
 5c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5c7:	90                   	nop
 5c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 5cc:	83 c0 01             	add    $0x1,%eax
 5cf:	84 d2                	test   %dl,%dl
 5d1:	74 0d                	je     5e0 <strchr+0x30>
    if(*s == c)
 5d3:	38 d1                	cmp    %dl,%cl
 5d5:	75 f1                	jne    5c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 5d7:	5d                   	pop    %ebp
 5d8:	c3                   	ret    
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 5e0:	31 c0                	xor    %eax,%eax
}
 5e2:	5d                   	pop    %ebp
 5e3:	c3                   	ret    
 5e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5ef:	90                   	nop

000005f0 <gets>:

char*
gets(char *buf, int max)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 5f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 5f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 5f9:	31 db                	xor    %ebx,%ebx
{
 5fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 5fe:	eb 27                	jmp    627 <gets+0x37>
    cc = read(0, &c, 1);
 600:	83 ec 04             	sub    $0x4,%esp
 603:	6a 01                	push   $0x1
 605:	57                   	push   %edi
 606:	6a 00                	push   $0x0
 608:	e8 a4 01 00 00       	call   7b1 <read>
    if(cc < 1)
 60d:	83 c4 10             	add    $0x10,%esp
 610:	85 c0                	test   %eax,%eax
 612:	7e 1d                	jle    631 <gets+0x41>
      break;
    buf[i++] = c;
 614:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 618:	8b 55 08             	mov    0x8(%ebp),%edx
 61b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 61f:	3c 0a                	cmp    $0xa,%al
 621:	74 1d                	je     640 <gets+0x50>
 623:	3c 0d                	cmp    $0xd,%al
 625:	74 19                	je     640 <gets+0x50>
  for(i=0; i+1 < max; ){
 627:	89 de                	mov    %ebx,%esi
 629:	83 c3 01             	add    $0x1,%ebx
 62c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 62f:	7c cf                	jl     600 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 631:	8b 45 08             	mov    0x8(%ebp),%eax
 634:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 638:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63b:	5b                   	pop    %ebx
 63c:	5e                   	pop    %esi
 63d:	5f                   	pop    %edi
 63e:	5d                   	pop    %ebp
 63f:	c3                   	ret    
  buf[i] = '\0';
 640:	8b 45 08             	mov    0x8(%ebp),%eax
 643:	89 de                	mov    %ebx,%esi
 645:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 649:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64c:	5b                   	pop    %ebx
 64d:	5e                   	pop    %esi
 64e:	5f                   	pop    %edi
 64f:	5d                   	pop    %ebp
 650:	c3                   	ret    
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <stat>:

int
stat(const char *n, struct stat *st)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	56                   	push   %esi
 664:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 665:	83 ec 08             	sub    $0x8,%esp
 668:	6a 00                	push   $0x0
 66a:	ff 75 08             	push   0x8(%ebp)
 66d:	e8 67 01 00 00       	call   7d9 <open>
  if(fd < 0)
 672:	83 c4 10             	add    $0x10,%esp
 675:	85 c0                	test   %eax,%eax
 677:	78 27                	js     6a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 679:	83 ec 08             	sub    $0x8,%esp
 67c:	ff 75 0c             	push   0xc(%ebp)
 67f:	89 c3                	mov    %eax,%ebx
 681:	50                   	push   %eax
 682:	e8 6a 01 00 00       	call   7f1 <fstat>
  close(fd);
 687:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 68a:	89 c6                	mov    %eax,%esi
  close(fd);
 68c:	e8 30 01 00 00       	call   7c1 <close>
  return r;
 691:	83 c4 10             	add    $0x10,%esp
}
 694:	8d 65 f8             	lea    -0x8(%ebp),%esp
 697:	89 f0                	mov    %esi,%eax
 699:	5b                   	pop    %ebx
 69a:	5e                   	pop    %esi
 69b:	5d                   	pop    %ebp
 69c:	c3                   	ret    
 69d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6a5:	eb ed                	jmp    694 <stat+0x34>
 6a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <atoi>:

int
atoi(const char *s)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	53                   	push   %ebx
 6b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6b7:	0f be 02             	movsbl (%edx),%eax
 6ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 6c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 6c5:	77 1e                	ja     6e5 <atoi+0x35>
 6c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 6d0:	83 c2 01             	add    $0x1,%edx
 6d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 6d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 6da:	0f be 02             	movsbl (%edx),%eax
 6dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6e0:	80 fb 09             	cmp    $0x9,%bl
 6e3:	76 eb                	jbe    6d0 <atoi+0x20>
  return n;
}
 6e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e8:	89 c8                	mov    %ecx,%eax
 6ea:	c9                   	leave  
 6eb:	c3                   	ret    
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	8b 45 10             	mov    0x10(%ebp),%eax
 6f7:	8b 55 08             	mov    0x8(%ebp),%edx
 6fa:	56                   	push   %esi
 6fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6fe:	85 c0                	test   %eax,%eax
 700:	7e 13                	jle    715 <memmove+0x25>
 702:	01 d0                	add    %edx,%eax
  dst = vdst;
 704:	89 d7                	mov    %edx,%edi
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 710:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 711:	39 f8                	cmp    %edi,%eax
 713:	75 fb                	jne    710 <memmove+0x20>
  return vdst;
}
 715:	5e                   	pop    %esi
 716:	89 d0                	mov    %edx,%eax
 718:	5f                   	pop    %edi
 719:	5d                   	pop    %ebp
 71a:	c3                   	ret    
 71b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop

00000720 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 726:	6a 04                	push   $0x4
 728:	e8 03 04 00 00       	call   b30 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 72d:	50                   	push   %eax
 72e:	ff 75 10             	push   0x10(%ebp)
 731:	ff 75 0c             	push   0xc(%ebp)
 734:	ff 75 08             	push   0x8(%ebp)
 737:	e8 fd 00 00 00       	call   839 <clone>
}
 73c:	c9                   	leave  
 73d:	c3                   	ret    
 73e:	66 90                	xchg   %ax,%ax

00000740 <thread_join>:

int
thread_join(){
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	56                   	push   %esi
 744:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 745:	83 ec 0c             	sub    $0xc,%esp
 748:	6a 04                	push   $0x4
 74a:	e8 e1 03 00 00       	call   b30 <malloc>
  int rc = join(stack);
 74f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 752:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 754:	e8 e8 00 00 00       	call   841 <join>
 759:	89 c6                	mov    %eax,%esi
  free(*stack);
 75b:	58                   	pop    %eax
 75c:	ff 33                	push   (%ebx)
 75e:	e8 3d 03 00 00       	call   aa0 <free>
  return rc;
}
 763:	8d 65 f8             	lea    -0x8(%ebp),%esp
 766:	89 f0                	mov    %esi,%eax
 768:	5b                   	pop    %ebx
 769:	5e                   	pop    %esi
 76a:	5d                   	pop    %ebp
 76b:	c3                   	ret    
 76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000770 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 770:	c3                   	ret    
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop

00000780 <lock_release>:
 780:	c3                   	ret    
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop

00000790 <lock_init>:
 790:	c3                   	ret    

00000791 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 791:	b8 01 00 00 00       	mov    $0x1,%eax
 796:	cd 40                	int    $0x40
 798:	c3                   	ret    

00000799 <exit>:
SYSCALL(exit)
 799:	b8 02 00 00 00       	mov    $0x2,%eax
 79e:	cd 40                	int    $0x40
 7a0:	c3                   	ret    

000007a1 <wait>:
SYSCALL(wait)
 7a1:	b8 03 00 00 00       	mov    $0x3,%eax
 7a6:	cd 40                	int    $0x40
 7a8:	c3                   	ret    

000007a9 <pipe>:
SYSCALL(pipe)
 7a9:	b8 04 00 00 00       	mov    $0x4,%eax
 7ae:	cd 40                	int    $0x40
 7b0:	c3                   	ret    

000007b1 <read>:
SYSCALL(read)
 7b1:	b8 05 00 00 00       	mov    $0x5,%eax
 7b6:	cd 40                	int    $0x40
 7b8:	c3                   	ret    

000007b9 <write>:
SYSCALL(write)
 7b9:	b8 10 00 00 00       	mov    $0x10,%eax
 7be:	cd 40                	int    $0x40
 7c0:	c3                   	ret    

000007c1 <close>:
SYSCALL(close)
 7c1:	b8 15 00 00 00       	mov    $0x15,%eax
 7c6:	cd 40                	int    $0x40
 7c8:	c3                   	ret    

000007c9 <kill>:
SYSCALL(kill)
 7c9:	b8 06 00 00 00       	mov    $0x6,%eax
 7ce:	cd 40                	int    $0x40
 7d0:	c3                   	ret    

000007d1 <exec>:
SYSCALL(exec)
 7d1:	b8 07 00 00 00       	mov    $0x7,%eax
 7d6:	cd 40                	int    $0x40
 7d8:	c3                   	ret    

000007d9 <open>:
SYSCALL(open)
 7d9:	b8 0f 00 00 00       	mov    $0xf,%eax
 7de:	cd 40                	int    $0x40
 7e0:	c3                   	ret    

000007e1 <mknod>:
SYSCALL(mknod)
 7e1:	b8 11 00 00 00       	mov    $0x11,%eax
 7e6:	cd 40                	int    $0x40
 7e8:	c3                   	ret    

000007e9 <unlink>:
SYSCALL(unlink)
 7e9:	b8 12 00 00 00       	mov    $0x12,%eax
 7ee:	cd 40                	int    $0x40
 7f0:	c3                   	ret    

000007f1 <fstat>:
SYSCALL(fstat)
 7f1:	b8 08 00 00 00       	mov    $0x8,%eax
 7f6:	cd 40                	int    $0x40
 7f8:	c3                   	ret    

000007f9 <link>:
SYSCALL(link)
 7f9:	b8 13 00 00 00       	mov    $0x13,%eax
 7fe:	cd 40                	int    $0x40
 800:	c3                   	ret    

00000801 <mkdir>:
SYSCALL(mkdir)
 801:	b8 14 00 00 00       	mov    $0x14,%eax
 806:	cd 40                	int    $0x40
 808:	c3                   	ret    

00000809 <chdir>:
SYSCALL(chdir)
 809:	b8 09 00 00 00       	mov    $0x9,%eax
 80e:	cd 40                	int    $0x40
 810:	c3                   	ret    

00000811 <dup>:
SYSCALL(dup)
 811:	b8 0a 00 00 00       	mov    $0xa,%eax
 816:	cd 40                	int    $0x40
 818:	c3                   	ret    

00000819 <getpid>:
SYSCALL(getpid)
 819:	b8 0b 00 00 00       	mov    $0xb,%eax
 81e:	cd 40                	int    $0x40
 820:	c3                   	ret    

00000821 <sbrk>:
SYSCALL(sbrk)
 821:	b8 0c 00 00 00       	mov    $0xc,%eax
 826:	cd 40                	int    $0x40
 828:	c3                   	ret    

00000829 <sleep>:
SYSCALL(sleep)
 829:	b8 0d 00 00 00       	mov    $0xd,%eax
 82e:	cd 40                	int    $0x40
 830:	c3                   	ret    

00000831 <uptime>:
SYSCALL(uptime)
 831:	b8 0e 00 00 00       	mov    $0xe,%eax
 836:	cd 40                	int    $0x40
 838:	c3                   	ret    

00000839 <clone>:
SYSCALL(clone)
 839:	b8 16 00 00 00       	mov    $0x16,%eax
 83e:	cd 40                	int    $0x40
 840:	c3                   	ret    

00000841 <join>:
SYSCALL(join)
 841:	b8 17 00 00 00       	mov    $0x17,%eax
 846:	cd 40                	int    $0x40
 848:	c3                   	ret    
 849:	66 90                	xchg   %ax,%ax
 84b:	66 90                	xchg   %ax,%ax
 84d:	66 90                	xchg   %ax,%ax
 84f:	90                   	nop

00000850 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
 853:	57                   	push   %edi
 854:	56                   	push   %esi
 855:	53                   	push   %ebx
 856:	83 ec 3c             	sub    $0x3c,%esp
 859:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 85c:	89 d1                	mov    %edx,%ecx
{
 85e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 861:	85 d2                	test   %edx,%edx
 863:	0f 89 7f 00 00 00    	jns    8e8 <printint+0x98>
 869:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 86d:	74 79                	je     8e8 <printint+0x98>
    neg = 1;
 86f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 876:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 878:	31 db                	xor    %ebx,%ebx
 87a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 880:	89 c8                	mov    %ecx,%eax
 882:	31 d2                	xor    %edx,%edx
 884:	89 cf                	mov    %ecx,%edi
 886:	f7 75 c4             	divl   -0x3c(%ebp)
 889:	0f b6 92 4c 0d 00 00 	movzbl 0xd4c(%edx),%edx
 890:	89 45 c0             	mov    %eax,-0x40(%ebp)
 893:	89 d8                	mov    %ebx,%eax
 895:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 898:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 89b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 89e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 8a1:	76 dd                	jbe    880 <printint+0x30>
  if(neg)
 8a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 8a6:	85 c9                	test   %ecx,%ecx
 8a8:	74 0c                	je     8b6 <printint+0x66>
    buf[i++] = '-';
 8aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 8af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 8b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 8b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 8b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 8bd:	eb 07                	jmp    8c6 <printint+0x76>
 8bf:	90                   	nop
    putc(fd, buf[i]);
 8c0:	0f b6 13             	movzbl (%ebx),%edx
 8c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 8c6:	83 ec 04             	sub    $0x4,%esp
 8c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 8cc:	6a 01                	push   $0x1
 8ce:	56                   	push   %esi
 8cf:	57                   	push   %edi
 8d0:	e8 e4 fe ff ff       	call   7b9 <write>
  while(--i >= 0)
 8d5:	83 c4 10             	add    $0x10,%esp
 8d8:	39 de                	cmp    %ebx,%esi
 8da:	75 e4                	jne    8c0 <printint+0x70>
}
 8dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8df:	5b                   	pop    %ebx
 8e0:	5e                   	pop    %esi
 8e1:	5f                   	pop    %edi
 8e2:	5d                   	pop    %ebp
 8e3:	c3                   	ret    
 8e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 8ef:	eb 87                	jmp    878 <printint+0x28>
 8f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ff:	90                   	nop

00000900 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 909:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 90c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 90f:	0f b6 13             	movzbl (%ebx),%edx
 912:	84 d2                	test   %dl,%dl
 914:	74 6a                	je     980 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 916:	8d 45 10             	lea    0x10(%ebp),%eax
 919:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 91c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 91f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 921:	89 45 d0             	mov    %eax,-0x30(%ebp)
 924:	eb 36                	jmp    95c <printf+0x5c>
 926:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 92d:	8d 76 00             	lea    0x0(%esi),%esi
 930:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 933:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 938:	83 f8 25             	cmp    $0x25,%eax
 93b:	74 15                	je     952 <printf+0x52>
  write(fd, &c, 1);
 93d:	83 ec 04             	sub    $0x4,%esp
 940:	88 55 e7             	mov    %dl,-0x19(%ebp)
 943:	6a 01                	push   $0x1
 945:	57                   	push   %edi
 946:	56                   	push   %esi
 947:	e8 6d fe ff ff       	call   7b9 <write>
 94c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 94f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 952:	0f b6 13             	movzbl (%ebx),%edx
 955:	83 c3 01             	add    $0x1,%ebx
 958:	84 d2                	test   %dl,%dl
 95a:	74 24                	je     980 <printf+0x80>
    c = fmt[i] & 0xff;
 95c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 95f:	85 c9                	test   %ecx,%ecx
 961:	74 cd                	je     930 <printf+0x30>
      }
    } else if(state == '%'){
 963:	83 f9 25             	cmp    $0x25,%ecx
 966:	75 ea                	jne    952 <printf+0x52>
      if(c == 'd'){
 968:	83 f8 25             	cmp    $0x25,%eax
 96b:	0f 84 07 01 00 00    	je     a78 <printf+0x178>
 971:	83 e8 63             	sub    $0x63,%eax
 974:	83 f8 15             	cmp    $0x15,%eax
 977:	77 17                	ja     990 <printf+0x90>
 979:	ff 24 85 f4 0c 00 00 	jmp    *0xcf4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 980:	8d 65 f4             	lea    -0xc(%ebp),%esp
 983:	5b                   	pop    %ebx
 984:	5e                   	pop    %esi
 985:	5f                   	pop    %edi
 986:	5d                   	pop    %ebp
 987:	c3                   	ret    
 988:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 98f:	90                   	nop
  write(fd, &c, 1);
 990:	83 ec 04             	sub    $0x4,%esp
 993:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 996:	6a 01                	push   $0x1
 998:	57                   	push   %edi
 999:	56                   	push   %esi
 99a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 99e:	e8 16 fe ff ff       	call   7b9 <write>
        putc(fd, c);
 9a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 9a7:	83 c4 0c             	add    $0xc,%esp
 9aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 9ad:	6a 01                	push   $0x1
 9af:	57                   	push   %edi
 9b0:	56                   	push   %esi
 9b1:	e8 03 fe ff ff       	call   7b9 <write>
        putc(fd, c);
 9b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9b9:	31 c9                	xor    %ecx,%ecx
 9bb:	eb 95                	jmp    952 <printf+0x52>
 9bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9c0:	83 ec 0c             	sub    $0xc,%esp
 9c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 9c8:	6a 00                	push   $0x0
 9ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9cd:	8b 10                	mov    (%eax),%edx
 9cf:	89 f0                	mov    %esi,%eax
 9d1:	e8 7a fe ff ff       	call   850 <printint>
        ap++;
 9d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9dd:	31 c9                	xor    %ecx,%ecx
 9df:	e9 6e ff ff ff       	jmp    952 <printf+0x52>
 9e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9eb:	8b 10                	mov    (%eax),%edx
        ap++;
 9ed:	83 c0 04             	add    $0x4,%eax
 9f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9f3:	85 d2                	test   %edx,%edx
 9f5:	0f 84 8d 00 00 00    	je     a88 <printf+0x188>
        while(*s != 0){
 9fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 9fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 a00:	84 c0                	test   %al,%al
 a02:	0f 84 4a ff ff ff    	je     952 <printf+0x52>
 a08:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a0b:	89 d3                	mov    %edx,%ebx
 a0d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a10:	83 ec 04             	sub    $0x4,%esp
          s++;
 a13:	83 c3 01             	add    $0x1,%ebx
 a16:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a19:	6a 01                	push   $0x1
 a1b:	57                   	push   %edi
 a1c:	56                   	push   %esi
 a1d:	e8 97 fd ff ff       	call   7b9 <write>
        while(*s != 0){
 a22:	0f b6 03             	movzbl (%ebx),%eax
 a25:	83 c4 10             	add    $0x10,%esp
 a28:	84 c0                	test   %al,%al
 a2a:	75 e4                	jne    a10 <printf+0x110>
      state = 0;
 a2c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 a2f:	31 c9                	xor    %ecx,%ecx
 a31:	e9 1c ff ff ff       	jmp    952 <printf+0x52>
 a36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a3d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 a40:	83 ec 0c             	sub    $0xc,%esp
 a43:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a48:	6a 01                	push   $0x1
 a4a:	e9 7b ff ff ff       	jmp    9ca <printf+0xca>
 a4f:	90                   	nop
        putc(fd, *ap);
 a50:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a53:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a56:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a58:	6a 01                	push   $0x1
 a5a:	57                   	push   %edi
 a5b:	56                   	push   %esi
        putc(fd, *ap);
 a5c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a5f:	e8 55 fd ff ff       	call   7b9 <write>
        ap++;
 a64:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a68:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a6b:	31 c9                	xor    %ecx,%ecx
 a6d:	e9 e0 fe ff ff       	jmp    952 <printf+0x52>
 a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a78:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a7b:	83 ec 04             	sub    $0x4,%esp
 a7e:	e9 2a ff ff ff       	jmp    9ad <printf+0xad>
 a83:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a87:	90                   	nop
          s = "(null)";
 a88:	ba ec 0c 00 00       	mov    $0xcec,%edx
        while(*s != 0){
 a8d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a90:	b8 28 00 00 00       	mov    $0x28,%eax
 a95:	89 d3                	mov    %edx,%ebx
 a97:	e9 74 ff ff ff       	jmp    a10 <printf+0x110>
 a9c:	66 90                	xchg   %ax,%ax
 a9e:	66 90                	xchg   %ax,%ax

00000aa0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 aa0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 aa1:	a1 dc 10 00 00       	mov    0x10dc,%eax
{
 aa6:	89 e5                	mov    %esp,%ebp
 aa8:	57                   	push   %edi
 aa9:	56                   	push   %esi
 aaa:	53                   	push   %ebx
 aab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 aae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ab1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 ab8:	89 c2                	mov    %eax,%edx
 aba:	8b 00                	mov    (%eax),%eax
 abc:	39 ca                	cmp    %ecx,%edx
 abe:	73 30                	jae    af0 <free+0x50>
 ac0:	39 c1                	cmp    %eax,%ecx
 ac2:	72 04                	jb     ac8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ac4:	39 c2                	cmp    %eax,%edx
 ac6:	72 f0                	jb     ab8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ac8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 acb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ace:	39 f8                	cmp    %edi,%eax
 ad0:	74 30                	je     b02 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 ad2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 ad5:	8b 42 04             	mov    0x4(%edx),%eax
 ad8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 adb:	39 f1                	cmp    %esi,%ecx
 add:	74 3a                	je     b19 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 adf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ae1:	5b                   	pop    %ebx
  freep = p;
 ae2:	89 15 dc 10 00 00    	mov    %edx,0x10dc
}
 ae8:	5e                   	pop    %esi
 ae9:	5f                   	pop    %edi
 aea:	5d                   	pop    %ebp
 aeb:	c3                   	ret    
 aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 af0:	39 c2                	cmp    %eax,%edx
 af2:	72 c4                	jb     ab8 <free+0x18>
 af4:	39 c1                	cmp    %eax,%ecx
 af6:	73 c0                	jae    ab8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 af8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 afb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 afe:	39 f8                	cmp    %edi,%eax
 b00:	75 d0                	jne    ad2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 b02:	03 70 04             	add    0x4(%eax),%esi
 b05:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b08:	8b 02                	mov    (%edx),%eax
 b0a:	8b 00                	mov    (%eax),%eax
 b0c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 b0f:	8b 42 04             	mov    0x4(%edx),%eax
 b12:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b15:	39 f1                	cmp    %esi,%ecx
 b17:	75 c6                	jne    adf <free+0x3f>
    p->s.size += bp->s.size;
 b19:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 b1c:	89 15 dc 10 00 00    	mov    %edx,0x10dc
    p->s.size += bp->s.size;
 b22:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 b25:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 b28:	89 0a                	mov    %ecx,(%edx)
}
 b2a:	5b                   	pop    %ebx
 b2b:	5e                   	pop    %esi
 b2c:	5f                   	pop    %edi
 b2d:	5d                   	pop    %ebp
 b2e:	c3                   	ret    
 b2f:	90                   	nop

00000b30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b30:	55                   	push   %ebp
 b31:	89 e5                	mov    %esp,%ebp
 b33:	57                   	push   %edi
 b34:	56                   	push   %esi
 b35:	53                   	push   %ebx
 b36:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b3c:	8b 3d dc 10 00 00    	mov    0x10dc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b42:	8d 70 07             	lea    0x7(%eax),%esi
 b45:	c1 ee 03             	shr    $0x3,%esi
 b48:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 b4b:	85 ff                	test   %edi,%edi
 b4d:	0f 84 9d 00 00 00    	je     bf0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b53:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b55:	8b 4a 04             	mov    0x4(%edx),%ecx
 b58:	39 f1                	cmp    %esi,%ecx
 b5a:	73 6a                	jae    bc6 <malloc+0x96>
 b5c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b61:	39 de                	cmp    %ebx,%esi
 b63:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b66:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b6d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b70:	eb 17                	jmp    b89 <malloc+0x59>
 b72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b7a:	8b 48 04             	mov    0x4(%eax),%ecx
 b7d:	39 f1                	cmp    %esi,%ecx
 b7f:	73 4f                	jae    bd0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b81:	8b 3d dc 10 00 00    	mov    0x10dc,%edi
 b87:	89 c2                	mov    %eax,%edx
 b89:	39 d7                	cmp    %edx,%edi
 b8b:	75 eb                	jne    b78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b8d:	83 ec 0c             	sub    $0xc,%esp
 b90:	ff 75 e4             	push   -0x1c(%ebp)
 b93:	e8 89 fc ff ff       	call   821 <sbrk>
  if(p == (char*)-1)
 b98:	83 c4 10             	add    $0x10,%esp
 b9b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b9e:	74 1c                	je     bbc <malloc+0x8c>
  hp->s.size = nu;
 ba0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ba3:	83 ec 0c             	sub    $0xc,%esp
 ba6:	83 c0 08             	add    $0x8,%eax
 ba9:	50                   	push   %eax
 baa:	e8 f1 fe ff ff       	call   aa0 <free>
  return freep;
 baf:	8b 15 dc 10 00 00    	mov    0x10dc,%edx
      if((p = morecore(nunits)) == 0)
 bb5:	83 c4 10             	add    $0x10,%esp
 bb8:	85 d2                	test   %edx,%edx
 bba:	75 bc                	jne    b78 <malloc+0x48>
        return 0;
  }
}
 bbc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 bbf:	31 c0                	xor    %eax,%eax
}
 bc1:	5b                   	pop    %ebx
 bc2:	5e                   	pop    %esi
 bc3:	5f                   	pop    %edi
 bc4:	5d                   	pop    %ebp
 bc5:	c3                   	ret    
    if(p->s.size >= nunits){
 bc6:	89 d0                	mov    %edx,%eax
 bc8:	89 fa                	mov    %edi,%edx
 bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bd0:	39 ce                	cmp    %ecx,%esi
 bd2:	74 4c                	je     c20 <malloc+0xf0>
        p->s.size -= nunits;
 bd4:	29 f1                	sub    %esi,%ecx
 bd6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 bd9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bdc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 bdf:	89 15 dc 10 00 00    	mov    %edx,0x10dc
}
 be5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 be8:	83 c0 08             	add    $0x8,%eax
}
 beb:	5b                   	pop    %ebx
 bec:	5e                   	pop    %esi
 bed:	5f                   	pop    %edi
 bee:	5d                   	pop    %ebp
 bef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 bf0:	c7 05 dc 10 00 00 e0 	movl   $0x10e0,0x10dc
 bf7:	10 00 00 
    base.s.size = 0;
 bfa:	bf e0 10 00 00       	mov    $0x10e0,%edi
    base.s.ptr = freep = prevp = &base;
 bff:	c7 05 e0 10 00 00 e0 	movl   $0x10e0,0x10e0
 c06:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c09:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 c0b:	c7 05 e4 10 00 00 00 	movl   $0x0,0x10e4
 c12:	00 00 00 
    if(p->s.size >= nunits){
 c15:	e9 42 ff ff ff       	jmp    b5c <malloc+0x2c>
 c1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 c20:	8b 08                	mov    (%eax),%ecx
 c22:	89 0a                	mov    %ecx,(%edx)
 c24:	eb b9                	jmp    bdf <malloc+0xaf>
