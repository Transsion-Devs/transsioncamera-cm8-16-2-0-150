.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry$VideoFaceBeautyMakeupSettingGuideItemUI;
    }
.end annotation


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry;->mResources:Landroid/content/res/Resources;

    .line 39
    new-instance p1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "com.transsion.camera.feature.mode.makeup.ui.VideoFaceBeautyMakeupUI5Factory"

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    return-void
.end method

.method private getGuideLayoutsArrayId()I
    .registers 3

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result p0

    .line 58
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->ICON_AREA_CODE:I

    const/16 v1, 0x3e9

    if-ne v1, v0, :cond_16

    if-eqz p0, :cond_13

    .line 60
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia_itdv2:I

    return p0

    :cond_13
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia:I

    return p0

    :cond_16
    if-eqz p0, :cond_1b

    .line 62
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal_itdv2:I

    return p0

    :cond_1b
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal:I

    return p0
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mSettingUIFactory:Lcom/transsion/camera/app/common/provider/ISettingUIFactory;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/provider/ISettingUIFactory;->createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry$VideoFaceBeautyMakeupSettingGuideItemUI;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry;->getGuideLayoutsArrayId()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUIEntry$VideoFaceBeautyMakeupSettingGuideItemUI;-><init>(I)V

    return-object v0
.end method
