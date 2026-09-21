.class Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;->init(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 9

    .line 102
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 104
    :cond_7
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 107
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>(IIJ)V

    .line 108
    new-instance v0, Lcom/ss/android/ttvecamera/TEPlane;

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/ttvecamera/TEPlane;-><init>([Landroid/media/Image$Plane;)V

    iget-object v1, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getFrameRotation()I

    move-result v1

    iget-object v3, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;

    iget-object v4, v3, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mFormat:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    iget-object v3, v3, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->mCamera:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v3}, Lcom/ss/android/ttvecamera/TECameraBase;->getFacing()I

    move-result v3

    invoke-virtual {v2, v0, v1, v4, v3}, Lcom/ss/android/ttvecamera/TECameraFrame;->initYUVPlans(Lcom/ss/android/ttvecamera/TEPlane;ILcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;I)V

    .line 109
    iget-object p0, p0, Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TEMultiCamera2Provider;

    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/provider/TECameraProvider;->onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V

    .line 110
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
