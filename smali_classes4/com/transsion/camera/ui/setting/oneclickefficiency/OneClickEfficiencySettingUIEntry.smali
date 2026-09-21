.class public Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 30
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public isSupported()Z
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUIEntry;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->streetphoto_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/oneclickefficiency/OneClickEfficiencySettingUIEntry;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->motion_capture_mode_v2_support:I

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
