.class final Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaptureCallbackGroup"
.end annotation


# instance fields
.field mCurShutterPriority:I

.field mIsSupportShutterSound:Z

.field mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field mNeedCaptureSound:Z

.field final mPostCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field final mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V
    .registers 7

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    const/4 v1, -0x1

    .line 363
    iput v1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    .line 364
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mIsSupportShutterSound:Z

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;

    .line 373
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mRawCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 374
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mPostCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 375
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;ZIZ)V
    .registers 8

    .line 382
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/transsion/camera/adapter/CameraProxy$CameraShutterCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;)V

    .line 383
    iput-boolean p5, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mNeedCaptureSound:Z

    .line 384
    iput p6, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mCurShutterPriority:I

    .line 385
    iput-boolean p7, p0, Lcom/transsion/camera/adapter/CameraProxy$CaptureCallbackGroup;->mIsSupportShutterSound:Z

    return-void
.end method
