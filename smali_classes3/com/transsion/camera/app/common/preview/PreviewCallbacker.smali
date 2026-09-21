.class public abstract Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public drawExtra(Landroid/graphics/SurfaceTexture;III)V
    .registers 5

    return-void
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public loadGLResourceCallback(I)V
    .registers 2

    return-void
.end method

.method public loadGLResourcesCallback([II)V
    .registers 3

    return-void
.end method

.method public modeInitCallback()V
    .registers 1

    return-void
.end method

.method public modePauseCallback()V
    .registers 1

    return-void
.end method

.method public modeReloadCallback()V
    .registers 1

    return-void
.end method

.method public modeResumeCallback()V
    .registers 1

    return-void
.end method

.method public modeUninitCallback()V
    .registers 1

    return-void
.end method

.method public onRecording(I[F)V
    .registers 3

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
