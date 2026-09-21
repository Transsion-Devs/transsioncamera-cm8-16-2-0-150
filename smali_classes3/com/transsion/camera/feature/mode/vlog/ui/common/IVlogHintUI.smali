.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract hideAllHints()V
.end method

.method public abstract hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
.end method

.method public abstract init()V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setTemplateOrientation(I)V
.end method

.method public abstract showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentPage(I)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(I)V
.end method
