.class public Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;
.super Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TELE_ENTRY:Ljava/lang/String; = "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"


# instance fields
.field private mAlgoSupportForBackCamera:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterModeEntry"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 48
    sget p1, Lcom/transsion/camera/feature/pmaster/R$bool;->is_algo_support_for_back_camera:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->mAlgoSupportForBackCamera:Z

    .line 49
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "PMasterModeEntry"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createGuideLayoutIds(Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 262
    sget p0, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    .line 263
    sget v0, Lcom/transsion/camera/utils/AreaUtil;->ICON_AREA_CODE:I

    .line 264
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result v1

    .line 265
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    const/16 v2, 0x3e9

    const/4 v3, 0x2

    if-eqz p1, :cond_89

    const/4 p1, 0x1

    if-ne v2, v0, :cond_20

    if-eqz v1, :cond_1d

    .line 267
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_south_asia_itdv2:I

    goto :goto_5c

    :cond_1d
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_south_asia_icon:I

    goto :goto_5c

    :cond_20
    if-ne p1, p0, :cond_2a

    if-eqz v1, :cond_27

    .line 269
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_south_asia_itdv2:I

    goto :goto_5c

    :cond_27
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_south_asia:I

    goto :goto_5c

    :cond_2a
    const/4 v0, 0x4

    if-ne v0, p0, :cond_35

    if-eqz v1, :cond_32

    .line 271
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_middle_east_itdv2:I

    goto :goto_5c

    :cond_32
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_middle_east:I

    goto :goto_5c

    :cond_35
    if-ne v3, p0, :cond_3f

    if-eqz v1, :cond_3c

    .line 273
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_africa_itdv2:I

    goto :goto_5c

    :cond_3c
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_africa:I

    goto :goto_5c

    :cond_3f
    const/4 v0, 0x5

    if-ne v0, p0, :cond_4a

    if-eqz v1, :cond_47

    .line 275
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_southeast_asia_itdv2:I

    goto :goto_5c

    :cond_47
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_southeast_asia:I

    goto :goto_5c

    :cond_4a
    const/4 v0, 0x6

    if-ne v0, p0, :cond_55

    if-eqz v1, :cond_52

    .line 277
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_eastern_europe_itdv2:I

    goto :goto_5c

    :cond_52
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_eastern_europe:I

    goto :goto_5c

    :cond_55
    if-eqz v1, :cond_5a

    .line 279
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_universal_itdv2:I

    goto :goto_5c

    :cond_5a
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_front_universal:I

    .line 282
    :goto_5c
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutIdsFromArrayId(I)Ljava/util/List;

    move-result-object p0

    if-eqz p2, :cond_88

    if-eqz p0, :cond_81

    .line 285
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6b

    goto :goto_81

    .line 290
    :cond_6b
    sget p2, Lcom/transsion/camera/utils/AreaUtil;->REGION_CODE:I

    if-ne p1, p2, :cond_72

    .line 293
    sget p2, Lcom/transsion/camera/featurelibs/makeupRes/R$layout;->guide_make_up_make_up_africa:I

    goto :goto_79

    :cond_72
    if-ne v3, p2, :cond_77

    .line 295
    sget p2, Lcom/transsion/camera/featurelibs/makeupRes/R$layout;->guide_make_up_make_up_south_asia:I

    goto :goto_79

    .line 297
    :cond_77
    sget p2, Lcom/transsion/camera/featurelibs/makeupRes/R$layout;->guide_make_up_make_up_universal:I

    .line 299
    :goto_79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0

    .line 286
    :cond_81
    :goto_81
    sget-object p1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "guideLayoutIds is empty, skip adding makeup layout"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_88
    return-object p0

    :cond_89
    if-ne v2, v0, :cond_93

    if-eqz v1, :cond_90

    .line 303
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_south_asia_itdv2:I

    goto :goto_a4

    :cond_90
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_south_asia:I

    goto :goto_a4

    :cond_93
    if-ne v3, v0, :cond_9d

    if-eqz v1, :cond_9a

    .line 305
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_africa_itdv2:I

    goto :goto_a4

    :cond_9a
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_africa:I

    goto :goto_a4

    :cond_9d
    if-eqz v1, :cond_a2

    .line 307
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_universal_itdv2:I

    goto :goto_a4

    :cond_a2
    sget p0, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_guide_layouts_back_universal:I

    .line 310
    :goto_a4
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutIdsFromArrayId(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createPMasterMasterGuideUISpec()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/MasterGuideUIBean;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    new-instance v0, Lcom/transsion/camera/app/common/MasterGuideUIBean;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/MasterGuideUIBean;-><init>()V

    .line 321
    const-string v1, " key_gesture_guide_ui "

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setType(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_master_guide_ui_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/MasterGuideUIBean;->setDescription([Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    return-object p0
.end method

.method private currentModeSupport2XZoom()Z
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->sdof_mode_support_2x_zoom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private needSecondZoom(F)Z
    .registers 2

    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .registers 11

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v2

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode()Z

    move-result v3

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->mAlgoSupportForBackCamera:Z

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;-><init>(Ljava/lang/String;ZZLcom/transsion/camera/app/common/provider/FeatureParameters;Z)V

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    if-eqz p2, :cond_72

    .line 58
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_left_top_bar_setting_ui_entries_40:I

    .line 60
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_right_top_bar_setting_ui_entries_40:I

    .line 62
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_pop_setting_ui_entries_40:I

    .line 64
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_7f

    .line 66
    :cond_4a
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_left_top_bar_setting_ui_entries:I

    .line 67
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setLeftTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_right_top_bar_setting_ui_entries:I

    .line 69
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setRightTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_pop_setting_ui_entries:I

    .line 71
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPopSettingUIEntries([Ljava/lang/String;)V

    goto :goto_7f

    .line 74
    :cond_72
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_advanced_top_bar_setting_ui_entries:I

    .line 75
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setTopBarSettingUIEntries([Ljava/lang/String;)V

    .line 77
    :goto_7f
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_interactive_setting_ui_entries:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureSupport()Z

    move-result v1

    const-string v5, "com.transsion.camera.ui.setting.groupcapture.GroupCaptureSettingUIEntry"

    const/16 v6, 0x68

    if-eqz v1, :cond_a1

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    if-lt v1, v6, :cond_9d

    if-eqz v2, :cond_a1

    .line 79
    :cond_9d
    invoke-static {p2, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 81
    :cond_a1
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_advanced_setting_ui_entries:I

    .line 84
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSettingUIEntries([Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/pmaster/R$array;->aod_pmaster_mode_advanced_setting_ui_entries:I

    .line 86
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAodModeSettingUIEntries([Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_preference_setting_ui_entries:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isGroupCaptureSupport()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    if-lt v1, v6, :cond_da

    if-eqz v2, :cond_de

    .line 89
    :cond_da
    invoke-static {p2, v5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 91
    :cond_de
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setPreferenceSettingUIEntries([Ljava/lang/String;)V

    .line 93
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->mAlgoSupportForBackCamera:Z

    if-eqz p2, :cond_fa

    .line 94
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_f0

    .line 95
    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_back_option_setting_ui_entries_algoblur:I

    goto :goto_f2

    :cond_f0
    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_front_option_setting_ui_entries:I

    .line 94
    :goto_f2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setOptionSettingUIEntries([Ljava/lang/String;)V

    goto :goto_111

    .line 97
    :cond_fa
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_108

    if-eqz v3, :cond_105

    .line 98
    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_back_option_setting_ui_entries_vipmode:I

    goto :goto_10a

    :cond_105
    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_back_option_setting_ui_entries:I

    goto :goto_10a

    .line 99
    :cond_108
    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_front_option_setting_ui_entries:I

    .line 97
    :goto_10a
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setOptionSettingUIEntries([Ljava/lang/String;)V

    .line 102
    :goto_111
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_support_algos:I

    .line 103
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 102
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipModeSupportAlgos([I)V

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_mode_option_setting_ui_entries:I

    .line 105
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipOptionSettingUIEntries([Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_mode_interactive_setting_ui_entries:I

    .line 107
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipModeInteractiveSettingUIEntries([Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_mode_advanced_setting_ui_entries:I

    .line 109
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipModeSettingUIEntries([Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_mode_pop_setting_top_ui_entries:I

    .line 111
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipPopSettingTopUIEntries([Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/pmaster/R$array;->aod_flip_pmaster_mode_pop_setting_down_ui_entries:I

    .line 113
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipPopSettingDownUIEntries([Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->pocketScreen(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z

    move-result p2

    if-eqz v2, :cond_176

    if-nez p2, :cond_176

    .line 118
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->mAlgoSupportForBackCamera:Z

    if-eqz v1, :cond_174

    .line 119
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/pmaster/R$array;->back_pmaster_support_algos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    goto :goto_17e

    :cond_174
    const/4 v1, 0x0

    goto :goto_17e

    .line 122
    :cond_176
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/pmaster/R$array;->front_pmaster_support_algos:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    :goto_17e
    const/4 v2, 0x1

    if-eqz p2, :cond_18b

    .line 126
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p2

    if-eqz p2, :cond_18b

    .line 127
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    .line 130
    :cond_18b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyIntegrationInApp:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p2, :cond_19d

    if-nez v1, :cond_199

    .line 132
    new-array v1, v6, [I

    .line 134
    :cond_199
    invoke-static {v1, v5}, Lcom/transsion/camera/utils/ArrayUtils;->add([II)[I

    move-result-object v1

    .line 137
    :cond_19d
    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_vip_support_algos:I

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    .line 138
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyIntegrationInApp:Z

    if-eqz v7, :cond_1b1

    .line 139
    invoke-static {p2, v5}, Lcom/transsion/camera/utils/ArrayUtils;->add([II)[I

    move-result-object p2

    .line 141
    :cond_1b1
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz v3, :cond_1b7

    move-object v7, p2

    goto :goto_1b8

    :cond_1b7
    move-object v7, v1

    :goto_1b8
    invoke-virtual {v5, v7}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeSupportAlgos([I)V

    if-eqz v3, :cond_1c2

    .line 143
    invoke-static {p2, v6}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p2

    goto :goto_1c6

    :cond_1c2
    invoke-static {v1, v6}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p2

    .line 144
    :goto_1c6
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->createGuideLayoutIds(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setModeGuideLayoutIdList(Ljava/util/List;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->screenFlip(Lcom/transsion/camera/app/common/provider/FeatureParameters;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setAeAfLockSupport(Z)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setBothCameraSupport(Z)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p2, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mMasterGuideUIBeans:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setMasterGuideUIBean(Ljava/util/List;)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V

    return-object v0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 4

    .line 340
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/pmaster/R$string;->pmaster_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 343
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_beauty:I

    iput v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$string;->pmaster_mode_description:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 345
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

.method protected createSecondDefaultValue()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createSecondDefaultValue()V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$integer;->second_zoom_default_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v1, :cond_15

    mul-int/lit8 v0, v0, 0x64

    .line 159
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSecondDefautZoomValue(I)V

    return-void
.end method

.method protected createZoomSpec()V
    .registers 11

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 165
    :goto_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->currentModeSupportTeleCamera()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCamera:Z

    if-eqz v0, :cond_19

    if-eqz v3, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 167
    :goto_1a
    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 168
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mConfigTeleCamera:Z

    if-eqz v3, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    if-nez v0, :cond_30

    if-eqz v3, :cond_2e

    goto :goto_30

    :cond_2e
    move v4, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v4, v2

    .line 170
    :goto_31
    iget-object v5, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setSupportTeleCamera(Z)V

    .line 172
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mFocalLengthSupport:Z

    .line 173
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v6

    .line 174
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez v5, :cond_5b

    .line 177
    invoke-super {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->createZoomSpec()V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setZoomItemType(I)V

    return-void

    .line 182
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setZoomItemType(I)V

    .line 183
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getMainPmasterFocalLength()[Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getTelePmasterFocalLength()[Ljava/lang/String;

    move-result-object v3

    move v5, v1

    .line 185
    :goto_69
    array-length v7, v0

    if-ge v5, v7, :cond_93

    .line 186
    new-instance v7, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v7}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 187
    iget-object v8, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v6, v8, v9}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 188
    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLength(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    .line 189
    invoke-virtual {v7, v5}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 190
    invoke-virtual {v7, v5}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 191
    iget-object v8, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_93
    if-eqz v4, :cond_d4

    if-eqz v3, :cond_d4

    .line 194
    array-length v0, v3

    if-lez v0, :cond_d4

    .line 195
    :goto_9a
    array-length v0, v3

    if-ge v1, v0, :cond_d4

    .line 196
    new-instance v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ZoomInfo;-><init>()V

    .line 197
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-interface {v6, v4, v5}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setBaseZoomRatio(F)V

    .line 198
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setFocalLength(Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setMinZoomRatio(I)V

    .line 200
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/common/ZoomInfo;->setMaxZoomRatio(I)V

    .line 201
    iget-object v4, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 204
    :cond_d4
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mZoomInfos:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setCameraZoomList(Ljava/util/List;)V

    return-void

    :cond_dc
    if-eqz v5, :cond_fc

    if-eqz v0, :cond_ee

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_setting_tele_focal_zoom_ui_entries:I

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    return-void

    .line 211
    :cond_ee
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_setting_normal_focal_zoom_ui_entries:I

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    return-void

    :cond_fc
    if-nez v0, :cond_115

    if-eqz v3, :cond_101

    goto :goto_115

    .line 226
    :cond_101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->currentModeSupport2XZoom()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_default_zoom_ui_entries:I

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_13e

    .line 217
    :cond_115
    :goto_115
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;->needSecondZoom(F)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/pmaster/R$array;->pmaster_mode_setting_tele_zoom_ui_entries:I

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    goto :goto_13e

    .line 222
    :cond_131
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/app/common/R$array;->common_mode_tele_zoom_ui_entries:I

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setWideCameraSettingUIEntries([Ljava/lang/String;)V

    .line 231
    :cond_13e
    :goto_13e
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/ModeFeatureEntryBase;->mModeSettingSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$array;->common_mode_flip_zoom_ui_entries:I

    .line 232
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->setFlipWideCameraSettingUIEntries([Ljava/lang/String;)V

    return-void
.end method

.method protected currentModeSupportFrontWideCamera()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected currentModeSupportTeleCamera()Z
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/pmaster/R$bool;->pmaster_mode_support_tele_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected currentModeSupportWideCamera()Z
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/feature/pmaster/R$bool;->pmaster_mode_support_wide_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 335
    const-class p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 330
    const-class p0, Lcom/transsion/camera/app/common/mode/ICameraMode;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->pmaster_mode_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
