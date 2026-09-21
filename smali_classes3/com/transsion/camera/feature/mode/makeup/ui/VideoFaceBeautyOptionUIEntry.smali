.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private getGuideLayoutsArrayId()I
    .registers 3

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result p0

    .line 45
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->ICON_AREA_CODE:I

    const/16 v1, 0x3e9

    if-ne v1, v0, :cond_16

    if-eqz p0, :cond_13

    .line 47
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia_itdv2:I

    return p0

    :cond_13
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_south_asia:I

    return p0

    :cond_16
    if-eqz p0, :cond_1b

    .line 49
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal_itdv2:I

    return p0

    :cond_1b
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_face_beauty_guide_layouts_universal:I

    return p0
.end method


# virtual methods
.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .registers 4

    .line 39
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUIEntry;->getGuideLayoutsArrayId()I

    move-result v1

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;
    .registers 4

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mITopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-object v0
.end method
