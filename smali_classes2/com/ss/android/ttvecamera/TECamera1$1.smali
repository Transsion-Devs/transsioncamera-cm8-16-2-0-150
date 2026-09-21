.class Lcom/ss/android/ttvecamera/TECamera1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$1;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 6

    .line 307
    const-string p2, "te_record_camera_err_ret"

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    const/16 p2, 0x64

    .line 310
    const-string v0, "TECamera1"

    const/4 v1, 0x1

    if-ne p1, p2, :cond_12

    .line 312
    const-string p1, "Camera server died!"

    const/16 p2, -0x197

    goto :goto_3e

    :cond_12
    const/4 p2, 0x2

    if-ne p1, p2, :cond_29

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera disconnected: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x199

    goto :goto_3e

    :cond_29
    if-ne p1, v1, :cond_59

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera unknown error: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x19a

    .line 325
    :goto_3e
    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$1;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object v2, v0, Lcom/ss/android/ttvecamera/TECameraBase;->openPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/TECamera1;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 327
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$1;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->stopRetryStartPreview()V

    .line 328
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1$1;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    if-eqz v0, :cond_58

    .line 329
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_58
    return-void

    .line 322
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignore camera error here: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
