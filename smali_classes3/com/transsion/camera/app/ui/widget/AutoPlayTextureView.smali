.class public Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$MediaPlayerListener;,
        Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsAutoPlay:Z

.field mPlayer:Landroid/media/MediaPlayer;

.field private mVideoSource:Ljava/lang/String;

.field private mVideoSurface:Landroid/view/Surface;


# direct methods
.method public static synthetic $r8$lambda$051EQPPaav4SDcQTmVih8Vt18ks(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->lambda$startCodec$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4I5ZkSqaH96Bv51_p9AeDRH2v4(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->lambda$startCodec$1(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xRy3iVuR9C18Uacf5hDuoCJybDU(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->lambda$onSurfaceTextureDestroyed$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AutoPlayTextureView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    .line 33
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 50
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7

    .line 64
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView_video_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 67
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView_is_autoplay:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    if-eqz v0, :cond_42

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    .line 72
    :cond_42
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->AutoPlayVideoView_video_corner_radius:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 73
    new-instance v1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 74
    invoke-virtual {p0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$2()V
    .registers 2

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_18

    .line 134
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_10

    goto :goto_1b

    .line 137
    :goto_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    :cond_2d
    return-void
.end method

.method private synthetic lambda$startCodec$0(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 91
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 93
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mIsAutoPlay:Z

    if-nez p0, :cond_1b

    .line 96
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_1b
    return-void
.end method

.method private synthetic lambda$startCodec$1(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method private startCodec(Landroid/view/Surface;)V
    .registers 5

    .line 83
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCodec surface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    .line 86
    :try_start_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCodec mVideoSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 114
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    if-eqz p2, :cond_e

    .line 115
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSurface:Landroid/view/Surface;

    .line 116
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->startCodec(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 127
    sget-object p1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;)V

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

.method public restartCodec(Z)V
    .registers 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_c

    .line 156
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :catch_a
    move-exception p1

    goto :goto_20

    .line 158
    :cond_c
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 160
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_a

    :cond_1f
    return-void

    .line 165
    :goto_20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public setMediaPlayerListener(Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$MediaPlayerListener;)V
    .registers 2

    return-void
.end method

.method public setVideoSource(I)V
    .registers 4

    .line 79
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

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->mVideoSource:Ljava/lang/String;

    return-void
.end method
