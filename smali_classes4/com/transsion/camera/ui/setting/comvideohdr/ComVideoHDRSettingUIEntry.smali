.class public Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mFlagType:I

.field private final mIsInPopSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$integer;->video_hdr_type_setting_preference:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mFlagType:I

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mIsInPopSetting:Z

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 47
    new-instance v0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRPopSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRPopSettingUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mIsInPopSetting:Z

    if-eqz p0, :cond_13

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 4

    .line 57
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mIsInPopSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 60
    :cond_6
    iget v0, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mFlagType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    .line 61
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_18
    return-object v1
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 37
    iget v0, p0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUIEntry;->mFlagType:I

    if-nez v0, :cond_13

    .line 38
    new-instance v0, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;

    invoke-direct {v2, v1}, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/comvideohdr/ComVideoHDRTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSupported()Z
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->com_video_hdr_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
