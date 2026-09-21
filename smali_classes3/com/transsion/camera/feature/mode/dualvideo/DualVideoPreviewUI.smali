.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;
    }
.end annotation


# static fields
.field private static final DUAL_DEVICE_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

.field private static final DUAL_DEVICE_INTERPOLATOR_OUT:Landroid/view/animation/PathInterpolator;

.field private static final DURATION:I = 0xc8

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBottomUIDefaultHeight:I

.field private mContext:Landroid/content/Context;

.field private mCurTouchPointId:I

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDividerDisplayHeight:I

.field private mDividerDisplayY:I

.field private mDividerDownEdgeOffset:I

.field private mDividerDownY:F

.field private mDividerMiddleEdgeOffset:I

.field private mDividerUpEdgeOffset:I

.field private mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

.field private mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

.field private mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mDualDeviceRootIn:Landroid/animation/ObjectAnimator;

.field private mDualDeviceRootLayout:Landroid/view/View;

.field private mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

.field private mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsDualDeviceRootHide:Z

.field private mIsItemGroupHide:Z

.field private mIsPopSettingShow:Z

.field private mIsStartRecording:Z

.field private mOrientation:I

.field private mOutAreaShouldPIPViewRespond:Z

.field private mPIPDisplayHeight:I

.field private mPIPDisplayWidth:I

.field private mPIPDisplayX:I

.field private mPIPDisplayY:I

.field private mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

.field private mParentGroup:Landroid/view/ViewGroup;

.field private mPipEdgeOffsetRespond:I

.field private mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

.field private mPreviewViewHeight:I

.field private mPreviewViewWidth:I

.field private mRecordingAnimator:Landroid/animation/Animator;

.field private mScreenFormType:I

.field private mSinkTranslateDistance:I

.field private mSplitDivider:Landroid/widget/ImageView;

.field private mSplitRootLayout:Landroid/view/View;

.field private mSplitRootView:Landroid/view/View;

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$ESe59ialf7OQumDyvT0E4NVjii8(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onDualDeviceItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZtEA1yMQel1WqgShCAXIoGs8I8(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->lambda$updateDualDeviceLayoutParameter$0(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uZHWYV2J1MYVWg-RyECVRVOZFCI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4G3hl5u8XS4Rz9Zv_6xEz_2EFU(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurTouchPointId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurTouchPointId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDownY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerMiddleEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualDeviceGroupButton(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualDeviceGroupRotateLayout(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualDeviceRootIn(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualDeviceRootLayout(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPIPRectView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurTouchPointId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurTouchPointId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDividerDownY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mStartDualDeviceButtonAnimation(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->StartDualDeviceButtonAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnable(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDualDeviceLayoutParameter(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDualDeviceLayoutParameter(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DualVideoPreviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->DUAL_DEVICE_INTERPOLATOR_OUT:Landroid/view/animation/PathInterpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->DUAL_DEVICE_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownY:F

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    .line 58
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    .line 59
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    .line 60
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    .line 72
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 89
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 90
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    .line 92
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 93
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    .line 108
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurTouchPointId:I

    .line 110
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method private StartDualDeviceButtonAnimation()V
    .registers 4

    const/4 v0, 0x3

    .line 932
    new-array v1, v0, [F

    fill-array-data v1, :array_32

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 933
    new-array v0, v0, [F

    fill-array-data v0, :array_3c

    const-string v2, "scaleY"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 934
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    filled-new-array {v1, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    .line 935
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 936
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 937
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_32
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_3c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private initDualDeviceLayout()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_button_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 379
    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->bottomButtonPressSealAnimation(Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_dual_device_switcher:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_group_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initDualDeviceRecycleData()V
    .registers 6

    .line 367
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 368
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDataList:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurrentPosition:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;-><init>(Ljava/util/List;II)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    .line 369
    new-instance v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter$OnItemClickListener;)V

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 371
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItemDecoration;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private synthetic lambda$updateDualDeviceLayoutParameter$0(ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 473
    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_24

    .line 476
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_24
    const/16 p1, 0x55

    .line 478
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 479
    const-string p1, "rootBottomMargin"

    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p1, -0x1

    .line 480
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 481
    const-string p2, "rootHeight"

    invoke-virtual {p5, p2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 482
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x51

    .line 483
    iput p2, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 484
    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 485
    const-string p1, "itemBottomMargin"

    invoke-virtual {p5, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onAlphaAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 764
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_11

    .line 765
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method private onDualDeviceItemSelected(Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;)V
    .registers 4

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_9

    .line 806
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceGroupId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x1

    .line 808
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;->dualDeviceHintId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 811
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 770
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_2c

    .line 771
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 772
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    if-eqz p0, :cond_11

    const/16 v1, 0xb4

    if-ne p0, v1, :cond_1f

    .line 773
    :cond_11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 777
    :cond_1f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2c
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetRootView(Landroid/view/ViewGroup;)V
    .registers 3

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 217
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 219
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private runDualDeviceRootAnimator()V
    .registers 8

    .line 957
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 960
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 965
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootIn:Landroid/animation/ObjectAnimator;

    .line 967
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->DUAL_DEVICE_INTERPOLATOR_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 968
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 969
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 978
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setDualDeviceAnimator()V
    .registers 8

    .line 751
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_show_or_hide_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    .line 753
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v1, 0x2

    .line 754
    new-array v2, v1, [F

    fill-array-data v2, :array_4a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    .line 755
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 756
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 758
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    new-array v1, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v1, v6

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 759
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 760
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setEnable(Z)V
    .registers 2

    .line 792
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    return-void
.end method

.method private updateDualDeviceLayoutParameter(IZ)V
    .registers 19

    move-object/from16 v1, p0

    move/from16 v6, p1

    .line 416
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_36c

    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_e

    goto/16 :goto_36c

    .line 419
    :cond_e
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 421
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 422
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    .line 424
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 425
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 428
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getGoogleLensUIButtonVisible()I

    move-result v3

    if-nez v3, :cond_46

    .line 429
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_device_group_button_end_lens_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_52

    .line 431
    :cond_46
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_device_group_button_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 434
    :goto_52
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 437
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 439
    iget v9, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-ne v6, v10, :cond_75

    .line 445
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    const-string v12, "hover_support_setting_ui_bottom_margin"

    invoke-static {v2, v12}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 446
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height_hover_extra:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v2, v0

    add-int/2addr v2, v12

    move v12, v2

    move v2, v11

    goto :goto_82

    :cond_75
    if-nez v6, :cond_7f

    sub-int/2addr v0, v2

    .line 451
    iget-object v12, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getItemBottomMarginDst(Landroid/content/Context;I)I

    move-result v12

    goto :goto_82

    :cond_7f
    move v0, v11

    move v2, v0

    move v12, v2

    .line 454
    :goto_82
    iget-object v13, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v13, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v13

    if-ltz v13, :cond_8c

    const/4 v15, 0x1

    goto :goto_8d

    :cond_8c
    move v15, v11

    .line 456
    :goto_8d
    invoke-virtual {v4, v11, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 457
    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 458
    iget-object v14, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v14

    const/16 v11, 0x10e

    if-eqz v14, :cond_103

    if-eqz p2, :cond_103

    .line 459
    const-string v10, "rootBottomMargin"

    filled-new-array {v8, v2}, [I

    move-result-object v2

    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 461
    const-string v8, "rootHeight"

    filled-new-array {v7, v0}, [I

    move-result-object v0

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 463
    const-string v7, "itemBottomMargin"

    filled-new-array {v9, v12}, [I

    move-result-object v8

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    if-eqz v15, :cond_c6

    .line 465
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    goto :goto_cc

    .line 466
    :cond_c6
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    :goto_cc
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    .line 465
    const-string v9, "padding"

    invoke-static {v9, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 468
    filled-new-array {v2, v0, v7, v8}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x190

    .line 469
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 470
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;

    move v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;ZILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 489
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v2, 0x0

    goto/16 :goto_354

    :cond_103
    move v14, v15

    const/16 v7, 0x55

    if-eqz v6, :cond_10a

    if-ne v6, v10, :cond_10d

    :cond_10a
    const/4 v8, 0x0

    goto/16 :goto_314

    .line 509
    :cond_10d
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 510
    iget v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_284

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_20d

    if-eq v0, v11, :cond_197

    .line 554
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 555
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x35

    .line 556
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 557
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 558
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_0_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 560
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 561
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 562
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 563
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_0_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 564
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_0_top_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2fa

    .line 539
    :cond_197
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 540
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 541
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 542
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_90_top_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 543
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_end_margin:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 545
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 546
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_width:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 547
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_90_top_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 549
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_90_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2fa

    .line 526
    :cond_20d
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 527
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x53

    .line 528
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 529
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 530
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_0_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 532
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 533
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 534
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 535
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_0_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 536
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_0_top_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2fa

    .line 513
    :cond_284
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_width_and_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x33

    .line 515
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 516
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_90_top_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 517
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_button_expand_end_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 519
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 520
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 522
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_90_top_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 523
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_group_expand_90_end_margin:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 567
    :goto_2fa
    iget-object v3, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    add-int/2addr v0, v2

    .line 568
    rem-int/lit16 v0, v0, 0x168

    .line 569
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 571
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v8

    goto :goto_354

    :goto_314
    if-eqz v14, :cond_32a

    .line 492
    iget-object v9, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v9

    invoke-interface {v9}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getBottomBarTopPadding()I

    move-result v9

    .line 493
    iget-object v10, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-virtual {v10, v8, v9, v3, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_333

    .line 495
    :cond_32a
    iget-object v9, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v9, v8, v10, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 497
    :goto_333
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 498
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v2, -0x1

    .line 499
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 500
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 501
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x51

    .line 503
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 504
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 505
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 506
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 507
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    :goto_354
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    if-eqz v0, :cond_36c

    const/4 v0, 0x1

    if-ne v6, v0, :cond_35c

    goto :goto_35d

    :cond_35c
    move v11, v2

    .line 575
    :goto_35d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_367

    if-nez v6, :cond_367

    .line 576
    iget v11, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    .line 578
    :cond_367
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setOrientation(I)V

    :cond_36c
    :goto_36c
    return-void
.end method

.method private updatePIPViewLayoutRect()V
    .registers 8

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz v0, :cond_78

    const/4 v1, 0x0

    .line 584
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_top_edge:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 587
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_bottom_edge:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 588
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v0, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setAreaSize(III)V

    goto :goto_3b

    .line 590
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    mul-int/lit8 v4, v3, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setAreaSize(III)V

    .line 592
    :goto_3b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 593
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v2, v3, :cond_5b

    .line 594
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_66

    .line 597
    :cond_5b
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 599
    :goto_66
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 600
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 601
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_78
    return-void
.end method

.method private updateSplitDividerViewLayout()V
    .registers 7

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_b9

    const/4 v1, 0x0

    .line 608
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 610
    invoke-static {v2, v3, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    const-string v2, ", height:"

    const-string/jumbo v3, "updateSplitDividerViewLayout width:"

    if-nez v0, :cond_47

    .line 611
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", not 16_9"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 615
    :cond_47
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is 16_9"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 617
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    if-lez v0, :cond_b9

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    if-lez v0, :cond_b9

    .line 618
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    if-nez v0, :cond_7e

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    .line 621
    :cond_7e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_a0

    .line 623
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_b0

    .line 626
    :cond_a0
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayHeight:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 629
    :goto_b0
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b9
    return-void
.end method


# virtual methods
.method public bridge synthetic createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public getDualSwitchButtonVisible()Z
    .registers 1

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected getItemBottomMarginDst(Landroid/content/Context;I)I
    .registers 4

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    if-nez p2, :cond_1f

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_device_item_height_normal_extra:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p0, p2

    sub-int/2addr p0, p1

    return p0

    .line 412
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemVisibility()I
    .registers 1

    .line 928
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getOutAreaShouldPIPViewRespond()Z
    .registers 1

    .line 320
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return p0
.end method

.method public getPIPViewSelected()Z
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_9

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hideDualDeviceRoot(Z)V
    .registers 7

    .line 859
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 862
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_15

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    if-eq p1, v0, :cond_15

    .line 863
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 865
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd8

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 866
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 867
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 869
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5a

    .line 870
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    if-eqz p1, :cond_4c

    const/16 v4, 0x10e

    if-ne p1, v4, :cond_3d

    goto :goto_4c

    .line 873
    :cond_3d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v4, v4

    new-array v1, v1, [F

    aput v3, v1, v2

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_68

    .line 871
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    new-array v1, v1, [F

    aput v3, v1, v2

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_68

    .line 876
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v4, v4

    new-array v1, v1, [F

    aput v3, v1, v2

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 878
    :goto_68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 879
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_7c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public imitatePIPViewsTouch(Landroid/view/MotionEvent;)V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    if-eqz p0, :cond_b

    .line 315
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->imitateTouch(Landroid/view/MotionEvent;)Z

    :cond_b
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;I",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "I)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    .line 163
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    .line 164
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    .line 165
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDataList:Ljava/util/List;

    .line 166
    iput p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mCurrentPosition:I

    .line 167
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 168
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 170
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dualvideo_split_view_layout:I

    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    const/4 p6, 0x1

    invoke-virtual {p2, p4, p5, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    .line 171
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dualvideo_split_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootLayout:Landroid/view/View;

    .line 173
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p2

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget p5, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_device_root_layout:I

    invoke-virtual {p4, p5, p2, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 176
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_device_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    .line 178
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceAnimator()V

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->addAnimatorListener()V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 181
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_middle_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerMiddleEdgeOffset:I

    if-ne p3, p6, :cond_62

    .line 183
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 184
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_86

    :cond_62
    const/4 p2, 0x3

    if-ne p3, p2, :cond_76

    .line 186
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 187
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_86

    .line 189
    :cond_76
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 190
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 192
    :goto_86
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_offset_respond:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    .line 194
    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 195
    sget p3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 196
    sget p4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_width:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 197
    sget p5, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_height:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 199
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    sget p7, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->drag_rect_view:I

    invoke-virtual {p5, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    .line 200
    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setEdgeSize(IIII)V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p1, p6}, Landroid/view/View;->setClickable(Z)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    new-instance p3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnPIPRectChangedListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI-IA;)V

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setRectChangedListener(Lcom/transsion/camera/feature/mode/dualvideo/DragRectView$OnRectChangedListener;)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dualvideo_split_divider:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    .line 206
    new-instance p3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;

    invoke-direct {p3, p0, p4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$OnDividerTouchListenerImpl;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI-IA;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->initDualDeviceLayout()V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->initDualDeviceRecycleData()V

    .line 209
    invoke-virtual {p0, p8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setOrientation(I)V

    .line 211
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDualDeviceLayoutParameter(IZ)V

    return-void
.end method

.method public isDualDeviceRootHide()Z
    .registers 1

    .line 892
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    return p0
.end method

.method public bridge synthetic isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public isPopSettingShow(Z)Z
    .registers 2

    .line 884
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsPopSettingShow:Z

    return p1
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(I)V
    .registers 7

    .line 246
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_53

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 258
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto/16 :goto_ef

    :cond_53
    const/4 v0, 0x3

    if-ne p1, v0, :cond_a3

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 264
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 265
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    goto :goto_ef

    .line 267
    :cond_a3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_edge_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 271
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerUpEdgeOffset:I

    .line 272
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDownEdgeOffset:I

    .line 274
    :goto_ef
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;->setEdgeSize(IIII)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDualDeviceLayoutParameter(IZ)V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 826
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    .line 827
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 828
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    :cond_b
    return-void
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 997
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 999
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1001
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 1002
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1004
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public resume()V
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    :cond_8
    return-void
.end method

.method public setDualDeviceButtonEnable(Z)V
    .registers 2

    .line 911
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setDualDeviceGroupRootVisibility(I)V
    .registers 2

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDualDeviceItemEnable(Z)V
    .registers 3

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    if-eqz v0, :cond_7

    .line 797
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setItemEnable(Z)V

    .line 799
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDeviceGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_e

    .line 800
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 915
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    .line 916
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    if-nez v0, :cond_17

    .line 917
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupAdapter:Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;

    if-eqz v0, :cond_1f

    .line 918
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupAdapter;->setOrientation(I)V

    goto :goto_1f

    .line 920
    :cond_17
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    if-ne v0, v1, :cond_1f

    .line 921
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->runDualDeviceRootAnimator()V

    return-void

    .line 924
    :cond_1f
    :goto_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setPIPViewSelected(Z)V
    .registers 2

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_7

    .line 302
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .registers 6

    .line 282
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    .line 283
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2d

    .line 288
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_38

    .line 291
    :cond_2d
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 294
    :goto_38
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewWidth:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 295
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewViewHeight:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    return-void
.end method

.method public setPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPreviewUICallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;

    return-void
.end method

.method public setSplitDividerEnable(Z)V
    .registers 2

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 952
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public shouldPIPViewRespond(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    const/4 v2, 0x2

    .line 325
    new-array v2, v2, [I

    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5d

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5d

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5d

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    aget v0, v2, v3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPipEdgeOffsetRespond:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5d

    .line 331
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return v3

    .line 335
    :cond_5d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOutAreaShouldPIPViewRespond:Z

    return v1
.end method

.method public showDualDeviceRoot()V
    .registers 7

    .line 833
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    if-nez v0, :cond_77

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsItemGroupHide:Z

    if-nez v0, :cond_9

    goto :goto_77

    .line 836
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd7

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 837
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1b

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 840
    :cond_1b
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_78

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 844
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mScreenFormType:I

    const/4 v4, 0x0

    if-ne v0, v1, :cond_5d

    .line 845
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mOrientation:I

    if-eqz v0, :cond_4f

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_40

    goto :goto_4f

    .line 848
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v5, v5

    new-array v3, v3, [F

    aput v5, v3, v2

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_6b

    .line 846
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    new-array v3, v3, [F

    aput v5, v3, v2

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_6b

    .line 851
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateDistance:F

    neg-float v5, v5

    new-array v3, v3, [F

    aput v5, v3, v2

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 854
    :goto_6b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 855
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_77
    :goto_77
    return-void

    :array_78
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOrHideDualDeviceButton(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 899
    :cond_9
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_2f

    .line 900
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showOrHideDualDeviceButton: dismiss"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    if-nez p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 902
    :goto_22
    instance-of v0, p1, Landroid/animation/Animator;

    if-eqz v0, :cond_2f

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2f

    return-void

    .line 906
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showOrhideDivider(Z)V
    .registers 2

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitDivider:Landroid/widget/ImageView;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 356
    :goto_9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public showOrhideDualVideoGroupItem()V
    .registers 2

    .line 818
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsDualDeviceRootHide:Z

    if-eqz v0, :cond_8

    .line 819
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showDualDeviceRoot()V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 821
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    return-void
.end method

.method public showOrhidePIPRect(Z)V
    .registers 2

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPRectView:Lcom/transsion/camera/feature/mode/dualvideo/DragRectView;

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 362
    :goto_9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 984
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    .line 985
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButtonRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_4a

    .line 989
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 991
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_4f
    return-void
.end method

.method public startRecordingHideDeviceRoot(Z)V
    .registers 2

    .line 815
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mIsStartRecording:Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 223
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 226
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mSplitRootLayout:Landroid/view/View;

    if-eqz v1, :cond_1d

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mParentGroup:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->resetRootView(Landroid/view/ViewGroup;)V

    .line 231
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceRootLayout:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_2a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->removeAnimatorListener()V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDualDeviceGroupButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateDividerDisplaySize(I)V
    .registers 2

    .line 340
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mDividerDisplayY:I

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateSplitDividerViewLayout()V

    const/4 p1, 0x0

    .line 342
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhidePIPRect(Z)V

    return-void
.end method

.method public updatePIPDisplaySize(IIII)V
    .registers 5

    .line 346
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayX:I

    .line 347
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayY:I

    .line 348
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayWidth:I

    .line 349
    iput p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->mPIPDisplayHeight:I

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updatePIPViewLayoutRect()V

    const/4 p1, 0x0

    .line 351
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhideDivider(Z)V

    return-void
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method
