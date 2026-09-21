.class public Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mIsInPopSetting:Z

.field private final mIsTopBarUI:Z

.field private final mTreasureBoxSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 24
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mIsInPopSetting:Z

    .line 25
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->ai_shutter_top_bar_ui:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mIsTopBarUI:Z

    .line 26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mTreasureBoxSupport:Z

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 39
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchPopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 40
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mIsInPopSetting:Z

    if-eqz v1, :cond_18

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return-object v0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 31
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mIsInPopSetting:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_b
    :goto_b
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 48
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchSettingUIEntry;->mIsTopBarUI:Z

    if-eqz v0, :cond_13

    .line 49
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchPopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/aishutter/AiShutterSwitchPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0

    .line 52
    :cond_13
    invoke-super {p0}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object p0

    return-object p0
.end method

.method public isSupported()Z
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->ai_shutter_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
