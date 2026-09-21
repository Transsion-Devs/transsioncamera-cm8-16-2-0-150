.class public Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry;->mResources:Landroid/content/res/Resources;

    .line 32
    new-instance p1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "com.transsion.camera.ui.setting.videoportraitspot.VideoPortraitSpotSettingUI5Factory"

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;->createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .registers 4

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;

    sget v1, Lcom/transsion/camera/R$array;->guide_video_portrait_spot_id:I

    new-instance v2, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotOptionUISpec;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotSettingUIEntry;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_portrait_spot_enable:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
