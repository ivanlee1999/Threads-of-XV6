
_test_17:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void merge_sort(void *array, void *size);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 12 06 00 00       	call   629 <getpid>
   4. Merge function
   */


    int size = 11;
    global = (int*)malloc(size * sizeof(int));
  17:	83 ec 0c             	sub    $0xc,%esp
    int size = 11;
  1a:	c7 45 f4 0b 00 00 00 	movl   $0xb,-0xc(%ebp)
    global = (int*)malloc(size * sizeof(int));
  21:	6a 2c                	push   $0x2c
   ppid = getpid();
  23:	a3 a0 0e 00 00       	mov    %eax,0xea0
    global = (int*)malloc(size * sizeof(int));
  28:	e8 13 09 00 00       	call   940 <malloc>
    for(int i = 0; i < size; i++){
  2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30:	83 c4 10             	add    $0x10,%esp
    global = (int*)malloc(size * sizeof(int));
  33:	a3 9c 0e 00 00       	mov    %eax,0xe9c
    for(int i = 0; i < size; i++){
  38:	85 d2                	test   %edx,%edx
  3a:	7e 1b                	jle    57 <main+0x57>
  3c:	31 c9                	xor    %ecx,%ecx
  3e:	eb 05                	jmp    45 <main+0x45>
        global[i] = size - i - 1;
    }

   int thread_pid = thread_create(merge_sort, global, &size);
  40:	a1 9c 0e 00 00       	mov    0xe9c,%eax
        global[i] = size - i - 1;
  45:	29 ca                	sub    %ecx,%edx
  47:	83 ea 01             	sub    $0x1,%edx
  4a:	89 14 88             	mov    %edx,(%eax,%ecx,4)
    for(int i = 0; i < size; i++){
  4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  50:	83 c1 01             	add    $0x1,%ecx
  53:	39 ca                	cmp    %ecx,%edx
  55:	7f e9                	jg     40 <main+0x40>
   int thread_pid = thread_create(merge_sort, global, &size);
  57:	83 ec 04             	sub    $0x4,%esp
  5a:	8d 45 f4             	lea    -0xc(%ebp),%eax
  5d:	50                   	push   %eax
  5e:	ff 35 9c 0e 00 00    	push   0xe9c
  64:	68 50 02 00 00       	push   $0x250
  69:	e8 c2 04 00 00       	call   530 <thread_create>
   assert(thread_pid > 0);
  6e:	83 c4 10             	add    $0x10,%esp
   int thread_pid = thread_create(merge_sort, global, &size);
  71:	89 c3                	mov    %eax,%ebx
   assert(thread_pid > 0);
  73:	85 c0                	test   %eax,%eax
  75:	0f 8e 84 00 00 00    	jle    ff <main+0xff>

   int join_pid = thread_join();
  7b:	e8 d0 04 00 00       	call   550 <thread_join>
   assert(join_pid == thread_pid);
  80:	39 c3                	cmp    %eax,%ebx
  82:	75 35                	jne    b9 <main+0xb9>
   assert(global[0] == 0);
  84:	a1 9c 0e 00 00       	mov    0xe9c,%eax
  89:	83 38 00             	cmpl   $0x0,(%eax)
  8c:	0f 85 9d 00 00 00    	jne    12f <main+0x12f>
   assert(global[10] == 10); 
  92:	83 78 28 0a          	cmpl   $0xa,0x28(%eax)
  96:	0f 84 80 00 00 00    	je     11c <main+0x11c>
  9c:	6a 35                	push   $0x35
  9e:	68 38 0a 00 00       	push   $0xa38
  a3:	68 42 0a 00 00       	push   $0xa42
  a8:	6a 01                	push   $0x1
  aa:	e8 61 06 00 00       	call   710 <printf>
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	68 a0 0a 00 00       	push   $0xaa0
  b7:	eb 1b                	jmp    d4 <main+0xd4>
   assert(join_pid == thread_pid);
  b9:	6a 33                	push   $0x33
  bb:	68 38 0a 00 00       	push   $0xa38
  c0:	68 42 0a 00 00       	push   $0xa42
  c5:	6a 01                	push   $0x1
  c7:	e8 44 06 00 00       	call   710 <printf>
  cc:	83 c4 0c             	add    $0xc,%esp
  cf:	68 7a 0a 00 00       	push   $0xa7a
  d4:	68 59 0a 00 00       	push   $0xa59
  d9:	6a 01                	push   $0x1
  db:	e8 30 06 00 00       	call   710 <printf>
  e0:	5a                   	pop    %edx
  e1:	59                   	pop    %ecx
  e2:	68 6d 0a 00 00       	push   $0xa6d
  e7:	6a 01                	push   $0x1
  e9:	e8 22 06 00 00       	call   710 <printf>
  ee:	5b                   	pop    %ebx
  ef:	ff 35 a0 0e 00 00    	push   0xea0
  f5:	e8 df 04 00 00       	call   5d9 <kill>
  fa:	e8 aa 04 00 00       	call   5a9 <exit>
   assert(thread_pid > 0);
  ff:	6a 30                	push   $0x30
 101:	68 38 0a 00 00       	push   $0xa38
 106:	68 42 0a 00 00       	push   $0xa42
 10b:	6a 01                	push   $0x1
 10d:	e8 fe 05 00 00       	call   710 <printf>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	68 4a 0a 00 00       	push   $0xa4a
 11a:	eb b8                	jmp    d4 <main+0xd4>

   printf(1, "TEST PASSED\n");
 11c:	50                   	push   %eax
 11d:	50                   	push   %eax
 11e:	68 b1 0a 00 00       	push   $0xab1
 123:	6a 01                	push   $0x1
 125:	e8 e6 05 00 00       	call   710 <printf>
   exit();
 12a:	e8 7a 04 00 00       	call   5a9 <exit>
   assert(global[0] == 0);
 12f:	6a 34                	push   $0x34
 131:	68 38 0a 00 00       	push   $0xa38
 136:	68 42 0a 00 00       	push   $0xa42
 13b:	6a 01                	push   $0x1
 13d:	e8 ce 05 00 00       	call   710 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 91 0a 00 00       	push   $0xa91
 14a:	eb 88                	jmp    d4 <main+0xd4>
 14c:	66 90                	xchg   %ax,%ax
 14e:	66 90                	xchg   %ax,%ax

00000150 <merge>:
}

void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 150:	55                   	push   %ebp
    int i = 0;
    int j = 0;
    int k = 0;
 151:	31 d2                	xor    %edx,%edx
    int i = 0;
 153:	31 c9                	xor    %ecx,%ecx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 155:	89 e5                	mov    %esp,%ebp
 157:	57                   	push   %edi
 158:	56                   	push   %esi
 159:	53                   	push   %ebx
    int j = 0;
 15a:	31 db                	xor    %ebx,%ebx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	8b 7d 10             	mov    0x10(%ebp),%edi
    while(i < size_left && j < size_right){
 162:	85 ff                	test   %edi,%edi
 164:	7e 41                	jle    1a7 <merge+0x57>
 166:	8b 45 14             	mov    0x14(%ebp),%eax
 169:	85 c0                	test   %eax,%eax
 16b:	7f 18                	jg     185 <merge+0x35>
 16d:	eb 38                	jmp    1a7 <merge+0x57>
 16f:	90                   	nop
        if(array[i] < array_right[j]){
            temp_array[k] = array[i];
 170:	8b 75 18             	mov    0x18(%ebp),%esi
            i++;
 173:	83 c1 01             	add    $0x1,%ecx
            temp_array[k] = array[i];
 176:	89 04 96             	mov    %eax,(%esi,%edx,4)
        }
        else{
            temp_array[k] = array_right[j];
            j++;
        }
        k++;
 179:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 17c:	39 f9                	cmp    %edi,%ecx
 17e:	7d 27                	jge    1a7 <merge+0x57>
 180:	3b 5d 14             	cmp    0x14(%ebp),%ebx
 183:	7d 22                	jge    1a7 <merge+0x57>
        if(array[i] < array_right[j]){
 185:	8b 45 08             	mov    0x8(%ebp),%eax
 188:	8b 75 0c             	mov    0xc(%ebp),%esi
 18b:	8b 04 88             	mov    (%eax,%ecx,4),%eax
 18e:	8b 34 9e             	mov    (%esi,%ebx,4),%esi
 191:	39 f0                	cmp    %esi,%eax
 193:	7c db                	jl     170 <merge+0x20>
            j++;
 195:	89 f0                	mov    %esi,%eax
            temp_array[k] = array[i];
 197:	8b 75 18             	mov    0x18(%ebp),%esi
            j++;
 19a:	83 c3 01             	add    $0x1,%ebx
            temp_array[k] = array[i];
 19d:	89 04 96             	mov    %eax,(%esi,%edx,4)
        k++;
 1a0:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 1a3:	39 f9                	cmp    %edi,%ecx
 1a5:	7c d9                	jl     180 <merge+0x30>
    }
    while(i < size_left){
 1a7:	39 cf                	cmp    %ecx,%edi
 1a9:	7e 3e                	jle    1e9 <merge+0x99>
 1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 1ae:	8b 75 18             	mov    0x18(%ebp),%esi
 1b1:	89 55 e8             	mov    %edx,-0x18(%ebp)
 1b4:	8d 04 88             	lea    (%eax,%ecx,4),%eax
 1b7:	8d 34 96             	lea    (%esi,%edx,4),%esi
 1ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 1c0:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 1c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 1c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1c9:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 1cc:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 1cf:	90                   	nop
        temp_array[k] = array[i];
 1d0:	8b 10                	mov    (%eax),%edx
    while(i < size_left){
 1d2:	83 c0 04             	add    $0x4,%eax
 1d5:	83 c6 04             	add    $0x4,%esi
        temp_array[k] = array[i];
 1d8:	89 56 fc             	mov    %edx,-0x4(%esi)
    while(i < size_left){
 1db:	39 c8                	cmp    %ecx,%eax
 1dd:	75 f1                	jne    1d0 <merge+0x80>
        i++;
        k++;
 1df:	8b 55 e8             	mov    -0x18(%ebp),%edx
 1e2:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 1e5:	01 fa                	add    %edi,%edx
 1e7:	29 ca                	sub    %ecx,%edx
    }
    while(j < size_right){
 1e9:	39 5d 14             	cmp    %ebx,0x14(%ebp)
 1ec:	7e 29                	jle    217 <merge+0xc7>
 1ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f1:	8b 4d 14             	mov    0x14(%ebp),%ecx
 1f4:	8d 04 98             	lea    (%eax,%ebx,4),%eax
 1f7:	8b 5d 18             	mov    0x18(%ebp),%ebx
 1fa:	8d 14 93             	lea    (%ebx,%edx,4),%edx
 1fd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 200:	8d 0c 8b             	lea    (%ebx,%ecx,4),%ecx
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
        temp_array[k] = array_right[j];
 208:	8b 18                	mov    (%eax),%ebx
    while(j < size_right){
 20a:	83 c0 04             	add    $0x4,%eax
 20d:	83 c2 04             	add    $0x4,%edx
        temp_array[k] = array_right[j];
 210:	89 5a fc             	mov    %ebx,-0x4(%edx)
    while(j < size_right){
 213:	39 c1                	cmp    %eax,%ecx
 215:	75 f1                	jne    208 <merge+0xb8>
        j++;
        k++;
    }
    for(int i = 0; i < size_left + size_right; i++){
 217:	03 7d 14             	add    0x14(%ebp),%edi
 21a:	85 ff                	test   %edi,%edi
 21c:	7e 21                	jle    23f <merge+0xef>
 21e:	8b 45 18             	mov    0x18(%ebp),%eax
 221:	8b 55 08             	mov    0x8(%ebp),%edx
 224:	8d 1c b8             	lea    (%eax,%edi,4),%ebx
 227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22e:	66 90                	xchg   %ax,%ax
        array[i] = temp_array[i];
 230:	8b 08                	mov    (%eax),%ecx
    for(int i = 0; i < size_left + size_right; i++){
 232:	83 c0 04             	add    $0x4,%eax
 235:	83 c2 04             	add    $0x4,%edx
        array[i] = temp_array[i];
 238:	89 4a fc             	mov    %ecx,-0x4(%edx)
    for(int i = 0; i < size_left + size_right; i++){
 23b:	39 d8                	cmp    %ebx,%eax
 23d:	75 f1                	jne    230 <merge+0xe0>
    }
   
}
 23f:	83 c4 0c             	add    $0xc,%esp
 242:	5b                   	pop    %ebx
 243:	5e                   	pop    %esi
 244:	5f                   	pop    %edi
 245:	5d                   	pop    %ebp
 246:	c3                   	ret    
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <merge_sort>:

void merge_sort(void *arg1, void *arg2) {
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
 255:	53                   	push   %ebx
 256:	83 ec 1c             	sub    $0x1c,%esp
   int *array = (int*)arg1;
   int size = *(int*)arg2;
 259:	8b 45 0c             	mov    0xc(%ebp),%eax
void merge_sort(void *arg1, void *arg2) {
 25c:	8b 75 08             	mov    0x8(%ebp),%esi
   int size = *(int*)arg2;
 25f:	8b 18                	mov    (%eax),%ebx

   if (size==1){
 261:	83 fb 01             	cmp    $0x1,%ebx
 264:	74 6e                	je     2d4 <merge_sort+0x84>
       exit();
   }

   
   int size_left = size/2;
 266:	89 d8                	mov    %ebx,%eax
 268:	b9 02 00 00 00       	mov    $0x2,%ecx
 26d:	99                   	cltd   
 26e:	f7 f9                	idiv   %ecx
   int size_right = size-size/2;
 270:	89 da                	mov    %ebx,%edx
 

//    int nested_join_pid_1 = thread_join();
//    int nested_join_pid_2 = thread_join();

   int* temp_array = malloc(size*sizeof(int));
 272:	c1 e3 02             	shl    $0x2,%ebx
   int size_right = size-size/2;
 275:	29 c2                	sub    %eax,%edx
   int* array_right = (int*)(array + size_left);
 277:	8d 3c 86             	lea    (%esi,%eax,4),%edi
   int size_left = size/2;
 27a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   thread_create(merge_sort, array, &size_left);
 27d:	50                   	push   %eax
 27e:	8d 45 e0             	lea    -0x20(%ebp),%eax
 281:	50                   	push   %eax
 282:	56                   	push   %esi
 283:	68 50 02 00 00       	push   $0x250
   int size_right = size-size/2;
 288:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   thread_create(merge_sort, array, &size_left);
 28b:	e8 a0 02 00 00       	call   530 <thread_create>
   thread_create(merge_sort, array_right, &size_right);
 290:	83 c4 0c             	add    $0xc,%esp
 293:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 296:	50                   	push   %eax
 297:	57                   	push   %edi
 298:	68 50 02 00 00       	push   $0x250
 29d:	e8 8e 02 00 00       	call   530 <thread_create>
   thread_join();
 2a2:	e8 a9 02 00 00       	call   550 <thread_join>
   thread_join();
 2a7:	e8 a4 02 00 00       	call   550 <thread_join>
   int* temp_array = malloc(size*sizeof(int));
 2ac:	89 1c 24             	mov    %ebx,(%esp)
 2af:	e8 8c 06 00 00       	call   940 <malloc>

   merge(array,array_right,size_left,size_right,temp_array);
 2b4:	89 04 24             	mov    %eax,(%esp)
   int* temp_array = malloc(size*sizeof(int));
 2b7:	89 c3                	mov    %eax,%ebx
   merge(array,array_right,size_left,size_right,temp_array);
 2b9:	ff 75 e4             	push   -0x1c(%ebp)
 2bc:	ff 75 e0             	push   -0x20(%ebp)
 2bf:	57                   	push   %edi
 2c0:	56                   	push   %esi
 2c1:	e8 8a fe ff ff       	call   150 <merge>

   free(temp_array);
 2c6:	83 c4 14             	add    $0x14,%esp
 2c9:	53                   	push   %ebx
 2ca:	e8 e1 05 00 00       	call   8b0 <free>

//    assert(nested_thread_pid_l == nested_join_pid_1 || nested_thread_pid_l == nested_join_pid_2);
//    assert(nested_thread_pid_r == nested_join_pid_1 || nested_thread_pid_r == nested_join_pid_2);
   exit();
 2cf:	e8 d5 02 00 00       	call   5a9 <exit>
       exit();
 2d4:	e8 d0 02 00 00       	call   5a9 <exit>
 2d9:	66 90                	xchg   %ax,%ax
 2db:	66 90                	xchg   %ax,%ax
 2dd:	66 90                	xchg   %ax,%ax
 2df:	90                   	nop

000002e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2e1:	31 c0                	xor    %eax,%eax
{
 2e3:	89 e5                	mov    %esp,%ebp
 2e5:	53                   	push   %ebx
 2e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2f7:	83 c0 01             	add    $0x1,%eax
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strcpy+0x10>
    ;
  return os;
}
 2fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 301:	89 c8                	mov    %ecx,%eax
 303:	c9                   	leave  
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 55 08             	mov    0x8(%ebp),%edx
 317:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 31a:	0f b6 02             	movzbl (%edx),%eax
 31d:	84 c0                	test   %al,%al
 31f:	75 17                	jne    338 <strcmp+0x28>
 321:	eb 3a                	jmp    35d <strcmp+0x4d>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 32c:	83 c2 01             	add    $0x1,%edx
 32f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 332:	84 c0                	test   %al,%al
 334:	74 1a                	je     350 <strcmp+0x40>
    p++, q++;
 336:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 338:	0f b6 19             	movzbl (%ecx),%ebx
 33b:	38 c3                	cmp    %al,%bl
 33d:	74 e9                	je     328 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 33f:	29 d8                	sub    %ebx,%eax
}
 341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 344:	c9                   	leave  
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 350:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 354:	31 c0                	xor    %eax,%eax
 356:	29 d8                	sub    %ebx,%eax
}
 358:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 35b:	c9                   	leave  
 35c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 35d:	0f b6 19             	movzbl (%ecx),%ebx
 360:	31 c0                	xor    %eax,%eax
 362:	eb db                	jmp    33f <strcmp+0x2f>
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 3a 00             	cmpb   $0x0,(%edx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 c0                	xor    %eax,%eax
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c0 01             	add    $0x1,%eax
 383:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 387:	89 c1                	mov    %eax,%ecx
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	89 c8                	mov    %ecx,%eax
 38d:	5d                   	pop    %ebp
 38e:	c3                   	ret    
 38f:	90                   	nop
  for(n = 0; s[n]; n++)
 390:	31 c9                	xor    %ecx,%ecx
}
 392:	5d                   	pop    %ebp
 393:	89 c8                	mov    %ecx,%eax
 395:	c3                   	ret    
 396:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39d:	8d 76 00             	lea    0x0(%esi),%esi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3b5:	89 d0                	mov    %edx,%eax
 3b7:	c9                   	leave  
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 45 08             	mov    0x8(%ebp),%eax
 3c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	75 12                	jne    3e3 <strchr+0x23>
 3d1:	eb 1d                	jmp    3f0 <strchr+0x30>
 3d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d7:	90                   	nop
 3d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3dc:	83 c0 01             	add    $0x1,%eax
 3df:	84 d2                	test   %dl,%dl
 3e1:	74 0d                	je     3f0 <strchr+0x30>
    if(*s == c)
 3e3:	38 d1                	cmp    %dl,%cl
 3e5:	75 f1                	jne    3d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3e7:	5d                   	pop    %ebp
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3f0:	31 c0                	xor    %eax,%eax
}
 3f2:	5d                   	pop    %ebp
 3f3:	c3                   	ret    
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 405:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 408:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 409:	31 db                	xor    %ebx,%ebx
{
 40b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 40e:	eb 27                	jmp    437 <gets+0x37>
    cc = read(0, &c, 1);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	6a 01                	push   $0x1
 415:	57                   	push   %edi
 416:	6a 00                	push   $0x0
 418:	e8 a4 01 00 00       	call   5c1 <read>
    if(cc < 1)
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	7e 1d                	jle    441 <gets+0x41>
      break;
    buf[i++] = c;
 424:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 428:	8b 55 08             	mov    0x8(%ebp),%edx
 42b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 42f:	3c 0a                	cmp    $0xa,%al
 431:	74 1d                	je     450 <gets+0x50>
 433:	3c 0d                	cmp    $0xd,%al
 435:	74 19                	je     450 <gets+0x50>
  for(i=0; i+1 < max; ){
 437:	89 de                	mov    %ebx,%esi
 439:	83 c3 01             	add    $0x1,%ebx
 43c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 43f:	7c cf                	jl     410 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 441:	8b 45 08             	mov    0x8(%ebp),%eax
 444:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 448:	8d 65 f4             	lea    -0xc(%ebp),%esp
 44b:	5b                   	pop    %ebx
 44c:	5e                   	pop    %esi
 44d:	5f                   	pop    %edi
 44e:	5d                   	pop    %ebp
 44f:	c3                   	ret    
  buf[i] = '\0';
 450:	8b 45 08             	mov    0x8(%ebp),%eax
 453:	89 de                	mov    %ebx,%esi
 455:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 459:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45c:	5b                   	pop    %ebx
 45d:	5e                   	pop    %esi
 45e:	5f                   	pop    %edi
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <stat>:

int
stat(const char *n, struct stat *st)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	56                   	push   %esi
 474:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 475:	83 ec 08             	sub    $0x8,%esp
 478:	6a 00                	push   $0x0
 47a:	ff 75 08             	push   0x8(%ebp)
 47d:	e8 67 01 00 00       	call   5e9 <open>
  if(fd < 0)
 482:	83 c4 10             	add    $0x10,%esp
 485:	85 c0                	test   %eax,%eax
 487:	78 27                	js     4b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 489:	83 ec 08             	sub    $0x8,%esp
 48c:	ff 75 0c             	push   0xc(%ebp)
 48f:	89 c3                	mov    %eax,%ebx
 491:	50                   	push   %eax
 492:	e8 6a 01 00 00       	call   601 <fstat>
  close(fd);
 497:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 49a:	89 c6                	mov    %eax,%esi
  close(fd);
 49c:	e8 30 01 00 00       	call   5d1 <close>
  return r;
 4a1:	83 c4 10             	add    $0x10,%esp
}
 4a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a7:	89 f0                	mov    %esi,%eax
 4a9:	5b                   	pop    %ebx
 4aa:	5e                   	pop    %esi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4b5:	eb ed                	jmp    4a4 <stat+0x34>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax

000004c0 <atoi>:

int
atoi(const char *s)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4c7:	0f be 02             	movsbl (%edx),%eax
 4ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4d5:	77 1e                	ja     4f5 <atoi+0x35>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4e0:	83 c2 01             	add    $0x1,%edx
 4e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ea:	0f be 02             	movsbl (%edx),%eax
 4ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4f0:	80 fb 09             	cmp    $0x9,%bl
 4f3:	76 eb                	jbe    4e0 <atoi+0x20>
  return n;
}
 4f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f8:	89 c8                	mov    %ecx,%eax
 4fa:	c9                   	leave  
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	8b 45 10             	mov    0x10(%ebp),%eax
 507:	8b 55 08             	mov    0x8(%ebp),%edx
 50a:	56                   	push   %esi
 50b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 50e:	85 c0                	test   %eax,%eax
 510:	7e 13                	jle    525 <memmove+0x25>
 512:	01 d0                	add    %edx,%eax
  dst = vdst;
 514:	89 d7                	mov    %edx,%edi
 516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 520:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 521:	39 f8                	cmp    %edi,%eax
 523:	75 fb                	jne    520 <memmove+0x20>
  return vdst;
}
 525:	5e                   	pop    %esi
 526:	89 d0                	mov    %edx,%eax
 528:	5f                   	pop    %edi
 529:	5d                   	pop    %ebp
 52a:	c3                   	ret    
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <thread_create>:



int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	83 ec 14             	sub    $0x14,%esp
  void* stack = malloc(sizeof(void*));
 536:	6a 04                	push   $0x4
 538:	e8 03 04 00 00       	call   940 <malloc>
  return clone(start_routine, arg1, arg2, stack);
 53d:	50                   	push   %eax
 53e:	ff 75 10             	push   0x10(%ebp)
 541:	ff 75 0c             	push   0xc(%ebp)
 544:	ff 75 08             	push   0x8(%ebp)
 547:	e8 fd 00 00 00       	call   649 <clone>
}
 54c:	c9                   	leave  
 54d:	c3                   	ret    
 54e:	66 90                	xchg   %ax,%ax

00000550 <thread_join>:

int
thread_join(){
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	56                   	push   %esi
 554:	53                   	push   %ebx
  void** stack = malloc(sizeof(void*));
 555:	83 ec 0c             	sub    $0xc,%esp
 558:	6a 04                	push   $0x4
 55a:	e8 e1 03 00 00       	call   940 <malloc>
  int rc = join(stack);
 55f:	89 04 24             	mov    %eax,(%esp)
  void** stack = malloc(sizeof(void*));
 562:	89 c3                	mov    %eax,%ebx
  int rc = join(stack);
 564:	e8 e8 00 00 00       	call   651 <join>
 569:	89 c6                	mov    %eax,%esi
  free(*stack);
 56b:	58                   	pop    %eax
 56c:	ff 33                	push   (%ebx)
 56e:	e8 3d 03 00 00       	call   8b0 <free>
  return rc;
}
 573:	8d 65 f8             	lea    -0x8(%ebp),%esp
 576:	89 f0                	mov    %esi,%eax
 578:	5b                   	pop    %ebx
 579:	5e                   	pop    %esi
 57a:	5d                   	pop    %ebp
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <lock_acquire>:



void lock_acquire(lock_t * lock){

};
 580:	c3                   	ret    
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 588:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <lock_release>:
 590:	c3                   	ret    
 591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 598:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop

000005a0 <lock_init>:
 5a0:	c3                   	ret    

000005a1 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5a1:	b8 01 00 00 00       	mov    $0x1,%eax
 5a6:	cd 40                	int    $0x40
 5a8:	c3                   	ret    

000005a9 <exit>:
SYSCALL(exit)
 5a9:	b8 02 00 00 00       	mov    $0x2,%eax
 5ae:	cd 40                	int    $0x40
 5b0:	c3                   	ret    

000005b1 <wait>:
SYSCALL(wait)
 5b1:	b8 03 00 00 00       	mov    $0x3,%eax
 5b6:	cd 40                	int    $0x40
 5b8:	c3                   	ret    

000005b9 <pipe>:
SYSCALL(pipe)
 5b9:	b8 04 00 00 00       	mov    $0x4,%eax
 5be:	cd 40                	int    $0x40
 5c0:	c3                   	ret    

000005c1 <read>:
SYSCALL(read)
 5c1:	b8 05 00 00 00       	mov    $0x5,%eax
 5c6:	cd 40                	int    $0x40
 5c8:	c3                   	ret    

000005c9 <write>:
SYSCALL(write)
 5c9:	b8 10 00 00 00       	mov    $0x10,%eax
 5ce:	cd 40                	int    $0x40
 5d0:	c3                   	ret    

000005d1 <close>:
SYSCALL(close)
 5d1:	b8 15 00 00 00       	mov    $0x15,%eax
 5d6:	cd 40                	int    $0x40
 5d8:	c3                   	ret    

000005d9 <kill>:
SYSCALL(kill)
 5d9:	b8 06 00 00 00       	mov    $0x6,%eax
 5de:	cd 40                	int    $0x40
 5e0:	c3                   	ret    

000005e1 <exec>:
SYSCALL(exec)
 5e1:	b8 07 00 00 00       	mov    $0x7,%eax
 5e6:	cd 40                	int    $0x40
 5e8:	c3                   	ret    

000005e9 <open>:
SYSCALL(open)
 5e9:	b8 0f 00 00 00       	mov    $0xf,%eax
 5ee:	cd 40                	int    $0x40
 5f0:	c3                   	ret    

000005f1 <mknod>:
SYSCALL(mknod)
 5f1:	b8 11 00 00 00       	mov    $0x11,%eax
 5f6:	cd 40                	int    $0x40
 5f8:	c3                   	ret    

000005f9 <unlink>:
SYSCALL(unlink)
 5f9:	b8 12 00 00 00       	mov    $0x12,%eax
 5fe:	cd 40                	int    $0x40
 600:	c3                   	ret    

00000601 <fstat>:
SYSCALL(fstat)
 601:	b8 08 00 00 00       	mov    $0x8,%eax
 606:	cd 40                	int    $0x40
 608:	c3                   	ret    

00000609 <link>:
SYSCALL(link)
 609:	b8 13 00 00 00       	mov    $0x13,%eax
 60e:	cd 40                	int    $0x40
 610:	c3                   	ret    

00000611 <mkdir>:
SYSCALL(mkdir)
 611:	b8 14 00 00 00       	mov    $0x14,%eax
 616:	cd 40                	int    $0x40
 618:	c3                   	ret    

00000619 <chdir>:
SYSCALL(chdir)
 619:	b8 09 00 00 00       	mov    $0x9,%eax
 61e:	cd 40                	int    $0x40
 620:	c3                   	ret    

00000621 <dup>:
SYSCALL(dup)
 621:	b8 0a 00 00 00       	mov    $0xa,%eax
 626:	cd 40                	int    $0x40
 628:	c3                   	ret    

00000629 <getpid>:
SYSCALL(getpid)
 629:	b8 0b 00 00 00       	mov    $0xb,%eax
 62e:	cd 40                	int    $0x40
 630:	c3                   	ret    

00000631 <sbrk>:
SYSCALL(sbrk)
 631:	b8 0c 00 00 00       	mov    $0xc,%eax
 636:	cd 40                	int    $0x40
 638:	c3                   	ret    

00000639 <sleep>:
SYSCALL(sleep)
 639:	b8 0d 00 00 00       	mov    $0xd,%eax
 63e:	cd 40                	int    $0x40
 640:	c3                   	ret    

00000641 <uptime>:
SYSCALL(uptime)
 641:	b8 0e 00 00 00       	mov    $0xe,%eax
 646:	cd 40                	int    $0x40
 648:	c3                   	ret    

00000649 <clone>:
SYSCALL(clone)
 649:	b8 16 00 00 00       	mov    $0x16,%eax
 64e:	cd 40                	int    $0x40
 650:	c3                   	ret    

00000651 <join>:
SYSCALL(join)
 651:	b8 17 00 00 00       	mov    $0x17,%eax
 656:	cd 40                	int    $0x40
 658:	c3                   	ret    
 659:	66 90                	xchg   %ax,%ax
 65b:	66 90                	xchg   %ax,%ax
 65d:	66 90                	xchg   %ax,%ax
 65f:	90                   	nop

00000660 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 3c             	sub    $0x3c,%esp
 669:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 66c:	89 d1                	mov    %edx,%ecx
{
 66e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 671:	85 d2                	test   %edx,%edx
 673:	0f 89 7f 00 00 00    	jns    6f8 <printint+0x98>
 679:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 67d:	74 79                	je     6f8 <printint+0x98>
    neg = 1;
 67f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 686:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 688:	31 db                	xor    %ebx,%ebx
 68a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 690:	89 c8                	mov    %ecx,%eax
 692:	31 d2                	xor    %edx,%edx
 694:	89 cf                	mov    %ecx,%edi
 696:	f7 75 c4             	divl   -0x3c(%ebp)
 699:	0f b6 92 20 0b 00 00 	movzbl 0xb20(%edx),%edx
 6a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6a3:	89 d8                	mov    %ebx,%eax
 6a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6b1:	76 dd                	jbe    690 <printint+0x30>
  if(neg)
 6b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6b6:	85 c9                	test   %ecx,%ecx
 6b8:	74 0c                	je     6c6 <printint+0x66>
    buf[i++] = '-';
 6ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6cd:	eb 07                	jmp    6d6 <printint+0x76>
 6cf:	90                   	nop
    putc(fd, buf[i]);
 6d0:	0f b6 13             	movzbl (%ebx),%edx
 6d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6d6:	83 ec 04             	sub    $0x4,%esp
 6d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6dc:	6a 01                	push   $0x1
 6de:	56                   	push   %esi
 6df:	57                   	push   %edi
 6e0:	e8 e4 fe ff ff       	call   5c9 <write>
  while(--i >= 0)
 6e5:	83 c4 10             	add    $0x10,%esp
 6e8:	39 de                	cmp    %ebx,%esi
 6ea:	75 e4                	jne    6d0 <printint+0x70>
}
 6ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ef:	5b                   	pop    %ebx
 6f0:	5e                   	pop    %esi
 6f1:	5f                   	pop    %edi
 6f2:	5d                   	pop    %ebp
 6f3:	c3                   	ret    
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6ff:	eb 87                	jmp    688 <printint+0x28>
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop

00000710 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 719:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 71c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 71f:	0f b6 13             	movzbl (%ebx),%edx
 722:	84 d2                	test   %dl,%dl
 724:	74 6a                	je     790 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 726:	8d 45 10             	lea    0x10(%ebp),%eax
 729:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 72c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 72f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 731:	89 45 d0             	mov    %eax,-0x30(%ebp)
 734:	eb 36                	jmp    76c <printf+0x5c>
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
 740:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 743:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 748:	83 f8 25             	cmp    $0x25,%eax
 74b:	74 15                	je     762 <printf+0x52>
  write(fd, &c, 1);
 74d:	83 ec 04             	sub    $0x4,%esp
 750:	88 55 e7             	mov    %dl,-0x19(%ebp)
 753:	6a 01                	push   $0x1
 755:	57                   	push   %edi
 756:	56                   	push   %esi
 757:	e8 6d fe ff ff       	call   5c9 <write>
 75c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 75f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 762:	0f b6 13             	movzbl (%ebx),%edx
 765:	83 c3 01             	add    $0x1,%ebx
 768:	84 d2                	test   %dl,%dl
 76a:	74 24                	je     790 <printf+0x80>
    c = fmt[i] & 0xff;
 76c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 76f:	85 c9                	test   %ecx,%ecx
 771:	74 cd                	je     740 <printf+0x30>
      }
    } else if(state == '%'){
 773:	83 f9 25             	cmp    $0x25,%ecx
 776:	75 ea                	jne    762 <printf+0x52>
      if(c == 'd'){
 778:	83 f8 25             	cmp    $0x25,%eax
 77b:	0f 84 07 01 00 00    	je     888 <printf+0x178>
 781:	83 e8 63             	sub    $0x63,%eax
 784:	83 f8 15             	cmp    $0x15,%eax
 787:	77 17                	ja     7a0 <printf+0x90>
 789:	ff 24 85 c8 0a 00 00 	jmp    *0xac8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 790:	8d 65 f4             	lea    -0xc(%ebp),%esp
 793:	5b                   	pop    %ebx
 794:	5e                   	pop    %esi
 795:	5f                   	pop    %edi
 796:	5d                   	pop    %ebp
 797:	c3                   	ret    
 798:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79f:	90                   	nop
  write(fd, &c, 1);
 7a0:	83 ec 04             	sub    $0x4,%esp
 7a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7a6:	6a 01                	push   $0x1
 7a8:	57                   	push   %edi
 7a9:	56                   	push   %esi
 7aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ae:	e8 16 fe ff ff       	call   5c9 <write>
        putc(fd, c);
 7b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7b7:	83 c4 0c             	add    $0xc,%esp
 7ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7bd:	6a 01                	push   $0x1
 7bf:	57                   	push   %edi
 7c0:	56                   	push   %esi
 7c1:	e8 03 fe ff ff       	call   5c9 <write>
        putc(fd, c);
 7c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7c9:	31 c9                	xor    %ecx,%ecx
 7cb:	eb 95                	jmp    762 <printf+0x52>
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7d8:	6a 00                	push   $0x0
 7da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7dd:	8b 10                	mov    (%eax),%edx
 7df:	89 f0                	mov    %esi,%eax
 7e1:	e8 7a fe ff ff       	call   660 <printint>
        ap++;
 7e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ed:	31 c9                	xor    %ecx,%ecx
 7ef:	e9 6e ff ff ff       	jmp    762 <printf+0x52>
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7fb:	8b 10                	mov    (%eax),%edx
        ap++;
 7fd:	83 c0 04             	add    $0x4,%eax
 800:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 803:	85 d2                	test   %edx,%edx
 805:	0f 84 8d 00 00 00    	je     898 <printf+0x188>
        while(*s != 0){
 80b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 80e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 810:	84 c0                	test   %al,%al
 812:	0f 84 4a ff ff ff    	je     762 <printf+0x52>
 818:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 81b:	89 d3                	mov    %edx,%ebx
 81d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
          s++;
 823:	83 c3 01             	add    $0x1,%ebx
 826:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 829:	6a 01                	push   $0x1
 82b:	57                   	push   %edi
 82c:	56                   	push   %esi
 82d:	e8 97 fd ff ff       	call   5c9 <write>
        while(*s != 0){
 832:	0f b6 03             	movzbl (%ebx),%eax
 835:	83 c4 10             	add    $0x10,%esp
 838:	84 c0                	test   %al,%al
 83a:	75 e4                	jne    820 <printf+0x110>
      state = 0;
 83c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 83f:	31 c9                	xor    %ecx,%ecx
 841:	e9 1c ff ff ff       	jmp    762 <printf+0x52>
 846:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 0a 00 00 00       	mov    $0xa,%ecx
 858:	6a 01                	push   $0x1
 85a:	e9 7b ff ff ff       	jmp    7da <printf+0xca>
 85f:	90                   	nop
        putc(fd, *ap);
 860:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 863:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 866:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 868:	6a 01                	push   $0x1
 86a:	57                   	push   %edi
 86b:	56                   	push   %esi
        putc(fd, *ap);
 86c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 86f:	e8 55 fd ff ff       	call   5c9 <write>
        ap++;
 874:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 878:	83 c4 10             	add    $0x10,%esp
      state = 0;
 87b:	31 c9                	xor    %ecx,%ecx
 87d:	e9 e0 fe ff ff       	jmp    762 <printf+0x52>
 882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 888:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 88b:	83 ec 04             	sub    $0x4,%esp
 88e:	e9 2a ff ff ff       	jmp    7bd <printf+0xad>
 893:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 897:	90                   	nop
          s = "(null)";
 898:	ba be 0a 00 00       	mov    $0xabe,%edx
        while(*s != 0){
 89d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8a0:	b8 28 00 00 00       	mov    $0x28,%eax
 8a5:	89 d3                	mov    %edx,%ebx
 8a7:	e9 74 ff ff ff       	jmp    820 <printf+0x110>
 8ac:	66 90                	xchg   %ax,%ax
 8ae:	66 90                	xchg   %ax,%ax

000008b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8b1:	a1 a4 0e 00 00       	mov    0xea4,%eax
{
 8b6:	89 e5                	mov    %esp,%ebp
 8b8:	57                   	push   %edi
 8b9:	56                   	push   %esi
 8ba:	53                   	push   %ebx
 8bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8c8:	89 c2                	mov    %eax,%edx
 8ca:	8b 00                	mov    (%eax),%eax
 8cc:	39 ca                	cmp    %ecx,%edx
 8ce:	73 30                	jae    900 <free+0x50>
 8d0:	39 c1                	cmp    %eax,%ecx
 8d2:	72 04                	jb     8d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d4:	39 c2                	cmp    %eax,%edx
 8d6:	72 f0                	jb     8c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8de:	39 f8                	cmp    %edi,%eax
 8e0:	74 30                	je     912 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8e5:	8b 42 04             	mov    0x4(%edx),%eax
 8e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8eb:	39 f1                	cmp    %esi,%ecx
 8ed:	74 3a                	je     929 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8f1:	5b                   	pop    %ebx
  freep = p;
 8f2:	89 15 a4 0e 00 00    	mov    %edx,0xea4
}
 8f8:	5e                   	pop    %esi
 8f9:	5f                   	pop    %edi
 8fa:	5d                   	pop    %ebp
 8fb:	c3                   	ret    
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 900:	39 c2                	cmp    %eax,%edx
 902:	72 c4                	jb     8c8 <free+0x18>
 904:	39 c1                	cmp    %eax,%ecx
 906:	73 c0                	jae    8c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 908:	8b 73 fc             	mov    -0x4(%ebx),%esi
 90b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 90e:	39 f8                	cmp    %edi,%eax
 910:	75 d0                	jne    8e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 912:	03 70 04             	add    0x4(%eax),%esi
 915:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 918:	8b 02                	mov    (%edx),%eax
 91a:	8b 00                	mov    (%eax),%eax
 91c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 91f:	8b 42 04             	mov    0x4(%edx),%eax
 922:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 925:	39 f1                	cmp    %esi,%ecx
 927:	75 c6                	jne    8ef <free+0x3f>
    p->s.size += bp->s.size;
 929:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 92c:	89 15 a4 0e 00 00    	mov    %edx,0xea4
    p->s.size += bp->s.size;
 932:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 935:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 938:	89 0a                	mov    %ecx,(%edx)
}
 93a:	5b                   	pop    %ebx
 93b:	5e                   	pop    %esi
 93c:	5f                   	pop    %edi
 93d:	5d                   	pop    %ebp
 93e:	c3                   	ret    
 93f:	90                   	nop

00000940 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 940:	55                   	push   %ebp
 941:	89 e5                	mov    %esp,%ebp
 943:	57                   	push   %edi
 944:	56                   	push   %esi
 945:	53                   	push   %ebx
 946:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 949:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 94c:	8b 3d a4 0e 00 00    	mov    0xea4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 952:	8d 70 07             	lea    0x7(%eax),%esi
 955:	c1 ee 03             	shr    $0x3,%esi
 958:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 95b:	85 ff                	test   %edi,%edi
 95d:	0f 84 9d 00 00 00    	je     a00 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 963:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 965:	8b 4a 04             	mov    0x4(%edx),%ecx
 968:	39 f1                	cmp    %esi,%ecx
 96a:	73 6a                	jae    9d6 <malloc+0x96>
 96c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 971:	39 de                	cmp    %ebx,%esi
 973:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 976:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 97d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 980:	eb 17                	jmp    999 <malloc+0x59>
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 988:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 98a:	8b 48 04             	mov    0x4(%eax),%ecx
 98d:	39 f1                	cmp    %esi,%ecx
 98f:	73 4f                	jae    9e0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 991:	8b 3d a4 0e 00 00    	mov    0xea4,%edi
 997:	89 c2                	mov    %eax,%edx
 999:	39 d7                	cmp    %edx,%edi
 99b:	75 eb                	jne    988 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 99d:	83 ec 0c             	sub    $0xc,%esp
 9a0:	ff 75 e4             	push   -0x1c(%ebp)
 9a3:	e8 89 fc ff ff       	call   631 <sbrk>
  if(p == (char*)-1)
 9a8:	83 c4 10             	add    $0x10,%esp
 9ab:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ae:	74 1c                	je     9cc <malloc+0x8c>
  hp->s.size = nu;
 9b0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9b3:	83 ec 0c             	sub    $0xc,%esp
 9b6:	83 c0 08             	add    $0x8,%eax
 9b9:	50                   	push   %eax
 9ba:	e8 f1 fe ff ff       	call   8b0 <free>
  return freep;
 9bf:	8b 15 a4 0e 00 00    	mov    0xea4,%edx
      if((p = morecore(nunits)) == 0)
 9c5:	83 c4 10             	add    $0x10,%esp
 9c8:	85 d2                	test   %edx,%edx
 9ca:	75 bc                	jne    988 <malloc+0x48>
        return 0;
  }
}
 9cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9cf:	31 c0                	xor    %eax,%eax
}
 9d1:	5b                   	pop    %ebx
 9d2:	5e                   	pop    %esi
 9d3:	5f                   	pop    %edi
 9d4:	5d                   	pop    %ebp
 9d5:	c3                   	ret    
    if(p->s.size >= nunits){
 9d6:	89 d0                	mov    %edx,%eax
 9d8:	89 fa                	mov    %edi,%edx
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9e0:	39 ce                	cmp    %ecx,%esi
 9e2:	74 4c                	je     a30 <malloc+0xf0>
        p->s.size -= nunits;
 9e4:	29 f1                	sub    %esi,%ecx
 9e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9ef:	89 15 a4 0e 00 00    	mov    %edx,0xea4
}
 9f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9f8:	83 c0 08             	add    $0x8,%eax
}
 9fb:	5b                   	pop    %ebx
 9fc:	5e                   	pop    %esi
 9fd:	5f                   	pop    %edi
 9fe:	5d                   	pop    %ebp
 9ff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a00:	c7 05 a4 0e 00 00 a8 	movl   $0xea8,0xea4
 a07:	0e 00 00 
    base.s.size = 0;
 a0a:	bf a8 0e 00 00       	mov    $0xea8,%edi
    base.s.ptr = freep = prevp = &base;
 a0f:	c7 05 a8 0e 00 00 a8 	movl   $0xea8,0xea8
 a16:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a19:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a1b:	c7 05 ac 0e 00 00 00 	movl   $0x0,0xeac
 a22:	00 00 00 
    if(p->s.size >= nunits){
 a25:	e9 42 ff ff ff       	jmp    96c <malloc+0x2c>
 a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a30:	8b 08                	mov    (%eax),%ecx
 a32:	89 0a                	mov    %ecx,(%edx)
 a34:	eb b9                	jmp    9ef <malloc+0xaf>
