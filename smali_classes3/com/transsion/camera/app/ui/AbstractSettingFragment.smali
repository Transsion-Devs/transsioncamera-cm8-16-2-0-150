.class public abstract Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;
    }
.end annotation


# static fields
.field public static sPathInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private listView:Landroid/widget/ListView;

.field protected mCurrentModeName:Ljava/lang/String;

.field protected mFragmentRoot:Landroid/widget/LinearLayout;

.field protected mOrientation:I

.field private mOrientationAnimationListener:Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;

.field protected mOtherFragmentName:Ljava/lang/String;

.field private mPreScreenFormType:I

.field private mRTLDirection:Z

.field protected mRootView:Landroid/view/View;

.field protected mScreenFormType:I

.field protected mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

.field protected mSettingUIList:Ljava/util/List;

.field private mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

.field private mToolbar:Landroid/widget/Toolbar;


# direct methods
.method public static synthetic $r8$lambda$7pxB2piZcZ1L0a8_BlWa3Bl7elw(Lcom/transsion/camera/app/ui/AbstractSettingFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->lambda$initViews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GTx-OuiY-Sy9Yz165YnixGgzmnI(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->lambda$showSettingBottom$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GfO_qkjYtjZDYxUkjgyM-UDWKb0(Lcom/transsion/camera/app/ui/AbstractSettingFragment;Landroid/preference/PreferenceScreen;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->lambda$onPreferenceTreeClick$0(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)Landroid/widget/ListView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientationAnimationListener:Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    .line 69
    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mCurrentModeName:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    .line 76
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRTLDirection:Z

    return-void
.end method

.method private synthetic lambda$initViews$1(Landroid/view/View;)V
    .registers 3

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "popBackStack back"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$0(Landroid/preference/PreferenceScreen;)V
    .registers 3

    const/4 v0, 0x1

    .line 473
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " preferenceScreen setEnabled true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showSettingBottom$2()V
    .registers 2

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 744
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_f
    return-void
.end method

.method private setToolbarStartMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4

    const/4 v0, 0x0

    .line 593
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 594
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 596
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_24

    .line 597
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->setting_toolbar_start_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 598
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 601
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected abstract addAllPreferences()V
.end method

.method public enterOtherFragment(Ljava/lang/String;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOtherFragmentName:Ljava/lang/String;

    return-void
.end method

.method public exitFromOtherFragment()V
    .registers 5

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOtherFragmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 705
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOtherFragmentName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 706
    check-cast v1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    :cond_28
    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOtherFragmentName:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method public getChildInAnim()I
    .registers 1

    .line 667
    sget p0, Lcom/transsion/camera/R$animator;->anim_child_in:I

    return p0
.end method

.method public getChildOutAnim()I
    .registers 1

    .line 671
    sget p0, Lcom/transsion/camera/R$animator;->anim_child_out:I

    return p0
.end method

.method protected getClassName()Ljava/lang/String;
    .registers 1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEnterAnimation(Landroid/content/Context;)I
    .registers 3

    .line 622
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2e

    .line 627
    :cond_14
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2b

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_28

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_25

    .line 636
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_in:I

    return p0

    .line 633
    :cond_25
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_in_270:I

    return p0

    .line 631
    :cond_28
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_in_180:I

    return p0

    .line 629
    :cond_2b
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_in_90:I

    return p0

    .line 639
    :cond_2e
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fade_in:I

    return p0
.end method

.method public getExitAnimation(Landroid/content/Context;)I
    .registers 3

    .line 645
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2e

    .line 650
    :cond_14
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2b

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_28

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_25

    .line 659
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_out:I

    return p0

    .line 656
    :cond_25
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_out_270:I

    return p0

    .line 654
    :cond_28
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_out_180:I

    return p0

    .line 652
    :cond_2b
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fold_fade_out_90:I

    return p0

    .line 662
    :cond_2e
    sget p0, Lcom/transsion/camera/R$animator;->setting_fragment_fade_out:I

    return p0
.end method

.method public getParentInAnim()I
    .registers 1

    .line 675
    sget p0, Lcom/transsion/camera/R$animator;->anim_parent_in:I

    return p0
.end method

.method public getParentOutAnim()I
    .registers 1

    .line 679
    sget p0, Lcom/transsion/camera/R$animator;->anim_parent_out:I

    return p0
.end method

.method protected abstract getPreferenceResource()I
.end method

.method protected abstract getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 13

    .line 485
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result v0

    .line 488
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-lez v0, :cond_2d

    .line 490
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->setting_toolbar_cutout_shift:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 491
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    .line 492
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 494
    :cond_2d
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setToolbarStartMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_actionbar_back:I

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_46
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getWaterfallEdgeSize(Landroid/content/Context;)I

    move-result v0

    .line 503
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initViews waterfallEdgeSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-lez v0, :cond_71

    .line 505
    invoke-virtual {p1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_71
    const v0, 0x102000a

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    if-eqz p1, :cond_86

    .line 510
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$2;-><init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 523
    :cond_86
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isGestureNavigationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->setting_list_gestural_mode_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_9c

    :cond_9b
    move p1, v2

    .line 525
    :goto_9c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_a3

    .line 526
    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 529
    :cond_a3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_18a

    .line 530
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eqz p1, :cond_ae

    const/4 v0, 0x3

    if-ne p1, v0, :cond_b0

    .line 531
    :cond_ae
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    .line 537
    :cond_b0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 538
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 539
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 540
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 542
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_13b

    .line 544
    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    if-nez v8, :cond_df

    .line 545
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 546
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_132

    :cond_df
    const/16 v9, 0x5a

    if-ne v8, v9, :cond_104

    .line 550
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 551
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v4, v3

    .line 552
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    neg-int v3, v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    .line 553
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRTLDirection:Z

    if-eqz v6, :cond_f9

    .line 554
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    :cond_f9
    move v6, v3

    .line 556
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    const/16 v9, -0x5a

    :goto_102
    move v4, v9

    goto :goto_135

    :cond_104
    const/16 v10, 0xb4

    if-ne v8, v10, :cond_110

    .line 560
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 561
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v9, -0xb4

    move v3, v6

    goto :goto_102

    :cond_110
    const/16 v10, 0x10e

    if-ne v8, v10, :cond_132

    .line 565
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 566
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v4, v3

    .line 567
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    neg-int v3, v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    .line 568
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRTLDirection:Z

    if-eqz v6, :cond_12a

    .line 569
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    :cond_12a
    move v6, v3

    .line 571
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v3, v7

    int-to-float v3, v3

    goto :goto_102

    :cond_132
    :goto_132
    move v4, v2

    move v9, v4

    move v3, v6

    .line 574
    :goto_135
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13e

    :cond_13b
    move v4, v2

    move v9, v4

    move v3, v6

    .line 576
    :goto_13e
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    int-to-float v8, v9

    int-to-float v4, v4

    new-array v7, v7, [F

    aput v8, v7, v2

    aput v4, v7, v1

    const-string v4, "rotation"

    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 577
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v9, v1, [F

    aput v6, v9, v2

    const-string/jumbo v6, "translationX"

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 578
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v1, v1, [F

    aput v3, v1, v2

    const-string/jumbo v2, "translationY"

    invoke-static {v6, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 579
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 585
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 587
    :cond_18a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p1

    if-nez p1, :cond_195

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    :cond_195
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 452
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onConfigurationChanged, densityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidthDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeightDp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 455
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    .line 456
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    .line 457
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v0, 0x168

    if-le p1, v0, :cond_4e

    const/4 p1, 0x1

    .line 459
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    :cond_4e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 387
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getPreferenceResource()I

    move-result p1

    if-eqz p1, :cond_c

    .line 390
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 392
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onCreate"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 442
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz v0, :cond_a

    .line 444
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentDestroy()V

    :cond_a
    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOtherFragmentName:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onDestroy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 425
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->unInitViews()V

    .line 426
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->removeAllPreferences()V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz v0, :cond_10

    .line 428
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentExitView()V

    .line 430
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 433
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v0, :cond_25

    .line 434
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 435
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    .line 437
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 189
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1e8

    .line 190
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 191
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 192
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onOrientationChanged mPreScreenFormType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mScreenFormType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mOrientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", tmpOrientation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", this: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v5, :cond_6e

    if-ne v5, v9, :cond_7a

    :cond_6e
    iget v11, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eq v11, v8, :cond_1e5

    if-eq v11, v10, :cond_1e5

    if-eq v11, v7, :cond_1e5

    if-ne v11, v6, :cond_7a

    goto/16 :goto_1e5

    :cond_7a
    if-eq v5, v8, :cond_82

    if-eq v5, v10, :cond_82

    if-eq v5, v7, :cond_82

    if-ne v5, v6, :cond_8a

    .line 208
    :cond_82
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eqz v5, :cond_1e2

    if-ne v5, v9, :cond_8a

    goto/16 :goto_1e2

    .line 216
    :cond_8a
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    const-wide/16 v11, 0x0

    if-eqz v5, :cond_97

    if-ne v5, v9, :cond_93

    goto :goto_97

    :cond_93
    const-wide/16 v13, 0x15e

    move v5, v1

    goto :goto_99

    :cond_97
    :goto_97
    move-wide v13, v11

    const/4 v5, 0x0

    .line 221
    :goto_99
    iget v7, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    const/4 v9, 0x0

    const/16 v15, 0x10e

    const/16 v16, 0x0

    const/16 v6, 0x5a

    if-nez v7, :cond_ac

    if-nez v5, :cond_ac

    .line 222
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 223
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_158

    :cond_ac
    const/high16 v17, -0x3d4c0000    # -90.0f

    if-nez v7, :cond_b2

    if-eq v5, v6, :cond_b6

    :cond_b2
    if-ne v7, v6, :cond_c6

    if-ne v5, v6, :cond_c6

    .line 228
    :cond_b6
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 229
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v6, :cond_c4

    if-ne v5, v6, :cond_c4

    :goto_be
    move/from16 v18, v17

    :goto_c0
    move/from16 v17, v9

    goto/16 :goto_15e

    :cond_c4
    move-wide v11, v13

    goto :goto_be

    :cond_c6
    if-ne v7, v6, :cond_d3

    if-nez v5, :cond_d3

    .line 236
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 237
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v18, v9

    :goto_d0
    move-wide v11, v13

    goto/16 :goto_15e

    :cond_d3
    const/high16 v18, 0x42b40000    # 90.0f

    if-nez v7, :cond_d9

    if-eq v5, v15, :cond_dd

    :cond_d9
    if-ne v7, v15, :cond_e9

    if-ne v5, v15, :cond_e9

    .line 242
    :cond_dd
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 243
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v7, v15, :cond_e6

    if-ne v5, v15, :cond_e6

    goto :goto_c0

    :cond_e6
    move/from16 v17, v9

    goto :goto_d0

    :cond_e9
    if-ne v7, v15, :cond_f8

    if-nez v5, :cond_f8

    .line 250
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 251
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-wide v11, v13

    move/from16 v17, v18

    move/from16 v18, v9

    goto/16 :goto_15e

    :cond_f8
    if-ne v7, v6, :cond_105

    if-ne v5, v15, :cond_105

    .line 255
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 256
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v7, -0x3c790000    # -270.0f

    move/from16 v18, v7

    goto :goto_d0

    :cond_105
    if-ne v7, v15, :cond_114

    if-ne v5, v6, :cond_114

    .line 260
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 261
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v11, v18

    :goto_10f
    move/from16 v18, v17

    :goto_111
    move/from16 v17, v11

    goto :goto_d0

    :cond_114
    const/high16 v11, 0x43340000    # 180.0f

    const/16 v12, 0xb4

    if-ne v7, v15, :cond_125

    if-ne v5, v12, :cond_125

    .line 265
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 266
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v18

    :goto_122
    move/from16 v18, v11

    goto :goto_d0

    :cond_125
    if-ne v7, v12, :cond_12e

    if-ne v5, v15, :cond_12e

    .line 270
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 271
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_111

    :cond_12e
    const/high16 v11, -0x3ccc0000    # -180.0f

    if-ne v7, v6, :cond_139

    if-ne v5, v12, :cond_139

    .line 275
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 276
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_122

    :cond_139
    if-ne v7, v12, :cond_142

    if-ne v5, v6, :cond_142

    .line 280
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 281
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_10f

    :cond_142
    if-nez v7, :cond_14d

    if-ne v5, v12, :cond_14d

    .line 285
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 286
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v9

    goto :goto_122

    :cond_14d
    if-ne v7, v12, :cond_158

    if-nez v5, :cond_158

    .line 290
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 291
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v17, -0x3c4c0000    # -360.0f

    goto :goto_10f

    :cond_158
    :goto_158
    move/from16 v17, v9

    move/from16 v18, v17

    goto/16 :goto_d0

    .line 296
    :goto_15e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 297
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 299
    iget-object v14, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v5, v6, :cond_174

    if-ne v5, v15, :cond_172

    goto :goto_174

    :cond_172
    move v2, v9

    goto :goto_191

    :cond_174
    :goto_174
    sub-int/2addr v3, v2

    .line 301
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v10

    int-to-float v2, v2

    .line 302
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v8, v4, :cond_18a

    .line 303
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v2, v10

    int-to-float v2, v2

    :cond_18a
    move v9, v2

    .line 305
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v2, v10

    int-to-float v2, v2

    .line 308
    :goto_191
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v4, v10, [F

    aput v17, v4, v16

    aput v18, v4, v8

    const-string v5, "rotation"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 309
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v5, v8, [F

    aput v9, v5, v16

    const-string/jumbo v6, "translationX"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 310
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v6, v8, [F

    aput v2, v6, v16

    const-string/jumbo v2, "translationY"

    invoke-static {v5, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    invoke-virtual {v13, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 317
    new-instance v2, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$1;-><init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V

    invoke-virtual {v13, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1e8

    .line 213
    :cond_1e2
    :goto_1e2
    iput v5, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    return-void

    .line 206
    :cond_1e5
    :goto_1e5
    iput v11, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    return-void

    .line 348
    :cond_1e8
    :goto_1e8
    iput v1, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    .line 349
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    if-eqz v2, :cond_202

    .line 350
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 351
    invoke-interface {v3, v1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->onOrientationChanged(I)V

    goto :goto_1f2

    .line 354
    :cond_202
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v1, :cond_20f

    .line 355
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setToolbarStartMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_20f
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 415
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    if-eqz v0, :cond_a

    .line 417
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->exitFromOtherFragment()V

    .line 419
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onPause"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 466
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p2

    if-eqz p1, :cond_30

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " preferenceScreen setEnabled false."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;Landroid/preference/PreferenceScreen;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return p2
.end method

.method public onResume()V
    .registers 3

    .line 406
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    if-eqz v0, :cond_a

    .line 408
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;->onFragmentResume()V

    .line 410
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onResume"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 397
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->addAllPreferences()V

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRootView:Landroid/view/View;

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " onViewCreate"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract removeAllPreferences()V
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientationAnimationListener:Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;

    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mRTLDirection:Z

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    .line 95
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-void
.end method

.method public showSettingBottom()V
    .registers 3

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    .line 741
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected showSystemUI()V
    .registers 2

    .line 683
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected abstract unInitViews()V
.end method

.method public updateScreenFormType(I)V
    .registers 15

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updateScreenFormType, cur form:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new form:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-ne v0, p1, :cond_2e

    .line 105
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    return-void

    .line 108
    :cond_2e
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_191

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 120
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mToolbar:Landroid/widget/Toolbar;

    if-eqz v4, :cond_61

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 122
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setToolbarStartMargin(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 124
    :cond_61
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " updateScreenFormType mPreScreenFormType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mScreenFormType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mOrientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mPreScreenFormType:I

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v4, :cond_a9

    if-ne v4, v8, :cond_b4

    :cond_a9
    iget v12, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eq v12, v10, :cond_d3

    if-eq v12, v11, :cond_d3

    if-eq v12, v7, :cond_d3

    if-ne v12, v6, :cond_b4

    goto :goto_d3

    :cond_b4
    if-eq v4, v10, :cond_bc

    if-eq v4, v11, :cond_bc

    if-eq v4, v7, :cond_bc

    if-ne v4, v6, :cond_c3

    .line 161
    :cond_bc
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-eqz v4, :cond_c9

    if-ne v4, v8, :cond_c3

    goto :goto_c9

    :cond_c3
    move v6, v5

    move v0, v9

    move v1, v0

    move v4, v1

    goto/16 :goto_140

    .line 167
    :cond_c9
    :goto_c9
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 168
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_cd
    :goto_cd
    move v0, v9

    move v1, v0

    move v4, v1

    move v6, v10

    goto/16 :goto_140

    .line 132
    :cond_d3
    :goto_d3
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    if-nez v4, :cond_dc

    .line 133
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 134
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_cd

    :cond_dc
    const/16 v6, 0x5a

    if-ne v4, v6, :cond_108

    .line 138
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 139
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v0

    .line 140
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    .line 141
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v10, v4, :cond_fa

    .line 142
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    :cond_fa
    move v9, v0

    .line 144
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    :goto_103
    move v4, v0

    move v0, v9

    move v6, v10

    move v9, v1

    goto :goto_140

    :cond_108
    const/16 v6, 0xb4

    if-ne v4, v6, :cond_118

    .line 148
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/high16 v0, -0x3ccc0000    # -180.0f

    move v1, v0

    move v4, v9

    move v6, v10

    move v9, v1

    move v0, v4

    goto :goto_140

    :cond_118
    const/16 v6, 0x10e

    if-ne v4, v6, :cond_cd

    .line 153
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 154
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v0

    .line 155
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    .line 156
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    if-ne v10, v4, :cond_136

    .line 157
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    :cond_136
    move v9, v0

    .line 159
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v11

    int-to-float v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_103

    :goto_140
    if-eqz v6, :cond_191

    .line 172
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v6, v11, [F

    aput v9, v6, v5

    aput v1, v6, v10

    const-string v1, "rotation"

    invoke-static {p1, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v8, v10, [F

    aput v0, v8, v5

    const-string/jumbo v0, "translationX"

    invoke-static {v1, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    new-array v1, v10, [F

    aput v4, v1, v5

    const-string/jumbo v4, "translationY"

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 177
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 183
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_191
    return-void
.end method
