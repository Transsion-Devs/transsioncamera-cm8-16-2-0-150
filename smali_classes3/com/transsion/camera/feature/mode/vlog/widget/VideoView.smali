.class public Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;
.super Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;
.implements Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayerCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;,
        Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;,
        Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;
    }
.end annotation


# static fields
.field private static final GONE_STR:Ljava/lang/String; = "GONE"

.field private static final INVISIBLE_STR:Ljava/lang/String; = "INVISIBLE"

.field private static final VIDEO_VIEW_TAG:Ljava/lang/String; = "VideoView"

.field private static final VISIBLE_STR:Ljava/lang/String; = "VISIBLE"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private final mPlayerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressListener:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;

.field private final mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView-IA;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    .line 55
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    .line 92
    new-instance p3, Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoView"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 95
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->default_video_view_radius:I

    .line 96
    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/vlog/R$styleable;->VideoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    sget p2, Lcom/transsion/camera/feature/vlog/R$styleable;->VideoView_radius:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/RoundRectOutlineProvider;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 107
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setScaleType(Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;)V

    .line 109
    const-string p1, "VideoView, setListener"

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private checkThread()V
    .registers 2

    .line 416
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p0, v0, :cond_b

    return-void

    .line 417
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "cannot be in main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private notifyOnCompleted()V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 311
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 313
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 314
    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onCompleted()V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 312
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private notifyOnError(II)V
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnError"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 372
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 375
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onError(II)V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 373
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private notifyOnInfo(I)V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 360
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 362
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 363
    invoke-interface {v2, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onInfo(I)V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 361
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private notifyOnPaused()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnPaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 277
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 280
    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onPaused()V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 278
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private notifyOnStarted()V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 260
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 263
    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onStarted()V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 261
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private notifyOnStopped()V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyOnStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 294
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_26

    .line 296
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, p0, :cond_25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;

    .line 297
    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;->onStopped()V

    goto :goto_17

    :cond_25
    return-void

    :catchall_26
    move-exception p0

    .line 295
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private printErrorExtra(I)V
    .registers 3

    const/16 v0, -0x3f2

    if-eq p1, v0, :cond_29

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_21

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_19

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_11

    return-void

    .line 351
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_TIMED_OUT"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 342
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_IO"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_MALFORMED"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 348
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "error extra MEDIA_ERROR_UNSUPPORTED"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private visibilityStr(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_18

    const/4 p0, 0x4

    if-eq p1, p0, :cond_15

    const/16 p0, 0x8

    if-ne p1, p0, :cond_c

    .line 239
    const-string p0, "GONE"

    return-object p0

    .line 241
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_15
    const-string p0, "INVISIBLE"

    return-object p0

    .line 235
    :cond_18
    const-string p0, "VISIBLE"

    return-object p0
.end method


# virtual methods
.method public addPlayerListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearPlayer()V
    .registers 4

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> clearPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 665
    :try_start_d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setVideoSize(II)V

    const/4 v1, 0x0

    .line 666
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 667
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1f

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< clearPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_1f
    move-exception p0

    .line 667
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public createPlayer()V
    .registers 6

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> createPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 428
    :try_start_d
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setVideoSize(II)V

    .line 430
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setFailedToPrepareUiForPlayback(Z)V

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isSurfaceTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 433
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 434
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createPlayer texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_5a

    :catchall_51
    move-exception p0

    goto :goto_6d

    .line 437
    :cond_53
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "createPlayer texture not available"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    :goto_5a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setPlayerListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoPlayerListener;)V

    .line 441
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setProgressListener(Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;)V

    .line 442
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_51

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< createPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 442
    :goto_6d
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_51

    throw p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method public getProgressListener()Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;

    return-object p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public isPlaying()Z
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    .line 145
    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    goto :goto_12

    .line 147
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->isPlaying()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 148
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a

    throw p0
.end method

.method public onCompleted()V
    .registers 1

    .line 303
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnCompleted()V

    return-void
.end method

.method public onError(II)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x64

    if-eq p1, v0, :cond_8

    goto :goto_1d

    .line 327
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onError, what MEDIA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->printErrorExtra(I)V

    goto :goto_1d

    .line 331
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onError, what MEDIA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->printErrorExtra(I)V

    .line 336
    :goto_1d
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnError(II)V

    return-void
.end method

.method public onInfo(I)V
    .registers 2

    .line 320
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnInfo(I)V

    return-void
.end method

.method public onPaused()V
    .registers 1

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnPaused()V

    return-void
.end method

.method public onPrepared()V
    .registers 1

    return-void
.end method

.method public onProgressUpdate(I)V
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;

    if-eqz p0, :cond_7

    .line 411
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;->onProgressUpdate(I)V

    :cond_7
    return-void
.end method

.method public onStarted()V
    .registers 1

    .line 252
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnStarted()V

    return-void
.end method

.method public onStopped()V
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->notifyOnStopped()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 154
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, ">> onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter p2

    .line 157
    :try_start_a
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz p3, :cond_14

    .line 158
    invoke-virtual {p3, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_21

    :catchall_12
    move-exception p0

    goto :goto_44

    .line 160
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setVideoSize(II)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "mMediaPlayer null, cannot set surface texture"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    :goto_21
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setSurfaceTextureAvailable(Z)V

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "notify ready for playback"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 170
    :cond_3b
    monitor-exit p2
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_12

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onSurfaceTextureAvailable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 170
    :goto_44
    :try_start_44
    monitor-exit p2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_12

    throw p0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, ">> onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter p1

    .line 192
    :try_start_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setSurfaceTextureAvailable(Z)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 194
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1f

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onSurfaceTextureDestroyed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catchall_1f
    move-exception p0

    .line 194
    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .registers 6

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 385
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setContentWidth(I)V

    .line 386
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setContentHeight(I)V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->updateTextureSize()V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setVideoSize(II)V

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter p1

    .line 393
    :try_start_33
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 394
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "run, onVideoSizeChanged, notifyAll"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_4c

    .line 397
    :cond_4a
    :goto_4a
    monitor-exit p1

    return-void

    :goto_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_48

    throw p0

    .line 399
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onVideoSizeChanged, size 0. Probably will be unable to start video"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter p1

    .line 402
    :try_start_58
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->setFailedToPrepareUiForPlayback(Z)V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 404
    monitor-exit p1

    return-void

    :catchall_65
    move-exception p0

    monitor-exit p1
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_65

    throw p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    .line 215
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> onVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->visibilityStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x4

    if-eq p2, p1, :cond_25

    const/16 p1, 0x8

    if-eq p2, p1, :cond_25

    goto :goto_2e

    .line 224
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter p1

    .line 225
    :try_start_28
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 226
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_36

    .line 229
    :goto_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< onVisibilityChanged"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_36
    move-exception p0

    .line 226
    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public pause()V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> pause, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 604
    :try_start_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 605
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->pause()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_39

    .line 607
    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2e

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< pause"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 607
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2e

    throw p0
.end method

.method public prepare()V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> prepare, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 519
    :try_start_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_28

    .line 520
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->prepare()V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_31

    .line 522
    :cond_28
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_26

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< prepare"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 522
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_26

    throw p0
.end method

.method public release()V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> release, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 650
    :try_start_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_28

    .line 651
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->release()V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_31

    .line 653
    :cond_28
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_26

    .line 655
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 653
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_26

    throw p0
.end method

.method public removePlayerListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IPlayerListener;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mPlayerListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reset()V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> reset, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 635
    :try_start_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_28

    .line 636
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->reset()V

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_31

    .line 638
    :cond_28
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_26

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< reset"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 638
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_26

    throw p0
.end method

.method public seekTo(I)V
    .registers 5

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> seekTo msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 534
    :try_start_26
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez v1, :cond_2e

    .line 535
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_49

    .line 537
    :cond_2e
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->seekTo(I)V

    .line 538
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_2c

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< seekTo msec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 538
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_2c

    throw p0
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setDataSource, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez v0, :cond_1d

    return-void

    .line 495
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 498
    :try_start_23
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource, assetFileDescriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_51

    .line 502
    :try_start_41
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_53
    .catchall {:try_start_41 .. :try_end_46} :catchall_51

    .line 506
    :try_start_46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 507
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception p0

    goto :goto_5a

    :catch_53
    move-exception p0

    .line 504
    :try_start_54
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 507
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    throw p0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setDataSource, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez v0, :cond_1d

    return-void

    .line 470
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 473
    :try_start_23
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_51

    .line 476
    :try_start_41
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_53
    .catchall {:try_start_41 .. :try_end_46} :catchall_51

    .line 480
    :try_start_46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPath:Ljava/lang/String;

    .line 481
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_51

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception p0

    goto :goto_5a

    :catch_53
    move-exception p0

    .line 478
    :try_start_54
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 481
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    throw p0
.end method

.method public setLoop(Z)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setLoop loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 454
    :try_start_26
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_30

    .line 455
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setLooping(Z)V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_39

    .line 457
    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2e

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setLoop"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 457
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2e

    throw p0
.end method

.method public setProgressListener(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mProgressListener:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$IProgressListener;

    return-void
.end method

.method public setVolume(F)V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> setVolume volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 550
    :try_start_26
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez v1, :cond_2e

    .line 551
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_49

    .line 553
    :cond_2e
    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->setVolume(F)V

    .line 554
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_2c

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< setVolume volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 554
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_2c

    throw p0
.end method

.method public start()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 564
    :try_start_a
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-nez v1, :cond_19

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "start, but mVideoPlayer is null"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_68

    .line 569
    :cond_19
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 570
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->start()V

    goto :goto_5f

    .line 572
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, >> wait"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isFailedToPrepareUiForPlayback()Z

    move-result v1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_17

    if-nez v1, :cond_58

    .line 575
    :try_start_36
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_51
    .catchall {:try_start_36 .. :try_end_3b} :catchall_17

    .line 580
    :try_start_3b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 581
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->start()V

    goto :goto_5f

    .line 583
    :cond_49
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, video is not ready, Player become STARTED state, but it will actually don\'t play"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_5f

    :catch_51
    move-exception p0

    .line 577
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 587
    :cond_58
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "start, video is not ready. Video size will not become available"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 591
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_17

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 591
    :goto_68
    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_17

    throw p0
.end method

.method public stop()V
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> stop, mVideoPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->checkThread()V

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mReadyForPlayback:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView$ReadyForPlayback;

    monitor-enter v0

    .line 620
    :try_start_1e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 621
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->mVideoPlayer:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;->stop()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_39

    .line 623
    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2e

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< stop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 623
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_2e

    throw p0
.end method
