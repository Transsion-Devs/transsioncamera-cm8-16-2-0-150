.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;
    }
.end annotation


# virtual methods
.method public abstract cancelAnimation()V
.end method

.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIIIIIIII)Landroid/view/View;
.end method

.method public abstract getEntryView()Landroid/view/View;
.end method

.method public abstract getIsShouldGone()Z
.end method

.method public abstract getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.end method

.method public abstract onEntryViewClick(Landroid/view/View;)V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onScreenSupply(Z)V
.end method

.method public abstract overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract playAnimation(ZF)V
.end method

.method public abstract setIsSellingPoint(Z)V
.end method

.method public abstract setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;)V
.end method

.method public abstract setPointRes(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
.end method

.method public abstract setPositionInPopSetting(I)V
.end method

.method public abstract setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
.end method

.method public abstract setupEntryView()V
.end method

.method public abstract updateSupportEntries()V
.end method

.method public abstract updateTreasureBoxItemBackground(Ljava/lang/String;Z)V
.end method
