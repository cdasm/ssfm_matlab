


MatrixXd functionForRotationAndTransition(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4,d5;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	d5=var2(0,5);
	MatrixXd A0(1,1);
	double t0 ;
	t0 = b0+b1+b2+c0+c1+c2+d0+d1+d2+d3+d4+d5;
	return A0;
}


MatrixXd jacobianForRotationAndTransition(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4,d5;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	d5=var2(0,5);
	MatrixXd A0(1,6);
	A0(0,0) = 1.0;
	A0(0,1) = 1.0;
	A0(0,2) = 1.0;
	A0(0,3) = 1.0;
	A0(0,4) = 1.0;
	A0(0,5) = 1.0;
	return A0;
}


MatrixXd jacobianForPoint(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4,d5;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	d5=var2(0,5);
	MatrixXd A0(1,3);
	A0(0,0) = 1.0;
	A0(0,1) = 1.0;
	A0(0,2) = 1.0;
	return A0;
}


MatrixXd functionForRotationAndTransitionUnitLength(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	MatrixXd A0(1,1);
	double t2 ,t0 ;
	t2 = cos(d3);
	t0 = b0+b1+b2+c0+c1+c2+d0+d1+d2+sin(d3)+t2*cos(d4)+t2*sin(d4);
	return A0;
}


MatrixXd jacobianForRotationAndTransitionUnitLength(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	MatrixXd A0(1,5);
	double t2 ,t3 ,t4 ,t5 ;
	t2 = sin(d3);
	t3 = cos(d3);
	t4 = cos(d4);
	t5 = sin(d4);
	A0(0,0) = 1.0;
	A0(0,1) = 1.0;
	A0(0,2) = 1.0;
	A0(0,3) = t3-t2*t4-t2*t5;
	A0(0,4) = t3*t4-t3*t5;
	return A0;
}


MatrixXd jacobianForPointUnitLength(const MatrixXd& var0,const MatrixXd& var1,const MatrixXd& var2)
{
	double b0,b1,b2;
	b0=var0(0,0);
	b1=var0(0,1);
	b2=var0(0,2);
	double c0,c1,c2;
	c0=var1(0,0);
	c1=var1(0,1);
	c2=var1(0,2);
	double d0,d1,d2,d3,d4;
	d0=var2(0,0);
	d1=var2(0,1);
	d2=var2(0,2);
	d3=var2(0,3);
	d4=var2(0,4);
	MatrixXd A0(1,3);
	A0(0,0) = 1.0;
	A0(0,1) = 1.0;
	A0(0,2) = 1.0;
	return A0;
}


