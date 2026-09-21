.class public Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;
.implements Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;
.implements Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;
.implements Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;


# static fields
.field private static final PLAY_MANAGER_TAG:Ljava/lang/String; = "PlayManager"

.field private static final sDebug:Z = false


# instance fields
.field private final mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

.field private mPlayDuration:I

.field private final mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

.field private final mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mRealLooping:Z

.field private mSimulateLooping:Z

.field private mSourceStartTime:I

.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSourceStartTime(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSourceStartTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoView(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;Ljava/lang/String;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->IDLE:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSourceStartTime:I

    const v1, 0x7fffffff

    .line 47
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayDuration:I

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mRealLooping:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSimulateLooping:Z

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayManager_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 54
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    return-void
.end method

.method private isInPlaybackState()Z
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTING:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 135
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PAUSING:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 136
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PAUSED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    if-ne v0, v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 137
    :goto_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInPlaybackState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private seekToCurrentPlayer(I)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekToCurrentPlayer,  mVideoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 312
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 314
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$4;->$SwitchMap$com$transsion$camera$feature$mode$vlog$player$PlayerState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_74

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekToCurrentPlayer illegal player state:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 321
    :pswitch_66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Seek;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;ILcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    :cond_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method private setNewViewForPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;)V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNewViewForPlayback, videoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;

    invoke-direct {v1, p1, p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVideoView;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    return-void
.end method

.method private startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZ)V
    .registers 14

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayVideo, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", seekToTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->updateSeekAndDuration(II)V

    .line 181
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p5, v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 183
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->addPlayerListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;)V

    .line 184
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->setProgressListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->setNewViewForPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 186
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIZ)V

    return-void
.end method

.method private startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZ)V
    .registers 14

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayVideo, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", seekToTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->updateSeekAndDuration(II)V

    .line 146
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p5, v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 148
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->addPlayerListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;)V

    .line 149
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->setProgressListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->setNewViewForPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 151
    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private startPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIZ)V
    .registers 14

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPlayback with descriptor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;ZLandroid/content/res/AssetFileDescriptor;I)V

    if-eqz p3, :cond_1c

    .line 205
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;FLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1c
    iget-object p0, v3, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method private startPlayback(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIZ)V
    .registers 14

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startPlayback with path"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$1;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p4

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;ZLjava/lang/String;I)V

    if-eqz p3, :cond_1c

    .line 169
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;FLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1c
    iget-object p0, v3, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method private stopResetReleaseClearCurrentPlayer()V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopResetReleaseClearCurrentPlayer, mVideoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 331
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$4;->$SwitchMap$com$transsion$camera$feature$mode$vlog$player$PlayerState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    :pswitch_39
    return-void

    .line 368
    :pswitch_3a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/debug/Log$Tag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", stopResetReleaseClearCurrentPlayer illegal player state:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :pswitch_60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Stop;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Stop;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    .line 356
    :pswitch_6c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Reset;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Reset;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    .line 361
    :pswitch_78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Release;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Release;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    .line 365
    :pswitch_84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/ClearPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/ClearPlayer;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_6c
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_84
        :pswitch_84
        :pswitch_3a
    .end packed-switch
.end method

.method private updateSeekAndDuration(II)V
    .registers 3

    .line 212
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSourceStartTime:I

    .line 213
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayDuration:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> destroy, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 278
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->updateSeekAndDuration(II)V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->quitSafely()V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< destroy, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public getPlayerState()Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    return-object p0
.end method

.method public onCompleted()V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz v0, :cond_15

    .line 420
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onCompleted()V

    .line 423
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mRealLooping:Z

    if-eqz v0, :cond_1a

    return-void

    .line 428
    :cond_1a
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;)V

    .line 434
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSimulateLooping:Z

    if-eqz v1, :cond_2d

    .line 435
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Start;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Start;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Ljava/util/List;)V

    return-void
.end method

.method public onError(II)V
    .registers 5

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->ERROR:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p0, :cond_e

    .line 453
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onError(II)V

    :cond_e
    return-void
.end method

.method public onInfo(I)V
    .registers 2

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p0, :cond_7

    .line 444
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onInfo(I)V

    :cond_7
    return-void
.end method

.method public onPaused()V
    .registers 1

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p0, :cond_7

    .line 399
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onPaused()V

    :cond_7
    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 4

    .line 464
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mRealLooping:Z

    if-eqz v0, :cond_5

    goto :goto_21

    .line 468
    :cond_5
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSourceStartTime:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayDuration:I

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_21

    .line 469
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSimulateLooping:Z

    if-nez p1, :cond_1a

    .line 470
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->pausePlay()V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p1, :cond_1a

    .line 473
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onPaused()V

    .line 477
    :cond_1a
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSourceStartTime:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->seekTo(II)V

    :cond_21
    :goto_21
    return-void
.end method

.method public onStarted()V
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p0, :cond_7

    .line 392
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onStarted()V

    :cond_7
    return-void
.end method

.method public onStopped()V
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    if-eqz p0, :cond_7

    .line 406
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;->onStopped()V

    :cond_7
    return-void
.end method

.method public pausePlay()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> pausePlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mVideoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 235
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_6b

    .line 238
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePlay illegal player state:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_77

    .line 236
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Pause;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Pause;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    .line 240
    :goto_77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< pausePlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZZ)V
    .registers 17

    move/from16 v1, p7

    .line 97
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> playVideo, mVideoView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", videoView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", assetFileDescriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", seekToTime: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", playDuration: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", realLooping: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", simulateLooping: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mute: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mRealLooping:Z

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSimulateLooping:Z

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_6c

    move v7, v3

    goto :goto_6d

    :cond_6c
    move v7, v2

    :goto_6d
    if-eqz v1, :cond_76

    .line 110
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-ne v1, p2, :cond_76

    move v2, v3

    .line 112
    :cond_76
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playVideo, currentPlayerIsActive "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isAlreadyPlayingTheFile: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v7, :cond_c7

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_c3

    if-eqz v2, :cond_c3

    .line 117
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playVideo, videoView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p3, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_ca

    .line 120
    :cond_c3
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZ)V

    goto :goto_ca

    .line 123
    :cond_c7
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZ)V

    .line 126
    :goto_ca
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<< playVideo, videoView "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V
    .registers 15

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> playVideo, mVideoView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", videoView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", seekToTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realLooping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", simulateLooping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mRealLooping:Z

    .line 67
    iput-boolean p7, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mSimulateLooping:Z

    .line 69
    iget-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p7, v0}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 71
    iget-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p7, p1, :cond_6a

    move v2, v1

    goto :goto_6b

    :cond_6a
    move v2, v0

    :goto_6b
    if-eqz p7, :cond_78

    .line 72
    invoke-virtual {p7}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->getVideoPath()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_78

    move v0, v1

    .line 74
    :cond_78
    iget-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo, currentPlayerIsActive "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAlreadyPlayingTheFile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p7, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_d3

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->isInPlaybackState()Z

    move-result p7

    if-eqz p7, :cond_c8

    if-eqz v0, :cond_c8

    .line 79
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "playVideo, videoView "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " is already in state "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 79
    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_dd

    :cond_c8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZ)V

    goto :goto_dd

    :cond_d3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->startPlayVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZ)V

    .line 88
    :goto_dd
    iget-object p0, v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object p1, v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 90
    iget-object p0, v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<< playVideo, videoView "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", path "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resumePlay()V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> resumePlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mVideoView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PAUSED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 249
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PAUSING:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->STARTED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;->PLAYBACK_COMPLETED:Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_8b

    .line 254
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePlay illegal player state:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_97

    .line 252
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/Resume;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    .line 256
    :goto_97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< resumePlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(II)V
    .registers 8

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> seekTo, mPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", playDuration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->updateSeekAndDuration(II)V

    .line 222
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->seekToCurrentPlayer(I)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< seekTo, mPlayerState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPlayerState(Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;)V
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerState, playerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoView(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    return-void
.end method

.method public setVolume(F)V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume, volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager$4;->$SwitchMap$com$transsion$camera$feature$mode$vlog$player$PlayerState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/player/PlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume illegal player state:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 297
    :pswitch_54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-direct {v1, v2, p1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/command/SetVolume;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;FLcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerManagerCallBack;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->execute(Lcom/transsion/camera/feature/mode/vlog/player/command/ICommand;)V

    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
    .end packed-switch
.end method

.method public stopPlay()V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> stopPlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->pauseExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->updateSeekAndDuration(II)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->clearAllPendingCommands(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 267
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->stopResetReleaseClearCurrentPlayer()V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mExecutor:Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/util/ThreadExecutor;->resumeExecuting(Lcom/transsion/camera/utils/debug/Log$Tag;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< stopPlay, mPlayerState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->mPlayerState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
