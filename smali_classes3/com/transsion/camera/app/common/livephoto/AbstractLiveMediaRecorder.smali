.class public abstract Lcom/transsion/camera/app/common/livephoto/AbstractLiveMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract capture(IJLcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
.end method

.method public abstract frameAvailableSoon(I[FZ)V
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract release()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
