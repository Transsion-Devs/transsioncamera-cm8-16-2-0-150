.class public Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Prepared;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Paused;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Error;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$InnerCommand;,
        Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Command;
    }
.end annotation


# static fields
.field private static final PROGRESS_UPDATE_PERIOD:I = 0xc8

.field private static final VIDEO_PLAYER_TAG:Ljava/lang/String; = "VideoPlayer"

.field private static mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mEndState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mErrorState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mIdleState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mInitializedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerErrorExtra:I

.field private mMediaPlayerErrorWhat:I

.field private final mMediaType:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

.field private final mPausedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

.field private final mPreparedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private mProgressListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

.field private final mProgressUpdater:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

.field private final mStartedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private final mStoppedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mEndState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mErrorState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIdleState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mIdleState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitializedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mInitializedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/media/MediaPlayer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayerErrorExtra(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorExtra:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayerErrorWhat(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorWhat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaType(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaType:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPausedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPausedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayBackCompleteState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreparedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPreparedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mStartedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoppedState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mStoppedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)Landroid/view/Surface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaPlayerErrorExtra(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorExtra:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaPlayerErrorWhat(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorWhat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurface(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Landroid/view/Surface;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyProgressUpdated(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->notifyProgressUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->pauseProgressUpdater()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->startProgressUpdater()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopProgressUpdater(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->stopProgressUpdater()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;Ljava/lang/String;)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMainHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

    .line 252
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Idle;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mIdleState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 253
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Initialized;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mInitializedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 254
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Prepared;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Prepared;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPreparedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 255
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Started;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mStartedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 256
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Paused;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Paused;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPausedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 257
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Stopped;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mStoppedState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 258
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayBackComplete;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayBackCompleteState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 259
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$End;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mEndState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 260
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Error;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$Error;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mErrorState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    .line 64
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoPlayer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaType:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    .line 66
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 70
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 71
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->enter()V

    return-void
.end method

.method private notifyProgressUpdated()V
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->updateProgress()V

    return-void
.end method

.method private pauseProgressUpdater()V
    .registers 3

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseProgressUpdater"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->pause()V

    return-void
.end method

.method private static printInfo(I)V
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_55

    const/16 v0, 0x385

    if-eq p0, v0, :cond_4d

    const/16 v0, 0x386

    if-eq p0, v0, :cond_45

    packed-switch p0, :pswitch_data_66

    packed-switch p0, :pswitch_data_70

    return-void

    .line 109
    :pswitch_15
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_METADATA_UPDATE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :pswitch_1d
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_NOT_SEEKABLE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 103
    :pswitch_25
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BAD_INTERLEAVING"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :pswitch_2d
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BUFFERING_END"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 97
    :pswitch_35
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_BUFFERING_START"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :pswitch_3d
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_45
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_4d
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_55
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_5d
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onInfo, MEDIA_INFO_UNKNOWN"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x2bc
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x320
        :pswitch_25
        :pswitch_1d
        :pswitch_15
    .end packed-switch
.end method

.method private startProgressUpdater()V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    .line 131
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startProgressUpdater, isLooping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_23

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->start()V

    :cond_23
    return-void
.end method

.method private stopProgressUpdater()V
    .registers 3

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopProgressUpdater "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressUpdater:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressUpdater;->stop()V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 153
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCompletion"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mediaPlayerComplete()V

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->stopProgressUpdater()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .line 122
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorWhat:I

    .line 124
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMediaPlayerErrorExtra:I

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->mediaPlayerError()V

    const/4 p0, 0x1

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 76
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->printInfo(I)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    if-eqz p0, :cond_a

    .line 79
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onInfo(I)V

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    .line 160
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged, width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    if-eqz p0, :cond_25

    .line 162
    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;->onVideoSizeChanged(II)V

    :cond_25
    return-void
.end method

.method public pause()V
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->pause()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->prepare()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->release()V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->reset()V

    return-void
.end method

.method public seekTo(I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->seekTo(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .registers 2

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->setLooping(Z)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 230
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    .line 231
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setPlayerListener listener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_d
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$PlayerListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mPlayerListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;

    return-void
.end method

.method public setProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 240
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    .line 241
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setProgressListener listener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_d
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 2

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->mCurrentState:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$AbstractState;->stop()V

    return-void
.end method
