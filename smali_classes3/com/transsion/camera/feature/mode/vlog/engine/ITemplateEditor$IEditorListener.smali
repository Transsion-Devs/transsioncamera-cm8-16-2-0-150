.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEditorListener"
.end annotation


# virtual methods
.method public abstract onComposeCompleted(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
.end method

.method public abstract onComposePaused()V
.end method

.method public abstract onComposeStarted()V
.end method

.method public abstract onExportDone(Ljava/lang/String;)V
.end method

.method public abstract onExportError(IIFLjava/lang/String;)V
.end method

.method public abstract onExportProgress(F)V
.end method

.method public abstract onFirstFrameRendered()V
.end method

.method public abstract onPlayerDestroyed()V
.end method

.method public abstract onPlayerPlaying(Z)V
.end method

.method public abstract onPlayerProgress(J)V
.end method

.method public abstract onTemplateMatchCompleted(J)V
.end method

.method public abstract onTemplateMatchStarted()V
.end method

.method public abstract quitWithSdkNotInit()V
.end method
