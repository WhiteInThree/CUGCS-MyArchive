/*#include <gl/glut.h>
void Initial()
{
	glEnable(GL_DEPTH_TEST);       // ������Ȳ���
	glClearColor(1.0f, 1.0f, 1.0f, 1.0f );	//����Ϊ��ɫ
}

void ChangeSize(int w, int h)
{
	if(h == 0)	h = 1;
    glViewport(0, 0, w, h);               // ���������ߴ�
	glMatrixMode(GL_PROJECTION);    // ָ����ǰ����ͶӰ�����ջ
	glLoadIdentity();                   // ����ͶӰ����

	GLfloat fAspect;
	fAspect = (float)w/(float)h;            // ���������Ŀ�߱�
	gluPerspective(45.0, fAspect, 1.0, 500.0); // ָ��͸��ͶӰ�Ĺ۲�ռ�
	glMatrixMode(GL_MODELVIEW);   
	glLoadIdentity();
}

void Display(void)
{
	static float fElect1 = 0.0f;           // ��ԭ����ת�ĽǶ�
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); //�����ɫ����Ȼ�����

	glMatrixMode(GL_MODELVIEW);  // ָ����ǰ����ģ����ͼ�����ջ
	glLoadIdentity();                  // ����ģ����ͼ����
	glTranslatef(0.0f, 0.0f, -250.0f);	   //��ͼ����z�Ḻ���ƶ�

	glColor3f(1.0f, 0.0f, 0.0f);
	glutSolidSphere(12.0f, 15, 15);      // ���ƺ�ɫ��ԭ��

	glColor3f(0.0f, 0.0f, 0.0f);
	glPushMatrix();                  // ���浱ǰ��ģ����ͼ����
	glRotatef(fElect1, 0.0f, 1.0f, 0.0f);   // ��y����תһ���ĽǶ�
	glTranslatef(90.0f, 0.0f, 0.0f);       // ƽ��һ�ξ���
	glutSolidSphere(6.0f, 15, 15);       // ������һ������
	glPopMatrix();       // �ָ�ģ����ͼ����
	glPushMatrix();      // ���浱ǰ��ģ����ͼ����
	glRotatef(45.0f, 0.0f, 0.0f, 1.0f);     //��z����ת45��
	glRotatef(fElect1, 0.0f, 1.0f, 0.0f);  
	glTranslatef(-70.0f, 0.0f, 0.0f);  
	glutSolidSphere(6.0f, 15, 15);       // �����ڶ�������
	
	glPopMatrix();        // �ָ�ģ����ͼ����
	glPushMatrix();       // ���浱ǰ��ģ����ͼ����
	glRotatef(-45.0f,0.0f, 0.0f, 1.0f);    //��z����ת-45��
	glRotatef(fElect1, 0.0f, 1.0f, 0.0f);
	glTranslatef(0.0f, 0.0f, 60.0f);
	glutSolidSphere(6.0f, 15, 15);      // ��������������
	glPopMatrix();
	
	fElect1 += 10.0f;     // ������ת��������������Ч��
	if(fElect1 > 360.0f)	fElect1 = 10.0f;

	glutSwapBuffers();
}

void TimerFunc(int value)
{
    glutPostRedisplay();
    glutTimerFunc(100, TimerFunc, 1);
}

int main(int argc, char* argv[])
{
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH);
	glutCreateWindow("���Ӷ���ʾ��");
	glutReshapeFunc(ChangeSize);
	glutDisplayFunc(Display);
    glutTimerFunc(500, TimerFunc, 1);     //ָ����ʱ���ص�����
	Initial();
	glutMainLoop();
	return 0;
}*/
/*��������My_first_program.cpp

void display(void)
{
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);  //����������ɫ
	glClear(GL_COLOR_BUFFER_BIT);   //ˢ����ɫ��������

	glFlush();   //����ˢ��������кͻ�������ʹ������δ��ִ�е�OpenGL����õ�ִ�У�
}
int main(int argc, char* argv[])
{
//	UNREFERENCED_PARAMETER(hPrevInstance);
//	UNREFERENCED_PARAMETER(lpCmdLine);
 
//	char *argv[] = {"hello ", " "};
//	int argc = 2; // must/should match the number of strings in argv

	glutInit(&argc, argv);    //��ʼ��GLUT�⣻
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);   //������ʾģʽ�������壬��ɫ���ͣ�
	glutInitWindowSize(500, 500); //��ͼ���ڴ�С
	glutInitWindowPosition(1024 / 2 - 250, 768 / 2 - 250); //�������Ͻ�����Ļ��λ��
	glutCreateWindow("hello");  //�������ڣ�����Ϊ��hello����
	glutDisplayFunc(display);  //���ڻ��Ƶ�ǰ���ڣ�
	glutMainLoop();   //��ʾ��ʼ���г������ڳ���Ľ�β��
	return 0;
}*/
    #include <GL/glut.h>
   #include <stdlib.h>
   #include <math.h>

   /*  Set initial display-window size. */
   GLsizei winWidth = 600, winHeight = 600;  

   /*  Set range for world coordinates.  */
   GLfloat xwcMin = 0.0, xwcMax = 225.0;
   GLfloat ywcMin = 0.0, ywcMax = 225.0;

   class wcPt2D {
      public:
         GLfloat x, y;
   };

   typedef GLfloat Matrix3x3 [3][3];

   Matrix3x3 matComposite;

   const GLdouble pi = 3.14159;

   void init (void)
   {
      /*  Set color of display window to white.  */
      glClearColor (1.0, 1.0, 1.0, 0.0);
   }

   /* Construct the 3 by 3 identity matrix. */
   void matrix3x3SetIdentity (Matrix3x3 matIdent3x3)
   {
      GLint row, col;

      for (row = 0; row < 3; row++)
         for (col = 0; col < 3; col++)
            matIdent3x3 [row][col] = (row == col);
   }

   /* Premultiply matrix m1 times matrix m2, store result in m2. */
   void matrix3x3PreMultiply (Matrix3x3 m1, Matrix3x3 m2)
   {
      GLint row, col;
      Matrix3x3 matTemp;

      for (row = 0; row < 3; row++)
         for (col = 0; col < 3 ; col++)
            matTemp [row][col] = m1 [row][0] * m2 [0][col] + m1 [row][1] *
                               m2 [1][col] + m1 [row][2] * m2 [2][col];

      for (row = 0; row < 3; row++)
         for (col = 0; col < 3; col++)
            m2 [row][col] = matTemp [row][col];
   }

   void translate2D (GLfloat tx, GLfloat ty)
   {
      Matrix3x3 matTransl;

      /*  Initialize translation matrix to identity.  */
      matrix3x3SetIdentity (matTransl);  

      matTransl [0][2] = tx;
      matTransl [1][2] = ty;

      /*  Concatenate matTransl with the composite matrix.  */
      matrix3x3PreMultiply (matTransl, matComposite);
   }

   void rotate2D (wcPt2D pivotPt, GLfloat theta)
   {
      Matrix3x3 matRot;

      /*  Initialize rotation matrix to identity.  */
      matrix3x3SetIdentity (matRot);    

      matRot [0][0] = cos (theta);
      matRot [0][1] = -sin (theta);
      matRot [0][2] = pivotPt.x * (1 - cos (theta)) + 
                           pivotPt.y  * sin (theta);
      matRot [1][0] = sin (theta);
      matRot [1][1] = cos (theta);
      matRot [1][2] = pivotPt.y * (1 - cos (theta)) - 
                           pivotPt.x  * sin (theta);

      /*  Concatenate matRot with the composite matrix.  */
      matrix3x3PreMultiply (matRot, matComposite);
   }

   void scale2D (GLfloat sx, GLfloat sy, wcPt2D fixedPt)
   {
      Matrix3x3 matScale;

      /*  Initialize scaling matrix to identity.  */
      matrix3x3SetIdentity (matScale);    

      matScale [0][0] = sx;
      matScale [0][2] = (1 - sx) * fixedPt.x;
      matScale [1][1] = sy;
      matScale [1][2] = (1 - sy) * fixedPt.y;

      /*  Concatenate matScale with the composite matrix.  */
      matrix3x3PreMultiply (matScale, matComposite);
   }

   /* Using the composite matrix, calculate transformed coordinates. */
   void transformVerts2D (GLint nVerts, wcPt2D * verts)
   {
      GLint k;
      GLfloat temp;

      for (k = 0; k < nVerts; k++) {
         temp = matComposite [0][0] * verts [k].x + matComposite [0][1] *
                verts [k].y + matComposite [0][2];
         verts [k].y = matComposite [1][0] * verts [k].x + matComposite [1][1] *
                     verts [k].y + matComposite [1][2];
            verts [k].x = temp;
      }
   }

   void triangle (wcPt2D *verts)
   {
       GLint k;

       glBegin (GL_TRIANGLES);
          for (k = 0; k < 3; k++)
             glVertex2f (verts [k].x, verts [k].y);
       glEnd ( );
   }

   void displayFcn (void)
   {
      /*  Define initial position for triangle.  */
      GLint nVerts = 3;
      wcPt2D verts [3] = { {50.0, 25.0}, {150.0, 25.0}, {100.0, 100.0} };

      /*  Calculate position of triangle centroid.  */
      wcPt2D centroidPt;

      GLint k, xSum = 0, ySum = 0;
      for (k = 0; k < nVerts;  k++) {
         xSum += verts [k].x;
         ySum += verts [k].y;
      }
      centroidPt.x = GLfloat (xSum) / GLfloat (nVerts);
      centroidPt.y = GLfloat (ySum) / GLfloat (nVerts);

      /*  Set geometric transformation parameters.  */
      wcPt2D pivPt, fixedPt;
      pivPt = centroidPt;
      fixedPt = centroidPt;

      GLfloat tx = 0.0, ty = 100.0;
      GLfloat sx = 0.5, sy = 0.5;
      GLdouble theta = pi/2.0;

      glClear (GL_COLOR_BUFFER_BIT);   //  Clear display window.

      glColor3f (0.0, 0.0, 1.0);      //  Set initial fill color to blue.
      triangle (verts);               //  Display blue triangle.

      /*  Initialize composite matrix to identity.  */
      matrix3x3SetIdentity (matComposite);

      /*  Construct composite matrix for transformation sequence.  */
      scale2D (sx, sy, fixedPt);   //  First transformation: Scale.
      rotate2D (pivPt, theta);     //  Second transformation: Rotate
      translate2D (tx, ty);        //  Final transformation: Translate.

      /*  Apply composite matrix to triangle vertices.  */
      transformVerts2D (nVerts, verts);

      glColor3f (1.0, 0.0, 0.0);  // Set color for transformed triangle.
      triangle (verts);           // Display red transformed triangle.

      glFlush ( );
   }

   void winReshapeFcn (GLint newWidth, GLint newHeight)
   {
      glMatrixMode (GL_PROJECTION);
      glLoadIdentity ( );
      gluOrtho2D (xwcMin, xwcMax, ywcMin, ywcMax);

      glClear (GL_COLOR_BUFFER_BIT);
   }


   void main (int argc, char ** argv)
   {
      glutInit (&argc, argv);
      glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB);
      glutInitWindowPosition (50, 50);
      glutInitWindowSize (winWidth, winHeight);
      glutCreateWindow ("Geometric Transformation Sequence");

      init ( );
      glutDisplayFunc (displayFcn);
      glutReshapeFunc (winReshapeFcn);

      glutMainLoop ( );
   }
