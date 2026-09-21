.class Lcom/transsion/camera/feature/mode/more/MoreModePreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# instance fields
.field private mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method private createRender()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/gles/render/BlurRender;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    :cond_b
    return-void
.end method

.method private destroyRender()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_a

    .line 54
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;->release()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    :cond_a
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/BlurRender;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeInitCallback()V
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->createRender()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    .line 30
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->destroyRender()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->createRender()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/more/MoreModePreview;->destroyRender()V

    return-void
.end method
