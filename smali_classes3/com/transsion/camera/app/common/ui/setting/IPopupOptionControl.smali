.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;,
        Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;
    }
.end annotation


# virtual methods
.method public abstract dismissPopup()V
.end method

.method public abstract dismissPopupWithoutAnimation()V
.end method

.method public abstract doOnDismiss()V
.end method

.method public abstract onScreenSupply(Z)V
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z
    .registers 6

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZI)Z
    .registers 6

    .line 0
    const/4 p0, 0x0

    return p0
.end method
