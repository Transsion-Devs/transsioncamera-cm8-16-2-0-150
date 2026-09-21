.class public abstract Lcom/transsion/camera/app/common/preview/PreviewOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IPreviewOperator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public forceRender()V
    .registers 1

    return-void
.end method

.method public loadGLResource(ZI)V
    .registers 3

    return-void
.end method

.method public loadGLResources(Z[II)V
    .registers 4

    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 2

    return-void
.end method

.method public modePause()V
    .registers 1

    return-void
.end method

.method public modeReload()V
    .registers 1

    return-void
.end method

.method public modeResume()V
    .registers 1

    return-void
.end method

.method public modeUninit()V
    .registers 1

    return-void
.end method

.method public onOfflineSwitchFinish()V
    .registers 1

    return-void
.end method

.method public onPause(Z)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public onTopChanged(Z)V
    .registers 2

    return-void
.end method

.method public requestRender()V
    .registers 1

    return-void
.end method

.method public shotScreen(Z)Landroid/graphics/Bitmap;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .registers 3

    return-void
.end method

.method public stopRenderRequest()V
    .registers 1

    return-void
.end method

.method public updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 2

    return-void
.end method
