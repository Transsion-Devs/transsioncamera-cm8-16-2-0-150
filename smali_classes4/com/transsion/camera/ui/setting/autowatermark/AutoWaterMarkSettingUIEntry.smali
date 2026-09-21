.class public Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mIsInPopSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 35
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    return-void
.end method

.method private unSupportAutoWaterMark()Z
    .registers 7

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$bool;->edit_watermark_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$bool;->gold_watermark_support:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->AREA_GOLD_WATERMARK_SUPPORT:[Ljava/lang/String;

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    iget-object v4, v4, Lcom/transsion/camera/utils/CustomConfigUtil;->mPersistOobeName:Ljava/lang/String;

    const-string v5, "NG"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_2e
    move v1, v2

    .line 68
    :goto_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$bool;->pro_watermark_support:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez v1, :cond_3f

    if-nez v0, :cond_3f

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    return v2

    :cond_3f
    :goto_3f
    return v3
.end method


# virtual methods
.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 5

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;->unSupportAutoWaterMark()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 55
    :cond_8
    new-instance v0, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingItemUI;

    new-instance v2, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v2}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkPopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 56
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;->unSupportAutoWaterMark()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 43
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUIEntry;->mIsInPopSetting:Z

    if-nez v0, :cond_19

    .line 44
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/autowatermark/AutoWaterMarkSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_19
    return-object v1
.end method
