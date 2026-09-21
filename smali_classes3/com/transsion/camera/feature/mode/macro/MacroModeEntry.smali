.class public Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ZOOM_VALUE:I = 0x2710


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private createMarcoMasterGuideUISpec()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/MasterGuideUIBean;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    new-instance v0, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/MasterGuideUIBean;-><init>()V

    .line 190
    const-string v1, " key_gesture_guide_ui "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setType(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->macro_master_guide_ui_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setDescription([Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 5

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/macro/MacroMode;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_setting_ui_entries:I

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 37
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 38
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_left_top_bar_setting_ui_entries_40:I

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_right_top_bar_setting_ui_entries_40:I

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_pop_setting_ui_entries_40:I

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_83

    .line 45
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_left_top_bar_setting_ui_entries:I

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_right_top_bar_setting_ui_entries:I

    .line 48
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_pop_setting_ui_entries:I

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_83

    .line 53
    :cond_76
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_top_bar_setting_ui_entries:I

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 56
    :goto_83
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->macro_mode_preference_setting_ui_entries:I

    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportMacroCamera(Z)V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setBothCameraSupport(Z)V

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;->createMarcoMasterGuideUISpec()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setMasterGuideUIBean(Ljava/util/List;)V

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 4

    .line 178
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->macro_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->macro_mode_description:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 182
    sget p0, Lcom/transsion/camera/R$drawable;->ic_macro:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected createZoomSpec()V
    .registers 8

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 69
    :goto_d
    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    .line 70
    :goto_18
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    move v1, v2

    .line 71
    :cond_21
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    .line 72
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 73
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 74
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setZoomItemType(I)V

    .line 75
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v4

    const v5, 0x3f19999a    # 0.6f

    invoke-interface {v2, v4, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v4

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMacroSupportZoomForMainCam:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_c5

    if-eqz v1, :cond_c5

    .line 79
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 81
    sget v1, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MIN_ZOOM_RATIO:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v6}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 88
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-interface {v2, v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 95
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->MAIN_THR_CROP_ZOOM_VALUE:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setCameraZoomList(Ljava/util/List;)V

    return-void

    :cond_c5
    if-eqz v0, :cond_109

    .line 104
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 105
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getWideFocalLength()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    const/16 v1, 0x3a98

    .line 107
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 108
    sget v1, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->MIN_ZOOM_RATIO:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 113
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getWideFocalLength()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    const/16 v1, 0x61a8

    .line 115
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 116
    sget v1, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_109
    if-eqz v3, :cond_167

    .line 122
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v6}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 125
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTeleFocalLength()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLengths([Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroZoomCustomized:Z

    if-eqz v2, :cond_148

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 128
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    goto :goto_162

    :cond_148
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setCustomZoomValue(I)V

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 135
    :goto_162
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_167
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setCameraZoomList(Ljava/util/List;)V

    return-void

    :cond_16f
    if-eqz v0, :cond_176

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportWideCamera(Z)V

    :cond_176
    if-eqz v3, :cond_17d

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    .line 145
    :cond_17d
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$array;->macro_mode_setting_wide_tele_zoom_ui_entries:I

    .line 146
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    return-void
.end method

.method public currentModeSupportFrontWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public currentModeSupportTeleCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public currentModeSupportWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 173
    const-class p0, Lcom/transsion/camera/feature/mode/macro/MacroModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 168
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method
