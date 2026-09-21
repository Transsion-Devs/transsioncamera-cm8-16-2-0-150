.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;
    }
.end annotation


# virtual methods
.method public abstract autoDisposePlay()V
.end method

.method public abstract cancelExport()V
.end method

.method public abstract composeSource(Landroid/view/SurfaceView;Z)V
.end method

.method public abstract destroy()V
.end method

.method public abstract export(Landroid/content/Context;I)V
.end method

.method public abstract isComposedState()Z
.end method

.method public abstract onSurfaceChanged()V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public abstract pause()V
.end method

.method public abstract pausePlay()V
.end method

.method public abstract replaceSource(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)Z
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(IZ)V
.end method

.method public abstract selectAndMatchTemplate(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setVolume(Ljava/lang/String;F)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract updateText(Ljava/lang/String;Ljava/lang/String;)V
.end method
