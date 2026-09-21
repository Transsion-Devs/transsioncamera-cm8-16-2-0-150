.class Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundBlurPreview"
.end annotation


# static fields
.field private static final SCALE_RATIO:I = 0x19


# instance fields
.field private mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1610
    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;-><init>()V

    return-void
.end method

.method private createRender()V
    .registers 3

    .line 1641
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-nez v0, :cond_15

    .line 1642
    new-instance v0, Lcom/transsion/camera/utils/gles/render/BlurRender;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    .line 1643
    new-instance p0, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/gles/render/BlurRender;->config(Lcom/transsion/camera/utils/gles/render/IBlurRender$BlurParam;)V

    :cond_15
    return-void
.end method

.method private destroyRender()V
    .registers 2

    .line 1648
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_a

    .line 1649
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/render/BlurRender;->release()V

    const/4 v0, 0x0

    .line 1650
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    :cond_a
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 6

    .line 1656
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->mBlurRender:Lcom/transsion/camera/utils/gles/render/BlurRender;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/gles/render/BlurRender;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 1660
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeInitCallback()V
    .registers 1

    .line 1618
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeInitCallback()V

    .line 1619
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->createRender()V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    .line 1624
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->modeUninitCallback()V

    .line 1625
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->destroyRender()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1630
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    .line 1631
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->createRender()V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1636
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    .line 1637
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoMode$BackgroundBlurPreview;->destroyRender()V

    return-void
.end method
