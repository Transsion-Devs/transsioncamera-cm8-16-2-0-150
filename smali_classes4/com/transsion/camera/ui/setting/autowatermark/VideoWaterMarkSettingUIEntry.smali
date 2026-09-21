.class public Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUIEntry;
.super Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;
.source "SourceFile"


# instance fields
.field private final mIsInPopSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;-><init>(Landroid/content/res/Resources;)V

    .line 16
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 30
    new-instance v0, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkPopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 31
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-eqz p0, :cond_13

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 21
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-nez v0, :cond_11

    .line 22
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/autowatermark/VideoWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method
