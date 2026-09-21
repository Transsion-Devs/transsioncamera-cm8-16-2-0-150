.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;
    }
.end annotation


# static fields
.field private static final RESOURCE_HEAD:Ljava/lang/String; = "android.resource://"

.field private static final RESOURCE_SPEC:Ljava/lang/String; = "/"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsAutoPlay:Z

.field private mMediaPlayerListener:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;

.field private final mMediaPlayerLock:Ljava/lang/Object;

.field mPlayer:Landroid/media/MediaPlayer;

.field private mVideoSource:Ljava/lang/String;

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method public static synthetic $r8$lambda$W5TyTQCnlK9eaDslv4NbpOQbo3Q(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->lambda$startCodec$2(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fQ5Hq_e93HluknSpUYXIh3tgl5A(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;Landroid/media/MediaPlayer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->lambda$startCodec$0(Landroid/view/Surface;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ffmCrUb-TI7DxISkGhMdp7iIWGY(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->lambda$startCodec$1(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hmRiI8S9n3mu4LPRb76pq3L7rNM(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->lambda$startCodec$3(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j501pyMFfSWKkAvtAFUmu3NkHyI(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->lambda$onSurfaceTextureDestroyed$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_AutoPlayTextureView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    .line 27
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 52
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 5

    .line 56
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuideAutoPlayVideoView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuideAutoPlayVideoView_imagery_video_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 59
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuideAutoPlayVideoView_imagery_is_autoplay:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    if-eqz v0, :cond_42

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 63
    :cond_42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$4()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1e

    .line 148
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_17

    :catchall_13
    move-exception p0

    goto :goto_32

    :catch_15
    move-exception v1

    goto :goto_1b

    .line 151
    :cond_17
    :goto_17
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->releaseMediaPlayer()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_15
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13

    goto :goto_1e

    .line 154
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 160
    :cond_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_13

    throw p0
.end method

.method private synthetic lambda$startCodec$0(Landroid/view/Surface;Landroid/media/MediaPlayer;)V
    .registers 5

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 98
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 100
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    if-nez p0, :cond_21

    .line 101
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    :cond_21
    return-void
.end method

.method private synthetic lambda$startCodec$1(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mMediaPlayerListener:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;

    if-eqz p0, :cond_7

    .line 107
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;->onPlayerInfoListener(I)V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$startCodec$2(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .line 113
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->releaseMediaPlayer()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$startCodec$3(Landroid/view/Surface;)V
    .registers 6

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->releaseMediaPlayer()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    .line 87
    :try_start_6
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 88
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCodec mVideoSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_5f
    .catchall {:try_start_6 .. :try_end_30} :catchall_34

    if-nez v1, :cond_36

    .line 91
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception p0

    goto :goto_6c

    .line 93
    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 95
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5e} :catch_5f
    .catchall {:try_start_36 .. :try_end_5e} :catchall_34

    goto :goto_6a

    :catch_5f
    move-exception p1

    .line 118
    :try_start_60
    sget-object v1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "IOException in startCodec"

    invoke-static {v1, v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->releaseMediaPlayer()V

    .line 121
    :goto_6a
    monitor-exit v0

    return-void

    :goto_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_34

    throw p0
.end method

.method private releaseMediaPlayer()V
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    .line 173
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    :cond_a
    return-void
.end method

.method private startCodec(Landroid/view/Surface;)V
    .registers 5

    .line 76
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCodec surface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_28

    .line 77
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_28

    .line 82
    :cond_1f
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;Landroid/view/Surface;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 78
    :cond_28
    :goto_28
    const-string p0, "Surface is null or invalid"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 129
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 130
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 131
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->startCodec(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 142
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;)V

    invoke-static {p1}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public setMediaPlayerListener(Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mMediaPlayerListener:Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView$MediaPlayerListener;

    return-void
.end method

.method public setVideoSourceAndStart(I)V
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    return-void
.end method

.method public setVideoSourceAndStart(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/AutoPlayTextureView;->startCodec(Landroid/view/Surface;)V

    return-void
.end method
