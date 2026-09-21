.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocumentCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/DocumentMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawExtra(Landroid/graphics/SurfaceTexture;III)V
    .registers 5

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I

    move-result p1

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_16

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)V

    return-void

    .line 422
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmFlagDraw(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->draw(Z)V

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->clearLineShader()V

    :cond_3e
    return-void
.end method

.method public modeInitCallback()V
    .registers 2

    .line 449
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    if-nez v0, :cond_15

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    new-instance v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;-><init>()V

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)V

    :cond_15
    return-void
.end method

.method public modeUninitCallback()V
    .registers 2

    .line 439
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->unInit()V

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)V

    :cond_1a
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 457
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-nez p1, :cond_15

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    new-instance p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;-><init>()V

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)V

    :cond_15
    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 430
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->unInit()V

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)V

    :cond_1a
    return-void
.end method
