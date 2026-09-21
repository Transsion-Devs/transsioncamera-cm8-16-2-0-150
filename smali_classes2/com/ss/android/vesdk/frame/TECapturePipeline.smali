.class public Lcom/ss/android/vesdk/frame/TECapturePipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;,
        Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;
    }
.end annotation


# instance fields
.field mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

.field mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

.field public mIsCurrentFirstFrame:Z

.field mIsFrameLandscape:Z

.field mIsPreview:Z

.field mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 55
    iput-object p2, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 56
    iput-object p3, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 39
    iput-object p2, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 40
    iput-object p3, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    .line 41
    iput-object p4, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 47
    iput-object p2, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 48
    iput-object p3, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    .line 49
    iput-boolean p4, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsPreview:Z

    .line 50
    iput-object p5, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public getCaptureListener()Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    return-object p0
.end method

.method public getFormat()Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    return-object p0
.end method

.method public getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public isFrameLandscape()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsFrameLandscape:Z

    return p0
.end method

.method public isPreview()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsPreview:Z

    return p0
.end method

.method public isValid()Z
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-eqz v0, :cond_12

    iget v1, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-lez v1, :cond_12

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-lez v0, :cond_12

    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public setCaptureListener(Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;

    return-void
.end method

.method public setFrameLandscape(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mIsFrameLandscape:Z

    return-void
.end method

.method public setSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/ss/android/vesdk/frame/TECapturePipeline;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
