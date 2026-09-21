.class public Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraCodecRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 33
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "startRecording cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 38
    new-instance v2, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;-><init>(Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(ILcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    return v1
.end method

.method public stopRecording(Z)Z
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 p1, 0x0

    if-nez p0, :cond_d

    .line 57
    sget-object p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[stopRecording] cameraDeviceControl is null."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1

    .line 61
    :cond_d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 62
    const-string p1, "VideoStop.ogg"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
