.class public interface abstract Lcom/transsion/camera/app/ui/IPopSettingUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# virtual methods
.method public abstract dismissPopup()Z
.end method

.method public abstract dismissPopupWithoutAnimation()Z
.end method

.method public hidePopSettingView(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 27
    invoke-interface {p0, p1, v0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZZ)V

    return-void
.end method

.method public hidePopSettingView(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 30
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZZ)V

    return-void
.end method

.method public abstract hidePopSettingView(ZZZ)V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCameraOperateAction(I)V
.end method

.method public abstract onModeSwitch(Z)V
.end method

.method public abstract setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract showPopSettingView(ZZZ)V
.end method

.method public abstract unInit()V
.end method
