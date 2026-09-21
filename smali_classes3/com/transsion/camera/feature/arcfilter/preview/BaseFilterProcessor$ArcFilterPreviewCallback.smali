.class Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArcFilterPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 6

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$fgetmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawExtra(Landroid/graphics/SurfaceTexture;III)V
    .registers 6

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$fgetmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 274
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->drawPreview(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result p0

    return p0
.end method

.method public loadGLResourceCallback(I)V
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadGLResourceFilterPreviewCallback(I)V

    return-void
.end method

.method public loadGLResourcesCallback([II)V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$mhandleLoadFilterIds(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;[I)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadGLResourcesFilterPreviewCallback([II)V

    return-void
.end method

.method public modeInitCallback()V
    .registers 3

    .line 284
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$minitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public modePauseCallback()V
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->pauseFilterPreviewCallBack()V

    return-void
.end method

.method public modeReloadCallback()V
    .registers 3

    .line 297
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeReloadCallback begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$muninitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$minitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 300
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "modeReloadCallback end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeResumeCallback()V
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->resumeFilterPreviewCallBack()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$muninitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public onRecording(I[F)V
    .registers 3

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->onArcRecording(I[F)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 305
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceCreatedCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$fputmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Z)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$minitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 313
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestoryCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$fputmSurfaceDestroyed(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Z)V

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->-$$Nest$muninitArcFilterEngine(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method
