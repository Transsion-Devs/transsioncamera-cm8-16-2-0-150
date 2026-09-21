.class public abstract Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatchMessage(Landroid/os/Message;)V
    .registers 4

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 88
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 85
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->updateMuteRecorder(Landroid/os/Message;)V

    return-void

    .line 82
    :pswitch_22
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->release(Landroid/os/Message;)V

    return-void

    .line 79
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->snapShot(Landroid/os/Message;)V

    return-void

    .line 76
    :pswitch_2a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->storageUnmounted(Landroid/os/Message;)V

    return-void

    .line 73
    :pswitch_2e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->startMediaRecorder(Landroid/os/Message;)V

    return-void

    .line 70
    :pswitch_32
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->stop(Landroid/os/Message;)V

    return-void

    .line 67
    :pswitch_36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->pauseResume(Landroid/os/Message;)V

    return-void

    .line 64
    :pswitch_3a
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->startStop(Landroid/os/Message;)V

    return-void

    .line 61
    :pswitch_3e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->operationPrepared(Landroid/os/Message;)V

    return-void

    .line 58
    :pswitch_42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->prepareVideoSurface(Landroid/os/Message;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method

.method protected abstract operationPrepared(Landroid/os/Message;)V
.end method

.method protected abstract pauseResume(Landroid/os/Message;)V
.end method

.method protected abstract prepareVideoSurface(Landroid/os/Message;)V
.end method

.method protected abstract release(Landroid/os/Message;)V
.end method

.method protected abstract shouldConsumerStopCommand()Z
.end method

.method protected abstract snapShot(Landroid/os/Message;)V
.end method

.method protected abstract startMediaRecorder(Landroid/os/Message;)V
.end method

.method protected abstract startStop(Landroid/os/Message;)V
.end method

.method protected abstract stop(Landroid/os/Message;)V
.end method

.method protected abstract storageUnmounted(Landroid/os/Message;)V
.end method

.method protected abstract updateMuteRecorder(Landroid/os/Message;)V
.end method
