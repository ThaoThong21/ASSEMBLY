.data
	file_in: .asciiz"input.txt"
	file_out: .asciiz"output.txt"
#Noticfication

	nhap_time2: .asciiz"\nNhap chuoi time2: "
	nhap_day: .asciiz"\nNhap ngay DAY: "
	nhap_month: .asciiz"Nhap thang MONTH: "
	nhap_year: .asciiz"Nhap nam YEAR: "
	
	TB2A: .asciiz" "
	_space: .asciiz " "
	_enter: .asciiz "\n"
	# menu
	_MENU: .asciiz 	"\n----------Ban hay chon 1 trong cac thao tac duoi day----------\n"
	option0: .asciiz 	"0. Thoat.\n"
	option1: .asciiz	"1. Xuat chuoi TIME theo dinh dang DD/MM/YYYY\n"
	option2: .asciiz	"2. Chuyen doi chuoi TIME thanh mot trong cac dinh dang sau:\n"
	option2a: .asciiz			"\ta. MM/DD/YYYY\n"
	option2b: .asciiz			"\tb. Month DD, YYYY\n"
	option2c: .asciiz			"\tc. DD Month, YYYY\n"
	option3: .asciiz	"3. Kiem tra nam trong chuoi TIME co phai la nam nhuan khong\n"
	option4: .asciiz	"4. Cho biet ngay vua nhap la ngay thu may trong tuan.\n"
	option5: .asciiz	"5. Cho biet ngay vua nhap la ngay thu may ke tu 1/1/1.\n"
	option6: .asciiz	"6. Cho biet can chi cua nam vua nhap.\n"
	option7: .asciiz 	"7. Cho biet khoang thoi gian giua chuoi TIME_1 va TIME_2\n"
	option8: .asciiz	"8. Cho biet 2 nam nhuan gan nhat voi nam trong chuoi time\n"
	option9: .asciiz	"9. Nhap input tu file input.txt xuat ket qua toan bo các chuc nang tren ra file output.txt\n"
	stuff:   .asciiz	"---------------------------------------------------------------\n"
	option: .asciiz	"Lua chon: "
	type: .asciiz "Loai (a/b/c): "
	result: .asciiz "\nKet qua:  "
	
	Cau3_1: .asciiz " La Nam Nhuan."
	Cau3_0: .asciiz " La Nam Thuong."
	errorMessage: "\nNhap khong hop le. "
	
	ngay: .asciiz " ngay - "
	nam: .asciiz " nam"
	Line1: .asciiz"1. "
	Line2A: .asciiz"\r\n2A."
	Line2B: .asciiz"\r\n2B."
	Line2C: .asciiz"\r\n2C."
	Line3: .asciiz"\r\n3."
	Line4: .asciiz"\r\n4."
	Line5: .asciiz"\r\n5.Khoang cach tu ngay 01/01/0001 den ngay "
	
	Line6: .asciiz"\r\n6."
	Line7: .asciiz"\r\n7.Khoang cach tu ngay "
	Line8: .asciiz"\r\n8.Hai nam nhuan gan voi "
	_la:		 .asciiz" la "
	_denngay:	 .asciiz" den ngay "
	_ngay:		.asciiz" ngay "
	_lanam:		.asciiz" la nam "
	_nhatla:	.asciiz" nhat la "
	_va:		.asciiz" va "
	LineNote1: .asciiz"Chuoi Time_1 khong hop le"
	LineNote2: .asciiz"Chuoi Time_2 khong hop le"
	LineNote3: .asciiz"Chuoi Time_1 va Time_2 khong hop le"
	TBFILE: 	.asciiz"Ket qua: Hoan Thanh Doc File"
#time1
	dd1: .word 0
	mm1: .word 0
	yy1: .word 0
#time2: 
	dd2: .word 0
	mm2: .word 0
	yy2: .word 0
#time temp: 
	temp1: .word 0
	temp2: .word 0
	temp3: .word 0
	
#Can	
	can0: .asciiz"Giap"
	can1: .asciiz"At"
	can2: .asciiz"Binh"
	can3: .asciiz"Dinh"
	can4: .asciiz"Mau"
	can5: .asciiz"Ky"
	can6: .asciiz"Canh"
	can7: .asciiz"Tan"
	can8: .asciiz"Nham"
	can9: .asciiz"Quy"	
	CAN: .word can0,can1,can2,can3,can4,can5,can6,can7,can8,can9

#Chi
	chi0: .asciiz"Ty"
	chi1: .asciiz"Suu"
	chi2: .asciiz"Dan"
	chi3: .asciiz"Meo"
	chi4: .asciiz"Thin"
	chi5: .asciiz"Ty"
	chi6: .asciiz"Ngo"
	chi7: .asciiz"Mui"
	chi8: .asciiz"Than"
	chi9: .asciiz"Dau"
	chi10: .asciiz"Tuat"
	chi11: .asciiz"Hoi"
	CHI: .word chi0,chi1,chi2,chi3,chi4,chi5,chi6,chi7,chi8,chi9,chi10,chi11
# months
	jan: .asciiz "Jan"
	feb: .asciiz "Feb"
	mar: .asciiz "Mar"
	apr: .asciiz "Apr"
	may: .asciiz "May"
	jun: .asciiz "Jun"
	jul: .asciiz "Jul"
	aug: .asciiz "Aug"
	sep: .asciiz "Sep"
	oct: .asciiz "Oct"
	nov: .asciiz "Nov"
	dec: .asciiz "Dec"
	MONTHS: .word jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec
#Thu
	Mon: .asciiz"thu hai"
	Tues: .asciiz"thu ba"
	Wed: .asciiz"thu tu"
	Thurs: .asciiz"thu nam"
	Fri: .asciiz"thu sau"
	Sat: .asciiz"thu bay"
	Sun: .asciiz"chu nhat"
	Week: .word  Mon, Tues, Wed, Thurs, Fri,Sat,Sun
	
# string
	
	time1: .space 11
	time2: .space 11
	
	stringType: .space 13
	buffer: .space 22	#dd mm yyyy     luu luon kt kt :v
	Time_1: .space 11
	Time_2: .space 11
	_IntToStringTemp: .space 10
	_IntToString: .space 10
.globl main
.text

main: 
	
	
	jal	Input
	
	
	lw $a0,temp1
	lw $a1,temp2
	lw $a2,temp3
	
	sw $a0,dd1
	sw $a1,mm1
	sw $a2,yy1

	lw $a0,dd1
	lw $a1,mm1
	lw $a2,yy1
	la $a3,time1
	jal Date		# luu no vô time1 luôn :v
		
	jal	menu

	li	$v0,10
	syscall
#		== END MAIN ==

#------------------------------------------------------------
menu:
	addi	$sp, $sp, -16
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	sw	$s2,12($sp)

menu.begin:	
	li	$v0, 4
	la	$a0, _MENU
	syscall
	li	$v0, 4
	la	$a0, option0
	syscall
	
	la	$a0, option1
	syscall 
	
	la	$a0, option2
	syscall 

	la	$a0, option2a
	syscall 

	la	$a0, option2b
	syscall 

	la	$a0, option2c
	syscall 

	la	$a0, option3
	syscall 

	la	$a0, option4
	syscall 

	la	$a0, option5
	syscall 

	la	$a0, option6
	syscall 

	la	$a0, option7
	syscall 

	la	$a0, option8
	syscall 

	la	$a0, option9
	syscall 

	la	$a0, stuff
	syscall 

	la	$a0, option
	syscall

	la	$v0, 5
	syscall

		move $s0,$v0

			beqz $s0,menu.end
			beq $s0,1,menu.Cau1
			beq $s0,2,menu.Cau2
			beq $s0,3,menu.Cau3
			beq $s0,4,menu.Cau4			#Thoat
			beq $s0,5,menu.Cau5
			beq $s0,6,menu.Cau6
			beq $s0,7,menu.Cau7
			beq $s0,8,menu.Cau8
			beq $s0,9,menu.Cau9
		bgt $s0,9,menu.begin	#>9
menu.Cau1:
	
	la $a0,time1
	li $v0,4
	syscall
	j menu.begin
menu.Cau2:

	la $a0,type
	li $v0,4
	syscall
	li $v0,12
	syscall
#Truyen tham so vao
	move $a1,$v0
	la $a0,time1
	la $a2,stringType		#a1 luu loai a:0	b:1	c:2
	addi $a1,$a1,-97
	blt $a1,0,menu.Cau2.exit		
	bge $a1,3,menu.Cau2.exit

	jal Convert
#luu ket qua o $v1
	la $a0,result
	li $v0,4
	syscall
	
	move $a0,$v1
	li $v0,4
	syscall
	j menu.begin
menu.Cau2.exit:
	la $a0,errorMessage
	li $v0,4
	syscall
	j menu.begin
menu.Cau3:
	
		#in ket qua
	la $a0,result
	li $v0,4
	syscall
	#truyen tham so
	la $a0,time1
	jal LeapYear
	beq $v1,0,menu.Cau3_0
			#la nam nhuan
	menu.Cau3_1:
		lw $a0, yy1
		li $v0,1
		syscall
		la $a0,Cau3_1
		li $v0,4
		syscall	
		j menu.begin
			#la nam khong nhuan
	menu.Cau3_0:
		lw $a0, yy1
		li $v0,1
		syscall
		la $a0,Cau3_0
		li $v0,4
		syscall		
		#goi ham
		j menu.begin
	#^=^=^=^=^=^=^=^=^=^=^=^=
menu.Cau4:
	#in ket qua
	la $a0,result
	li $v0,4
	syscall

	la $a0,time1 
	jal Weekday
		
	move $a0,$v1
	li $v0,4
	syscall		

	j menu.begin
menu.Cau5:
		#in ket qua
	la $a0,result
	li $v0,4
	syscall
		#truyen tham so
	la $a0,time1
		#goi ham
	jal NumDay
		#in ket qua ra man hinh
	move $a0,$v1
	li $v0,1
	syscall
	
	j menu.begin
menu.Cau6:
	la $a0,result
	li $v0,4
	syscall

	la $a0,time1
	jal CanChi
	move $s0,$v1		#can
	move $s1,$v0		#chi
	
	move $a0,$s0
	li $v0,4
	syscall

	la $a0,_space
	li $v0,4
	syscall

	move $a0,$s1
	li $v0,4
	syscall

	j menu.begin
menu.Cau7:
	

	la $a0,nhap_time2
	li $v0,4
	syscall
	jal Input
	lw $a0,temp1
	lw $a1,temp2
	lw $a2,temp3
	la $a3,time2
	jal Date	

	la $a0,time1
	la $a1,time2
	jal DateDiff

	la $a0,result
	li $v0,4
	syscall
	move $a0,$v1
	li $v0,1
	syscall

	j menu.begin
menu.Cau8:
	la $a0,result
	li $v0,4
	syscall

	la $a0,time1
	jal TwoLeapYear

	move $s1,$v1		
	move $s0,$v0		
	
	move $a0,$s0
	li $v0,1
	syscall
	la $a0,_space
	li $v0,4
	syscall
	move $a0,$s1
	li $v0,1
	syscall
	
	j menu.begin
menu.Cau9:
	
	jal ReadWriteFile
	la $a0,TBFILE
	li $v0,4
	syscall
	j menu.end


	
menu.end:	
	lw	$ra, 0($sp)
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	lw	$s2,12($sp)
	addi 	$sp,$sp,16
	jr	$ra

#=================================================================================================================================

#Ham nhap ngay:
Input:
		#back up du lieu
	addi $sp,$sp,-4
	sw $ra, 0($sp)
	
Input.begin:
		#nhap ngay
	la $a0,nhap_day
	li $v0,4
	syscall
	li $v0,5
	syscall
	sw $v0,temp1
		#nhap thang
	la $a0,nhap_month
	li $v0,4
	syscall
	li $v0,5
	syscall
	sw $v0,temp2
		#nhap nam
	la $a0,nhap_year
	li $v0,4
	syscall
	li $v0,5
	syscall
	sw $v0,temp3

	lw $a0,temp1
	lw $a1,temp2
	lw $a2,temp3

	jal Valid
	beq $v1,0,Input.begin

		#tra ve
	lw $ra, 0($sp)
	addi $sp,$sp,4
	jr $ra

#__________________________________________________________________________________
#Kiem Tra hop le:
# tra ra 0 ho?c 1 trong $v1
Valid:
	addi $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	
	move $s0,$a0 # Ngay
	move $s1,$a1 #Thang
	move $s2,$a2 #Nam

		# ngay thang nam bi am
	blez $s0, Valid.False
	blez $s1, Valid.False
	blez $s2,Valid.False
	
		#Kiem Tra Thang
	addi $t0,$zero,12
	bgt $s1,$t0,Valid.False	# >12
	
			#Ki?m tra tháng thu?c lo?i 30, 31 hay 28
	addi $t0,$zero,2
	beq $s1,$t0,Valid.Month_2 	#N?u là tháng 2
	
		#Các tháng có 31 ngày: 1 3 5 7 8 10 12
	addi $t0,$zero,1
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,3
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,5
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,7
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,8
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,10
	beq $s1,$t0,Valid.Month__31Day
	addi $t0,$zero,12
	beq $s1,$t0,Valid.Month__31Day
		#Các tháng có 30 ngày: 4 6 9 11
	addi $t0,$zero,4
	beq $s1,$t0,Valid.Month__30Day
	addi $t0,$zero,6
	beq $s1,$t0,Valid.Month__30Day
	addi $t0,$zero,9
	beq $s1,$t0,Valid.Month__30Day
	addi $t0,$zero,11
	beq $s1,$t0,Valid.Month__30Day

Valid.Month__31Day:	
	addi $t0,$zero,31
	bgt $s0,$t0,Valid.False	# ngay > 31
	j Valid.True

Valid.Month__30Day:
	addi $t0,$zero,30
	bgt $s0,$t0,Valid.False	# ngay > 30
	j Valid.True

Valid.Month_2:
	move $a0,$s2
	jal IsLeapYear
	bnez $v1, Valid.Month_2Leap 	#Khong Nhuan 	// != 0
	addi $t0,$zero,28
	bgt $s0,$t0,Valid.False	# ngay > 28 
	j Valid.True

Valid.Month_2Leap:
	addi $t0,$zero,29
	bgt $s0,$t0,Valid.False	# ngay > 29 
	j Valid.True


Valid.False:
	addi $v1,$zero,0
	j Valid.end
Valid.True:
	addi $v1,$zero,1
	j Valid.end

Valid.end:
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addi $sp,$sp,16
	jr $ra



#____________________________________________________________________
#===============================================
#Tra ra ngay vao bien $v1
#Tham so truyen vao la time o thanh ghi $a0
Day:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	
		lb $t0,0($a0)
		sub $t0,$t0,'0'
		addi $t1,$zero,10
		mul $t0,$t0,$t1
		lb $t1,1($a0)
		sub $t1,$t1,'0'
		add $t0,$t1,$t0

		move $v1,$t0

	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
Month:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	
		lb $t0,3($a0)
		sub $t0,$t0,'0'
		addi $t1,$zero,10
		mul $t0,$t0,$t1
		lb $t1,4($a0)
		sub $t1,$t1,'0'
		add $t0,$t1,$t0

		move $v1,$t0
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra



Year:
	addi $sp,$sp,-4
	sw $ra,0($sp)
		lb $t1,6($a0)
		sub $t1,$t1,'0'
		addi $t2,$zero,1000
		mul $t1,$t1,$t2
		add $t0,$t1,$zero

		lb $t1,7($a0)
		sub $t1,$t1,'0'
		addi $t2,$zero,100
		mul $t1,$t1,$t2
		add $t0,$t1,$t0

		
		
		lb $t1,8($a0)
		sub $t1,$t1,'0'
		addi $t2,$zero,10
		mul $t1,$t1,$t2
		add $t0,$t1,$t0


		lb $t1,9($a0)
		sub $t1,$t1,'0'
		addi $t2,$zero,1
		mul $t1,$t1,$t2

		add $t0,$t1,$t0

		move $v1,$t0

	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra

#=================================================================================
#tra ra cdia chi luu trong tham so truyen vao :v ? lay trong $v1
Date:
	addi $sp,$sp,-36
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $a0,20($sp)
	sw $a1,24($sp)
	sw $a2,28($sp)
	sw $a3,32($sp)
	jal Valid
	beq $v1,0,Date.end
	move $s0,$a0	#day
	move $s1,$a1	#moth
	move $s2,$a2	#year
	move $s3,$a3	#dia chi cua time
		#ghi ngay
	move $t3,$s3
	addi $t0,$zero,10
	div $s0,$t0
	mflo $t1
	mfhi $t2
	addi $t1,$t1,'0'
	sb $t1,($t3)
	addi $t2,$t2,'0'
	addi $t3,$t3,1
	sb $t2,($t3)
	addi $t3,$t3,1
	addi $t4,$zero,'/'
	sb $t4,($t3)

	addi $t3,$t3,1
		#ghi thang
	addi $t0,$zero,10
	div $s1,$t0
	mflo $t1
	mfhi $t2
	addi $t1,$t1,'0'
	sb $t1,($t3)
	addi $t2,$t2,'0'
	addi $t3,$t3,1
	sb $t2,($t3)
	addi $t3,$t3,1
	addi $t4,$zero,'/'
	sb $t4,($t3)

	addi $t3,$t3,1	#tang dia chi len :v
	
	
		#ghi nam
	move $t1,$s2		#gán $t2 la nam
	addi $t0,$zero,1000
	div $t1,$t0
	mflo $t2
	mfhi $t1
	addi $t2,$t2,'0'
	sb $t2,($t3)
	addi $t3,$t3,1

	addi $t0,$zero,100
	div $t1,$t0
	mflo $t2
	mfhi $t1
	addi $t2,$t2,'0'
	sb $t2,($t3)
	addi $t3,$t3,1

	addi $t0,$zero,10
	div $t1,$t0
	mflo $t2
	mfhi $t1
	addi $t2,$t2,'0'
	sb $t2,($t3)
	addi $t3,$t3,1
	
	addi $t1,$t1,'0'		#so cuoi hang don vi cua nam
	sb $t1,($t3)
	addi $t3,$t3,1

	addi $t2,$zero,'\0'
	sb $t2,($t3)

	move $v1,$s3

Date.end:
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $a0,20($sp)
	lw $a1,24($sp)
	lw $a2,28($sp)
	lw $a3,32($sp)
	addi $sp,$sp,36
	jr $ra

#==================================================
	# truyen vao tham so la chuoi trong $a0
Convert:
	addi $sp,$sp,-36
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $s4,20($sp)
	sw $s5,24($sp)
	sw $s6,28($sp)
	sw $a0,32($sp)

	move $s0,$a0	#dia chi chuoi luu time
	move $s3,$a1 	#type
	move $s2,$a2
	

	
	
	beq  $s3,0,Convert.0
	beq  $s3,1,Convert.continue
	beq  $s3,2,Convert.continue
Convert.0:

	move $v1,$a0	#Tra ve mac dinh
	j Convert.end

Convert.continue:	
	move $a0,$s0
	jal Day
	move $s4,$v1
	jal Month
	move $s5,$v1
	jal Year
	move $s6,$v1

			
	la $s1,MONTHS
	
	addi 	$t0,$zero,4
	subi	$t1,$s5,1
	mul  	$t1,$t1,$t0
	add 	$s1,$s1,$t1
	lw $s1,($s1)

	lb $t0,($s1)
	lb $t1,1($s1)
	lb $t2,2($s1)

	beq  $s3,1,Convert.1
	beq  $s3,2,Convert.2
Convert.1:
	move $s0,$s2
	move $t7,$s0

			sb 	$t0,($t7)
		addi $t7,$t7,1	
			sb 	$t1,($t7)
		addi $t7,$t7,1
			sb 	$t2,($t7)
		addi $t7,$t7,1
	addi	$t0,$zero,' '
			sb 	$t0,($t7)
		addi $t7,$t7,1
	
	addi $t3,$zero,10
	div $s4,$t3
	mflo $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	addi	$t6,$zero,','
			sb 	$t6,($t7)
		addi $t7,$t7,1
	addi	$t6,$zero,' '
			sb 	$t6,($t7)
		addi $t7,$t7,1

	move $t4,$s6
	addi $t3,$zero,1000
	div $t4,$t3
	mflo $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t4
	addi $t3,$zero,100
	div $t4,$t3
	mflo $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t4
	addi $t3,$zero,10
	div $t4,$t3
	mflo $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t3
	add $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	addi $t3,$zero,'\0'
			sb	 $t3,($t7)
		

	move $v1,$s2
	j Convert.end
	
Convert.2:	
	move $s0,$s2
	move $t7,$s0

	addi $t3,$zero,10
	div $s4,$t3
	mflo $t3
	addi $t3,$t3,'0'
			sb	 $t3,($t7)
			addi $t7,$t7,1
	mfhi $t3
	addi $t3,$t3,'0'
			sb	 $t3,0($t7)
			addi $t7,$t7,1
	addi $t6,$zero,' '
			sb 	$t6,($t7)
		addi $t7,$t7,1	
			sb 	$t0,($t7)
		addi $t7,$t7,1	
			sb 	$t1,($t7)
		addi $t7,$t7,1
			sb 	$t2,($t7)
		addi $t7,$t7,1
	
	
	
	addi	$t6,$zero,','
			sb 	$t6,($t7)
		addi $t7,$t7,1
	addi	$t6,$zero,' '
			sb 	$t6,($t7)
		addi $t7,$t7,1

	move $t4,$s6
	addi $t3,$zero,1000
	div $t4,$t3
	mflo $t3
	addi $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t4
	addi $t3,$zero,100
	div $t4,$t3
	mflo $t3
	addi $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t4
	addi $t3,$zero,10
	div $t4,$t3
	mflo $t3
	addi $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	mfhi $t3
	addi $t3,$t3,'0'
			sb	 $t3,($t7)
		addi $t7,$t7,1
	addi $t3,$zero,'\0'
			sb	 $t3,($t7)


	move $v1,$s2

Convert.end:
			
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $s4,20($sp)
	lw $s5,24($sp)
	lw $s6,28($sp)
	lw $a0,32($sp)
	addi $sp,$sp,36
	jr $ra
#______________________________________________________________________________________________

IsLeapYear:	
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $a0,8($sp)
	
	move $s0,$a0	#Year

		
		#kiemtra nam co chia het cho 4
	beq $s0,0,IsLeapYear.False
	addi $t0,$zero,4
	div $s0,$t0
	mfhi $t1
	bnez $t1, IsLeapYear.False #yy%4 != 0 return 0
		
		#kiem tra nam co chia het cho 100
	addi $t0,$zero,100
	div $s0,$t0
	mfhi $t1
	
	bnez $t1, IsLeapYear.True #yy%100 != 0 return 1

		#kiem tra nam co chia het cho 400
	addi $t0,$zero,400
	div $s0,$t0
	mfhi $t1
	bnez $t1, IsLeapYear.False #yy%400 != 0 return 0
	j  IsLeapYear.True
IsLeapYear.False:
	addi $v1,$zero,0
	j IsLeapYear.end

IsLeapYear.True:
	addi $v1,$zero,1
	j IsLeapYear.end
#Ket thuc
IsLeapYear.end:

	lw $ra,($sp)
	lw $s0,4($sp)
	lw $a0,8($sp)
	addi $sp,$sp,12
	jr $ra
		#ket thuc ham kiem tra nam nhuan

#_______________________________________________________________________________________________
#Kiem tra nam nhuan:
	#Tra ve  la 0 hoac 1 luu trong $v1
LeapYear:
		
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $a0,8($sp)

	jal Year
	move $a0,$v1	#Year
	jal IsLeapYear
		#tra ket qua o $v1

#Ket thuc
LeapYear.end:
			
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $a0,8($sp)
	addi $sp,$sp,12
	jr $ra
		#ket thuc ham kiem tra nam nhuan


#____________________________________________________________________________________________________
#4. Cho bi?t ngày v?a nh?p là ngày th? m?y trong tu?n
#Tra ve ket qua trong $v1
Weekday:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $a0,16($sp)
	jal Day
	move $s0,$v1	#Day
	jal Month
	move $s1,$v1	#Month
	jal Year
	move $s2,$v1	#Year

	jal NumDay
	move $t0,$v1 	#luu so ngay cach 1/1/1 la
				# Tinh
	
	addi $t1,$zero,7
	div $t0,$t1
	mfhi $t0
	addi $t1,$zero,4
	mul $t0,$t0,$t1
	la $t1,Week
	add $t0,$t0,$t1
	lw $a0,0($t0)

	move $v1,$a0
	

Weekday.end:
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $a0,16($sp)
	addi $sp,$sp,20
	jr $ra

#________________________________________________________________________________________
#5 cho biet  ngay vua nh?p là ngày th? bao nhiêu t? 1/1/1
#Ket qua tra ve thong qua $v1
NumDay:
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	

	jal Day
	move $s0,$v1	#Day
	jal Month
	move $s1,$v1	#Month
	jal Year
	move $s2,$v1	#Year
	
	#if (month < 3) {
	#	year--;
	#	month += 12;
	#}
	#return 365 * year + year / 4 - year / 100 + year / 400 + (153 * month - 457) / 5 + day - 306;
	addi $t0,$zero,3
	addi $t1,$zero,1
	addi $t2,$zero,12
	bge $s1,$t0, NumDay.TinhNgay
	sub $s2,$s2,$t1
	add $s1,$s1,$t2
NumDay.TinhNgay:
		#365 * year
	addi $t1,$zero,365
	mult $s2,$t1
	mflo $t0
		#year / 4 
	addi $t1,$zero,4
	div $s2,$t1
	mflo $t1
	add $t0,$t0,$t1
		#year / 100
	addi $t1,$zero,100
	div $s2,$t1
	mflo $t1
	sub $t0,$t0,$t1
		#year / 400
	addi $t1,$zero,400
	div $s2,$t1
	mflo $t1
	add $t0,$t0,$t1
		#(153 * month - 457) / 5
	addi $t1,$zero,153
	mult $s1,$t1
	mflo $t2
	addi $t1,$zero,457
	sub $t2,$t2,$t1
	addi $t1,$zero,5
	div $t2,$t1
	mflo $t1
	add $t0,$t0,$t1
		#day
	add $t0,$t0,$s0
		#-306
	addi $t1,$zero,307
	sub $t0,$t0,$t1

	#addi $t0,$t0,1
	move $v1,$t0	#Ket qua ? $v1

NumDay.end:
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addi $sp,$sp,16
	jr $ra

#__________________________________________________________________________________________________________________
### Ham tinh ra can chi
# tra ra dia chi can va chi lan luot $v1,$v0
CanChi:

	addi $sp,$sp,-8
	sw $ra,($sp)
	sw $s0,4($sp)
	
	jal Year
	move $s0,$v1	#Year
		
		#tinh can
	addi $t0,$zero,6
	add $t1, $s0,$t0
	addi $t0,$zero,10
	div $t1,$t0
	mfhi $t1
	la $t3,CAN 	#Luu dia chi array
	addi $t2,$zero,4
	mul $t2,$t2,$t1
	add $t3,$t3,$t2
	lw $a0,0($t3)
	move $v1,$a0	# luu can vao $v1
	
		#tinh chi
	addi $t0,$zero,8
	add $t1, $s0,$t0
	addi $t0,$zero,12
	div $t1,$t0
	mfhi $t1
	la $t3,CHI 	#Luu dia chi array
	addi $t2,$zero,4
	mul $t2,$t2,$t1
	add $t3,$t3,$t2
	lw $a0,0($t3)
	move $v0,$a0	#Luu Chi vào $v0
	
CanChi.end:	
	lw $ra,($sp)
	lw $s0,4($sp)
	
	addi $sp,$sp,8
	jr $ra
#		=======================================
#Khong truyen vao. Lay truoc tiep tu bien dd1,mm1,yy1....
#Gia tri tra ve luu trong $v1

DateDiff:
	addi $sp,$sp,-24
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $s4,20($sp)
	move $s3,$a0
	move $s4, $a1
	#tinh ngaytu chuoi time1 den 1/1/1
	move $a0,$s3
	jal NumDay
	move $s0,$v1

		# luu no vô time1 luôn :v	
	
		#tinh ngaytu chuoi time2 den 1/1/1
	move $a0,$s4
	jal NumDay
	move $s1,$v1
	
	sub $s2,$s1,$s0		#Khoang cach 2 ngay
	
	bge $s2,0,DateDiff.end
	sub $s2,$zero,$s2
	
	
DateDiff.end:
	move $v1,$s2
	
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $s4,20($sp)
	addi $sp,$sp,24
	jr $ra

#---------------------------------------------------------------------------------------
#ket qua trong $v1 và $v0

TwoLeapYear:
	addi $sp,$sp,-36
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $s4,20($sp)
	sw $s5,24($sp)
	sw $s6,28($sp)
	sw $a0,32($sp)

	jal Year
	move $s0,$v1
	move $s1,$s0
	blt $s0,4,TwoLeapYear.Near0

TwoLeapYear.Loop1:
	addi $t1,$zero,1
	add $s1,$s1,$t1
	move $a0,$s1
	jal IsLeapYear
	move $t1,$v1
	beqz $t1,TwoLeapYear.Loop1

	move $s2,$s1
TwoLeapYear.Loop2:
	addi $t1,$zero,1
	add $s2,$s2,$t1
	move $a0,$s2
	jal IsLeapYear
	move $t1,$v1
	beqz $t1,TwoLeapYear.Loop2
	
	move $s3,$s0
TwoLeapYear.Loop3:
	addi $t1,$zero,-1
	add $s3,$s3,$t1
	move $a0,$s3
	jal IsLeapYear
	move $t1,$v1
	beqz $t1,TwoLeapYear.Loop3

	move $s4,$s3
TwoLeapYear.Loop4:
	addi $t1,$zero,-1
	add $s4,$s4,$t1
	move $a0,$s4
	jal IsLeapYear
	move $t1,$v1
	beqz $t1,TwoLeapYear.Loop4

	addi $t0,$zero,10
	div $s0,$t0
	mflo $t1
	mul $t1,$t1,$t0
	move $a0,$t1
	jal IsLeapYear
	beq $v1,1,TwoLeapYear.Stand

	addi $t0,$zero,100
	div $s0,$t0
	mfhi $t0
	
	beq $t0,2,TwoLeapYear.Year234
	beq $t0,3,TwoLeapYear.Year234
	beq $t0,4,TwoLeapYear.Year234

	beq $t0,6,TwoLeapYear.Year67
	beq $t0,7,TwoLeapYear.Year67
TwoLeapYear.Stand:
	move $s5,$s1
	move $s6,$s3
	j TwoLeapYear.end
TwoLeapYear.Year234:
	move $s5,$s1
	move $s6,$s2
	j TwoLeapYear.end

TwoLeapYear.Year67:
	move $s5,$s3
	move $s6,$s4
	j TwoLeapYear.end
TwoLeapYear.Near0:
	li $s5,4
	li $s6,8
	j TwoLeapYear.end
TwoLeapYear.end:	
	move $v1,$s5 # nam nhuan thu 1
	move $v0,$s6 # nam nhuan thu 2

	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $s4,20($sp)
	lw $s5,24($sp)
	lw $s6,28($sp)
	lw $a0,32($sp)

	addi $sp,$sp,36
	jr $ra



#_________________________$$$$$$$$$$$$$$$$$$$$		CAC HAM SU LI FILE	$$$$$$$$$$$$$$$$$$$_____________________________
####   			
ReadWriteFile:
#$s1 luu file decritor input
#$s2 luu file decritor output
	addi $sp,$sp,-24
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	

		#open file input.txt
	li $v0,13
	la $a0,file_in
	li $a1,0
	syscall
	move $a0,$v0
		#read data from file
	la $a1, buffer
	li $a2, 22
	li $v0,14
	syscall
		#close file
	move $a0,$s1
	li $v0,16
	syscall
		#open file output.txt
	li $v0,13
	la $a0,file_out
	li $a1,1
	syscall
	move $s3,$v0 #save ... Gui con tro file
		
	la 	$a0,buffer
	jal	SliptTime1Time2
	move	$s1,$v1
	move	$s2,$v0
		
	
	


	beq	$s1,$s2,ReadWriteFile.Check
	beq	$s2,0,ReadWriteFile.NoValidTime_2
	beq	$s1,0,ReadWriteFile.NoValidTime_1
ReadWriteFile.NoValidTime_1:

		move $a0,$s3
		la $a1,LineNote1
		jal fputs
		j ReadWriteFile.end

ReadWriteFile.NoValidTime_2:
		
		move $a0,$s3
		la $a1,LineNote2
		jal fputs
		j ReadWriteFile.end

		
ReadWriteFile.Check:
		beq $s2,1,ReadWriteFile.Process
		move $a0,$s3
		la $a1,LineNote3
		jal fputs
		j ReadWriteFile.end
ReadWriteFile.Process:
	la $a0, Time_1
	jal Day
	move $s0,$v1
	jal Month
	move $a1,$v1
	jal Year
	move $a2,$v1
	move $a0,$s0
	la $a3, Time_1
	jal Date
	
	la $a0, Time_2
	jal Day
	move $s0,$v1
	jal Month
	move $a1,$v1
	jal Year
	move $a2,$v1
	move $a0,$s0
	la $a3, Time_2
	jal Date
			#Cau 1
		move $a0,$s3
		la $a1,Line1
		jal fputs
		move $a0,$s3
		la $a1,Time_1
		jal fputs
			#Cau 2A
	
		move $a0,$s3
		la $a1,Line2A
		jal fputs

		move $a0,$s3
		la $a1,Time_1
		jal fputs
			#Cau 2B
	la $a0,Time_1
	li $a1,1
	la $a2,stringType
	jal Convert
		move $a0,$s3
		la $a1,Line2B
		jal fputs

		move $a0,$s3
		la $a1,stringType
		jal fputs

			#Cau 2C
	la $a0,Time_1
	li $a1,2
	la $a2,stringType
	jal Convert
		move $a0,$s3
		la $a1,Line2C
		jal fputs
		move $a0,$s3
		la $a1,stringType
		jal fputs
			#Cau 3
	la	 $a0,Time_1
	jal Year
	move	 $a0,$v1
	jal 	IntToString
	la	 $a0,Time_1
	jal	LeapYear
	move $s1,$v1
	beq $s1,1,ReadWriteFile.Process_IsLeapYear
			move $a0,$s3
			la $a1,Line3
			jal fputs
			move $a0,$s3
			la $a1,_IntToString
			jal fputs
			move $a0,$s3
			la $a1,Cau3_0
			jal fputs
			

		j ReadWriteFile.Process_Continue
ReadWriteFile.Process_IsLeapYear:
			move $a0,$s3
			la $a1,Line3
			jal fputs
			move $a0,$s3
			la $a1,_IntToString
			jal fputs
			move $a0,$s3
			la $a1,Cau3_1
			jal fputs

ReadWriteFile.Process_Continue:
			#Cau 4
	la $a0,Time_1
	jal Weekday
	move $s0,$v1	
		move $a0,$s3
		la $a1,Line4
		jal fputs
		move $a0,$s3
		la $a1,Time_1
		jal fputs	
		move $a0,$s3
		la $a1,_la
		jal fputs
		move $a0,$s3
		move $a1,$s0
		jal fputs
			#Cau 5
	la $a0,Time_1
	jal NumDay

	move $a0,$v1
	jal IntToString
		move $a0,$s3
		la $a1,Line5
		jal fputs
		move $a0,$s3
		la $a1,Time_1
		jal fputs	
		
		move $a0,$s3
		la $a1,_la
		jal fputs
		move $a0,$s3
		la $a1,_IntToString
		jal fputs
		move $a0,$s3
		la $a1,_ngay
		jal fputs	
			#Cau 6
	la	 $a0,Time_1
	jal Year
	move	 $a0,$v1
	jal 	IntToString

	la $a0,Time_1
	jal CanChi
	move $s1,$v1
	move $s2,$v0
		move $a0,$s3
		la $a1,Line6
		jal fputs
		move $a0,$s3
		la $a1,_IntToString
		jal fputs	
		
		move $a0,$s3
		la $a1,_lanam
		jal fputs
		move $a0,$s3
		move $a1,$s1
		jal fputs
		move $a0,$s3
		la $a1,_space
		jal fputs
		move $a0,$s3
		move $a1,$s2
		jal fputs
		
			#Cau 7
	la $a0,Time_1
	la $a1,Time_2
	jal DateDiff

	move $a0,$v1
	jal IntToString
		move $a0,$s3
		la $a1,Line7
		jal fputs
		move $a0,$s3
		la $a1,Time_1
		jal fputs	
		move $a0,$s3
		la $a1,_denngay
		jal fputs
		move $a0,$s3
		la $a1,Time_2
		jal fputs
		move $a0,$s3
		la $a1,_la
		jal fputs
		move $a0,$s3
		la $a1,_IntToString
		jal fputs
		move $a0,$s3
		la $a1,_ngay
		jal fputs
			#Cau 8
	
	la	 $a0,Time_1
	jal Year
	move	 $a0,$v1
	jal 	IntToString
			move $a0,$s3
		la $a1,Line8
		jal fputs
		move $a0,$s3
		la $a1,_IntToString
		jal fputs	
		
		move $a0,$s3
		la $a1,_nhatla
		jal fputs
	la	 $a0,Time_1
	jal TwoLeapYear
	move $s1,$v0
	move $s2,$v1
	
	move $a0,$s1
	jal IntToString
	
		move $a0,$s3
		la $a1,_IntToString
		jal fputs
		move $a0,$s3
		la $a1,_va
		jal fputs
	move $a0,$s2
	jal IntToString
		move $a0,$s3
		la $a1,_IntToString
		jal fputs
		
ReadWriteFile.end:
	#close file
	move $a0,$s3
	li $v0,16
	syscall
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addi $sp,$sp,24
	jr $ra


#ham,,,,
fputs:
	addi $sp,$sp,-4
	sw $ra,0($sp)

    move    $a2,$a1                 # get buffer address
fputs.loop:
    lb      $t0,0($a2)              # get next character -- is it EOS?
    addiu   $a2,$a2,1               # pre-increment pointer
    bnez    $t0,fputs.loop          # no, loop

    subu    $a2,$a2,$a1             # get strlen + 1
    subiu   $a2,$a2,1               # compensate for pre-increment

    move    $a0,$s6                 # get file descriptor
    li      $v0,15                  # syscall for write to file
    syscall

	lw $ra,0($sp)
	addi $sp,$sp,4
    jr      $ra                     # return



#---------------------------------------------------------------------------------
CheckStringTime:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $a0,4($sp)
	sw $s0,8($sp)

	lb $t0,0($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,0($a0)
	bgt $t0,'9',CheckStringTime.False
	

	lb $t0,1($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,1($a0)
	bgt $t0,'9',CheckStringTime.False


	lb $t0,3($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,3($a0)
	bgt $t0,'9',CheckStringTime.False
	
	lb $t0,4($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,4($a0)
	bgt $t0,'9',CheckStringTime.False


	lb $t0,6($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,6($a0)
	bgt $t0,'9',CheckStringTime.False
	
	lb $t0,7($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,7($a0)
	bgt $t0,'9',CheckStringTime.False
	
	lb $t0,8($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,8($a0)
	bgt $t0,'9',CheckStringTime.False
	
	lb $t0,9($a0)
	blt $t0,'0',CheckStringTime.False
	lb $t0,9($a0)
	bgt $t0,'9',CheckStringTime.False
	
	jal  Day
	move $s0,$v1
	jal  Month
	move $a1,$v1
	jal  Year

	move $a2,$v1
	move $a0,$s0

	jal Valid
	j	CheckStringTime.end
CheckStringTime.False:
	addi $v1,$zero,0

CheckStringTime.end:
	lw $ra,($sp)
	lw $a0,4($sp)
	lw $s0,8($sp)

	addi $sp,$sp,12
	jr $ra

# $v0 =0 false Time_1, $v1 =0  false Time_2 (Khong hop le ay)
SliptTime1Time2:
	addi $sp,$sp,-24
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $a0,20($sp)

	move $s3,$a0
	la $s1,Time_1

	lb   $t1,0($s3)
	sb   $t1,0($s1)
	lb   $t1,1($s3)
	sb   $t1,1($s1)
	lb   $t1,2($s3)
	sb   $t1,2($s1)
	lb   $t1,3($s3)
	sb   $t1,3($s1)
	lb   $t1,4($s3)
	sb   $t1,4($s1)
	lb   $t1,5($s3)
	sb   $t1,5($s1)
	lb   $t1,6($s3)
	sb   $t1,6($s1)
	lb   $t1,7($s3)
	sb   $t1,7($s1)
	lb   $t1,8($s3)
	sb   $t1,8($s1)
	lb   $t1,9($s3)
	sb   $t1,9($s1)
	addi $t1,$zero,'\0'
	sb   $t1,10($s1)
	
	la $s2,Time_2	
	lb   $t2,12($s3)
	sb   $t2,0($s2)
	lb   $t2,13($s3)
	sb   $t2,1($s2)
	lb   $t2,14($s3)
	sb   $t2,2($s2)
	lb   $t2,15($s3)
	sb   $t2,3($s2)
	lb   $t2,16($s3)
	sb   $t2,4($s2)
	lb   $t2,17($s3)
	sb   $t2,5($s2)
	lb   $t2,18($s3)
	sb   $t2,6($s2)
	lb   $t2,19($s3)
	sb   $t2,7($s2)
	lb   $t2,20($s3)
	sb   $t2,8($s2)
	lb   $t2,21($s3)
	sb   $t2,9($s2)
	addi $t2,$zero,'\0'
	sb   $t2,10($s2)
	#sw $s2,Time_2

	
	la $a0,Time_1
	jal CheckStringTime
	move $s1,$v1

	la $a0,Time_2
	jal CheckStringTime
	move $s2,$v1

SliptTime1Time2.end:
	move $v1,$s1
	move $v0,$s2
	
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $a0,20($sp)

	addi $sp,$sp,24
	jr $ra


#-----------------------------------------------
IntToString:	
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	
	move $s0,$a0
	addi $t0,$zero,0
	la 	$s1,_IntToStringTemp
	addi 	$t1,$s1,0 #load dia chi
	addi $t2,$zero,0	# i=0
	addi $t3,$zero,10
IntToString.Loop1:
	addi $t2,$t2,1	# i++

	div $s0,$t3
	mfhi $t0

	addi $t0,$t0,'0'
	sb $t0,0($t1)
	addi $t1,$t1,1
	mflo $s0	
	bne $s0,0,IntToString.Loop1 #!= 0
	
			#ki tu ket thuc
	addi $t0,$zero,'\0'
	sb $t0,0($t1)
	

	addi $t2,$t2,1
	la $s2,_IntToString
IntToString.Loop2:
	addi $t2,$t2,-1
	addi $t1,$t1,-1
	lb $t0,0($t1)
	sb $t0,0($s2)
	addi $s2,$s2,1
	bne $t2,0,IntToString.Loop2

	addi $t0,$zero,'\0'
	sb $t0,0($s2)

	la $v1,_IntToString
IntToString.end:
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addi $sp,$sp,16
	jr $ra
