.class public Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerListener:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;

.field private final mMediaPlayerLock:Ljava/lang/Object;

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method public static synthetic $r8$lambda$IRy7Qu1udBDGpOIzncKzXRhqmnU(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->lambda$startCodec$1(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TlENHZM_O2nX-E4_IF2GhqcSnX4(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->lambda$onSurfaceTextureDestroyed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$keT18I_d_aKluZqGHmo5sDjIEEY(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;Landroid/view/Surface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->lambda$startCodec$2(Landroid/view/Surface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SellingPointTextureView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 27
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->init()V

    return-void
.end method

.method private init()V
    .registers 1

    .line 56
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$0()V
    .registers 1

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseMediaPlayerLocked()V

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseVideoSurface()V

    return-void
.end method

.method private synthetic lambda$startCodec$1(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayerListener:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;->onPlayerCompleted()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$startCodec$2(Landroid/view/Surface;)V
    .registers 10

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseMediaPlayer()V

    .line 105
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 107
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$1;-><init>(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_4a
    .catchall {:try_start_3 .. :try_end_46} :catchall_47

    goto :goto_69

    :catchall_47
    move-exception v0

    move-object p0, v0

    goto :goto_6b

    :catch_4a
    move-exception v0

    move-object p1, v0

    .line 125
    :try_start_4c
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play video exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseMediaPlayer()V

    .line 128
    :goto_69
    monitor-exit v1

    return-void

    :goto_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_47

    throw p0
.end method

.method private releaseMediaPlayer()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 140
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private releaseVideoSurface()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mVideoSurface:Landroid/view/Surface;

    :cond_12
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 65
    sget-object p2, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "[onSurfaceTextureAvailable]"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 67
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->startCodec(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 77
    sget-object p1, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onSurfaceTextureDestroyed]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    new-instance p1, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;)V

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

.method public releaseMediaPlayerLocked()V
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->releaseMediaPlayer()V

    .line 147
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public setMediaPlayerListener(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mMediaPlayerListener:Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$MediaPlayerListener;

    return-void
.end method

.method public setVideoSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public startCodec(Landroid/view/Surface;)V
    .registers 5

    if-nez p1, :cond_a

    .line 92
    sget-object p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playVideo view has not available"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_16

    .line 96
    sget-object p0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playVideo asset source is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideo surface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/SellingPointTextureView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/SellingPointTextureView;Landroid/view/Surface;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
