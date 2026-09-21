.class public Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mDefaultFlashStrengthMode:I

.field private final mFlashFacadeSupport:Z

.field private final mFrontDualFlashSupport:Z

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mUseNewLuminanceInteraction:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 7

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFlashFacadeSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFlashFacadeSupport:Z

    .line 40
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseNewLuminanceInteraction:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mUseNewLuminanceInteraction:Z

    .line 41
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoDefaultFlashStrengthMode:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mDefaultFlashStrengthMode:I

    .line 42
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    const/4 v2, 0x0

    .line 43
    aget v3, v1, v2

    const/4 v4, 0x1

    if-gtz v3, :cond_2b

    aget v1, v1, v4

    if-lez v1, :cond_2c

    :cond_2b
    move v2, v4

    :cond_2c
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_38

    .line 45
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/VideoFlashFacadeSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/flash/VideoFlashFacadeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void

    .line 47
    :cond_38
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {p1, v0}, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 5

    .line 69
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_12

    .line 70
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mDefaultFlashStrengthMode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_2d

    .line 72
    :cond_12
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mUseNewLuminanceInteraction:Z

    if-eqz v0, :cond_22

    .line 73
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_2d

    .line 75
    :cond_22
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 78
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object p0
.end method

.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 53
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_10

    .line 54
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    goto :goto_1b

    .line 56
    :cond_10
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/VideoFlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 58
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method
