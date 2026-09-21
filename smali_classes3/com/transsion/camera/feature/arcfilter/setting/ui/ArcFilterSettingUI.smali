.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;
.super Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI<",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x96

.field private static final DURATION:I = 0x12c

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mFilterRootAnimator:Landroid/animation/ValueAnimator;

.field private final mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFilterRootView:Landroid/view/View;

.field private mFilterTranslateDistance:F

.field private mFilterUIShown:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsCameraSwitching:Z

.field private mIsPopWindowShow:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastPosition:I

.field private mNeedShow:Z

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPopSettingShow:Z

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mSettingUiAdjustHeight:I

.field private final mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# direct methods
.method public static synthetic $r8$lambda$IUGyFrwCQbjPdzHymDYl8OijWPY(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptzbKWs0EkTK4x5F6EUtwLMZfnU(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->lambda$new$1(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rlt1MvVl8zGOD8aH4ZhvxuK6UnA(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFilterRootView(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FilterSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 117
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastPosition:I

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 517
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$2;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 531
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$3;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 589
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 818
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$5;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 839
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$6;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 903
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$7;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 118
    sget v0, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    .line 119
    sget v0, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_setting_ui_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mSettingUiAdjustHeight:I

    .line 120
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_79

    .line 121
    new-array p1, v0, [F

    fill-array-data p1, :array_8c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    goto :goto_84

    .line 123
    :cond_79
    new-array p1, v0, [F

    fill-array-data p1, :array_94

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    .line 125
    :goto_84
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_8c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private collapseBottomUI(Z)V
    .registers 4

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_2c

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsPopWindowShow:Z

    if-nez v0, :cond_23

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPopSettingShow:Z

    if-nez v0, :cond_23

    .line 231
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 234
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_2c

    const/16 p1, 0x31

    .line 235
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 11

    .line 808
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$4;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method private expandBottomUI(Z)V
    .registers 5

    .line 216
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_13

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13

    const/4 v2, 0x0

    .line 220
    invoke-interface {v0, v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method private hideFilterRootView()V
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 565
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 568
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private hideFilterSettingUI()V
    .registers 5

    .line 309
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->setAnimationApplied(Z)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_21

    const/16 v2, 0x31

    .line 314
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 316
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_35

    .line 317
    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v3, "value_filter_ui_off"

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    .line 320
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->startCollapseAnimator()V

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 322
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->collapseBottomUI(Z)V

    .line 323
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->startCollapseAnimator()V

    .line 324
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private hideFilterSettingUIImmediately(Z)V
    .registers 4

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->collapseBottomUI(Z)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2b

    .line 264
    const-string v1, "key_conflict_ui_state"

    if-eqz p1, :cond_21

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    if-nez p0, :cond_21

    .line 265
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_filter_ui_off"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 267
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

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 277
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->cancelAnimation()V

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_20

    const/4 v3, 0x0

    .line 280
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_29

    const/16 v3, 0x31

    .line 284
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 286
    :cond_29
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPopSettingShow:Z

    if-eqz v0, :cond_3b

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_conflict_ui_state"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v4, "value_filter_ui_off_no_show"

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_42

    .line 290
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 292
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz p0, :cond_4f

    .line 293
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->setAnimationApplied(Z)V

    :cond_4f
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 80
    iget v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v1, :cond_57

    .line 84
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45

    .line 85
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_37

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 93
    :cond_37
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_3b
    neg-float v0, v0

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_40
    neg-float v0, v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_57

    :cond_45
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4d

    neg-float v0, v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    :cond_4d
    const/4 v3, 0x4

    if-ne v2, v3, :cond_54

    .line 104
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_57

    .line 106
    :cond_54
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    :cond_57
    :goto_57
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz p0, :cond_5e

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5e
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p2, p1, :cond_8

    const/4 p1, 0x1

    .line 591
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 754
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 755
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private recoverFilterPanelToDefault()V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 485
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    .line 486
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 487
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    .line 488
    iput v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastPosition:I

    :cond_1a
    :goto_1a
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 575
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_e
    return-void
.end method

.method private showFilterRootView()V
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 556
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 558
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterSettingUIImmediately()V

    :cond_e
    return-void
.end method

.method private showFilterSettingUI()V
    .registers 3

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    .line 300
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 303
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->startExpandAnimator()V

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->expandBottomUI(Z)V

    .line 305
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    return-void
.end method

.method private showFilterSettingUIImmediately()V
    .registers 4

    .line 246
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->cancelAnimation()V

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    .line 249
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_15
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->expandBottomUI(Z)V

    return-void
.end method

.method private showOrHideFilterSettingUI()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    .line 355
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    if-eqz v0, :cond_15

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI()V

    goto :goto_18

    .line 358
    :cond_15
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterSettingUI()V

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

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_28

    const/16 v0, 0x31

    .line 347
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_28
    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 334
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_2d

    const/16 v0, 0x30

    .line 336
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2d
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_21

    :cond_3
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    .line 166
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastPosition:I

    .line 167
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne p1, v1, :cond_21

    .line 168
    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    if-gez p1, :cond_21

    .line 169
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 131
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/transsion/camera/feature/arcfilter/R$layout;->arc_filter_option:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryView:Landroid/view/View;

    .line 133
    sget p2, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    .line 134
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    .line 150
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_52

    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-nez p1, :cond_52

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, v1, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {p1, p3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 154
    :cond_52
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getItemInfoList(Ljava/util/List;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 798
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getItemInfoList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

    .line 195
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->hideEntryView()V

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->removeAnimatorListener()V

    return-void
.end method

.method protected initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;"
        }
    .end annotation

    .line 803
    new-instance p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    return-object p0
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

    .line 366
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    goto :goto_f

    :cond_7
    if-eq p1, v0, :cond_d

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_f

    .line 368
    :cond_d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsCameraSwitching:Z

    :cond_f
    :goto_f
    if-eqz p1, :cond_cb

    if-eq p1, v0, :cond_c7

    const/4 v2, 0x2

    const/16 v3, 0x31

    if-eq p1, v2, :cond_bc

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_c7

    const/16 v2, 0xd

    if-eq p1, v2, :cond_b8

    const/16 v2, 0xe

    if-eq p1, v2, :cond_c7

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_bc

    const/16 v2, 0x2f

    if-eq p1, v2, :cond_c7

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_b2

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_af

    sparse-switch p1, :sswitch_data_e0

    packed-switch p1, :pswitch_data_116

    goto/16 :goto_dc

    .line 422
    :pswitch_3e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsPopWindowShow:Z

    .line 423
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    goto/16 :goto_dc

    .line 381
    :pswitch_45
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPopSettingShow:Z

    goto/16 :goto_cb

    .line 402
    :pswitch_49
    :sswitch_49
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 403
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mIsPopWindowShow:Z

    .line 404
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately()Z

    .line 406
    :cond_54
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    goto/16 :goto_dc

    .line 456
    :sswitch_59
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUI()V

    goto/16 :goto_dc

    .line 440
    :sswitch_5e
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/high16 v2, -0x3d400000    # -96.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 443
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_dc

    .line 445
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_dc

    .line 426
    :sswitch_7c
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 427
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->expandBottomUI(Z)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_8c

    .line 429
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 431
    :cond_8c
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_dc

    .line 432
    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v2, "value_filter_ui_off_no_show"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_dc

    .line 378
    :sswitch_9d
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showFilterRootView()V

    goto :goto_dc

    .line 373
    :sswitch_a1
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 374
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_dc

    .line 437
    :sswitch_ab
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    goto :goto_dc

    .line 453
    :cond_af
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPopSettingShow:Z

    goto :goto_dc

    .line 449
    :cond_b2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mPopSettingShow:Z

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately()Z

    goto :goto_dc

    .line 410
    :cond_b8
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    goto :goto_dc

    .line 395
    :cond_bc
    :sswitch_bc
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_dc

    .line 397
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_dc

    .line 419
    :cond_c7
    :sswitch_c7
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    goto :goto_dc

    .line 384
    :cond_cb
    :goto_cb
    :sswitch_cb
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    if-eqz v0, :cond_d6

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 388
    :cond_d6
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    .line 389
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    .line 461
    :cond_dc
    :goto_dc
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->notifyCameraOperateAction(I)V

    return-void

    :sswitch_data_e0
    .sparse-switch
        0x9 -> :sswitch_c7
        0x10 -> :sswitch_c7
        0x13 -> :sswitch_ab
        0x17 -> :sswitch_a1
        0x20 -> :sswitch_9d
        0x32 -> :sswitch_7c
        0x38 -> :sswitch_bc
        0x6a -> :sswitch_c7
        0xa5 -> :sswitch_cb
        0xed -> :sswitch_bc
        0xf2 -> :sswitch_5e
        0x14a -> :sswitch_59
        0x183 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x1c
        :pswitch_45
        :pswitch_49
        :pswitch_3e
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showOrHideFilterSettingUI()Z

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

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 4

    .line 466
    const-string v0, "key_filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 468
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 469
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->recoverFilterPanelToDefault()V

    const/4 p1, 0x1

    .line 471
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->setEnable(Z)V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz p1, :cond_2a

    .line 473
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 476
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->showOrHideFilterSettingUI()Z

    :cond_2d
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 582
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 583
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 584
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_22

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mUICallbackImpl:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_22
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-eqz p0, :cond_7

    .line 507
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mNeedShow:Z

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v0

    .line 179
    :goto_b
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->setupEntryView()V

    if-eqz v1, :cond_19

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v1, :cond_19

    .line 181
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 183
    :cond_19
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v1, :cond_40

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 185
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 188
    :cond_40
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->addAnimatorListener()V

    .line 189
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 201
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->unInit()V

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->hideFilterSettingUIImmediately(Z)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 597
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    if-nez v1, :cond_8

    goto/16 :goto_3ea

    .line 600
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 602
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 603
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 604
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 605
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 606
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 607
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x55

    const/16 v9, 0x53

    const/16 v10, 0x5a

    const/16 v11, 0x33

    const/4 v12, 0x0

    const/16 v13, 0x10e

    const/16 v14, 0xb4

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-ne v3, v15, :cond_12f

    .line 608
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 609
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v10, :cond_d1

    if-eq v3, v14, :cond_a4

    if-eq v3, v13, :cond_79

    .line 634
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_height_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 635
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 636
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 637
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_left_margin_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 638
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_margin_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_fb

    .line 625
    :cond_79
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_height_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 626
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 627
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 628
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_left_margin_expand_270:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 629
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_top_margin_expand_270:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fb

    .line 618
    :cond_a4
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_height_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 619
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x35

    .line 620
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 621
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_right_margin_expand_180:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 622
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_top_margin_expand_180:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fb

    .line 611
    :cond_d1
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_height_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 612
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 613
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 614
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_right_margin_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 615
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_margin_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 642
    :goto_fb
    iget-boolean v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    if-eqz v3, :cond_115

    .line 643
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 644
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 645
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_115

    .line 646
    invoke-interface {v3, v15, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 647
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 650
    :cond_115
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_126

    .line 651
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 652
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v8, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 654
    :cond_126
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_259

    :cond_12f
    const/4 v15, -0x1

    const/4 v12, 0x2

    if-eqz v3, :cond_25c

    if-ne v3, v12, :cond_137

    goto/16 :goto_25c

    :cond_137
    if-ne v3, v7, :cond_151

    .line 691
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_hover_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v3, v8

    .line 692
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v9, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_2e9

    :cond_151
    if-ne v3, v6, :cond_1b0

    .line 694
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 695
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_90:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 696
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_0:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 697
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 699
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 700
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_191

    .line 701
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 702
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v8, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 704
    :cond_191
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v3, :cond_1a7

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1a7

    .line 705
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 706
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 708
    :cond_1a7
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_259

    :cond_1b0
    if-ne v3, v5, :cond_20e

    .line 710
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 711
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_90:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 712
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_width_expand_0:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 713
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 714
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_lr_hover_margin_left:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 715
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 716
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_1f0

    .line 717
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height_expand:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 718
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v8, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 720
    :cond_1f0
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v3, :cond_206

    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_206

    .line 721
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4, v4}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 722
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 724
    :cond_206
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationExpandOrLR:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_259

    :cond_20e
    const/4 v8, 0x7

    if-ne v3, v8, :cond_259

    .line 726
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 727
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 728
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->flip_arc_filter_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 729
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v10, :cond_235

    if-eq v3, v14, :cond_235

    if-eq v3, v13, :cond_235

    .line 738
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 739
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->flip_arc_filter_bottom_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_241

    .line 733
    :cond_235
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 734
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->flip_arc_filter_top_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 742
    :goto_241
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v3, :cond_252

    .line 743
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->flip_arc_filter_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 744
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v8, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 746
    :cond_252
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecorationFlip:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_259
    :goto_259
    move v3, v4

    goto/16 :goto_2e9

    .line 657
    :cond_25c
    :goto_25c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_266

    .line 658
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_272

    .line 660
    :cond_266
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_root_corner_radius:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 662
    :goto_272
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 663
    iget-object v3, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 664
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v3, v8

    .line 665
    iget v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v8, v12, :cond_29a

    .line 667
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_column_root_bottom_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v3, v8

    .line 669
    :cond_29a
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 670
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v8

    if-eqz v8, :cond_2b1

    .line 671
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_left_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v8, 0x50

    .line 672
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2b5

    :cond_2b1
    const/16 v8, 0x51

    .line 674
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 677
    :goto_2b5
    iget-boolean v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterUIShown:Z

    if-eqz v8, :cond_2d1

    .line 678
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 679
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 680
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v8, :cond_2d1

    const/4 v9, 0x1

    .line 681
    invoke-interface {v8, v4, v9}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 682
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v8, v9}, Lcom/transsion/camera/app/common/IAppUI;->setModePickerSink(Z)V

    .line 685
    :cond_2d1
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v8, :cond_2e2

    .line 686
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_switcher_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 687
    iget-object v9, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {v9, v8}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 689
    :cond_2e2
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v9, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 749
    :goto_2e9
    iget-object v8, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_31d

    if-eqz p1, :cond_31d

    .line 750
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x190

    .line 751
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 752
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 753
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 757
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_328

    .line 759
    :cond_31d
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v7, :cond_323

    .line 760
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 762
    :cond_323
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    :goto_328
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateSettingUILayout(Z)V

    .line 767
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_364

    .line 768
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_34e

    if-ne v1, v14, :cond_337

    goto :goto_34e

    .line 772
    :cond_337
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v13, :cond_33f

    move v1, v9

    goto :goto_340

    :cond_33f
    move v1, v4

    :goto_340
    invoke-direct {v0, v3, v9, v4, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 773
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v9}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto/16 :goto_3b6

    .line 769
    :cond_34e
    :goto_34e
    iget-object v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v14, :cond_356

    move v1, v9

    goto :goto_357

    :cond_356
    move v1, v4

    :goto_357
    invoke-direct {v0, v3, v9, v9, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 770
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_3b6

    :cond_364
    if-eq v1, v6, :cond_368

    if-ne v1, v5, :cond_36a

    :cond_368
    const/4 v3, 0x1

    goto :goto_39f

    :cond_36a
    const/4 v8, 0x7

    if-ne v1, v8, :cond_387

    .line 780
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v3, :cond_378

    const/4 v9, 0x1

    :goto_376
    const/4 v3, 0x1

    goto :goto_37a

    :cond_378
    move v9, v4

    goto :goto_376

    :goto_37a
    invoke-direct {v0, v2, v3, v4, v9}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 781
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_3b6

    :cond_387
    const/4 v3, 0x1

    .line 783
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_3b6

    .line 784
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4, v4}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 785
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    goto :goto_3b6

    .line 777
    :goto_39f
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-ne v5, v13, :cond_3a9

    move v9, v4

    goto :goto_3aa

    :cond_3a9
    move v9, v3

    :goto_3aa
    invoke-direct {v0, v2, v3, v3, v9}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->createLayoutManager(Landroid/content/Context;IIZ)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 778
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-static {v1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 789
    :cond_3b6
    :goto_3b6
    iget-object v1, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mFilterRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 790
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettingUILayout mLastPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLastOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 791
    iget v2, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastPosition:I

    if-ltz v2, :cond_3ea

    .line 792
    iget v0, v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUI;->mLastOffset:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3ea
    :goto_3ea
    return-void
.end method
