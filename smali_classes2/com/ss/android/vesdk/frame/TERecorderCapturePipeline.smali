.class public Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;
.super Lcom/ss/android/vesdk/frame/TECapturePipeline;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TERecorderCapturePipeline"


# instance fields
.field private mOESTexture:I

.field private mRecorderSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZILandroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .registers 13

    .line 20
    sget-object v1, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_Recorder:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/frame/TECapturePipeline;-><init>(Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;Lcom/ss/android/ttvecamera/TEFrameSizei;Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;ZLandroid/graphics/SurfaceTexture;)V

    .line 21
    iput-object p6, v0, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->mRecorderSurface:Landroid/view/Surface;

    .line 22
    iput p4, v0, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->mOESTexture:I

    .line 23
    const-string p0, "TERecorderCapturePipeline"

    const-string p1, "constructor"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getOESTextureId()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->mOESTexture:I

    return p0
.end method

.method public getRecorderSurface()Landroid/view/Surface;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->mRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/ss/android/vesdk/frame/TERecorderCapturePipeline;->mRecorderSurface:Landroid/view/Surface;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
