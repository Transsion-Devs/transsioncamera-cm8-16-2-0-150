.class Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V
    .registers 3

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;->val$cb:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;->val$cb:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/baseimpl/CameraCodecRecorder$1;->val$cb:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;->onStart()V

    return-void
.end method
