.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;,
        Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$IEntryViewCreator;,
        Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;
    }
.end annotation


# virtual methods
.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
.end method

.method public abstract createOptionEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public abstract currentModeSupportNewVideoSize(Z)V
.end method

.method public abstract getEntryView()Landroid/view/View;
.end method

.method public abstract getFlipEntryView()Landroid/view/View;
.end method

.method public abstract getIsShouldGone()Z
.end method

.method public abstract getOptionEntryView()Landroid/view/View;
.end method

.method public abstract getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.end method

.method public abstract hintInfo()V
.end method

.method public abstract needItemAnimation()Z
.end method

.method public abstract onEntryViewClick(Landroid/view/View;Z)Z
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public abstract onScreenSupply(Z)V
.end method

.method public abstract overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setAnimation(I)V
.end method

.method public abstract setDirection(I)V
.end method

.method public abstract setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public abstract setIsSellingPoint(Z)V
.end method

.method public abstract setItemClickDisable(Z)V
.end method

.method public abstract setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
.end method

.method public abstract setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V
.end method

.method public abstract setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V
.end method

.method public abstract setPointRes(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setPopOptionSettingControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
.end method

.method public abstract setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
.end method

.method public abstract setPositionInTopBar(I)V
.end method

.method public abstract setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
.end method

.method public abstract setupEntryView()V
.end method

.method public abstract updateSupportEntries()V
.end method
