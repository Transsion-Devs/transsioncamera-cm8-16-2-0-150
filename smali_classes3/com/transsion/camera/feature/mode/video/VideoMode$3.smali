.class Lcom/transsion/camera/feature/mode/video/VideoMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method public static synthetic $r8$lambda$Kop41Q46Llatko3fBaZ2YP6PKMk(Lcom/transsion/camera/feature/mode/video/VideoMode$3;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->lambda$onClick$0(Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .registers 2

    .line 914
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Z)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_b

    .line 922
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$300(Lcom/transsion/camera/feature/mode/video/VideoMode;)Z

    move-result p1

    if-eqz p1, :cond_c

    :goto_b
    return-void

    .line 926
    :cond_c
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVideoHDRDebugSupport()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 927
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$400(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->videoSnapShot(Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 930
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mVideoPreviewCallback:Lcom/transsion/camera/app/common/mode/IVideoModeCallback;

    if-eqz v0, :cond_29

    .line 931
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/mode/IVideoModeCallback;->snapshot(I)V

    .line 933
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$500(Lcom/transsion/camera/feature/mode/video/VideoMode;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 934
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # setter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$602(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 916
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    iget-boolean p1, p1, Lcom/transsion/camera/feature/mode/video/VideoMode;->mIsGLRecording:Z

    if-eqz p1, :cond_15

    .line 917
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$100(Lcom/transsion/camera/feature/mode/video/VideoMode;)Lcom/transsion/camera/app/common/recorder/RecorderManager;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/video/VideoMode$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$3$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/VideoMode$3;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z

    goto :goto_1a

    .line 937
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$3;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSnapShot()V
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$200(Lcom/transsion/camera/feature/mode/video/VideoMode;)V

    .line 939
    :goto_1a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method
