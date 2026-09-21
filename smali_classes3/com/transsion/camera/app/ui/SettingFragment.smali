.class public Lcom/transsion/camera/app/ui/SettingFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCommonPreferenceList:Ljava/util/List;

.field private mIsShowingSettingBottom:Z

.field private final mPhotoPreferenceList:Ljava/util/List;

.field private mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

.field private mRootViewId:I

.field private final mScreenPreferenceList:Ljava/util/List;

.field private mSettingListRoot:Landroid/widget/FrameLayout;

.field private final mVideoPreferenceList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mIsShowingSettingBottom:Z

    .line 68
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PreferenceList;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/setting/PreferenceList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    return-void
.end method

.method private addCustomFragmentTransaction(Landroid/preference/Preference;)V
    .registers 2

    .line 280
    instance-of p0, p1, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    if-eqz p0, :cond_9

    .line 281
    check-cast p1, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->getCustomFragment()Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    :cond_9
    return-void
.end method

.method private clearPreferenceList()V
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private updateSettingListRootLayout(II)V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 367
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_1c

    .line 368
    :cond_12
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->setting_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 370
    :goto_1c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 371
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p2, :cond_65

    const/4 v0, 0x3

    if-eq p2, v0, :cond_65

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4d

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_4d

    .line 384
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 385
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_65

    .line 377
    :cond_4d
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 378
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 389
    :cond_65
    :goto_65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 11

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-nez v0, :cond_6

    goto/16 :goto_23c

    .line 143
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    .line 145
    const-string v0, "pref_common_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 146
    const-string v1, "pref_video_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 147
    const-string v2, "pref_photo_category"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 148
    const-string v3, "pref_screen_top"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 149
    const-string v4, "pref_divider"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 151
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-interface {v6, v7, v8}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->createPreference(Landroid/content/Context;I)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 154
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_23e

    goto/16 :goto_187

    :sswitch_5e
    const-string v8, "key_taint_detection"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    goto/16 :goto_187

    :cond_68
    const/16 v9, 0x16

    goto/16 :goto_187

    :sswitch_6c
    const-string v8, "key_micro_pan_tilt_calibration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    goto/16 :goto_187

    :cond_76
    const/16 v9, 0x15

    goto/16 :goto_187

    :sswitch_7a
    const-string v8, "key_hevc_encorder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    goto/16 :goto_187

    :cond_84
    const/16 v9, 0x14

    goto/16 :goto_187

    :sswitch_88
    const-string v8, "key_ai_shutter_switch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    goto/16 :goto_187

    :cond_92
    const/16 v9, 0x13

    goto/16 :goto_187

    :sswitch_96
    const-string v8, "key_guidelines"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a0

    goto/16 :goto_187

    :cond_a0
    const/16 v9, 0x12

    goto/16 :goto_187

    :sswitch_a4
    const-string v8, "key_shutter_sound"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ae

    goto/16 :goto_187

    :cond_ae
    const/16 v9, 0x11

    goto/16 :goto_187

    :sswitch_b2
    const-string v8, "key_auto_macro_switch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_bc

    goto/16 :goto_187

    :cond_bc
    const/16 v9, 0x10

    goto/16 :goto_187

    :sswitch_c0
    const-string v8, "key_floating_shutter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ca

    goto/16 :goto_187

    :cond_ca
    const/16 v9, 0xf

    goto/16 :goto_187

    :sswitch_ce
    const-string v8, "key_recording_effect"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d8

    goto/16 :goto_187

    :cond_d8
    const/16 v9, 0xe

    goto/16 :goto_187

    :sswitch_dc
    const-string v8, "key_mood_light"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e6

    goto/16 :goto_187

    :cond_e6
    const/16 v9, 0xd

    goto/16 :goto_187

    :sswitch_ea
    const-string v8, "key_volume_key"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f4

    goto/16 :goto_187

    :cond_f4
    const/16 v9, 0xc

    goto/16 :goto_187

    :sswitch_f8
    const-string v8, "key_com_video_hdr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_102

    goto/16 :goto_187

    :cond_102
    const/16 v9, 0xb

    goto/16 :goto_187

    :sswitch_106
    const-string v8, "key_location"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_110

    goto/16 :goto_187

    :cond_110
    const/16 v9, 0xa

    goto/16 :goto_187

    :sswitch_114
    const-string v8, "key_one_click_efficiency"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11e

    goto/16 :goto_187

    :cond_11e
    const/16 v9, 0x9

    goto/16 :goto_187

    :sswitch_122
    const-string v8, "key_lens_correction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12c

    goto/16 :goto_187

    :cond_12c
    const/16 v9, 0x8

    goto/16 :goto_187

    :sswitch_130
    const-string v8, "key_picture_size"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_139

    goto :goto_187

    :cond_139
    const/4 v9, 0x7

    goto :goto_187

    :sswitch_13b
    const-string v8, "key_shutter_sound_optional"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_144

    goto :goto_187

    :cond_144
    const/4 v9, 0x6

    goto :goto_187

    :sswitch_146
    const-string v8, "key_video_quality"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14f

    goto :goto_187

    :cond_14f
    const/4 v9, 0x5

    goto :goto_187

    :sswitch_151
    const-string v8, "key_level"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15a

    goto :goto_187

    :cond_15a
    const/4 v9, 0x4

    goto :goto_187

    :sswitch_15c
    const-string v8, "key_restore_settings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_165

    goto :goto_187

    :cond_165
    const/4 v9, 0x3

    goto :goto_187

    :sswitch_167
    const-string v8, "key_auto_focus_switch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_170

    goto :goto_187

    :cond_170
    const/4 v9, 0x2

    goto :goto_187

    :sswitch_172
    const-string v8, "key_portrait_architecture"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17b

    goto :goto_187

    :cond_17b
    const/4 v9, 0x1

    goto :goto_187

    :sswitch_17d
    const-string v8, "key_auto_video_fps"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_186

    goto :goto_187

    :cond_186
    const/4 v9, 0x0

    :goto_187
    packed-switch v9, :pswitch_data_29c

    .line 199
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 180
    :pswitch_191
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/SettingFragment;->addCustomFragmentTransaction(Landroid/preference/Preference;)V

    goto/16 :goto_35

    .line 175
    :pswitch_19b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v7

    iget-boolean v7, v7, Lcom/transsion/camera/utils/CustomConfigUtil;->mMoodLightUiSupport:Z

    if-eqz v7, :cond_35

    .line 176
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 192
    :pswitch_1aa
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mCurrentModeName:Ljava/lang/String;

    const-string v8, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1bb

    .line 193
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 195
    :cond_1bb
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 172
    :pswitch_1c2
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 157
    :pswitch_1c9
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 189
    :pswitch_1d0
    iget-object v7, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    .line 204
    :cond_1d7
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDeveloperMode()Z

    move-result v5

    if-eqz v5, :cond_1ed

    .line 205
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    new-instance v6, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    invoke-direct {v6, v7, v8}, Lcom/transsion/camera/app/ui/widget/preference/TuningFeaturePreference;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1ed
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1fd

    .line 209
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_204

    .line 211
    :cond_1fd
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    :goto_204
    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v5, v6, v0, v7}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addGeneralPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceScreen;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-virtual {v0, v5, v2}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addPhotoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->addVideoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22f

    if-eqz v1, :cond_22f

    .line 218
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v4, :cond_22f

    .line 220
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_22f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_23c

    if-eqz v2, :cond_23c

    .line 225
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_23c
    :goto_23c
    return-void

    nop

    :sswitch_data_23e
    .sparse-switch
        -0x7456b58b -> :sswitch_17d
        -0x6ffbb669 -> :sswitch_172
        -0x6e1d74d5 -> :sswitch_167
        -0x62df776c -> :sswitch_15c
        -0x627ee65c -> :sswitch_151
        -0x60d2d0a5 -> :sswitch_146
        -0x55cee6fe -> :sswitch_13b
        -0x2edaf77e -> :sswitch_130
        -0x2ae3c0a1 -> :sswitch_122
        -0x22cfa3e7 -> :sswitch_114
        -0x1d1a126b -> :sswitch_106
        -0x11a531ec -> :sswitch_f8
        0x8b4ed9a -> :sswitch_ea
        0xefcd3ae -> :sswitch_dc
        0x141d457f -> :sswitch_ce
        0x19d88e94 -> :sswitch_c0
        0x46ea49b7 -> :sswitch_b2
        0x6467fc5d -> :sswitch_a4
        0x69d4e763 -> :sswitch_96
        0x72b762dd -> :sswitch_88
        0x731c0d09 -> :sswitch_7a
        0x751a8b45 -> :sswitch_6c
        0x77825f08 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_1d0
        :pswitch_1c9
        :pswitch_1c2
        :pswitch_1c9
        :pswitch_1c2
        :pswitch_1d0
        :pswitch_1c2
        :pswitch_1aa
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1d0
        :pswitch_1c2
        :pswitch_19b
        :pswitch_1d0
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1d0
        :pswitch_191
        :pswitch_1c2
    .end packed-switch
.end method

.method protected getPreferenceResource()I
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;->getPreferenceResource()I

    move-result p0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 119
    sget p0, Lcom/transsion/camera/R$id;->setting_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_d

    .line 121
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_d
    return-object p0
.end method

.method public hidePreference(Landroid/preference/Preference;)V
    .registers 6

    .line 316
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 318
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 323
    invoke-virtual {v2}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 324
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 330
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 331
    invoke-virtual {v2}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 332
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 338
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4e
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/preference/Preference;

    .line 339
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 340
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_66
    return-void
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 5

    .line 236
    sget v0, Lcom/transsion/camera/R$id;->preference_fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 237
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 240
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->init()V

    .line 241
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->onOrientationChanged(I)V

    goto :goto_15

    :cond_2a
    const v0, 0x102003f

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    .line 246
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/SettingFragment;->updateSettingListRootLayout(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/SettingFragment;->updateSettingListRootLayout(II)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_22

    .line 132
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 133
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onPause()V

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSettingFragment120HzRefreshRate:Z

    if-eqz v0, :cond_12

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ActivityUtils;->setDefaultWindowRefreshRate(Landroid/app/Activity;)V

    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->showSystemUI()V

    .line 93
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mSettingFragment120HzRefreshRate:Z

    if-eqz v0, :cond_17

    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ActivityUtils;->setWindowRefreshRate(Landroid/app/Activity;I)V

    .line 96
    :cond_17
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mIsShowingSettingBottom:Z

    if-eqz v0, :cond_1e

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->showSettingBottom()V

    :cond_1e
    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    return-void
.end method

.method public setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V
    .registers 3

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 276
    iput p2, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mRootViewId:I

    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public setShowingSettingBottom(Z)V
    .registers 2

    .line 393
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mIsShowingSettingBottom:Z

    return-void
.end method

.method public showPreference(Landroid/preference/Preference;)V
    .registers 5

    .line 347
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "pref_photo_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 348
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "pref_common_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 349
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "pref_video_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_29

    .line 351
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_29
    if-eqz v0, :cond_2e

    .line 354
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_2e
    if-eqz v1, :cond_33

    .line 357
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 359
    :cond_33
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->addAllPreferences()V

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 263
    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPreferenceList:Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;

    .line 264
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    return-void
.end method

.method protected unInitViews()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 253
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_8

    .line 256
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1f

    .line 257
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1f
    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 3

    .line 81
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_1b

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 84
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->updateScreenFormType(I)V

    goto :goto_b

    :cond_1b
    return-void
.end method
