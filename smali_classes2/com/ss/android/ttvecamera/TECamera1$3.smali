.class Lcom/ss/android/ttvecamera/TECamera1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;JLcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V
    .registers 5

    .line 793
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iput-wide p2, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->val$start:J

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 11

    .line 796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capture data arrive consume: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->val$start:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TECamera1"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object p2, p2, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz p2, :cond_26

    .line 799
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 801
    :cond_26
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    if-eqz p2, :cond_8a

    .line 802
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    # getter for: Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {p2}, Lcom/ss/android/ttvecamera/TECamera1;->access$000(Lcom/ss/android/ttvecamera/TECamera1;)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result p2

    .line 803
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    # getter for: Lcom/ss/android/ttvecamera/TECamera1;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECamera1;->access$000(Lcom/ss/android/ttvecamera/TECamera1;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 804
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    .line 805
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "take picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_JPEG:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    .line 809
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mNewFacing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_73

    const/16 v1, 0x10e

    :goto_71
    move v7, v1

    goto :goto_76

    :cond_73
    const/16 v1, 0x5a

    goto :goto_71

    :goto_76
    const/16 v1, 0x11

    if-ne p2, v1, :cond_7c

    .line 811
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;->PIXEL_FORMAT_NV21:Lcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;

    :cond_7c
    move-object v4, v0

    .line 813
    new-instance v2, Lcom/ss/android/ttvecamera/TECameraFrame;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/ttvecamera/TECameraFrame;-><init>([BLcom/ss/android/ttvecamera/TECameraFrame$ETEPixelFormat;III)V

    .line 814
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1$3;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    invoke-interface {p1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;->onPictureTaken(Lcom/ss/android/ttvecamera/TECameraFrame;Lcom/ss/android/ttvecamera/TECameraBase;)V

    :cond_8a
    return-void
.end method
