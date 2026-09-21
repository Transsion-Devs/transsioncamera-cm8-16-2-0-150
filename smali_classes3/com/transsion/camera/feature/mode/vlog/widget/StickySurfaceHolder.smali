.class Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private changedFormat:I

.field private changedHeight:I

.field private changedWidth:I

.field private created:Z

.field private innerCallback:Landroid/view/SurfaceHolder$Callback;

.field private final target:Landroid/view/SurfaceHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallbacks(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchangedFormat(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedFormat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchangedHeight(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputchangedWidth(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcreated(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->created:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Surface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->created:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedFormat:I

    .line 21
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedWidth:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedHeight:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->callbacks:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->innerCallback:Landroid/view/SurfaceHolder$Callback;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    .line 62
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->created:Z

    if-eqz v0, :cond_24

    .line 73
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 74
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedWidth:I

    if-eq v2, v1, :cond_24

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->changedHeight:I

    if-eq v3, v1, :cond_24

    .line 75
    invoke-interface {p1, p0, v0, v2, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_24
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public isCreating()Z
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p0

    return p0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFixedSize(II)V
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public setFormat(I)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    return-void
.end method

.method public setSizeFromLayout()V
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    return-void
.end method

.method public setType(I)V
    .registers 2

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->target:Landroid/view/SurfaceHolder;

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method
