.class public Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;
    }
.end annotation


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final WHAT_CMD_DATA_SOURCE:I = 0x5

.field private static final WHAT_CMD_MAX:I = 0x7

.field private static final WHAT_CMD_MIN:I = 0x0

.field private static final WHAT_CMD_PAUSE:I = 0x2

.field private static final WHAT_CMD_PREPARE:I = 0x0

.field private static final WHAT_CMD_RELEASE:I = 0x4

.field private static final WHAT_CMD_SEEK:I = 0x6

.field private static final WHAT_CMD_SET_LOOPING:I = 0x7

.field private static final WHAT_CMD_START:I = 0x1

.field private static final WHAT_CMD_STOP:I = 0x3


# instance fields
.field private volatile isDataSourceValid:Z

.field private volatile isPrepared:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

.field private mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

.field private mUIHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$2sXIUE9Pwtp1BVSNHuLWEaOKLCs(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$doStop$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$30s66QK_X4dWrqdEFZdluAU4tf0(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3swtm3oIpyWEpr98SGexyUdIx6Q(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$1(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4D39KUjBJNnyyJ9zSyXmsaRsQhA(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$7(Landroid/media/MediaPlayer;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6WUulDEHLx4c0qBxH1oeuLXQgGg(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$5(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BcNK4KpBGLftYp855DnChKut8W8(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$doPause$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$GcOXMJMgb7yPxzjdkvLEMme0oaI(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$IJ2zVH_hC0FhTBfD61IOLKkD-tY(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$IyWQxGoUsfgfUC949TpBkutHohs(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/view/Surface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$setSurface$14(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wuf1LoeHHLTabZv4dhBABAYl-Fs(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YOBcsAW-hYMI1ZKgZ-nMkEUE9mw(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$i7gma79UXH2DafIi0u-ZkkcIS0k(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$doStart$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$jNGRkmkhb_ITyH7VYf2ei7IpyFk(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$9(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pQfHbrRw98J9lyRypqtq1s9MqHI(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$doStart$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$xXoZWJNk1BfHutBgpZvB2tuzX0o(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->lambda$initPlayStateListener$3(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPause(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doPause()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPrepare(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doPrepare()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoRelease(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doRelease()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSeekTo(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doSeekTo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSetDataSource(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doSetDataSource(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSetLooping(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doSetLooping(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStart(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStart(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doStart(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStop(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCOMMANDS()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->COMMANDS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 30
    const-string v8, "seek"

    const-string v9, "setLooping"

    const-string v2, "prepare"

    const-string v3, "start"

    const-string v4, "pause"

    const-string v5, "stop"

    const-string v6, "release"

    const-string v7, "setDataSource"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    .line 44
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isDataSourceValid:Z

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->initThread()V

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->initPlayer()V

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->initPlayStateListener()V

    return-void
.end method

.method private doPause()V
    .registers 4

    .line 255
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->stop()V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 266
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPause exception, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doPrepare()V
    .registers 5

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 179
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPrepare exception, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    return-void
.end method

.method private doRelease()V
    .registers 3

    .line 288
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doRelease"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doStop()V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->clear()V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method private doSeekTo(I)V
    .registers 5

    .line 188
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSeekTo, msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    if-nez v0, :cond_1d

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doPrepare()V

    .line 196
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 201
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSeekTo exception, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetDataSource(Ljava/lang/String;)V
    .registers 5

    .line 298
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetDataSource, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    :try_start_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->reset()V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    .line 304
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetDataSource exception, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doSetLooping(Z)V
    .registers 5

    .line 206
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetLooping, looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private doStart()V
    .registers 4

    .line 212
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    if-nez v0, :cond_e

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doPrepare()V

    .line 219
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->start()V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart exception, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doStart(I)V
    .registers 5

    .line 233
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStart, time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    if-nez v0, :cond_1d

    .line 236
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->doPrepare()V

    .line 240
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->start()V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p0

    .line 250
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStart exception, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doStop()V
    .registers 4

    .line 271
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->stop()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStop exception, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initPlayStateListener()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private initPlayer()V
    .registers 2

    .line 65
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method private initThread()V
    .registers 4

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "player-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$WorkHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$doPause$12()V
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz p0, :cond_7

    .line 262
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onStop()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$doStart$10()V
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz p0, :cond_7

    .line 224
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onStart()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$doStart$11()V
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz p0, :cond_7

    .line 246
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onStart()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$doStop$13()V
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz p0, :cond_7

    .line 279
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onStop()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$0(II)V
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz v0, :cond_27

    .line 74
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onError(II)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$1(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initPlayStateListener$2()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz v0, :cond_10

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onCompletion()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$3(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initPlayStateListener$4()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz v0, :cond_10

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onPrepared(Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer;)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$5(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initPlayStateListener$6(II)V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz v0, :cond_27

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onVideoSizeChanged(Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer;II)V

    :cond_27
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$7(Landroid/media/MediaPlayer;II)V
    .registers 5

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initPlayStateListener$8(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 106
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onRenderStart"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;->onRenderStart()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initPlayStateListener$9(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mUIHandler:Landroid/os/Handler;

    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setSurface$14(Landroid/view/Surface;)V
    .registers 4

    .line 387
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 388
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setSurface, surface invalid, maybe has been release"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 392
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 394
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface, error, e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToTarget(Landroid/os/Handler;I)V
    .registers 4

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4

    .line 454
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 455
    iput p2, p0, Landroid/os/Message;->what:I

    .line 456
    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 1

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .registers 1

    .line 321
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayedDuration()I
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayedDuration:Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayedDuration;->getPlayedDuration()I

    move-result p0

    return p0
.end method

.method public getVideoHeight()I
    .registers 1

    .line 344
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .registers 1

    .line 335
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public isLooping()Z
    .registers 1

    .line 353
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .registers 1

    .line 367
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public isPrepared()Z
    .registers 1

    .line 361
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isPrepared:Z

    return p0
.end method

.method public pause()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;I)V

    return-void
.end method

.method public play()V
    .registers 3

    .line 406
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isDataSourceValid:Z

    if-nez v0, :cond_c

    .line 407
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "play, dataSource not valid, can not play"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 411
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;I)V

    return-void
.end method

.method public play(I)V
    .registers 4

    .line 416
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->isDataSourceValid:Z

    if-nez v0, :cond_c

    .line 417
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "play, dataSource not valid, can not play"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;I)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;I)V

    return-void
.end method

.method public seekTo(I)V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setLooping(Z)V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoListener(Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/ISimpleVideoPlayer$VideoPlayerListener;

    return-void
.end method

.method public stop()V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/SimpleVideoPlayer;->sendMessageToTarget(Landroid/os/Handler;I)V

    return-void
.end method
