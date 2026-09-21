.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;
.super Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;
    }
.end annotation


# static fields
.field private static final HIDE_SETTING_NAME_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_SETTING_NAME:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPopSettingTitleContainer:Landroid/widget/FrameLayout;

.field private mPopSettingTitleTextView:Landroid/widget/TextView;

.field private mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

.field private mTopUI:Landroid/widget/FrameLayout;

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$I3iF_ipFgcu29OJu2NOYlcELCbQ(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->lambda$updateCaptureTimeData$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MzqmJYb1drWTMx5ZOoPyE7GhfLI(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->lambda$createEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBy5FId5ED4hNfqLRJSfzfwKgy8(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->lambda$updateSettingUILayout$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pb4SUjr7Tv1o4IQSDbrdOsnW1ZY(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->lambda$updateSettingUILayout$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhidePopSettingTitle(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->hidePopSettingTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 54
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;

    return-void
.end method

.method private hidePopSettingTitle()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_16
    return-void
.end method

.method private synthetic lambda$createEntryView$0(Landroid/view/View;)V
    .registers 4

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 89
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->switchBulbStatus(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateIcon(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateCaptureTimeData$3(Ljava/lang/String;)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$1()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2()V
    .registers 4

    .line 146
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/16 v2, -0x5a

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 147
    :goto_a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v1, :cond_21

    .line 148
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1b

    goto :goto_22

    :cond_1b
    const/16 v2, 0x10e

    if-ne v0, v2, :cond_21

    move v2, v1

    goto :goto_22

    :cond_21
    move v2, v0

    .line 155
    :goto_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    return-void
.end method

.method private showPop3sSettingTitle()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mUIHandler:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$UIHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_28

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_28
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 59
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mContext:Landroid/content/Context;

    .line 62
    sget p3, Lcom/transsion/camera/feature/longexposure/R$layout;->long_exposure_main_layout_ui5:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    .line 64
    sget p3, Lcom/transsion/camera/feature/longexposure/R$id;->tab_control_view_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 67
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->pop_3s_setting_title:I

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_menu_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    .line 70
    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$id;->pop_setting_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    .line 71
    sget p3, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_mode_title:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    .line 74
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTopUI()Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTopUI:Landroid/widget/FrameLayout;

    const/16 p3, 0x8

    .line 75
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    sget p2, Lcom/transsion/camera/feature/longexposure/R$layout;->long_exposure_scroller_layout_ui5:I

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTopUI:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_time_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->exposure_time_scroller_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->capture_time_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mSceneListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/longexposure/R$id;->long_exposure_time_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 83
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_restore_settings_notify_ui"

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->statusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initCaptureScene()V

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->initScrollerView()V

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initAnim()V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getIconTypeForState(Z)I
    .registers 5

    .line 302
    new-instance p0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    const-string v0, "4:3"

    const-string v1, "_global_scope"

    const-string v2, "key_picture_ratio"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    const-string v0, "1:1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_20

    .line 305
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->ic_long_exposure_capture_bulb_on_dark:I

    return p0

    .line 306
    :cond_20
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->ic_long_exposure_capture_bulb_off_dark:I

    return p0

    :cond_23
    if-eqz p1, :cond_28

    .line 308
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->ic_long_exposure_capture_bulb_on:I

    return p0

    .line 309
    :cond_28
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->ic_long_exposure_capture_bulb_off:I

    return p0
.end method

.method protected hideSceneView(ZZ)V
    .registers 3

    .line 193
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideSceneView(ZZ)V

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->hidePopSettingTitle()V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void
.end method

.method protected hideScrollerView()V
    .registers 2

    .line 216
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->hideScrollerView()V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTopUI:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected initScrollerView()V
    .registers 8

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-nez v0, :cond_5

    goto :goto_4f

    :cond_5
    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeChangeListener:Lcom/transsion/camera/app/ui/widget/IValueChangedListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    const-string v2, "star"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeListForScene(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 254
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScaleGapByKey(Ljava/lang/String;)V

    .line 256
    new-instance v5, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    invoke-direct {v5, v3, v4, v1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 258
    invoke-virtual {v5, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v0, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 200
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->onOrientationChanged(I)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    .line 204
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 168
    const-string v0, "key_long_exposure_option"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_23

    .line 170
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 171
    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->showSceneView(Z)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureOptionSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected showSceneView(Z)V
    .registers 3

    .line 184
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showSceneView(Z)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    const-string v0, "star"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 186
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->showPop3sSettingTitle()V

    .line 188
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    return-void
.end method

.method protected showScrollerView()V
    .registers 2

    .line 209
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->showScrollerView()V

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->hidePopSettingTitle()V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTopUI:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateCaptureTimeData(Ljava/lang/String;)V
    .registers 8

    .line 265
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeListForScene(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->getTimeValueForScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->bulbOn(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mDurationHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/DurationHelper;->getDefaultValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScaleGapByKey(Ljava/lang/String;)V

    .line 270
    new-instance v3, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v5}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 272
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v2, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    .line 277
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCaptureTimeData scene = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timeValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 8

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureTimeRootLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    if-nez p1, :cond_1b

    goto/16 :goto_10c

    .line 108
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_margin_bottom:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_pop_setting_title_bottom_margin:I

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v3, -0x2

    .line 120
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 121
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;->mPopSettingTitleContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 125
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 126
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 127
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_root_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 129
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/longexposure/R$dimen;->capture_time_root_layout_margin_end:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 133
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0x9

    .line 134
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    .line 135
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_icon_margin_bottom:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 138
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_e8

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v2, :cond_e8

    .line 139
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v2, v4, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 142
    :cond_e8
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mBulbIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mLongExposureRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeRootLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    if-eqz p1, :cond_10c

    .line 162
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->updateScreenFormType(II)V

    :cond_10c
    :goto_10c
    return-void
.end method
