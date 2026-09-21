.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogUI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public init()V
    .registers 1

    .line 0
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract unInit()V
.end method

.method public updateCurrentPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    return-void
.end method

.method public abstract updateOrientation(IZ)V
.end method
