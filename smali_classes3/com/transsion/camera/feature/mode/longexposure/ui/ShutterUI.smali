.class public Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final STATE_CAPTURING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PROCESSING:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mOrientation:I

.field private mProgressRootView:Landroid/view/View;

.field protected mProgressRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

.field private mRootView:Landroid/view/ViewGroup;

.field protected mScreenFormType:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;


# direct methods
.method public static synthetic $r8$lambda$HNH3j-1fjxYUfwGoR6Ww0BVmYl8(Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 70
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$updateRootRectHover$0(Landroid/widget/FrameLayout$LayoutParams;ZLandroid/animation/ValueAnimator;)V
    .registers 6

    .line 149
    const-string v0, "processBottomMargin"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 150
    const-string v0, "processHeight"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const-string p1, "processPadding"

    if-eqz p2, :cond_37

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 155
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private updateLayout(Z)V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateRootRectHover(Z)V

    return-void

    .line 111
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateRootRect()V

    return-void
.end method

.method private updateRootRectHover(Z)V
    .registers 10

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 119
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x51

    .line 120
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 122
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_21

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 128
    :cond_21
    iget v3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2f

    .line 129
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    move v4, v5

    goto :goto_42

    .line 131
    :cond_2f
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 132
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v4

    .line 134
    :goto_42
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v6

    if-ltz v6, :cond_4c

    const/4 v7, 0x1

    goto :goto_4d

    :cond_4c
    move v7, v5

    :goto_4d
    if-eqz p1, :cond_a6

    .line 138
    const-string p1, "processHeight"

    filled-new-array {v1, v3}, [I

    move-result-object v1

    .line 139
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz v7, :cond_62

    .line 141
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    goto :goto_68

    .line 142
    :cond_62
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    :goto_68
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    .line 141
    const-string v3, "processPadding"

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 143
    const-string v3, "processBottomMargin"

    filled-new-array {v2, v4}, [I

    move-result-object v2

    .line 144
    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 145
    filled-new-array {p1, v1, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 146
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v7}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;Landroid/widget/FrameLayout$LayoutParams;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 160
    :cond_a6
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 161
    invoke-virtual {v0, v5, v5, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_bc

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v5, v5, v5, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 166
    :cond_bc
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0, v5, p1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mRootView:Landroid/view/ViewGroup;

    .line 80
    sget v0, Lcom/transsion/camera/feature/longexposure/R$layout;->capture_progress_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    sget p1, Lcom/transsion/camera/feature/longexposure/R$id;->capturing_progress_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    .line 82
    sget p1, Lcom/transsion/camera/feature/longexposure/R$id;->capturing_progress_rotate_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 83
    sget p1, Lcom/transsion/camera/feature/longexposure/R$id;->capturing_progress:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    return-void
.end method

.method public onCaptureCancel()V
    .registers 2

    const/4 v0, 0x2

    .line 302
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateShutter()V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->startProgress()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateShutter()V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->stopProgress()V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 2

    const/4 v0, 0x2

    .line 295
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateShutter()V

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->startProgress()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    const/4 v0, 0x1

    .line 289
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 290
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateShutter()V

    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    const/4 v0, 0x2

    .line 309
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateShutter()V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->startProgress()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mOrientation:I

    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateLayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 102
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    .line 103
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateLayout(Z)V

    return-void
.end method

.method public onTimerEnd()V
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->stopProgress()V

    return-void
.end method

.method public onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 4

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->startProgress(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method

.method public onTimerUpdate(J)V
    .registers 3

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;->updateTime(J)V

    return-void
.end method

.method public setScreenFormTypeAndOrientation(II)V
    .registers 3

    .line 91
    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mOrientation:I

    .line 92
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->updateLayout(Z)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mRootView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected updateRootRect()V
    .registers 9

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressView:Lcom/transsion/camera/feature/mode/longexposure/ui/widget/ProgressView;

    if-nez v0, :cond_5

    return-void

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 179
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    const/4 v3, 0x1

    const/16 v4, 0x53

    const/16 v5, 0x35

    if-ne v2, v3, :cond_11c

    .line 180
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_de

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_a2

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_64

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_0_width:I

    .line 218
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    .line 220
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 221
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_margin:I

    .line 223
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 224
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_0_top_margin:I

    .line 225
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1fd

    .line 204
    :cond_64
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_90_width:I

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x55

    .line 208
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_90_top_margin:I

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_margin:I

    .line 212
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1fd

    .line 193
    :cond_a2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_0_width:I

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 195
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    .line 196
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 197
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 198
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_margin:I

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 200
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_0_top_margin:I

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1fd

    .line 182
    :cond_de
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_90_width:I

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    .line 185
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 186
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_90_top_margin:I

    .line 188
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 189
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_margin:I

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1fd

    :cond_11c
    const/4 v3, 0x3

    const/16 v6, 0x51

    const/4 v7, -0x1

    if-ne v2, v3, :cond_13a

    .line 229
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 231
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    :goto_136
    move v3, v2

    move v2, v1

    goto/16 :goto_1ff

    :cond_13a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_179

    .line 235
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 237
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_right_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 239
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1fd

    :cond_179
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1b7

    .line 241
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 242
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->expand_long_exposure_bottom_panel_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 243
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 245
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->lr_hover_long_exposure_bottom_panel_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1fd

    .line 247
    :cond_1b7
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 248
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 249
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 251
    iget v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mScreenFormType:I

    if-nez v2, :cond_1ec

    .line 252
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v2

    if-ltz v2, :cond_1e6

    .line 256
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto/16 :goto_136

    .line 258
    :cond_1e6
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move v3, v1

    goto :goto_1ff

    :cond_1ec
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1fd

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/longexposure/R$dimen;->long_exposure_shutter_panel_column_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_136

    :cond_1fd
    :goto_1fd
    move v2, v1

    move v3, v2

    .line 267
    :goto_1ff
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mProgressRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updateShutter()V
    .registers 7

    .line 327
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_11

    if-eq v0, v3, :cond_f

    move v0, v2

    move v2, v3

    move v1, v4

    goto :goto_12

    :cond_f
    const/16 v2, 0x19

    :cond_11
    move v0, v2

    .line 346
    :goto_12
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_self_timer"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 349
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 350
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 351
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v0

    :goto_30
    invoke-interface {v5, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(IZ)V

    .line 352
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mCurrentState:I

    if-eqz v0, :cond_3e

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_3e
    return-void
.end method
