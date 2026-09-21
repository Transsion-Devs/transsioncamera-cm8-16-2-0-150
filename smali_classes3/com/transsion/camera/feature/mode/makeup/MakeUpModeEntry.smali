.class public Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceBeautyType:I

.field private mIsSupportMakeup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpModeEntry"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    .line 32
    sget p1, Lcom/transsion/camera/feature/makeup/R$bool;->is_support_makeup:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    .line 33
    sget p1, Lcom/transsion/camera/feature/makeup/R$integer;->face_beauty_type:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    .line 34
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "MakeUpModeEntry"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getModeGuideLayoutsArrayId(Ljava/lang/String;)I
    .registers 9

    .line 75
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    .line 76
    sget v1, Lcom/transsion/camera/utils/AreaUtil;->ICON_AREA_CODE:I

    .line 78
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x3e9

    if-eqz p1, :cond_79

    .line 79
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    if-eqz p1, :cond_5b

    .line 80
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    const/4 p1, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-ne p0, v2, :cond_3a

    if-ne v4, v1, :cond_1e

    .line 82
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_south_asia_icon:I

    return p0

    :cond_1e
    if-ne v2, v0, :cond_23

    .line 84
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_south_asia:I

    return p0

    :cond_23
    if-ne v6, v0, :cond_28

    .line 86
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_middle_east:I

    return p0

    :cond_28
    if-ne v3, v0, :cond_2d

    .line 88
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_africa:I

    return p0

    :cond_2d
    if-ne v5, v0, :cond_32

    .line 90
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_southeast_asia:I

    return p0

    :cond_32
    if-ne p1, v0, :cond_37

    .line 92
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_eastern_europe:I

    return p0

    .line 94
    :cond_37
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_support_make_up_mode_guide_layouts_front_universal:I

    return p0

    :cond_3a
    if-ne v4, v1, :cond_3f

    .line 98
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_south_asia_icon:I

    return p0

    :cond_3f
    if-ne v2, v0, :cond_44

    .line 100
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_south_asia:I

    return p0

    :cond_44
    if-ne v6, v0, :cond_49

    .line 102
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_middle_east:I

    return p0

    :cond_49
    if-ne v3, v0, :cond_4e

    .line 104
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_africa:I

    return p0

    :cond_4e
    if-ne v5, v0, :cond_53

    .line 106
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_southeast_asia:I

    return p0

    :cond_53
    if-ne p1, v0, :cond_58

    .line 108
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_eastern_europe:I

    return p0

    .line 110
    :cond_58
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_support_make_up_mode_guide_layouts_front_universal:I

    return p0

    .line 114
    :cond_5b
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    if-ne p0, v2, :cond_6c

    if-ne v4, v1, :cond_64

    .line 116
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_make_up_mode_guide_layouts_front_south_asia:I

    return p0

    :cond_64
    if-ne v3, v1, :cond_69

    .line 118
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_support_make_up_mode_guide_layouts_front_africa:I

    return p0

    .line 120
    :cond_69
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->itd_not_support_make_up_mode_guide_layouts_front_universal:I

    return p0

    :cond_6c
    if-ne v4, v1, :cond_71

    .line 124
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_south_asia:I

    return p0

    :cond_71
    if-ne v3, v1, :cond_76

    .line 126
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_africa:I

    return p0

    .line 128
    :cond_76
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_itd_not_support_make_up_mode_guide_layouts_front_universal:I

    return p0

    .line 133
    :cond_79
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mFaceBeautyType:I

    if-ne p0, v2, :cond_8a

    if-ne v4, v1, :cond_82

    .line 135
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_south_asia:I

    return p0

    :cond_82
    if-ne v3, v1, :cond_87

    .line 137
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_africa:I

    return p0

    .line 139
    :cond_87
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->not_support_make_up_mode_guide_layouts_back_universal:I

    return p0

    :cond_8a
    if-ne v4, v1, :cond_8f

    .line 143
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_south_asia:I

    return p0

    :cond_8f
    if-ne v3, v1, :cond_94

    .line 145
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_africa:I

    return p0

    .line 147
    :cond_94
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_guide_layouts_back_universal:I

    return p0
.end method


# virtual methods
.method public createFeature(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_interactive_setting_ui_entries:I

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_advanced_setting_ui_entries:I

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_advanced_top_bar_setting_ui_entries:I

    .line 45
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_preference_setting_ui_entries:I

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getModeGuideLayoutsArrayId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutIdsFromArrayId(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutIdList(Ljava/util/List;)V

    .line 50
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_5f

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->mIsSupportMakeup:Z

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/makeup/R$array;->make_up_mode_support_algos:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    goto :goto_60

    :cond_5f
    const/4 p1, 0x0

    :goto_60
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSupportAlgos([I)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 4

    .line 166
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->face_beauty_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 169
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_beauty:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 170
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFeatureResource tile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/makeup/R$bool;->makeup_mode_support_tele_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/makeup/R$bool;->makeup_mode_support_wide_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 161
    const-class p0, Lcom/transsion/camera/feature/mode/makeup/MakeUpModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 156
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->make_up_mode_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
