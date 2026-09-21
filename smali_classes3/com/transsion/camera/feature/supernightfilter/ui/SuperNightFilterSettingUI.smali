.class public Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final DELAY:I = 0x96

.field private static final DURATION:I = 0x12c

.field private static final MOVE_DISTANCE:I = 0xb4

.field private static final MSG_UPDATE_FILTER_VALUE_TO_UI:I = 0x64

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

.field private mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mFilterRootAnimator:Landroid/animation/ValueAnimator;

.field private final mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilterRootView:Landroid/view/View;

.field private mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFilterTranslateDistance:F

.field private mFilterUIShown:Z

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCameraSwitching:Z

.field private mIsEnable:Z

.field private mIsOnScale:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastPosition:I

.field private mNeedShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingShow:Z

.field private mPopWindowShow:Z

.field private mResources:Landroid/content/res/Resources;

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSettingUiAdjustHeight:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUseTranssionFilter:Z


# direct methods
.method public static synthetic $r8$lambda$016WdKZuFmu35dduIq_-OPD2Qtc(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/util/List;Landroid/view/View;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$setupEntryView$1(Ljava/util/List;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4f-WCvYwxhtD4Dy8Ci3Zwv9rrs0(Ljava/lang/String;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)Z
    .registers 2

    .line 781
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RUMiWpQpjqBZcgRQlO6WkPyMOXg(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKduvftRWMJktxS_WB2bExlxwME(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$iwmdB7nv891RhlLxckjzUMtn-tc(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperate(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterRecyclerAdapter(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterRootView(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateFilterValueToUI(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateFilterValueToUI(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperNightFilterSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 81
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 78
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 79
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    .line 89
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 90
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    .line 99
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$1;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 161
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$2;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 672
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$5;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 686
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$6;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 768
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 971
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$7;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 992
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$8;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 178
    sget v0, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterTranslateDistance:F

    .line 179
    sget v0, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_setting_ui_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mSettingUiAdjustHeight:I

    .line 180
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mUseTranssionFilter:Z

    .line 182
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_8b

    .line 183
    new-array p1, v0, [F

    fill-array-data p1, :array_9e

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    goto :goto_96

    .line 185
    :cond_8b
    new-array p1, v0, [F

    fill-array-data p1, :array_a6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    .line 187
    :goto_96
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_9e
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 2

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private collapseBottomUI(Z)V
    .registers 4

    .line 361
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_16

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_d

    .line 365
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 367
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_16

    const/16 p1, 0x31

    .line 368
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 11

    .line 247
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$4;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method private expandBottomUI(Z)V
    .registers 4

    .line 352
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_e

    .line 355
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    .line 356
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_e
    :goto_e
    return-void
.end method

.method private findIndex(Ljava/util/List;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 781
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 782
    new-instance p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private hideFilterRootView()V
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 721
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 723
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideFilterSettingUI()V
    .registers 5

    const/4 v0, 0x1

    .line 446
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->collapseBottomUI(Z)V

    .line 447
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_14

    .line 449
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1b

    .line 452
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 454
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_22

    .line 455
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->setAnimationApplied(Z)V

    .line 457
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_32

    .line 458
    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v3, "value_filter_ui_off"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->startCollapseAnimator()V

    .line 462
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private hideFilterSettingUIImmediately(Z)V
    .registers 4

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 394
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->collapseBottomUI(Z)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2b

    .line 397
    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_21

    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    if-nez p0, :cond_21

    .line 398
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 400
    :cond_21
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off_no_show"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method private hideFilterSettingUIImmediately()Z
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6a

    .line 410
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->cancelAnimation()V

    .line 411
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_20

    const/4 v3, 0x0

    .line 413
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_20
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/16 v3, 0x31

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_38

    .line 417
    iget-boolean v4, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopWindowShow:Z

    if-nez v4, :cond_33

    .line 418
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 420
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 422
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 423
    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 426
    :cond_49
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    if-eqz v0, :cond_5b

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v3, "value_filter_ui_off_no_show"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    :cond_5b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz p0, :cond_68

    .line 430
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->setAnimationApplied(Z)V

    :cond_68
    const/4 p0, 0x1

    return p0

    :cond_6a
    :goto_6a
    return v1
.end method

.method private inFlaterView()Landroid/view/View;
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$layout;->supernight_filter_option:I

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    .line 206
    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$id;->supernight_filter_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$id;->supernight_filter_recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$3;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 223
    iput-boolean v3, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 224
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateSettingUILayout(Z)V

    .line 225
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v0, :cond_5d

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v0, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 229
    :cond_5d
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method private initCameraInfoTracker(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 303
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 306
    :cond_7
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    if-eqz v2, :cond_14

    .line 309
    const-string v3, "supernight_filter_off"

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_14

    .line 312
    :cond_2f
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getTitleRes()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 314
    :cond_41
    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ICamInfoTracker;->initFilterInfo(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 125
    iget v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 126
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v1, :cond_57

    .line 129
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 130
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_37

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 138
    :cond_37
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_3b
    neg-float v0, v0

    .line 135
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_40
    neg-float v0, v0

    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_45
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4d

    neg-float v0, v0

    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_4d
    const/4 v3, 0x4

    if-ne v2, v3, :cond_54

    .line 149
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 151
    :cond_54
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 156
    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz p0, :cond_5e

    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5e
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .registers 2

    .line 769
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method private synthetic lambda$setupEntryView$1(Ljava/util/List;Landroid/view/View;I)V
    .registers 4

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 282
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p2, :cond_18

    .line 283
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->getFilterId()Ljava/lang/String;

    move-result-object p1

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 921
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 922
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private recoverFilterPanelToDefault()V
    .registers 3

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 623
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    .line 624
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 625
    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 626
    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    :cond_1a
    :goto_1a
    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 749
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 731
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_e
    return-void
.end method

.method private showFilterRootView()V
    .registers 2

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 712
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 713
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 714
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterSettingUIImmediately()V

    :cond_e
    return-void
.end method

.method private showFilterSettingUI()V
    .registers 3

    .line 436
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_15

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 440
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->startExpandAnimator()V

    const/4 v0, 0x1

    .line 441
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->expandBottomUI(Z)V

    .line 442
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private showFilterSettingUIImmediately()V
    .registers 4

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->cancelAnimation()V

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_15
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->expandBottomUI(Z)V

    return-void
.end method

.method private showOrHideFilterSettingUI()Z
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 493
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz v0, :cond_15

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUI()V

    goto :goto_18

    .line 496
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterSettingUI()V

    :goto_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_28

    const/16 v0, 0x31

    .line 485
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_28
    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 472
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_2d

    const/16 v0, 0x30

    .line 474
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2d
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 754
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method private updateArcIndicatorRingScreenLight(Z)V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_c

    .line 774
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateRingScreenLight(Z)V

    .line 775
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    return-void
.end method

.method private updateFilterValueToUI(Ljava/lang/String;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_16

    .line 115
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_16
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    .line 241
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 4

    .line 198
    iput-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 199
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mInflater:Landroid/view/LayoutInflater;

    .line 200
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 655
    const-string p0, "key_supernight_filter"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    const-string v0, "key_supernight_filter"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 319
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 321
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->removeAnimatorListener()V

    .line 322
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 504
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    goto :goto_f

    :cond_7
    if-eq p1, v0, :cond_d

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_f

    .line 506
    :cond_d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsCameraSwitching:Z

    :cond_f
    :goto_f
    const/16 v2, 0x31

    if-eqz p1, :cond_d1

    if-eq p1, v0, :cond_cd

    const/4 v3, 0x2

    if-eq p1, v3, :cond_c9

    const/4 v3, 0x4

    if-eq p1, v3, :cond_c5

    const/4 v3, 0x5

    if-eq p1, v3, :cond_cd

    const/16 v3, 0x9

    if-eq p1, v3, :cond_cd

    const/16 v3, 0x2e

    if-eq p1, v3, :cond_c9

    const/16 v3, 0x32

    if-eq p1, v3, :cond_c1

    const/16 v3, 0x38

    if-eq p1, v3, :cond_c9

    const/16 v3, 0xa5

    if-eq p1, v3, :cond_af

    const/16 v3, 0x14f

    if-eq p1, v3, :cond_ab

    const/16 v3, 0xd

    if-eq p1, v3, :cond_c5

    const/16 v3, 0xe

    if-eq p1, v3, :cond_cd

    const/16 v3, 0x7c

    if-eq p1, v3, :cond_c1

    const/16 v3, 0x7d

    if-eq p1, v3, :cond_c1

    const/16 v3, 0x7f

    if-eq p1, v3, :cond_9a

    const/16 v3, 0x80

    if-eq p1, v3, :cond_8b

    const/16 v3, 0xcf

    if-eq p1, v3, :cond_85

    const/16 v3, 0xd0

    if-eq p1, v3, :cond_82

    packed-switch p1, :pswitch_data_ea

    goto :goto_aa

    .line 569
    :pswitch_5a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopWindowShow:Z

    goto :goto_cd

    .line 560
    :pswitch_5d
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopWindowShow:Z

    .line 561
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately()Z

    goto :goto_c5

    .line 526
    :pswitch_69
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    .line 527
    iget-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_76

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 531
    :cond_76
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 532
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 589
    :cond_82
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    return-void

    .line 585
    :cond_85
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    .line 586
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately()Z

    return-void

    .line 520
    :cond_8b
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showFilterRootView()V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_aa

    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz p0, :cond_aa

    .line 522
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    return-void

    .line 512
    :cond_9a
    :pswitch_9a
    iget-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz p1, :cond_a1

    .line 513
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterRootView()V

    .line 515
    :cond_a1
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_aa

    const/16 p1, 0x8

    .line 516
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    :cond_aa
    :goto_aa
    return-void

    .line 592
    :cond_ab
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUI()V

    return-void

    .line 547
    :cond_af
    iget-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_ba

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 551
    :cond_ba
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 552
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    return-void

    .line 580
    :cond_c1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    return-void

    .line 566
    :cond_c5
    :goto_c5
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    return-void

    .line 557
    :cond_c9
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    return-void

    .line 575
    :cond_cd
    :goto_cd
    :pswitch_cd
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    return-void

    .line 536
    :cond_d1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    if-eqz p1, :cond_dc

    .line 537
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 540
    :cond_dc
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p1, :cond_e6

    .line 542
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 544
    :cond_e6
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    return-void

    :pswitch_data_ea
    .packed-switch 0x1c
        :pswitch_69
        :pswitch_5d
        :pswitch_5a
        :pswitch_cd
        :pswitch_9a
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 632
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showOrHideFilterSettingUI()Z

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 347
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    const/4 p1, 0x0

    .line 348
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1078
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsOnScale:Z

    .line 1079
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1084
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsOnScale:Z

    .line 1085
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    if-nez p2, :cond_6

    goto :goto_41

    .line 1062
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1063
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1065
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_25

    return v0

    :cond_25
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3c

    .line 1068
    iget-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsOnScale:Z

    if-nez v0, :cond_3c

    .line 1069
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1070
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUI()V

    .line 1073
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_41
    :goto_41
    return v0
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 601
    const-string v0, "key_supernight_filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 603
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    if-nez p1, :cond_15

    .line 604
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->inFlaterView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mEntryView:Landroid/view/View;

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setupEntryView()V

    .line 608
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 609
    const-string v0, "supernight_filter_off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x0

    .line 610
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    .line 611
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->recoverFilterPanelToDefault()V

    const/4 p1, 0x1

    .line 612
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->setEnable(Z)V

    .line 614
    :cond_2e
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->showOrHideFilterSettingUI()Z

    :cond_31
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 645
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 738
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 650
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsEnable:Z

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 761
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 763
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 764
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->registerKeyToMonitor(Ljava/util/List;)V

    :cond_14
    return-void
.end method

.method public setupEntryView()V
    .registers 8

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIsEnable:Z

    const/4 v1, 0x0

    .line 261
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mNeedShow:Z

    .line 262
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_82

    .line 263
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_82

    .line 266
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 268
    iget-boolean v6, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mUseTranssionFilter:Z

    if-eqz v6, :cond_34

    const/4 v6, 0x2

    goto :goto_35

    :cond_34
    move v6, v0

    :goto_35
    invoke-static {v5, v6}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->getItemInfoByFilterId(Ljava/lang/String;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 271
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 274
    :cond_3f
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->initCameraInfoTracker(Ljava/util/List;)V

    .line 275
    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->findIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 276
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v2, :cond_75

    .line 277
    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-direct {v2, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    .line 278
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 280
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    new-instance v3, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    .line 287
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_82

    .line 290
    :cond_75
    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setItemList(Ljava/util/List;)V

    .line 291
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 296
    :cond_82
    :goto_82
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->addAnimatorListener()V

    .line 297
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 298
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    .line 300
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 327
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1b

    .line 330
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 331
    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->unRegisterKeyToMonitor(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 19

    move-object/from16 v0, p0

    .line 787
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-nez v1, :cond_8

    goto/16 :goto_377

    .line 790
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 792
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 793
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 794
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 795
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 796
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v4, 0x3

    const/16 v5, 0x55

    const/16 v6, 0x33

    const/16 v7, 0x5a

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v11, 0x10e

    const/16 v12, 0xb4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v3, v13, :cond_118

    .line 797
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 798
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v15, 0x7c

    const/16 v16, 0x1a4

    if-eq v3, v7, :cond_c5

    if-eq v3, v12, :cond_98

    if-eq v3, v11, :cond_75

    .line 823
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_height_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 824
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x53

    .line 825
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 826
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_left_margin_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 827
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_margin_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_e7

    .line 814
    :cond_75
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_height_expand_90:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 815
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 816
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 817
    invoke-static {v15}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 818
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_top_margin_expand_270:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e7

    .line 807
    :cond_98
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_height_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 808
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x35

    .line 809
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 810
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_right_margin_expand_180:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 811
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_top_margin_expand_180:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e7

    .line 800
    :cond_c5
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_height_expand_90:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 801
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 802
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 803
    invoke-static {v15}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 804
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_margin_expand_90:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 831
    :goto_e7
    iget-boolean v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz v3, :cond_fe

    .line 832
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 833
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 834
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v3, :cond_fe

    .line 835
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v13, v14}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 838
    :cond_fe
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_10f

    .line 839
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height_expand:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 840
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 842
    :cond_10f
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_1e6

    :cond_118
    const/4 v15, 0x2

    if-eqz v3, :cond_1e9

    if-ne v3, v15, :cond_11f

    goto/16 :goto_1e9

    :cond_11f
    if-ne v3, v4, :cond_13d

    .line 882
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "hover_support_setting_ui_bottom_margin"

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 883
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v6, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_28a

    :cond_13d
    if-ne v3, v9, :cond_192

    .line 885
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 886
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_for_lr:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 887
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_expand_0:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 888
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 889
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 890
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 891
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_17d

    .line 892
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height_expand:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 893
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 895
    :cond_17d
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v3, :cond_18a

    iget-boolean v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    if-nez v3, :cond_18a

    .line 896
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v13, v14}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 898
    :cond_18a
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1e6

    :cond_192
    if-ne v3, v8, :cond_1e6

    .line 900
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 901
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_for_lr:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 902
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_width_expand_0:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 903
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 904
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 905
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 906
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_1d2

    .line 907
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height_expand:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 908
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 910
    :cond_1d2
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v3, :cond_1df

    iget-boolean v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mPopSettingShow:Z

    if-nez v3, :cond_1df

    .line 911
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v13, v14}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 913
    :cond_1df
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1e6
    :goto_1e6
    move v3, v14

    goto/16 :goto_28a

    .line 845
    :cond_1e9
    :goto_1e9
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 846
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1ff

    .line 848
    :cond_1f3
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_root_corner_radius:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v14, v14, v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_1ff
    const/4 v3, -0x1

    .line 850
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 851
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 852
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v3, v5

    .line 853
    iget v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v5, v15, :cond_229

    .line 855
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_column_root_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v3, v5

    goto :goto_240

    .line 857
    :cond_229
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v5, :cond_240

    .line 858
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 862
    :cond_240
    :goto_240
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 863
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_257

    .line 864
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_left_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v5, 0x50

    .line 865
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_25b

    :cond_257
    const/16 v5, 0x51

    .line 867
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 869
    :goto_25b
    iget-boolean v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterUIShown:Z

    if-eqz v5, :cond_272

    .line 870
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 871
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 872
    iget-object v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v5, :cond_272

    .line 873
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v14, v13}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 876
    :cond_272
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v5, :cond_283

    .line 877
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/feature/supernightfilter/R$dimen;->supernight_filter_switcher_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 878
    iget-object v6, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v6, v5}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 880
    :cond_283
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v6, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 916
    :goto_28a
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2be

    if-eqz p1, :cond_2be

    .line 917
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    .line 918
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 919
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 920
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 924
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2c9

    .line 926
    :cond_2be
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v4, :cond_2c4

    .line 927
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 929
    :cond_2c4
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    :goto_2c9
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v1, v13, :cond_2de

    if-eq v1, v9, :cond_2de

    if-eq v1, v8, :cond_2de

    .line 936
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_2dc

    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez v1, :cond_2dc

    goto :goto_2de

    :cond_2dc
    move v1, v14

    goto :goto_2ef

    .line 937
    :cond_2de
    :goto_2de
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 938
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-nez v2, :cond_2ef

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v2, v7, :cond_2ec

    if-ne v2, v11, :cond_2ef

    :cond_2ec
    add-int/2addr v2, v12

    .line 939
    rem-int/lit16 v1, v2, 0x168

    .line 942
    :cond_2ef
    :goto_2ef
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v2, :cond_2f8

    .line 943
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v2, v3, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateScreenFormAndOrientation(II)V

    .line 946
    :cond_2f8
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v13, :cond_331

    .line 947
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_31a

    if-ne v1, v12, :cond_303

    goto :goto_31a

    .line 951
    :cond_303
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v11, :cond_30d

    move v1, v13

    goto :goto_30e

    :cond_30d
    move v1, v14

    :goto_30e
    invoke-direct {v3, v4, v13, v14, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 952
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v13}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_366

    .line 948
    :cond_31a
    :goto_31a
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v12, :cond_324

    move v1, v13

    goto :goto_325

    :cond_324
    move v1, v14

    :goto_325
    invoke-direct {v3, v4, v13, v13, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 949
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v14}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_366

    :cond_331
    if-eq v1, v9, :cond_34e

    if-ne v1, v8, :cond_336

    goto :goto_34e

    .line 959
    :cond_336
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_366

    .line 960
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v13, v14, v14}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 961
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v13}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_366

    .line 956
    :cond_34e
    :goto_34e
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-ne v4, v11, :cond_35a

    move v4, v14

    goto :goto_35b

    :cond_35a
    move v4, v13

    :goto_35b
    invoke-direct {v2, v3, v13, v13, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 957
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v14}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 965
    :cond_366
    :goto_366
    iget-object v1, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 966
    iget v2, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastPosition:I

    if-ltz v2, :cond_377

    .line 967
    iget v0, v0, Lcom/transsion/camera/feature/supernightfilter/ui/SuperNightFilterSettingUI;->mLastOffset:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_377
    :goto_377
    return-void
.end method
