
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
  14:	e8 8d 08 00 00       	call   8a6 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 e0 11 00 00       	mov    %eax,0x11e0
   assert(fib(28) == 317811);
  23:	e8 18 01 00 00       	call   140 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 92 00 00 00    	jne    c8 <main+0xc8>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d d8 11 00 00 00 	cmpl   $0x0,0x11d8
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
  60:	a1 d8 11 00 00       	mov    0x11d8,%eax
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
  84:	68 b8 0c 00 00       	push   $0xcb8
  89:	68 c2 0c 00 00       	push   $0xcc2
  8e:	6a 01                	push   $0x1
  90:	e8 fb 08 00 00       	call   990 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 60 0d 00 00       	push   $0xd60
  9d:	68 d5 0c 00 00       	push   $0xcd5
  a2:	6a 01                	push   $0x1
  a4:	e8 e7 08 00 00       	call   990 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 e9 0c 00 00       	push   $0xce9
  b0:	6a 01                	push   $0x1
  b2:	e8 d9 08 00 00       	call   990 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 e0 11 00 00    	push   0x11e0
  be:	e8 93 07 00 00       	call   856 <kill>
  c3:	e8 5e 07 00 00       	call   826 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 b8 0c 00 00       	push   $0xcb8
  cf:	68 c2 0c 00 00       	push   $0xcc2
  d4:	6a 01                	push   $0x1
  d6:	e8 b5 08 00 00       	call   990 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 41 0d 00 00       	push   $0xd41
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d d8 11 00 00    	cmp    %ebx,0x11d8
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 80 06 00 00       	call   780 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 b8 0c 00 00       	push   $0xcb8
 10b:	68 c2 0c 00 00       	push   $0xcc2
 110:	6a 01                	push   $0x1
 112:	e8 79 08 00 00       	call   990 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 6f 0d 00 00       	push   $0xd6f
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 53 0d 00 00       	push   $0xd53
 12b:	6a 01                	push   $0x1
 12d:	e8 5e 08 00 00       	call   990 <printf>
   exit();
 132:	e8 ef 06 00 00       	call   826 <exit>
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
 368:	83 3d dc 11 00 00 01 	cmpl   $0x1,0x11dc
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 b8 0c 00 00       	push   $0xcb8
 37c:	68 c2 0c 00 00       	push   $0xcc2
 381:	6a 01                	push   $0x1
 383:	e8 08 06 00 00       	call   990 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 01 0d 00 00       	push   $0xd01
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 b8 0c 00 00       	push   $0xcb8
 399:	68 c2 0c 00 00       	push   $0xcc2
 39e:	6a 01                	push   $0x1
 3a0:	e8 eb 05 00 00       	call   990 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 f6 0c 00 00       	push   $0xcf6
 3ad:	68 d5 0c 00 00       	push   $0xcd5
 3b2:	6a 01                	push   $0x1
 3b4:	e8 d7 05 00 00       	call   990 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 e9 0c 00 00       	push   $0xce9
 3c0:	6a 01                	push   $0x1
 3c2:	e8 c9 05 00 00       	call   990 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 e0 11 00 00    	push   0x11e0
 3ce:	e8 83 04 00 00       	call   856 <kill>
 3d3:	e8 4e 04 00 00       	call   826 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 b8 0c 00 00       	push   $0xcb8
 3df:	68 c2 0c 00 00       	push   $0xcc2
 3e4:	6a 01                	push   $0x1
 3e6:	e8 a5 05 00 00       	call   990 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 ca 0c 00 00       	push   $0xcca
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 b8 0c 00 00       	push   $0xcb8
 40e:	68 c2 0c 00 00       	push   $0xcc2
 413:	6a 01                	push   $0x1
 415:	e8 76 05 00 00       	call   990 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 0d 0d 00 00       	push   $0xd0d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 b8 0c 00 00       	push   $0xcb8
 43d:	68 c2 0c 00 00       	push   $0xcc2
 442:	6a 01                	push   $0x1
 444:	e8 47 05 00 00       	call   990 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 19 0d 00 00       	push   $0xd19
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 b8 0c 00 00       	push   $0xcb8
 46f:	68 c2 0c 00 00       	push   $0xcc2
 474:	6a 01                	push   $0x1
 476:	e8 15 05 00 00       	call   990 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 25 0d 00 00       	push   $0xd25
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 b8 0c 00 00       	push   $0xcb8
 4a3:	68 c2 0c 00 00       	push   $0xcc2
 4a8:	6a 01                	push   $0x1
 4aa:	e8 e1 04 00 00       	call   990 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 32 0d 00 00       	push   $0xd32
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 65 03 00 00       	call   826 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <strcpy>:
#include "x86.h"
//#include <stdatomic.h>

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
 608:	e8 31 02 00 00       	call   83e <read>
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
 66d:	e8 f4 01 00 00       	call   866 <open>
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
 682:	e8 f7 01 00 00       	call   87e <fstat>
  close(fd);
 687:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 68a:	89 c6                	mov    %eax,%esi
  close(fd);
 68c:	e8 bd 01 00 00       	call   84e <close>
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
 723:	53                   	push   %ebx
 724:	83 ec 10             	sub    $0x10,%esp
  void* stack = malloc(2* 4096);
 727:	68 00 20 00 00       	push   $0x2000
 72c:	e8 8f 04 00 00       	call   bc0 <malloc>
  if((int) stack % 4096 != 0){
 731:	83 c4 10             	add    $0x10,%esp
 734:	a9 ff 0f 00 00       	test   $0xfff,%eax
 739:	74 16                	je     751 <thread_create+0x31>
    stack = stack + (4096 - (int) stack % 4096);
 73b:	99                   	cltd   
 73c:	c1 ea 14             	shr    $0x14,%edx
 73f:	8d 0c 10             	lea    (%eax,%edx,1),%ecx
 742:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
 748:	29 ca                	sub    %ecx,%edx
 74a:	8d 84 10 00 10 00 00 	lea    0x1000(%eax,%edx,1),%eax
  }
  int rc = clone(start_routine, arg1, arg2, stack);
 751:	50                   	push   %eax
 752:	ff 75 10             	push   0x10(%ebp)
 755:	ff 75 0c             	push   0xc(%ebp)
 758:	ff 75 08             	push   0x8(%ebp)
 75b:	e8 66 01 00 00       	call   8c6 <clone>
  printf(1, " thread create  %d \n", rc);
 760:	83 c4 0c             	add    $0xc,%esp
 763:	50                   	push   %eax
  int rc = clone(start_routine, arg1, arg2, stack);
 764:	89 c3                	mov    %eax,%ebx
  printf(1, " thread create  %d \n", rc);
 766:	68 7c 0d 00 00       	push   $0xd7c
 76b:	6a 01                	push   $0x1
 76d:	e8 1e 02 00 00       	call   990 <printf>
  return rc;
}
 772:	89 d8                	mov    %ebx,%eax
 774:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 777:	c9                   	leave  
 778:	c3                   	ret    
 779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000780 <thread_join>:

int
thread_join(){
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	53                   	push   %ebx
 784:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "thread join 1 \n");
 787:	68 91 0d 00 00       	push   $0xd91
 78c:	6a 01                	push   $0x1
 78e:	e8 fd 01 00 00       	call   990 <printf>
  void** stack = malloc(sizeof(void**));
 793:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 79a:	e8 21 04 00 00       	call   bc0 <malloc>
 79f:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 2 \n");
 7a1:	58                   	pop    %eax
 7a2:	5a                   	pop    %edx
 7a3:	68 a1 0d 00 00       	push   $0xda1
 7a8:	6a 01                	push   $0x1
 7aa:	e8 e1 01 00 00       	call   990 <printf>
  int rc = join(stack);
 7af:	89 1c 24             	mov    %ebx,(%esp)
 7b2:	e8 17 01 00 00       	call   8ce <join>
  printf(1, "thread join 3 \n");
 7b7:	59                   	pop    %ecx
  int rc = join(stack);
 7b8:	89 c3                	mov    %eax,%ebx
  printf(1, "thread join 3 \n");
 7ba:	58                   	pop    %eax
 7bb:	68 b1 0d 00 00       	push   $0xdb1
 7c0:	6a 01                	push   $0x1
 7c2:	e8 c9 01 00 00       	call   990 <printf>
  // printf(1, "stack %d", stack);
  // free(*stack);
  printf(1, "thread join 4 \n");
 7c7:	58                   	pop    %eax
 7c8:	5a                   	pop    %edx
 7c9:	68 c1 0d 00 00       	push   $0xdc1
 7ce:	6a 01                	push   $0x1
 7d0:	e8 bb 01 00 00       	call   990 <printf>
  return rc;
}
 7d5:	89 d8                	mov    %ebx,%eax
 7d7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7da:	c9                   	leave  
 7db:	c3                   	ret    
 7dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007e0 <lock_acquire>:



void lock_acquire(lock_t * lock){
 7e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 7e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 7e6:	89 e5                	mov    %esp,%ebp
 7e8:	8b 55 08             	mov    0x8(%ebp),%edx
 7eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop
 7f0:	89 c8                	mov    %ecx,%eax
 7f2:	f0 87 02             	lock xchg %eax,(%edx)
// int* expected = malloc(sizeof(int *));
// *expected =0;
// int* desired = malloc(sizeof(int *));
// *desired =0;
while (xchg((volatile uint *)&lock->flag,(uint) 1) == 1)
 7f5:	83 f8 01             	cmp    $0x1,%eax
 7f8:	74 f6                	je     7f0 <lock_acquire+0x10>
 ; // spin

};
 7fa:	5d                   	pop    %ebp
 7fb:	c3                   	ret    
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000800 <lock_release>:

void lock_release(lock_t * lock){
 800:	55                   	push   %ebp
 801:	31 c0                	xor    %eax,%eax
 803:	89 e5                	mov    %esp,%ebp
 805:	8b 55 08             	mov    0x8(%ebp),%edx
 808:	f0 87 02             	lock xchg %eax,(%edx)
 xchg((volatile uint *)&lock->flag, (uint)0);
};
 80b:	5d                   	pop    %ebp
 80c:	c3                   	ret    
 80d:	8d 76 00             	lea    0x0(%esi),%esi

00000810 <lock_init>:

void lock_init(lock_t * lock){
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
lock->flag=0;
 813:	8b 45 08             	mov    0x8(%ebp),%eax
 816:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

};
 81c:	5d                   	pop    %ebp
 81d:	c3                   	ret    

0000081e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 81e:	b8 01 00 00 00       	mov    $0x1,%eax
 823:	cd 40                	int    $0x40
 825:	c3                   	ret    

00000826 <exit>:
SYSCALL(exit)
 826:	b8 02 00 00 00       	mov    $0x2,%eax
 82b:	cd 40                	int    $0x40
 82d:	c3                   	ret    

0000082e <wait>:
SYSCALL(wait)
 82e:	b8 03 00 00 00       	mov    $0x3,%eax
 833:	cd 40                	int    $0x40
 835:	c3                   	ret    

00000836 <pipe>:
SYSCALL(pipe)
 836:	b8 04 00 00 00       	mov    $0x4,%eax
 83b:	cd 40                	int    $0x40
 83d:	c3                   	ret    

0000083e <read>:
SYSCALL(read)
 83e:	b8 05 00 00 00       	mov    $0x5,%eax
 843:	cd 40                	int    $0x40
 845:	c3                   	ret    

00000846 <write>:
SYSCALL(write)
 846:	b8 10 00 00 00       	mov    $0x10,%eax
 84b:	cd 40                	int    $0x40
 84d:	c3                   	ret    

0000084e <close>:
SYSCALL(close)
 84e:	b8 15 00 00 00       	mov    $0x15,%eax
 853:	cd 40                	int    $0x40
 855:	c3                   	ret    

00000856 <kill>:
SYSCALL(kill)
 856:	b8 06 00 00 00       	mov    $0x6,%eax
 85b:	cd 40                	int    $0x40
 85d:	c3                   	ret    

0000085e <exec>:
SYSCALL(exec)
 85e:	b8 07 00 00 00       	mov    $0x7,%eax
 863:	cd 40                	int    $0x40
 865:	c3                   	ret    

00000866 <open>:
SYSCALL(open)
 866:	b8 0f 00 00 00       	mov    $0xf,%eax
 86b:	cd 40                	int    $0x40
 86d:	c3                   	ret    

0000086e <mknod>:
SYSCALL(mknod)
 86e:	b8 11 00 00 00       	mov    $0x11,%eax
 873:	cd 40                	int    $0x40
 875:	c3                   	ret    

00000876 <unlink>:
SYSCALL(unlink)
 876:	b8 12 00 00 00       	mov    $0x12,%eax
 87b:	cd 40                	int    $0x40
 87d:	c3                   	ret    

0000087e <fstat>:
SYSCALL(fstat)
 87e:	b8 08 00 00 00       	mov    $0x8,%eax
 883:	cd 40                	int    $0x40
 885:	c3                   	ret    

00000886 <link>:
SYSCALL(link)
 886:	b8 13 00 00 00       	mov    $0x13,%eax
 88b:	cd 40                	int    $0x40
 88d:	c3                   	ret    

0000088e <mkdir>:
SYSCALL(mkdir)
 88e:	b8 14 00 00 00       	mov    $0x14,%eax
 893:	cd 40                	int    $0x40
 895:	c3                   	ret    

00000896 <chdir>:
SYSCALL(chdir)
 896:	b8 09 00 00 00       	mov    $0x9,%eax
 89b:	cd 40                	int    $0x40
 89d:	c3                   	ret    

0000089e <dup>:
SYSCALL(dup)
 89e:	b8 0a 00 00 00       	mov    $0xa,%eax
 8a3:	cd 40                	int    $0x40
 8a5:	c3                   	ret    

000008a6 <getpid>:
SYSCALL(getpid)
 8a6:	b8 0b 00 00 00       	mov    $0xb,%eax
 8ab:	cd 40                	int    $0x40
 8ad:	c3                   	ret    

000008ae <sbrk>:
SYSCALL(sbrk)
 8ae:	b8 0c 00 00 00       	mov    $0xc,%eax
 8b3:	cd 40                	int    $0x40
 8b5:	c3                   	ret    

000008b6 <sleep>:
SYSCALL(sleep)
 8b6:	b8 0d 00 00 00       	mov    $0xd,%eax
 8bb:	cd 40                	int    $0x40
 8bd:	c3                   	ret    

000008be <uptime>:
SYSCALL(uptime)
 8be:	b8 0e 00 00 00       	mov    $0xe,%eax
 8c3:	cd 40                	int    $0x40
 8c5:	c3                   	ret    

000008c6 <clone>:
SYSCALL(clone)
 8c6:	b8 16 00 00 00       	mov    $0x16,%eax
 8cb:	cd 40                	int    $0x40
 8cd:	c3                   	ret    

000008ce <join>:
SYSCALL(join)
 8ce:	b8 17 00 00 00       	mov    $0x17,%eax
 8d3:	cd 40                	int    $0x40
 8d5:	c3                   	ret    
 8d6:	66 90                	xchg   %ax,%ax
 8d8:	66 90                	xchg   %ax,%ax
 8da:	66 90                	xchg   %ax,%ax
 8dc:	66 90                	xchg   %ax,%ax
 8de:	66 90                	xchg   %ax,%ax

000008e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 3c             	sub    $0x3c,%esp
 8e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 8ec:	89 d1                	mov    %edx,%ecx
{
 8ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 8f1:	85 d2                	test   %edx,%edx
 8f3:	0f 89 7f 00 00 00    	jns    978 <printint+0x98>
 8f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 8fd:	74 79                	je     978 <printint+0x98>
    neg = 1;
 8ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 906:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 908:	31 db                	xor    %ebx,%ebx
 90a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 90d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 910:	89 c8                	mov    %ecx,%eax
 912:	31 d2                	xor    %edx,%edx
 914:	89 cf                	mov    %ecx,%edi
 916:	f7 75 c4             	divl   -0x3c(%ebp)
 919:	0f b6 92 30 0e 00 00 	movzbl 0xe30(%edx),%edx
 920:	89 45 c0             	mov    %eax,-0x40(%ebp)
 923:	89 d8                	mov    %ebx,%eax
 925:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 928:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 92b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 92e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 931:	76 dd                	jbe    910 <printint+0x30>
  if(neg)
 933:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 936:	85 c9                	test   %ecx,%ecx
 938:	74 0c                	je     946 <printint+0x66>
    buf[i++] = '-';
 93a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 93f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 941:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 946:	8b 7d b8             	mov    -0x48(%ebp),%edi
 949:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 94d:	eb 07                	jmp    956 <printint+0x76>
 94f:	90                   	nop
    putc(fd, buf[i]);
 950:	0f b6 13             	movzbl (%ebx),%edx
 953:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 956:	83 ec 04             	sub    $0x4,%esp
 959:	88 55 d7             	mov    %dl,-0x29(%ebp)
 95c:	6a 01                	push   $0x1
 95e:	56                   	push   %esi
 95f:	57                   	push   %edi
 960:	e8 e1 fe ff ff       	call   846 <write>
  while(--i >= 0)
 965:	83 c4 10             	add    $0x10,%esp
 968:	39 de                	cmp    %ebx,%esi
 96a:	75 e4                	jne    950 <printint+0x70>
}
 96c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 96f:	5b                   	pop    %ebx
 970:	5e                   	pop    %esi
 971:	5f                   	pop    %edi
 972:	5d                   	pop    %ebp
 973:	c3                   	ret    
 974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 978:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 97f:	eb 87                	jmp    908 <printint+0x28>
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 988:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 98f:	90                   	nop

00000990 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 990:	55                   	push   %ebp
 991:	89 e5                	mov    %esp,%ebp
 993:	57                   	push   %edi
 994:	56                   	push   %esi
 995:	53                   	push   %ebx
 996:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 999:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 99c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 99f:	0f b6 13             	movzbl (%ebx),%edx
 9a2:	84 d2                	test   %dl,%dl
 9a4:	74 6a                	je     a10 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 9a6:	8d 45 10             	lea    0x10(%ebp),%eax
 9a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 9b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9b4:	eb 36                	jmp    9ec <printf+0x5c>
 9b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9bd:	8d 76 00             	lea    0x0(%esi),%esi
 9c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 9c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 9c8:	83 f8 25             	cmp    $0x25,%eax
 9cb:	74 15                	je     9e2 <printf+0x52>
  write(fd, &c, 1);
 9cd:	83 ec 04             	sub    $0x4,%esp
 9d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 9d3:	6a 01                	push   $0x1
 9d5:	57                   	push   %edi
 9d6:	56                   	push   %esi
 9d7:	e8 6a fe ff ff       	call   846 <write>
 9dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 9df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 9e2:	0f b6 13             	movzbl (%ebx),%edx
 9e5:	83 c3 01             	add    $0x1,%ebx
 9e8:	84 d2                	test   %dl,%dl
 9ea:	74 24                	je     a10 <printf+0x80>
    c = fmt[i] & 0xff;
 9ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 9ef:	85 c9                	test   %ecx,%ecx
 9f1:	74 cd                	je     9c0 <printf+0x30>
      }
    } else if(state == '%'){
 9f3:	83 f9 25             	cmp    $0x25,%ecx
 9f6:	75 ea                	jne    9e2 <printf+0x52>
      if(c == 'd'){
 9f8:	83 f8 25             	cmp    $0x25,%eax
 9fb:	0f 84 07 01 00 00    	je     b08 <printf+0x178>
 a01:	83 e8 63             	sub    $0x63,%eax
 a04:	83 f8 15             	cmp    $0x15,%eax
 a07:	77 17                	ja     a20 <printf+0x90>
 a09:	ff 24 85 d8 0d 00 00 	jmp    *0xdd8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a10:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a13:	5b                   	pop    %ebx
 a14:	5e                   	pop    %esi
 a15:	5f                   	pop    %edi
 a16:	5d                   	pop    %ebp
 a17:	c3                   	ret    
 a18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a1f:	90                   	nop
  write(fd, &c, 1);
 a20:	83 ec 04             	sub    $0x4,%esp
 a23:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 a26:	6a 01                	push   $0x1
 a28:	57                   	push   %edi
 a29:	56                   	push   %esi
 a2a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a2e:	e8 13 fe ff ff       	call   846 <write>
        putc(fd, c);
 a33:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 a37:	83 c4 0c             	add    $0xc,%esp
 a3a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a3d:	6a 01                	push   $0x1
 a3f:	57                   	push   %edi
 a40:	56                   	push   %esi
 a41:	e8 00 fe ff ff       	call   846 <write>
        putc(fd, c);
 a46:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a49:	31 c9                	xor    %ecx,%ecx
 a4b:	eb 95                	jmp    9e2 <printf+0x52>
 a4d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a50:	83 ec 0c             	sub    $0xc,%esp
 a53:	b9 10 00 00 00       	mov    $0x10,%ecx
 a58:	6a 00                	push   $0x0
 a5a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a5d:	8b 10                	mov    (%eax),%edx
 a5f:	89 f0                	mov    %esi,%eax
 a61:	e8 7a fe ff ff       	call   8e0 <printint>
        ap++;
 a66:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a6a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a6d:	31 c9                	xor    %ecx,%ecx
 a6f:	e9 6e ff ff ff       	jmp    9e2 <printf+0x52>
 a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 a78:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a7b:	8b 10                	mov    (%eax),%edx
        ap++;
 a7d:	83 c0 04             	add    $0x4,%eax
 a80:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 a83:	85 d2                	test   %edx,%edx
 a85:	0f 84 8d 00 00 00    	je     b18 <printf+0x188>
        while(*s != 0){
 a8b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 a8e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 a90:	84 c0                	test   %al,%al
 a92:	0f 84 4a ff ff ff    	je     9e2 <printf+0x52>
 a98:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a9b:	89 d3                	mov    %edx,%ebx
 a9d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 aa0:	83 ec 04             	sub    $0x4,%esp
          s++;
 aa3:	83 c3 01             	add    $0x1,%ebx
 aa6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 aa9:	6a 01                	push   $0x1
 aab:	57                   	push   %edi
 aac:	56                   	push   %esi
 aad:	e8 94 fd ff ff       	call   846 <write>
        while(*s != 0){
 ab2:	0f b6 03             	movzbl (%ebx),%eax
 ab5:	83 c4 10             	add    $0x10,%esp
 ab8:	84 c0                	test   %al,%al
 aba:	75 e4                	jne    aa0 <printf+0x110>
      state = 0;
 abc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 abf:	31 c9                	xor    %ecx,%ecx
 ac1:	e9 1c ff ff ff       	jmp    9e2 <printf+0x52>
 ac6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 acd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 ad0:	83 ec 0c             	sub    $0xc,%esp
 ad3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 ad8:	6a 01                	push   $0x1
 ada:	e9 7b ff ff ff       	jmp    a5a <printf+0xca>
 adf:	90                   	nop
        putc(fd, *ap);
 ae0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 ae3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 ae6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 ae8:	6a 01                	push   $0x1
 aea:	57                   	push   %edi
 aeb:	56                   	push   %esi
        putc(fd, *ap);
 aec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 aef:	e8 52 fd ff ff       	call   846 <write>
        ap++;
 af4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 af8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 afb:	31 c9                	xor    %ecx,%ecx
 afd:	e9 e0 fe ff ff       	jmp    9e2 <printf+0x52>
 b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b08:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b0b:	83 ec 04             	sub    $0x4,%esp
 b0e:	e9 2a ff ff ff       	jmp    a3d <printf+0xad>
 b13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b17:	90                   	nop
          s = "(null)";
 b18:	ba d1 0d 00 00       	mov    $0xdd1,%edx
        while(*s != 0){
 b1d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b20:	b8 28 00 00 00       	mov    $0x28,%eax
 b25:	89 d3                	mov    %edx,%ebx
 b27:	e9 74 ff ff ff       	jmp    aa0 <printf+0x110>
 b2c:	66 90                	xchg   %ax,%ax
 b2e:	66 90                	xchg   %ax,%ax

00000b30 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b30:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b31:	a1 e4 11 00 00       	mov    0x11e4,%eax
{
 b36:	89 e5                	mov    %esp,%ebp
 b38:	57                   	push   %edi
 b39:	56                   	push   %esi
 b3a:	53                   	push   %ebx
 b3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b3e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b48:	89 c2                	mov    %eax,%edx
 b4a:	8b 00                	mov    (%eax),%eax
 b4c:	39 ca                	cmp    %ecx,%edx
 b4e:	73 30                	jae    b80 <free+0x50>
 b50:	39 c1                	cmp    %eax,%ecx
 b52:	72 04                	jb     b58 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b54:	39 c2                	cmp    %eax,%edx
 b56:	72 f0                	jb     b48 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b58:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b5b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b5e:	39 f8                	cmp    %edi,%eax
 b60:	74 30                	je     b92 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 b62:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b65:	8b 42 04             	mov    0x4(%edx),%eax
 b68:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b6b:	39 f1                	cmp    %esi,%ecx
 b6d:	74 3a                	je     ba9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 b6f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 b71:	5b                   	pop    %ebx
  freep = p;
 b72:	89 15 e4 11 00 00    	mov    %edx,0x11e4
}
 b78:	5e                   	pop    %esi
 b79:	5f                   	pop    %edi
 b7a:	5d                   	pop    %ebp
 b7b:	c3                   	ret    
 b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b80:	39 c2                	cmp    %eax,%edx
 b82:	72 c4                	jb     b48 <free+0x18>
 b84:	39 c1                	cmp    %eax,%ecx
 b86:	73 c0                	jae    b48 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 b88:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b8b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b8e:	39 f8                	cmp    %edi,%eax
 b90:	75 d0                	jne    b62 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 b92:	03 70 04             	add    0x4(%eax),%esi
 b95:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b98:	8b 02                	mov    (%edx),%eax
 b9a:	8b 00                	mov    (%eax),%eax
 b9c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 b9f:	8b 42 04             	mov    0x4(%edx),%eax
 ba2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ba5:	39 f1                	cmp    %esi,%ecx
 ba7:	75 c6                	jne    b6f <free+0x3f>
    p->s.size += bp->s.size;
 ba9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 bac:	89 15 e4 11 00 00    	mov    %edx,0x11e4
    p->s.size += bp->s.size;
 bb2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 bb5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 bb8:	89 0a                	mov    %ecx,(%edx)
}
 bba:	5b                   	pop    %ebx
 bbb:	5e                   	pop    %esi
 bbc:	5f                   	pop    %edi
 bbd:	5d                   	pop    %ebp
 bbe:	c3                   	ret    
 bbf:	90                   	nop

00000bc0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 bc0:	55                   	push   %ebp
 bc1:	89 e5                	mov    %esp,%ebp
 bc3:	57                   	push   %edi
 bc4:	56                   	push   %esi
 bc5:	53                   	push   %ebx
 bc6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bc9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 bcc:	8b 3d e4 11 00 00    	mov    0x11e4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bd2:	8d 70 07             	lea    0x7(%eax),%esi
 bd5:	c1 ee 03             	shr    $0x3,%esi
 bd8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 bdb:	85 ff                	test   %edi,%edi
 bdd:	0f 84 9d 00 00 00    	je     c80 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 be3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 be5:	8b 4a 04             	mov    0x4(%edx),%ecx
 be8:	39 f1                	cmp    %esi,%ecx
 bea:	73 6a                	jae    c56 <malloc+0x96>
 bec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 bf1:	39 de                	cmp    %ebx,%esi
 bf3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 bf6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 bfd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c00:	eb 17                	jmp    c19 <malloc+0x59>
 c02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c0a:	8b 48 04             	mov    0x4(%eax),%ecx
 c0d:	39 f1                	cmp    %esi,%ecx
 c0f:	73 4f                	jae    c60 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c11:	8b 3d e4 11 00 00    	mov    0x11e4,%edi
 c17:	89 c2                	mov    %eax,%edx
 c19:	39 d7                	cmp    %edx,%edi
 c1b:	75 eb                	jne    c08 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c1d:	83 ec 0c             	sub    $0xc,%esp
 c20:	ff 75 e4             	push   -0x1c(%ebp)
 c23:	e8 86 fc ff ff       	call   8ae <sbrk>
  if(p == (char*)-1)
 c28:	83 c4 10             	add    $0x10,%esp
 c2b:	83 f8 ff             	cmp    $0xffffffff,%eax
 c2e:	74 1c                	je     c4c <malloc+0x8c>
  hp->s.size = nu;
 c30:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c33:	83 ec 0c             	sub    $0xc,%esp
 c36:	83 c0 08             	add    $0x8,%eax
 c39:	50                   	push   %eax
 c3a:	e8 f1 fe ff ff       	call   b30 <free>
  return freep;
 c3f:	8b 15 e4 11 00 00    	mov    0x11e4,%edx
      if((p = morecore(nunits)) == 0)
 c45:	83 c4 10             	add    $0x10,%esp
 c48:	85 d2                	test   %edx,%edx
 c4a:	75 bc                	jne    c08 <malloc+0x48>
        return 0;
  }
}
 c4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c4f:	31 c0                	xor    %eax,%eax
}
 c51:	5b                   	pop    %ebx
 c52:	5e                   	pop    %esi
 c53:	5f                   	pop    %edi
 c54:	5d                   	pop    %ebp
 c55:	c3                   	ret    
    if(p->s.size >= nunits){
 c56:	89 d0                	mov    %edx,%eax
 c58:	89 fa                	mov    %edi,%edx
 c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 c60:	39 ce                	cmp    %ecx,%esi
 c62:	74 4c                	je     cb0 <malloc+0xf0>
        p->s.size -= nunits;
 c64:	29 f1                	sub    %esi,%ecx
 c66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c6c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 c6f:	89 15 e4 11 00 00    	mov    %edx,0x11e4
}
 c75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 c78:	83 c0 08             	add    $0x8,%eax
}
 c7b:	5b                   	pop    %ebx
 c7c:	5e                   	pop    %esi
 c7d:	5f                   	pop    %edi
 c7e:	5d                   	pop    %ebp
 c7f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 c80:	c7 05 e4 11 00 00 e8 	movl   $0x11e8,0x11e4
 c87:	11 00 00 
    base.s.size = 0;
 c8a:	bf e8 11 00 00       	mov    $0x11e8,%edi
    base.s.ptr = freep = prevp = &base;
 c8f:	c7 05 e8 11 00 00 e8 	movl   $0x11e8,0x11e8
 c96:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c99:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 c9b:	c7 05 ec 11 00 00 00 	movl   $0x0,0x11ec
 ca2:	00 00 00 
    if(p->s.size >= nunits){
 ca5:	e9 42 ff ff ff       	jmp    bec <malloc+0x2c>
 caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 cb0:	8b 08                	mov    (%eax),%ecx
 cb2:	89 0a                	mov    %ecx,(%edx)
 cb4:	eb b9                	jmp    c6f <malloc+0xaf>
