.class public Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

.field private mPlayCallback:Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

.field private final mPlayListener:Lcom/cutsame/solution/player/PlayerStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mPlayCallback:Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_CutSamePlayer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mPlayListener:Lcom/cutsame/solution/player/PlayerStateListener;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/lang/Long;
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->UNKNOWN:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    return-object p0
.end method

.method public isIdle()Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object p0

    sget-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->IDLE:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPaused()Z
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object p0

    sget-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PAUSED:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object p0

    sget-object v0, Lcom/cutsame/solution/player/BasePlayer$PlayState;->PLAYING:Lcom/cutsame/solution/player/BasePlayer$PlayState;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_7

    .line 87
    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->pause()V

    :cond_7
    return-void
.end method

.method public playVideo(Landroid/view/SurfaceView;Landroid/graphics/Point;Lcom/ss/android/ugc/cut_ui/MediaItem;)V
    .registers 5

    .line 30
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->release()V

    .line 32
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v0, p1}, Lcom/cutsame/solution/init/CutSameSolution;->createMediaPlayer(Landroid/view/SurfaceView;)Lcom/cutsame/solution/player/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mPlayListener:Lcom/cutsame/solution/player/PlayerStateListener;

    invoke-virtual {p1, p3, p2, p0}, Lcom/cutsame/solution/player/MediaPlayer;->preparePlayBySingleMedia(Lcom/ss/android/ugc/cut_ui/MediaItem;Landroid/graphics/Point;Lcom/cutsame/solution/player/PlayerStateListener;)V

    return-void
.end method

.method public refreshCurrentFrame()V
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_7

    .line 39
    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->refreshCurrentFrame()V

    :cond_7
    return-void
.end method

.method public release()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Lcom/cutsame/solution/player/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    :cond_a
    return-void
.end method

.method public seekTo(IZ)V
    .registers 3

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_7

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/cutsame/solution/player/MediaPlayer;->seekTo(IZ)V

    :cond_7
    return-void
.end method

.method public seeking(I)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_7

    .line 53
    invoke-virtual {p0, p1}, Lcom/cutsame/solution/player/MediaPlayer;->seeking(I)V

    :cond_7
    return-void
.end method

.method public setPlayCallback(Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mPlayCallback:Lcom/transsion/camera/feature/mode/vlog/player/ICutSamePlayerManager$ICutSamePlayCallBack;

    return-void
.end method

.method public start()V
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/CutSamePlayManager;->mCutSameMediaPlayer:Lcom/cutsame/solution/player/MediaPlayer;

    if-eqz p0, :cond_7

    .line 80
    invoke-virtual {p0}, Lcom/cutsame/solution/player/MediaPlayer;->start()V

    :cond_7
    return-void
.end method
