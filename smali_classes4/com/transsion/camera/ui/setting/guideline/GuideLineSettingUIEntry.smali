.class public Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mIsInPopSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry;->mIsInPopSetting:Z

    .line 33
    new-instance p1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "com.transsion.camera.ui.setting.guideline.GuideLineSettingUI5Factory"

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;->createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createPopSettingItemUI()Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;
    .registers 4

    .line 48
    new-instance v0, Lcom/transsion/camera/ui/setting/guideline/GuideLinePopSettingItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/guideline/GuideLinePopSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/guideline/GuideLinePopSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/guideline/GuideLinePopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mIPopSettingItemUI:Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry;->mIsInPopSetting:Z

    if-eqz p0, :cond_13

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 40
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUIEntry;->mIsInPopSetting:Z

    if-nez v0, :cond_11

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/guideline/GuideLineSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method
