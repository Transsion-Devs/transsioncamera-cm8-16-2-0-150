.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$ICutSameUI;,
        Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$GuideState;
    }
.end annotation


# static fields
.field public static final HIDE:I = 0x1

.field public static final SHOW:I


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

.method public abstract setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;)V
.end method

.method public abstract setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
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
