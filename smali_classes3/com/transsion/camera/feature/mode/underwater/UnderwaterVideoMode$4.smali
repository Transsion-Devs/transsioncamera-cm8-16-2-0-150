.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_32

    .line 501
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$500(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    .line 505
    :cond_f
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoHDRDebugSupport()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$600(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    .line 507
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->videoHDRSnapShot()V

    .line 509
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$700(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # setter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$802(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)Z

    goto :goto_37

    .line 512
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$900(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V

    .line 514
    :goto_37
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method
