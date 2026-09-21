.class public Lcom/transsion/camera/app/ui/TuningFeatureFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPreferenceRoot:Landroid/preference/PreferenceScreen;

.field protected mScreenFormType:I

.field private mSettingListRoot:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$AQja70gRb8yJ1zz3QDu616Hfdjs(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 101
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->setCurrentFileNameStyle(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , title = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->getCurrentFileNameStyleTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->getCurrentFileNameStyleTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2f} :catch_31

    const/4 p0, 0x1

    return p0

    :catch_31
    move-exception p0

    .line 106
    sget-object p1, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fileNameStyleValueChanged: set new file name style value failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$u83gW38vn0TytFchFIS6Oh-SGCk(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 84
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p2}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;->setCurrentSkin(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;->getCurrentSkinTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    .line 88
    sget-object p1, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skinValueChanged: set new skin value failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$xvVK3hWEgB1ZZhAZzMTK0gbMmjo(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 119
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->setScreenShotState(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " , title = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->getScreenShotTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->getScreenShotTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2f} :catch_31

    const/4 p0, 0x1

    return p0

    :catch_31
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/TuningFeatureFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mScreenFormType:I

    return-void
.end method

.method private addListPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 11

    .line 146
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    sget v1, Lcom/transsion/camera/R$layout;->preference_item_layout:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRecycleEnabled(Z)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v0, p4}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, p5}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2e

    .line 155
    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/preference/OSListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p5, p3}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 158
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValueIndex(I)V

    .line 161
    :cond_2e
    invoke-virtual {v0, p6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private updateSettingListRootLayout(II)V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->setting_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p2, :cond_57

    const/4 v1, 0x3

    if-eq p2, v1, :cond_57

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_3f

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_3f

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_57

    .line 185
    :cond_3f
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 197
    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 16

    .line 75
    const-string v0, "pref_screen_root"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    .line 76
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;->getCurrentSkinTitle()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;->getCurrentSkinValue()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_TITLES:[Ljava/lang/String;

    sget-object v6, Lcom/transsion/camera/utils/tuning/SkinHinter;->SKIN_VALUES:[Ljava/lang/String;

    new-instance v7, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;)V

    .line 77
    const-string v2, "Switch Current Skin"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->addListPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object v8, v1

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->getCurrentFileNameStyleTitle()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->getCurrentFileNameStyleValue()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_TITLES:[Ljava/lang/String;

    sget-object v13, Lcom/transsion/camera/utils/tuning/CamInfoTracker;->FILE_NAME_STYLE_VALUES:[Ljava/lang/String;

    new-instance v14, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda1;

    invoke-direct {v14, p0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;)V

    .line 94
    const-string v9, "Switch Current Filename Style"

    invoke-direct/range {v8 .. v14}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->addListPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->getScreenShotTitle()Ljava/lang/String;

    move-result-object v10

    .line 115
    invoke-interface {p0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;->getScreenShotValue()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_TITLES:[Ljava/lang/String;

    sget-object v13, Lcom/transsion/camera/utils/tuning/ScreenShot;->SHOT_VALUES:[Ljava/lang/String;

    new-instance v14, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda2;

    invoke-direct {v14, p0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$IScreenShot;)V

    .line 112
    const-string v9, "Switch Screenshot Feature"

    invoke-direct/range {v8 .. v14}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->addListPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method protected getPreferenceResource()I
    .registers 1

    .line 50
    sget p0, Lcom/transsion/camera/R$xml;->tuning_feature_preferences:I

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 59
    sget p0, Lcom/transsion/camera/R$id;->setting_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_12

    .line 61
    const-string p1, "Tuning Feature Setting"

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_12
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 3

    .line 167
    sget v0, Lcom/transsion/camera/R$id;->preference_fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 168
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    const v0, 0x102003f

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mSettingListRoot:Landroid/widget/FrameLayout;

    .line 170
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->updateSettingListRootLayout(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->updateSettingListRootLayout(II)V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TuningFeatureFragment;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
