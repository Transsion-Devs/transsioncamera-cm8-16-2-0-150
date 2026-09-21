.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;


# virtual methods
.method public abstract createPreference(Landroid/content/Context;I)Landroid/preference/Preference;
.end method

.method public abstract init()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onItemClick()V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract setIsSellingPoint(Z)V
.end method

.method public abstract setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
.end method

.method public abstract updateScreenFormType(I)V
.end method
