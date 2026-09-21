.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$IFreeShotUI;
    }
.end annotation


# virtual methods
.method public abstract enter()V
.end method

.method public abstract exit()V
.end method

.method public abstract init()V
.end method

.method public abstract notifyCameraOperateActionToUI(I)V
.end method

.method public abstract onBackClick()Z
.end method

.method public abstract onBackPressedForUI()Z
.end method

.method public abstract onCameraStateChanged(I)V
.end method

.method public abstract onFirstSteadyFrameArrive()V
.end method

.method public abstract onScreenFormChanged(IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setAttribution(ILjava/util/List;)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Attribution;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;)V
.end method

.method public abstract setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentPage(I)V
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(IZ)V
.end method
