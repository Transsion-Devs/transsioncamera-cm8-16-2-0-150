.class public Lcom/ss/android/vesdk/VEVideoDataSource;
.super Lcom/ss/android/vesdk/VEDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEVideoDataSource$Builder;
    }
.end annotation


# instance fields
.field private mVideoCapture:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEDataSource;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/VEVideoDataSource;Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;)Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoDataSource;->mVideoCapture:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    return-object p1
.end method


# virtual methods
.method public getVideoCapture()Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoDataSource;->mVideoCapture:Lcom/ss/android/vesdk/capture/TEVideoCaptureBase;

    return-object p0
.end method
