.class public final Lcom/cutsame/solution/player/MediaPlayer;
.super Lcom/cutsame/solution/player/BasePlayer;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

.field public e:Lcom/cutsame/solution/player/PlayerStateListener;

.field public final f:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener$Stub;

.field public final g:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener$Stub;

.field public final h:Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/cutsame/solution/player/BasePlayer;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer;->a:Landroid/content/Context;

    const-string v0, "MediaPlayer"

    .line 4
    iput-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->b:Ljava/lang/String;

    const-string v0, "segment_id_cut"

    .line 5
    iput-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->c:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;-><init>()V

    iput-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    .line 10
    new-instance v1, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;

    invoke-direct {v1, p0}, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerStateListener$1;-><init>(Lcom/cutsame/solution/player/MediaPlayer;)V

    iput-object v1, p0, Lcom/cutsame/solution/player/MediaPlayer;->f:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener$Stub;

    .line 31
    new-instance v2, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;

    invoke-direct {v2, p0}, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerErrorListener$1;-><init>(Lcom/cutsame/solution/player/MediaPlayer;)V

    iput-object v2, p0, Lcom/cutsame/solution/player/MediaPlayer;->g:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener$Stub;

    .line 38
    new-instance v3, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;

    invoke-direct {v3, p0}, Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;-><init>(Lcom/cutsame/solution/player/MediaPlayer;)V

    iput-object v3, p0, Lcom/cutsame/solution/player/MediaPlayer;->h:Lcom/cutsame/solution/player/MediaPlayer$templatePlayerFirstFrameListener$1;

    .line 49
    invoke-virtual {v0, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setSurface(Landroid/view/SurfaceView;)V

    .line 50
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;->setAutoPrepare(Z)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->init(Landroid/content/Context;Lcom/bytedance/ies/cutsameconsumer/templatemodel/VeConfig;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/volcano/publish/R$color;->player_background:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setBackgroundColor(I)I

    .line 52
    new-instance p0, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;-><init>()V

    invoke-virtual {p0, p2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;->setLoop(Z)V

    invoke-virtual {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setVideoPreviewConfig(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoPreviewConfig;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setOnStateChangedListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setOnErrorListener(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerErrorListener;)V

    .line 55
    invoke-virtual {v0, v3}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setFirstFrameListener(Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerFirstFrameListener;)I

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/cutsame/solution/player/MediaPlayer;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayerStateListener$CutSameIF_release()Lcom/cutsame/solution/player/PlayerStateListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->e:Lcom/cutsame/solution/player/PlayerStateListener;

    return-object p0
.end method

.method public getState()Lcom/cutsame/solution/player/BasePlayer$PlayState;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->getState()Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;

    move-result-object v0

    const-string v1, "templatePlayer.state"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cutsame/solution/player/BasePlayer;->getPlayState$CutSameIF_release(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$State;)Lcom/cutsame/solution/player/BasePlayer$PlayState;

    move-result-object p0

    return-object p0
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->b:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->pause()V

    return-void
.end method

.method public final preparePlayBySingleMedia(Lcom/ss/android/ugc/cut_ui/MediaItem;Landroid/graphics/Point;Lcom/cutsame/solution/player/PlayerStateListener;)V
    .registers 6

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvasSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p3, p0, Lcom/cutsame/solution/player/MediaPlayer;->e:Lcom/cutsame/solution/player/PlayerStateListener;

    .line 2
    sget-object p3, Lcom/bytedance/ies/cutsame/util/MediaUtil;->INSTANCE:Lcom/bytedance/ies/cutsame/util/MediaUtil;

    iget-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/bytedance/ies/cutsame/util/MediaUtil;->getRealVideoMetaDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;

    move-result-object p3

    .line 3
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/veadapter/VideoData;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/cutsame/solution/player/MediaPlayer;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->segmentIds:[Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/ss/android/ugc/cut_ui/MediaItem;->getSource()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->videoFilePaths:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimIn:[I

    .line 7
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/util/VideoMetaDataInfo;->getDuration()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->vTrimOut:[I

    .line 8
    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    invoke-direct {p1}, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;-><init>()V

    const-string p3, "canvas_color"

    .line 9
    iput-object p3, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->type:Ljava/lang/String;

    const-string p3, "#000000"

    .line 10
    iput-object p3, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->color:Ljava/lang/String;

    .line 11
    iget p3, p2, Landroid/graphics/Point;->x:I

    iput p3, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->width:I

    .line 12
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;->height:I

    .line 13
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    filled-new-array {p1}, [Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/ies/cutsame/veadapter/VideoData;->veCanvasFilterParams:[Lcom/bytedance/ies/cutsame/veadapter/CanvasParam;

    .line 21
    iget-object p1, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->setDataSource(Lcom/bytedance/ies/cutsame/veadapter/VideoData;)I

    .line 22
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->prepareVE()I

    return-void
.end method

.method public final refreshCurrentFrame()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->refreshCurrentFrame()I

    return-void
.end method

.method public release()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->destroyPlayer()V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->releaseObject()V

    return-void
.end method

.method public final seekTo(IZ)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seekDone(IZ)I

    return-void
.end method

.method public final seeking(I)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->seeking(I)I

    return-void
.end method

.method public start()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/cutsame/solution/player/MediaPlayer;->b:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/cutsame/solution/player/MediaPlayer;->d:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->start()V

    return-void
.end method
