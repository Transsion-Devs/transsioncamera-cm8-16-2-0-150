.class public Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 15
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 19
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private needShowHint()Z
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 38
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    return v0
.end method

.method private showHint()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_18

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_stable_opened_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method


# virtual methods
.method protected doOnValueChanged()V
    .registers 3

    .line 24
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->doOnValueChanged()V

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->needShowHint()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->showHint()V

    return-void

    .line 28
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_22

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStablePopSettingItemUI;->mStableModeOpenedInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_22
    return-void
.end method
