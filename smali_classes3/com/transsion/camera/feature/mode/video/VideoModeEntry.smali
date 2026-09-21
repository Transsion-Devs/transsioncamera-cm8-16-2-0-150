.class public Lcom/transsion/camera/feature/mode/video/VideoModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "SourceFile"


# instance fields
.field private mFeatureParameters:Lcom/transsion/camera/app/common/provider/FeatureParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private createModeSettingUISpec(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 7

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$array;->video_mode_setting_ui_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 81
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_left_top_bar_setting_ui_entries_40:I

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_right_top_bar_setting_ui_entries_40:I

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_pop_setting_ui_entries_40:I

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_7a

    .line 89
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_left_top_bar_setting_ui_entries:I

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_right_top_bar_setting_ui_entries:I

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_pop_setting_ui_entries:I

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_7a

    .line 97
    :cond_6d
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_top_bar_setting_ui_entries:I

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 100
    :goto_7a
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_mode_preference_setting_ui_entries:I

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportChangeFlashWhenRecording(Z)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->video_guide_item_entries:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSettingGuideLayoutIdList([Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$array;->video_mode_option_setting_ui_entries:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setOptionSettingUIEntries([Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(I)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_back_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_c2

    .line 111
    :cond_ba
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$array;->video_mode_interactive_setting_ui_front_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 113
    :goto_c2
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v0, :cond_d4

    .line 114
    const-string v0, "com.transsion.camera.feature.dv_template.entrance.DVTemplateEntranceSettingUIEntry"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->addString([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_d4
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$bool;->video_mode_support_macro_camera:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportMacroCamera(Z)V

    .line 120
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_sat:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_ff

    .line 121
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProjectSupportSat()Z

    move-result p1

    if-eqz p1, :cond_ff

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseSATSupport()Z

    move-result p1

    if-nez p1, :cond_ff

    move p1, v1

    goto :goto_100

    :cond_ff
    move p1, v0

    .line 122
    :goto_100
    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportSat(Z)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->screenFlip(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setBothCameraSupport(Z)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$bool;->video_mode_support_video_camera:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportVideoCamera(Z)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->createVideoMasterGuideUISpec()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setMasterGuideUIBean(Ljava/util/List;)V

    .line 127
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI()Z

    move-result p1

    if-eqz p1, :cond_143

    .line 128
    const-string p1, "com.transsion.camera.feature.mode.video.FoldFlipVideoModeEntryImpl"

    .line 129
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipModeEntry;

    if-eqz p1, :cond_143

    .line 131
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipModeEntry;->modifyFeature(Lcom/transsion/camera/app/common/ModeSettingUISpec;Landroid/content/res/Resources;)V

    .line 134
    :cond_143
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-object p0
.end method

.method private createVideoMasterGuideUISpec()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/MasterGuideUIBean;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    new-instance v0, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/MasterGuideUIBean;-><init>()V

    .line 141
    const-string v1, " key_gesture_guide_ui "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setType(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$array;->video_master_guide_ui_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setDescription([Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .registers 5

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->mFeatureParameters:Lcom/transsion/camera/app/common/provider/FeatureParameters;

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/camera/feature/mode/video/VideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->createModeSettingUISpec(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 3

    .line 70
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->video_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 73
    sget p0, Lcom/transsion/camera/R$drawable;->ic_video:I

    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    return-object v0
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_front_wide_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_tele_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->video_mode_support_wide_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 65
    const-class p0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 60
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public updateFeature(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 55
    :cond_3
    check-cast p1, Lcom/transsion/camera/app/common/mode/CameraMode;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->mFeatureParameters:Lcom/transsion/camera/app/common/provider/FeatureParameters;

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/mode/video/VideoModeEntry;->createModeSettingUISpec(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-void
.end method
