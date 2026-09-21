.class public Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mDefaultFlashStrengthMode:I

.field private final mFlashFacadeSupport:Z

.field private final mFrontDualFlashSupport:Z

.field private final mLuminanceAdjustSupportForCamera:[I

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mUseNewLuminanceInteraction:Z


# direct methods
.method public static synthetic $r8$lambda$bJWVr5j8AVjm9QoSvTaWPgAENM4(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)Lcom/transsion/camera/app/common/provider/ISettingUIFactory;
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 9

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mFlashFacadeSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mFlashFacadeSupport:Z

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseNewLuminanceInteraction:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mUseNewLuminanceInteraction:Z

    .line 45
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultFlashStrengthMode:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mDefaultFlashStrengthMode:I

    .line 46
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mLuminanceAdjustSupportForCamera:[I

    const/4 v4, 0x0

    .line 47
    aget v5, v3, v4

    const/4 v6, 0x1

    if-gtz v5, :cond_2d

    aget v3, v3, v6

    if-lez v3, :cond_2e

    :cond_2d
    move v4, v6

    :cond_2e
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mFrontDualFlashSupport:Z

    if-eqz v0, :cond_3a

    .line 49
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    goto :goto_41

    .line 51
    :cond_3a
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 53
    :goto_41
    new-instance p1, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {p1, v0, v2, v1, v4}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;IZZ)V

    .line 55
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.ui.setting.flash.FlashSettingUI5Factory"

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;->createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 74
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_10

    .line 75
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    goto :goto_1b

    .line 77
    :cond_10
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashPopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashPopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 79
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    return-object p0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 62
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_1b

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashFacadeTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 64
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    goto :goto_31

    .line 66
    :cond_1b
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashTopBarItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 67
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashPopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIEntry;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/flash/FlashPopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 69
    :goto_31
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object p0
.end method
