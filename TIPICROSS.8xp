:"David black"
ClrDraw
AxesOff
0->Xmin
94->Xmax
~62->Ymin
0->Ymax
Text(10,10,"Ti~Basic
Text(~1,17,10,"PICROSS
Text(24,14,"By David Black
Text(55,60,"|vBETA 0.9
Text(55,1,"Press 2[n][|d]
Repeat Ans=21
	getKey->K
End
Lbl MM
ClrDraw
Line(2,~1,93,~1
Line(1,~2,1,~61
Line(2,~62,93,~62
Line(94,~2,94,~61
Line(2,~11,93,~11
Line(6,~12,6,~61
Text(~1,3,3,"MAIN MENU
Text(14,8,"PLAY
Text(22,8,"HELP
Text(30,8,"QUIT
Text(38,8,"CUSTOM
Text(46,8,"SEND-TRADE
Text(54,8,"RECIEVE-TRADE
1->Y
Repeat K=21
	Line(4,~Y8-10,4,~Y8-8
	getKey->K
	sum(DeltaList(Ans={25,34->theta
	If Ans!=0
	Line(4,~Y8-10,4,~Y8-8,0
	Y+Ans(min(Y+Ans!={0,7->Y
End
1->X
If Y=1:Then
	Lbl PZ
	For(Q,~14,~60,~1
		Line(8,Q,63,Q,0
	End
	If X=1:Then
		Text(~1,3,3,"PUZZLES  
		Text(14,8,"SMILE    
		Text(22,8,"DONKEY     
		Text(30,8,"SNAKE
		Text(38,8,"BOW
		Text(46,8,"SANDWICH    "
	End
	If X=2:Then
		Text(14,8,"EAGLE      
		Text(22,8,"EYE
		Text(30,8,"TRIFORCE
		Text(38,8,"MUSIC               
		Text(46,8,"RANDOM                    
	End
	If X=3:Then
		Text(14,8,"SPIDER
		Text(22,8,"CUSTOM
		Text(30,8,"IMPORT
	End
	Text(54,12,X,"/3 PAGE
	1->Y
	Repeat K=21
		getKey->K
		sum(DeltaList(Ans={25,34->theta
		Line(4,~Y8-10,4,~Y8-8
		If Ans!=0
		Line(4,~Y8-10,4,~Y8-8,0
		Y+Ans(min(Y+Ans!={0,6->Y
		sum(DeltaList(K={24,26->theta
		If Ans!=0
		Line(7,~Y8-12,7,~Y8-8,0
		X+Ans(min(X+Ans!={0,4->X
		If theta!=0
		Goto PZ
	End
	If X=1:Then
		If Y=1
		{0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0->L1
		If Y=2
		{0,1,0,0,0,1,1,0,0,1,1,1,0,1,0,1,0,0,0,1,0,0,1,0,1,0,1,0,0,0,1,0,0,1,1,1,0,0,1,1,0,0,1,1,1,0,1,0,0,0,1,0,0,0,1,1,0,1,0,1,1,0,0,1,1,0->L1
		If Y=3
		{1,1,0,0,1,1,1,0,0,0,1,0,1,0,1,0,0,0,1,0,1,0,1,0,0,0,1,0,1,0,0,1,0,1,0,0,0,1,0,1,0,0,0,1,1,0,0,0,1,0,1,0,0,0,1,0,1,1,1,0,0,0,1,1,1,0->L1
		If Y=4
		{1,1,0,0,0,0,0,0,0,1,1,1,1,1,0,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,1,1->L1
		If Y=5
		{0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,0,1,0,1,0,1,0,0,0,1,0,1,0,1,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0->L1
	End
	If X=2:Then
		If Y=1
		{1,1,0,0,0,1,1,0,0,1,1,0,1,1,1,0,1,0,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0->L1
		If Y=2
		{0,0,0,1,1,1,1,1,0,0,0,0,1,1,0,1,1,0,0,1,1,0,1,0,1,0,1,1,1,0,1,0,1,1,0,1,0,1,1,1,0,1,0,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,1,1,0,0,0->L1
		If Y=3
		{0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,0,0,0,1,1,0,0,0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1->L1
		If Y=4
		{0,0,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,0,0,1,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,1,1,1,0,1,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,1,0->L1
		If Y=5:Then
			66->dim(L1
			For(S,1,66
				randInt(0,1->L1(S
			End
			DelVar S
		End
	End
	If X=3:Then
		If Y=1
		{1,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1,1,1,1,1,0,1,1,0,1,1,1,1,1,1,1,0,1,1,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0,1->L1
		If Y=2:Then
			UnArchive |LCUPI
			66->dim(|LCUPI
			|LCUPI->L1
			Archive |LCUPI
		End
		If Y=3:Then
			66->dim(|LIMPI
			UnArchive |LIMPI
			|LIMPI->L1
			Archive |LIMPI
		End
	End
	ClrDraw
	For(X,89,29,~6
		Line(X,~27,X,~62
	End
	For(Y,~57,~27,6
		Line(29,Y,94,Y
	End
	Line(1,~26,28,~26
	Line(28,~1,28,~26
	DelVar K
	92->X
	~60->Y
	ClrList L2
	66->dim(L2
	DelVar Z
	For(O,1,6
		ClrList L3:6->dim(L3
		1->C
		For(V,1,11
			If 1=L1(V+11(O-1
			L3(C)+1->L3(C)
			If V!=1:Then
				If 0=L1(V+11(O-1)) and 1=L1((V+11(O-1))-1
				C+1->C
			End
		End
		If L3(6)!=0:Then
			Text(O6+21,1,"111111
		Else
			If 0!=L3(5
			Text(O6+21,1,L3(1)," ",L3(2)," ",L3(3)," ",L3(4)," ",L3(5
			If (0!=L3(4))(0=L3(5
			Text(O6+21,1,L3(1)," ",L3(2)," ",L3(3)," ",L3(4)
			If (0!=L3(3))(0=L3(4
			Text(O6+21,1,L3(1)," ",L3(2)," ",L3(3)
			If (0!=L3(2))(0=L3(3
			Text(6O+21,1,L3(1)," ",L3(2
			If 0=L3(2
			Text(O6+21,1,L3(1
		End
	End
	For(V,1,11
		{0,0,0->L3
		1->C
		For(O,1,6
			If L1(V+11(O-1:Then
				Z+1->Z
			L3(C)+1->L3(C):End
			If O!=1:Then
				If (0=L1(V+11(O-1))V)(1=L1(V+11(O-2
				C+1->C
			End
		End
		If 0!=L3(3
		Text(20,V6+25,L3(3
		If 0!=L3(2
		Text(12,V6+25,L3(2
		Text(4,V6+25,L3(1
	End
	ClrList L3:DelVar V:DelVar O
	11->A:6->B:66->C:5->L
	DelVar theta
	Repeat K=45
		Text(1,1,"Life ",L
		getKey->K
		If L=0:Goto LO
		If theta=Z:Goto WI
If L2(C)!=0:Then:Pt-Off(X,Y:Else:Pt-On(X,Y:End
		If max(K={24,25,26,34:Then
			If max(K={24,26:Then
				If min(A+(K=26)-(K=24)!={0,12:Then
					Pt-Change(X,Y
					X+6(K=26)-6(K=24)->X:A+(K=26)-(K=24)->A:C-(K=24)+(K=26)->C
				End
			Else
				If min(B+(K=34)-(K=25)!={0,7:Then:Pt-Change(X,Y
					Y+6(K=25)-6(K=34)->Y:B+(K=34)-(K=25)->B:C-11(K=25)+11(K=34)->C
		End:End:End
		If K=22:Then
			If L2(C)=0:Then
				Line(X-1,Y+1,X+1,Y-1:Line(X+1,Y+1,X-1,Y-1
				1->L2(C)
			Else
				If L2(C)=1:Then
					Line(X-1,Y+1,X+1,Y-1,0
					Line(X-1,Y-1,X+1,Y+1,0
					0->L2(C
				End
			End
		End
		If K=21:Then
			If L2(C)=0:Then
				If 1=L1(C:Then
					For(V,~2,2
						For(W,~2,2
							Pt-On(X+V,Y+W
					End:End
					2->L2(C
					theta+1->theta
				Else
					Line(X-1,Y+1,X+1,Y-1:Line(X-1,Y-1,X+1,Y+1:1->L2(C)
					L-1->L
			End:End
	End:End
	Lbl WI
	If theta=Z:Then
		Text(1,1,"Winner!
		Text(8,1," PRESS 2ND TO CONTINUE.
		DelVar K
		Repeat K
			getKey->K
		End
		Goto MM
	End
	Lbl LO
	If L=0:Then
		Text(~1,1,1,"You lost!
		DelVar theta:DelVar Z:DelVar A:DelVar B
		For(theta,1,1000
		End
	End
	ClrDraw
	Goto MM
End
Line(7,~Y8-8,7,~Y8-12,0
If Y=2:Then
	Text(~1,3,3,"HELP
	1->X
	Lbl HE
	0->K
	For(Q,~14,~61,~1
		Line(8,Q,93,Q,0
	End
	If X=1:Then
		Text(14,8,"PICROSS IS PLAYED BY 
		Text(22,8,"FOLLOWING HINTS TO FORM 
		Text(30,8,"A PICTURE.
		Text(38,10,"2[n][|d]-MARK
		Text(46,10,"MODE-MARK AS EMPTY
		Text(54,10,"CLEAR-QUIT
	End
	If X=2:Then
		Text(14,8,"IF A ROW IS LABELED 1,1
		Text(22,8,"THAT MEANS THERE ARE 2
		Text(30,8,"SQUARES SEPERATED BY AT
		Text(38,8,"LEAST ONE SPACE
	End
	If X=3:Then
		Text(14,8,"IF A ROW IS LABELED 1,2
		Text(22,8,"THEN THERE IS A ONE BLOCK
		Text(30,8,"AND A GROUP OF TWO
		Line(17,~41,37,~41:Line(17,~46,37,~46
		For(Q,17,37,5
			Line(Q,~41,Q,~46
			Text(41,7,"1,2
		End:
		For(Q,18,21
	Line(Q,~41,Q,~46:End:For(Q,28,37):Line(Q,~42,Q,~45):End
	End
	Repeat K=21
		getKey->K
		If K=24 or K=26:Then:X+(K=26)-(K=24)->X
			If X=0 or X=4
			X-(K=26)+(K=24)->X
		Goto HE:End
	End
End
If Y=3:Then
ClrDraw:ClrHome:Stop:"":End
If Y=4:Then
	ClrDraw
	For(Y,0,~48,~8
		Line(0,Y,88,Y
	End
	For(X,0,88,8
		Line(X,0,X,~48
	End
	UnArchive |LCUPI
	66->dim(|LCUPI
	1->B:1->A:0->C
	For(Q,~4,~44,~8
		For(R,4,84,8
			C+1->C
			If 0!=|LCUPI(C:Then
				For(theta,~3,3
					Line(R-3,Q+theta,R+3,Q+theta
			End:End
			A+1->A
		End
		1->A
	B+1->B:End
	1->A:1->B:4->X:~4->Y:1->C
	Text(~1,50,1,"CUSTOM
	Text(57,1,"PICROSS
	Text(50,40,"CLEAR:QUIT
	Text(56,40,"VARS:QUIT
	Text(56,40,"
	Repeat K=45 or K=45
		If |LCUPI(C)=0:Then
	Pt-On(X,Y:Else:Pt-Off(X,Y:End
		getKey->K
		If max(K={24,25,26,34,21:Then
			If max(K={24,26:Then
				If min(A+(K=26)-(K=24)!={0,12:Then
					Pt-Change(X,Y
					X+8(K=26)-8(K=24)->X:A+(K=26)-(K=24)->A
					C+(K=26)-(K=24->C
				End
			Else
				If min(B+(K=34)-(K=25)!={0,7:Then
					Pt-Change(X,Y
					Y+8(K=25)-8(K=34)->Y:B+(K=34)-(K=25)->B
					C+11(K=34)-11(K=25)->C
				End
				If K=21:Then
					|LCUPI(C)=0->S
					For(Q,~3,3
						Line(X-3,Y+Q,X+3,Y+Q,(0-S)
					End
					S->|LCUPI(C
			End:End
		End
	End
	If K=45:Then
		Text(~1,1,1,"SAVED!"
	End
	Archive |LCUPI
	Goto MM
End
If Y=5:Then
	ClrHome
	1->B
	UnArchive |LCUPI
	|LCUPI->L1
	Archive |LCUPI
	DelVar A
	Output(1,1,"Transmitting...
	Pause 
	Goto MM
End
If Y=6:Then
	ClrHome
	DelVar B
	Output(1,1,"Recieving...
	GetCalc(L1
	GetCalc(B
	If B=0:Then
		Output(2,1,"FAILED!
	Pause :Else
		L1->|LIMPI
		Archive |LIMPI
		Output(2,1,"SUCCESS!
		Pause 
	End
	ClrList L1
	DelVar B
	DelVar A
	Goto MM
End
