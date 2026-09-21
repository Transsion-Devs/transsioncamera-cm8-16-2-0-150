.class public interface abstract Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;


# virtual methods
.method public abstract getBitmap(III)Landroid/graphics/Bitmap;
.end method

.method public getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 5

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract loadGLResource(ZI)V
.end method

.method public abstract loadGLResources(Z[II)V
.end method

.method public abstract modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
.end method

.method public abstract modePause()V
.end method

.method public abstract modeReload()V
.end method

.method public abstract modeResume()V
.end method

.method public abstract modeUninit()V
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public abstract onOfflineSwitchFinish()V
.end method

.method public abstract onPause(Z)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTopChanged(Z)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract shotScreen(Z)Landroid/graphics/Bitmap;
.end method

.method public abstract startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
.end method

.method public abstract stopRenderRequest()V
.end method

.method public abstract updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
.end method
