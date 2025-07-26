#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>

void multMat1( int n, float *A,float *B, float *C ) {
    int i,j,k;
    //ijk
    for(i=0;i<n;i++)
        for(j=0;j<n;j++)
            for(k=0;k<n;k++)
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}


void multMat2( int n,float *A,float *B, float *C ) {
    int i,j,k;
    //ikj
    for(i=0;i< n; i++ )
        for(k=0;k<n;k++)
            for(j=0;j<n;j++)
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}

void multMat3( int n,float *A,float *B, float *C ) {
    int i,j,k;
    //jik
    for(j=0;j<n;j++)
        for(i=0;i< n; i++ )
            for(k=0;k<n;k++)
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}

void multMat4( int n,float *A,float *B,float *C ) {
    int i,j,k;
    //jki
    for(j=0;j< n; j++ )
        for(k=0;k<n;k++)
            for(i=0;i<n;i++)
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}

void multMat5( int n,float *A,float *B,float *C ) {
    int i,j,k;
    //kij
    for(k=0;k<n;k++)
        for(i=0;i< n; i++ )
            for(j=0;j<n;j++)
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}

void multMat6( int n,float *A,float *B,float *C ) {
    int i,j,k;
    //kji
    for(k=0;k<n;k++)
        for(j=0;j<n;j++)
            for(i=0;i< n; i++ )
                C[i+j*n] += A[i+k*n] *B[k+j*n] ;
}

int main( int argc, char **argv ) {
    int nmax = 1024,i,n;

    void (*orderings[]) (int,float *,float *,float *)= { &multMat1 , &multMat2, &multMat3,&multMat4 , &multMat5 , &multMat6} ;
    char *names[] = {"ijk","ikj", "jik" ,"jki", "kij", "kji"};
    
    float *A = (float *)malloc( nmax*nmax * sizeof (float)) ;
    float *B = (float *)malloc( nmax*nmax * sizeof (float)) ;
    float *C = (float *)malloc( nmax*nmax * sizeof (float)) ;
    
    struct timeval start, end;

    //用随机数填充矩阵
    for(i=0;i<nmax*nmax;i++) A[i]=drand48() *2-1;
    for(i=0;i<nmax*nmax;i++) B[i]=drand48() *2-1;
    for(i=0;i<nmax*nmax;i++) C[i]=0;
    
    
    for(i=0;i<6;i++)
    {
        //矩阵相乘，测量时间
        gettimeofday( &start,NULL ) ;
        (*orderings[i]) ( nmax, A, B, C ) ;
        gettimeofday( &end, NULL ) ;
        
        //将时间转换为Gflop/s
        double seconds =( end.tv_sec - start.tv_sec)+ 1.0e-6*(end.tv_usec - start.tv_usec) ;
        printf( "%s:\tn = %d,  %.3f s\n", names[i] ,nmax, seconds ) ;
    }
}

