.class abstract Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;
.super Lcom/transsion/camera/app/common/recorder/AbstractRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;
    }
.end annotation


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mVideoHandle:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$LNiZb9mQD2q-DW2fM06_mQDyMa0(Ljava/lang/Object;)V
    .registers 2

    .line 265
    monitor-enter p0

    .line 266
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetCommand(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->getCommand(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractAsyncRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 45
    const-string v9, "snapShot"

    const-string v10, "releaseRecorder"

    const-string v2, "configRecorder"

    const-string v3, "operationPrepared"

    const-string v4, "startStop"

    const-string v5, "pauseResume"

    const-string v6, "stop"

    const-string v7, "startMediaRecorder"

    const-string v8, "storageUnMounted"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;-><init>()V

    return-void
.end method

.method private static getCommand(I)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_c

    const/16 v0, 0x8

    if-le p0, v0, :cond_7

    goto :goto_c

    .line 64
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->COMMANDS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 61
    :cond_c
    :goto_c
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage wrong command\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private release()V
    .registers 2

    const/16 v0, 0x8

    .line 123
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method private removeMessages(I)V
    .registers 3

    .line 181
    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    .line 185
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_9

    throw p1
.end method

.method private sendMessage(I)Z
    .registers 3

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendMessage(IIILjava/lang/Object;)Z
    .registers 6

    .line 193
    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    if-nez v0, :cond_20

    .line 195
    sget-object p2, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sendMessage mVideoHandle is null what: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 196
    monitor-exit p0

    return p1

    :catchall_1e
    move-exception p1

    goto :goto_2a

    .line 198
    :cond_20
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 199
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_1e

    throw p1
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private waitDone()V
    .registers 4

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 270
    monitor-enter v0

    .line 271
    :try_start_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    if-eqz p0, :cond_23

    const-wide/16 v1, 0x3e8

    .line 274
    :try_start_15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_1b
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception p0

    goto :goto_25

    .line 276
    :catch_1b
    :try_start_1b
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "waitDone interrupted"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 279
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_19

    throw p0
.end method


# virtual methods
.method protected abstract configRecorder(Landroid/os/Message;)V
.end method

.method public configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V
    .registers 3

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(ILjava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .registers 4

    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "recorder_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    new-instance v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder$VideoHandle;-><init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;Landroid/os/Looper;Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    return-void
.end method

.method public leave(ZZZ)Z
    .registers 7

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->leave(ZZZ)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->shouldConsumerStopCommand()Z

    move-result p1

    goto :goto_c

    :cond_b
    move p1, v0

    :goto_c
    const/4 v1, 0x2

    .line 98
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->removeMessages(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, v1, p2, v0, v2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(IIILjava/lang/Object;)Z

    if-eqz p3, :cond_1a

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->waitDone()V

    :cond_1a
    return p1
.end method

.method public operationPrepared()V
    .registers 2

    .line 75
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->operationPrepared()V

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract operationPrepared(Landroid/os/Message;)V
.end method

.method public pauseResume()V
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->pauseResume()V

    const/4 v0, 0x3

    .line 88
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract pauseResume(Landroid/os/Message;)V
.end method

.method protected post(Ljava/lang/Runnable;)V
    .registers 3

    .line 204
    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    .line 208
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_9

    throw p1
.end method

.method protected abstract release(Landroid/os/Message;)V
.end method

.method protected removeStartStopMessages()Z
    .registers 4

    .line 163
    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 165
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "removeStartStopMessages mVideoHandle is null"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    monitor-exit p0

    return v1

    :catchall_f
    move-exception v0

    goto :goto_22

    :cond_11
    const/4 v2, 0x2

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 170
    monitor-exit p0

    return v0

    .line 172
    :cond_20
    monitor-exit p0

    return v1

    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_f

    throw v0
.end method

.method protected abstract shouldConsumerStopCommand()Z
.end method

.method protected abstract snapShot(Landroid/os/Message;)V
.end method

.method startMediaRecorder()V
    .registers 2

    const/4 v0, 0x5

    .line 107
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startMediaRecorder(Landroid/os/Message;)V
.end method

.method public startStop()V
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->startStop()V

    const/4 v0, 0x2

    .line 82
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract startStop(Landroid/os/Message;)V
.end method

.method protected abstract stop(Landroid/os/Message;)V
.end method

.method public storageUnMount()V
    .registers 2

    .line 112
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->storageUnMount()V

    const/4 v0, 0x6

    .line 113
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(I)Z

    return-void
.end method

.method protected abstract storageUnmounted(Landroid/os/Message;)V
.end method

.method public unInit()V
    .registers 2

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->release()V

    .line 154
    monitor-enter p0

    .line 155
    :try_start_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 156
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->mVideoHandle:Landroid/os/Handler;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 159
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_13

    throw v0
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z
    .registers 3

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractRecorder;->videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z

    const/4 v0, 0x7

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->sendMessage(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
