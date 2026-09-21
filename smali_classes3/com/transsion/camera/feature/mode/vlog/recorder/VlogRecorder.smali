.class public Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorder;
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mRecordHandler:Landroid/os/Handler;

.field private final mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

.field private final mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;


# direct methods
.method static bridge synthetic -$$Nest$mprocessMessage(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Landroid/os/Message;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMediaRecorder(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->startMediaRecorder()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)V
    .registers 18

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    .line 41
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    .line 42
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    .line 43
    new-instance v8, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;

    invoke-direct {v8, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$CameraStartListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder-IA;)V

    move-object v9, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IRecorderProxyCallback;)V

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->init()V

    return-void
.end method

.method private dispatchMessage(Landroid/os/Message;)V
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/AbstractAsyncRecorderCore;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "vlog-recorder-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 9

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderInfo;->dumpCommand(ILcom/transsion/camera/utils/debug/Log$Tag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->dispatchMessage(Landroid/os/Message;)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderInfo;->dumpCommand(ILcom/transsion/camera/utils/debug/Log$Tag;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end process time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private release()V
    .registers 2

    const/16 v0, 0x8

    .line 199
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(I)V

    return-void
.end method

.method private removeMessages(I)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    if-eqz p0, :cond_7

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    return-void
.end method

.method private sendMessage(I)V
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 91
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(ILjava/lang/Object;J)Z

    return-void
.end method

.method private sendMessage(IJ)V
    .registers 5

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(ILjava/lang/Object;J)Z

    return-void
.end method

.method private sendMessage(IIILjava/lang/Object;J)Z
    .registers 7

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    if-nez p0, :cond_1c

    .line 110
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendMessage mRecordHandler is null what: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_1c
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method private sendMessage(ILjava/lang/Object;J)Z
    .registers 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-wide v5, p3

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(IIILjava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private startMediaRecorder()V
    .registers 2

    const/4 v0, 0x5

    .line 142
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(I)V

    return-void
.end method


# virtual methods
.method public getVlogHelper()Lcom/transsion/camera/feature/mode/vlog/VlogHelper;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    return-object p0
.end method

.method public leave(ZZ)Z
    .registers 11

    if-eqz p1, :cond_9

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->shouldConsumerStopCommand()Z

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    const/4 v0, 0x2

    .line 177
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->removeMessages(I)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    .line 178
    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(IIILjava/lang/Object;J)Z

    return p1
.end method

.method public operationPrepared()V
    .registers 2

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(I)V

    return-void
.end method

.method public pauseResume()V
    .registers 2

    const/4 v0, 0x3

    .line 159
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(I)V

    return-void
.end method

.method public prepareVideoSurface(Landroid/media/CamcorderProfile;)V
    .registers 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 127
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(ILjava/lang/Object;J)Z

    return-void
.end method

.method public removeStartStopMessages()Z
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 217
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "removeStartStopMessages mRecordHandler is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_d
    const/4 v2, 0x2

    .line 221
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 222
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->removeMessages(I)V

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public setRecorderCallback(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;)V
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setRecorderCallback(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;)V

    return-void
.end method

.method public setRecorderPolicy(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;)V
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderCore;->setRecorderPolicy(Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IVlogRecorderPolicy;)V

    return-void
.end method

.method public startStop(J)V
    .registers 4

    const/4 v0, 0x2

    .line 151
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(IJ)V

    return-void
.end method

.method public storageUnMount()V
    .registers 2

    const/4 v0, 0x6

    .line 187
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(I)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->release()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 75
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->mRecordHandler:Landroid/os/Handler;

    :cond_11
    return-void
.end method

.method public videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z
    .registers 5

    const/4 v0, 0x7

    const-wide/16 v1, 0x0

    .line 192
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->sendMessage(ILjava/lang/Object;J)Z

    move-result p0

    return p0
.end method
