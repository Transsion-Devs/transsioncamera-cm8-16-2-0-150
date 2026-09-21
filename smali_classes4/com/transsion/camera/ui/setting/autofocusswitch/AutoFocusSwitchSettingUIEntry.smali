.class public Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mIsInPopSetting:Z

.field private final mTreasureBoxSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 31
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;->mIsInPopSetting:Z

    .line 32
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;->mTreasureBoxSupport:Z

    return-void
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 45
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchPopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;->mIsInPopSetting:Z

    if-nez p0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    return-object v0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 37
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;->mIsInPopSetting:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUIEntry;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_b
    :goto_b
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method
