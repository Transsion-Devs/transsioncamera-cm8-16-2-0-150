.class public Lcom/transsion/camera/ui/setting/zoom/ZoomUI;
.super Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$TeleRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$NormalRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI$SatSupportWideConverterState;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION:J = 0x12cL

.field private static final FILP_STOP_DURATION:J = 0x12cL

.field private static final HIDE_WHEEL_VIEW_DELAY:J = 0x7d0L

.field private static final MSG_GRADUATION_SLIP_STOP:I = 0x68

.field private static final MSG_HIDE_CENTER_ZOOM:I = 0x67

.field private static final MSG_HIDE_WHEEL_VIEW:I = 0x65

.field private static final MSG_SHOW_CENTER_ZOOM:I = 0x66

.field private static final MSG_SHOW_WHEEL_VIEW:I = 0x64

.field private static final MSG_SMOOTH_ZOOM:I = 0x1

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final ZOOM_DURATION:J = 0x14L

.field private static final ZOOM_NUMS:I = 0x14

.field private static final ZOOM_STEPS:I = 0x1e


# instance fields
.field private mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFreeShotDraggingOrientation:I

.field private mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsActivityResume:Z

.field private mIsFrontDualFlashUiShow:Z

.field private mIsImageStyleShow:Z

.field private mIsModeSwitch:Z

.field private mIsTouchingWheelView:Z

.field private mIsVlogModeGuideShow:Z

.field private mIsWheelShowByFilter:Z

.field private mIsZoomChanging:Z

.field private mLastZoomValue:I

.field private mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

.field private mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private mRecordingOrientation:I

.field private mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private mSimulateDownEvent:Z

.field mSmoothValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private final mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

.field private final mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mVideoRecording:Z

.field private mVlogCorrectOrientation:I

.field private mWideAndMainRepeatRangeConverterValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

.field private mWideRangeConverterProgressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWideRangeConverterValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWideRangeConverterValueNormalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

.field private mZoomUIViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$-vhs0Fs7IkXwTEgl_Yyslpvb4EU(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->lambda$setLayoutPadding$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2LjT1C4Y47qNVFlomrBtXD1t2SE(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->lambda$setLayoutPadding$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJ2QuC_HUuoA1dTAljDdridEBQo(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onProgressChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QrxtwJLY_v-xwiRBTBqqTo0uQYs(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kxkC3gIp4qQFScDgegrDd8Io710(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onUIStateChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4A53E3fl4uhhcn3RQTbD7yeg_g(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vupKij4FkKAGyLdhCcB7PYEX4EQ(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->lambda$new$1(Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w9ohdTTPalFiDzinkbMUyfr7f0o(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onInteractive(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGraduationContainer(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGraduationView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/GraduationView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZoomChanging(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueNormalList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monProgressChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onProgressChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSlipStop(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onSlipStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowCenterZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showCenterZoomView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSmoothZoom(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->startSmoothZoom(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCenterZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateCenterZoomView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZoomItemValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateZoomItemValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 117
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsModeSwitch:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsImageStyleShow:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsFrontDualFlashUiShow:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsActivityResume:Z

    .line 115
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueNormalList:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideAndMainRepeatRangeConverterValueList:Ljava/util/List;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    .line 138
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mLastZoomValue:I

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 142
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFreeShotDraggingOrientation:I

    .line 144
    const-string v1, "off"

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 206
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 250
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 290
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 311
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAntiVideoRestrict4K30FPS:Z

    if-eqz v1, :cond_80

    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_value_list_india:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    goto :goto_86

    .line 312
    :cond_80
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_value_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 313
    :goto_86
    array-length v2, v1

    move v3, v0

    :goto_88
    if-ge v3, v2, :cond_98

    aget v4, v1, v3

    .line 314
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    .line 316
    :cond_98
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_value_normal_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 317
    array-length v2, v1

    move v3, v0

    :goto_a0
    if-ge v3, v2, :cond_b0

    aget v4, v1, v3

    .line 318
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueNormalList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 320
    :cond_b0
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAntiVideoRestrict4K30FPS:Z

    if-eqz v1, :cond_bb

    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_progress_list_india:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    goto :goto_c1

    .line 321
    :cond_bb
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_progress_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 322
    :goto_c1
    array-length v2, v1

    move v3, v0

    :goto_c3
    if-ge v3, v2, :cond_d3

    aget v4, v1, v3

    .line 323
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    .line 325
    :cond_d3
    sget v1, Lcom/transsion/camera/R$array;->wide_and_main_reapte_range:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 326
    array-length v1, p1

    :goto_da
    if-ge v0, v1, :cond_ea

    aget v2, p1, v0

    .line 327
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideAndMainRepeatRangeConverterValueList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 329
    :cond_ea
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    .line 330
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Lcom/transsion/camera/ui/setting/zoom/ZoomUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

    .line 331
    new-instance v0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ZoomUIController;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)I
    .registers 1

    .line 86
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    return p0
.end method

.method private calculateZoomStep(II)V
    .registers 12

    .line 1670
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_8
    const/16 v3, 0x14

    if-ge v2, v3, :cond_31

    int-to-double v3, v2

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v3, v5, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 1674
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v5, v3

    int-to-double v3, p1

    sub-int p1, p2, p1

    int-to-double v7, p1

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    double-to-int p1, v3

    if-eq v0, p1, :cond_2d

    .line 1677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    move v0, p1

    goto :goto_8

    .line 1681
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 1682
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSmoothValue:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1685
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private consumeBackPressed(Z)Z
    .registers 4

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v1, :cond_13

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsFrontDualFlashUiShow:Z

    if-nez p1, :cond_13

    const/16 p1, 0xe7

    .line 992
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 995
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2c

    return v0

    .line 998
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_46

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    if-eqz p1, :cond_46

    .line 999
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    const/4 p0, 0x1

    return p0

    :cond_46
    return v0
.end method

.method private currentIsWideCamera()Z
    .registers 2

    .line 1513
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1516
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private getZoomRatioByProgress(II)Ljava/lang/String;
    .registers 4

    .line 1636
    rem-int/lit16 p0, p1, 0x2710

    const-string p2, "%dx"

    if-nez p0, :cond_17

    .line 1637
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1639
    :cond_17
    rem-int/lit16 p0, p1, 0x3e8

    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_34

    add-int/lit16 p1, p1, -0x1f4

    .line 1641
    rem-int/lit16 p0, p1, 0x2710

    if-nez p0, :cond_34

    .line 1642
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1647
    :cond_34
    div-int/lit16 p0, p1, 0x3e8

    rem-int/lit16 v0, p0, 0x3e8

    if-nez v0, :cond_4b

    .line 1648
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1651
    :cond_4b
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%dx"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideCenterZoomView()V
    .registers 3

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z
    .registers 3

    if-eqz p1, :cond_a

    .line 1895
    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->currentRange(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private isDVHintShowingInDVVideoMode()Z
    .registers 3

    .line 1060
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1061
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 1062
    :cond_f
    const-string v0, "key_state_dv_hint_showing_in_dvvideomode"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->queryCameraModeState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    if-ne p0, v0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method private isNeedShowWheelView()Z
    .registers 2

    .line 1207
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    if-lez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsImageStyleShow:Z

    if-nez v0, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private isReachPreviewBoundary(FF)Z
    .registers 6

    .line 576
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    .line 579
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_27

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_27

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_27

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_26

    goto :goto_27

    :cond_26
    return v2

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method private isSameFacingSwitch()Z
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isZoomChanged()Z
    .registers 5

    .line 547
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 549
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v1

    .line 550
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    .line 551
    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v0

    .line 552
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 553
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 555
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isZoomChanged currentValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", previousValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq v1, v0, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 208
    const-string v0, "key_show_center_zoom_ratio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 211
    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_1d

    .line 213
    :cond_17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 215
    :goto_1d
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    .line 216
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    .line 218
    :cond_23
    const-string v0, "key_transfer_camera_combination"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 219
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 220
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 221
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 223
    :cond_38
    const-string v0, "key_notify_zoom_wheel_hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_4b
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatusChangeListener, KEY_FOLD_SWITCH_PREVIEW value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    .line 231
    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setLayoutPadding(ZZ)V

    .line 234
    :cond_74
    const-string v0, "key_vlog_correct_orientation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 235
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p1, :cond_c0

    .line 236
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a7

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onValueChanged illegal value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_a7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 243
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 245
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setOrientation(IZ)V

    :cond_c0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 6

    .line 252
    const-string v0, "key_wide_camera_move_event"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_69

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-eqz p1, :cond_d

    goto :goto_69

    .line 256
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p1, :cond_69

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_69

    .line 260
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_69

    .line 263
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_58

    const/4 v2, 0x2

    if-eq p1, v2, :cond_32

    const/4 v2, 0x3

    if-eq p1, v2, :cond_58

    goto :goto_69

    .line 265
    :cond_32
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    if-eqz p1, :cond_52

    .line 266
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    .line 267
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 269
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 270
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 274
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 280
    :cond_58
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setFakeMotionEvent(Z)V

    :cond_69
    :goto_69
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 292
    const-string v0, "key_conflict_ui_state"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1c

    .line 296
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "value_videoportrait_view_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "value_videoportrait_bar_show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    :goto_1c
    return-void

    .line 302
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void

    .line 298
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void
.end method

.method private synthetic lambda$setLayoutPadding$3(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const-string v1, "topPadding"

    .line 466
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "bottomPadding"

    .line 467
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 465
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    const-string v0, "zoomRatioTopPadding"

    .line 469
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "zoomRatioBottomPadding"

    .line 470
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 468
    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$setLayoutPadding$4(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 463
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 473
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const-string v1, "topPadding"

    .line 474
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "bottomPadding"

    .line 475
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 473
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    const-string v0, "zoomRatioTopPadding"

    .line 477
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "zoomRatioBottomPadding"

    .line 478
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 476
    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private onInteractive(Z)V
    .registers 5

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractive touching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " switching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3e

    .line 1484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1485
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x145

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1486
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_59

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_59

    .line 1487
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_59

    .line 1490
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1491
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x146

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1492
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_59

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_59

    .line 1493
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 1496
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    if-nez p1, :cond_68

    const/4 p1, 0x0

    .line 1499
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    :cond_68
    return-void
.end method

.method private onProgressChanged(IZ)V
    .registers 7

    .line 1520
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-nez v0, :cond_10

    .line 1521
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressChanged,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1524
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_real_zoom_value"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1525
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

    .line 1526
    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->-$$Nest$mupdateConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    if-eqz p2, :cond_37

    .line 1531
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    .line 1532
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    goto :goto_3f

    .line 1535
    :cond_37
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    .line 1536
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 1539
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1541
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_58

    .line 1542
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->currentIsWideCamera()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setRecordWideProgress(IZ)V

    .line 1544
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_66

    .line 1547
    invoke-virtual {v1, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    .line 1549
    :cond_66
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v1, :cond_90

    .line 1550
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    goto :goto_90

    .line 1552
    :cond_77
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1553
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    goto :goto_90

    .line 1554
    :cond_84
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1555
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->progressToValue(I)I

    move-result v0

    .line 1558
    :cond_90
    :goto_90
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ponProgressChanged] :   max:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  min:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->mMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " move : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1560
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    if-eqz v1, :cond_e4

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    if-eqz v1, :cond_e4

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    if-nez v1, :cond_e4

    if-eqz p2, :cond_e0

    .line 1562
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateZoomValueToUI(II)V

    goto :goto_e7

    .line 1564
    :cond_e0
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateZoomBySmooth(I)V

    goto :goto_e7

    .line 1567
    :cond_e4
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateZoomValueToUI(II)V

    .line 1569
    :goto_e7
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    return-void
.end method

.method private onSlipFinish(Z)V
    .registers 5

    .line 1836
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipFinish: slipping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_3a

    .line 1839
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_46

    .line 1840
    const-string p1, "key_zoom_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "slip_sliping"

    .line 1841
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1844
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1845
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_46
    return-void
.end method

.method private onSlipStatusChanged()V
    .registers 4

    .line 1867
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateCurrentConverterState()V

    .line 1868
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipStatusChanged: mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->enter(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1870
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_34

    .line 1871
    const-string v0, "key_zoom_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "slip_stop"

    .line 1872
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method private onSlipStop()V
    .registers 4

    .line 1851
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v1, :cond_f

    .line 1852
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eq v0, v1, :cond_f

    .line 1853
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onSlipStatusChanged()V

    .line 1856
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipStop: mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onUIStateChanged(Z)V
    .registers 4

    .line 1504
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 1505
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1506
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->onSlipFinish(Z)V

    .line 1508
    :cond_11
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    .line 1509
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setZoomUIState(Z)V

    return-void
.end method

.method private setOrientation(IZ)V
    .registers 4

    .line 1332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_c

    .line 1333
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 1339
    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p2, :cond_12

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    .line 1341
    :cond_12
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_23

    .line 1342
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    if-eqz v0, :cond_1d

    .line 1343
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 1345
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mbSegmentDragging:Z

    if-eqz v0, :cond_23

    .line 1346
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFreeShotDraggingOrientation:I

    .line 1349
    :cond_23
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    return-void
.end method

.method private setZoomWheelEnable(Z)V
    .registers 3

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 987
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private showCenterZoomView()V
    .registers 7

    .line 1012
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    if-eqz v0, :cond_13

    .line 1013
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "slow motion do no support zoom"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1018
    :cond_13
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    if-eqz v0, :cond_2a

    .line 1019
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    .line 1020
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "when vlog mode guide show, support zoom, but need hide zoom ratio"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1024
    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    const/4 v1, 0x0

    if-nez v0, :cond_ac

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingBackToFront()Z

    move-result v0

    if-nez v0, :cond_ac

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v2

    .line 1029
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showCenterZoomView] mProgress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " zoomByProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " zoomByValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,mGraduationViewSilpping :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1032
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    if-eqz v3, :cond_a2

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1033
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ac

    .line 1036
    :cond_a2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    :cond_ac
    :goto_ac
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    return-void
.end method

.method private showZoomForWideToNormal(Z)V
    .registers 5

    if-eqz p1, :cond_f

    .line 893
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 896
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSmoothZoom(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1689
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 1690
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1691
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    return-void
.end method

.method private translateZoomBarIfNeed()V
    .registers 5

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateZoomBarIfNeed] mIsVideoStartRecording : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mScreenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1174
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz v0, :cond_30

    :cond_2c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    if-eqz v0, :cond_a7

    .line 1175
    :cond_30
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_81

    if-nez v0, :cond_38

    goto :goto_81

    :cond_38
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6e

    .line 1182
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-nez v0, :cond_5d

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_hover:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1187
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTranslateDisInVlogMode:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTranslateDisInVlogMode:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_6e
    const/4 v3, 0x4

    if-eq v0, v3, :cond_76

    const/4 v3, 0x5

    if-eq v0, v3, :cond_76

    if-ne v0, v1, :cond_a6

    .line 1193
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1194
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1177
    :cond_81
    :goto_81
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    if-nez v0, :cond_a6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentVideoMode:Z

    if-nez v0, :cond_a6

    .line 1178
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_normal:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_a6
    return-void

    .line 1197
    :cond_a7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-eqz v0, :cond_be

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v0, v1, :cond_be

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_translate_distance_in_movie_mode:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1200
    :cond_be
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1201
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateCenterZoomView(Z)V
    .registers 4

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz p1, :cond_12

    .line 905
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showCenterZoomView()V

    return-void

    :cond_12
    if-eqz v0, :cond_17

    .line 907
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    :cond_17
    return-void
.end method

.method private updateCurrentConverterState()V
    .registers 3

    .line 1877
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1878
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1879
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void

    .line 1881
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void

    .line 1883
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1884
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void

    .line 1885
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1886
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void

    .line 1888
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    return-void
.end method

.method private updateGradationRootLayout(II)V
    .registers 10

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 1394
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    const/16 v3, 0x55

    const/16 v4, 0x33

    const/16 v5, 0xb4

    if-ne p2, v2, :cond_88

    const/16 v2, 0x5a

    const/16 v6, 0x10e

    if-eq p1, v2, :cond_68

    if-eq p1, v5, :cond_4f

    if-eq p1, v6, :cond_38

    const/16 v2, 0x53

    .line 1415
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1416
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1417
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_0_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_7e

    .line 1408
    :cond_38
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1409
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1410
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7e

    :cond_4f
    const/16 v2, 0x35

    .line 1403
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1404
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1405
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_0_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7e

    .line 1398
    :cond_68
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1399
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1400
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_7e
    add-int/2addr p1, v6

    .line 1420
    rem-int/lit16 p1, p1, 0x168

    .line 1421
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_f6

    :cond_88
    if-eqz p2, :cond_ed

    const/4 p1, 0x2

    if-eq p2, p1, :cond_ed

    const/4 p1, 0x3

    if-ne p2, p1, :cond_91

    goto :goto_ed

    :cond_91
    const/4 p1, 0x4

    if-ne p2, p1, :cond_bf

    .line 1428
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1429
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-eqz p1, :cond_a5

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_af

    .line 1432
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin_normal:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1434
    :goto_af
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1435
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_f6

    :cond_bf
    const/4 p1, 0x5

    if-ne p2, p1, :cond_f6

    .line 1437
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1438
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-eqz p1, :cond_d3

    .line 1439
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_dd

    .line 1441
    :cond_d3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin_normal:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1443
    :goto_dd
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1444
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v5, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_f6

    :cond_ed
    :goto_ed
    const/16 p1, 0x51

    .line 1425
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1426
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1446
    :cond_f6
    :goto_f6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateScreenFormType(IZ)V

    return-void
.end method

.method private updateMacroIconVisibility()V
    .registers 1

    return-void
.end method

.method private updateZoomBySmooth(I)V
    .registers 4

    .line 1657
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1658
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1661
    :cond_23
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 1662
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 1663
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    .line 1665
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mLastZoomValue:I

    .line 1666
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->calculateZoomStep(II)V

    return-void
.end method

.method private updateZoomItemValue()V
    .registers 2

    .line 1695
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    const/4 v0, 0x1

    .line 1696
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    const/4 v0, 0x0

    .line 1697
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    return-void
.end method

.method private updateZoomValueToUI(II)V
    .registers 5

    .line 1621
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 1622
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 1623
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    .line 1625
    :cond_c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 1626
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1627
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->getZoomRatioByProgress(II)Ljava/lang/String;

    move-result-object p1

    .line 1628
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1629
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1631
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    return-void
.end method


# virtual methods
.method protected doOrientationChanged(I)V
    .registers 3

    .line 1325
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1328
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setOrientation(IZ)V

    return-void
.end method

.method protected getEquivalentZoomValue(I)I
    .registers 6

    .line 342
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_19

    .line 346
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    .line 347
    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3e
    return v0

    .line 352
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterProgressList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRangeConverterValueList:Ljava/util/List;

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public graduationViewIsShow()Z
    .registers 3

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method hideCenterZoomUI()V
    .registers 1

    .line 941
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    return-void
.end method

.method protected hideZoomUI()V
    .registers 4

    .line 913
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_16

    .line 915
    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    :cond_16
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNeedRemoveAction:Z

    if-eqz v0, :cond_21

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xec

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_21
    const/4 v0, 0x1

    .line 920
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNeedRemoveAction:Z

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xdf

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 922
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-nez v0, :cond_5f

    .line 923
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    if-eqz v0, :cond_58

    .line 928
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 931
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideZoomUI, action_zoom_ui_end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 935
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method hideZoomUI(II)V
    .registers 3

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->calculateZoomStep(II)V

    .line 954
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomUI()V

    return-void
.end method

.method protected hideZoomWheel()V
    .registers 4

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xdf

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 973
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 974
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    if-eqz v0, :cond_43

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x0

    .line 980
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    :cond_43
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 336
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 361
    sget v0, Lcom/transsion/camera/R$layout;->zoom_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 364
    sget p2, Lcom/transsion/camera/R$id;->zoom_ui_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    .line 365
    sget p2, Lcom/transsion/camera/R$id;->tv_current_zoom_ratio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    .line 367
    sget p2, Lcom/transsion/camera/R$id;->tv_current_zoom_ratio:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 368
    sget p2, Lcom/transsion/camera/R$id;->tv_stroke_current_zoom_ratio:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 369
    sget p2, Lcom/transsion/camera/R$id;->graduation_zoom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 370
    sget p2, Lcom/transsion/camera/R$id;->graduation_zoom:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/GraduationView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 371
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;)V

    .line 372
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    .line 373
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnUIStateListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnUIStateChangedListener;)V

    .line 374
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_65

    goto :goto_66

    :cond_65
    move v1, p2

    :goto_66
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    return-object p1
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 708
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v0, p1, :cond_9

    .line 710
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsModeSwitch:Z

    :cond_9
    const/16 v0, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_15c

    goto/16 :goto_149

    .line 879
    :sswitch_12
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mbSegmentDragging:Z

    .line 880
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    return-void

    .line 875
    :sswitch_1c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mbSegmentDragging:Z

    .line 876
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFreeShotDraggingOrientation:I

    return-void

    .line 884
    :sswitch_23
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->translateZoomBarIfNeed()V

    return-void

    .line 861
    :sswitch_27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 864
    :sswitch_2d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 784
    :sswitch_33
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraOperateAction, mPausedZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_149

    .line 787
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showCenterZoomView()V

    return-void

    .line 780
    :sswitch_59
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    .line 781
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    return-void

    .line 791
    :sswitch_5f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    return-void

    .line 764
    :sswitch_62
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    goto :goto_87

    .line 821
    :sswitch_65
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsImageStyleShow:Z

    return-void

    .line 817
    :sswitch_68
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsImageStyleShow:Z

    .line 818
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomUI()V

    return-void

    .line 751
    :sswitch_6e
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClickShowSeekBar:Z

    return-void

    .line 748
    :sswitch_71
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    return-void

    .line 745
    :sswitch_74
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    return-void

    .line 858
    :sswitch_77
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsFrontDualFlashUiShow:Z

    return-void

    .line 855
    :sswitch_7a
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsFrontDualFlashUiShow:Z

    return-void

    .line 814
    :sswitch_7d
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateCenterZoomView(Z)V

    return-void

    .line 811
    :sswitch_81
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 771
    :goto_87
    :sswitch_87
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    if-eqz v0, :cond_8d

    .line 772
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    .line 774
    :cond_8d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomUI()V

    const/16 v0, 0xcf

    if-ne p1, v0, :cond_149

    .line 776
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void

    .line 757
    :sswitch_98
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_a0

    .line 758
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomWheel()V

    return-void

    .line 760
    :cond_a0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void

    .line 740
    :sswitch_a4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-nez p1, :cond_149

    .line 741
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void

    .line 737
    :sswitch_ac
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    return-void

    .line 835
    :sswitch_b0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_149

    .line 836
    :cond_c0
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    return-void

    .line 807
    :sswitch_c4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsActivityResume:Z

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 800
    :sswitch_cc
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 801
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    .line 802
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 803
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsFrontDualFlashUiShow:Z

    .line 804
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    return-void

    .line 754
    :sswitch_d8
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClickShowSeekBar:Z

    return-void

    .line 731
    :sswitch_db
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_149

    .line 732
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setAnimatedValForZoom(Z)V

    return-void

    .line 726
    :sswitch_e3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_149

    .line 727
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setAnimatedValForZoom(Z)V

    return-void

    .line 840
    :sswitch_eb
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p1, :cond_f6

    .line 841
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    .line 842
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNeedRemoveAction:Z

    .line 843
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomUI()V

    .line 848
    :cond_f6
    :sswitch_f6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    .line 849
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 850
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p1, :cond_101

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    goto :goto_103

    :cond_101
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 852
    :goto_103
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    return-void

    .line 826
    :sswitch_109
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    .line 827
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    if-ne p1, v2, :cond_11a

    .line 828
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p1, :cond_116

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    goto :goto_118

    :cond_116
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    :goto_118
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 830
    :cond_11a
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    if-eqz p1, :cond_149

    .line 831
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    return-void

    .line 721
    :sswitch_122
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-nez p1, :cond_149

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-nez p1, :cond_149

    .line 722
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    return-void

    .line 715
    :sswitch_136
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTurboFusionEnable:Z

    if-nez p1, :cond_149

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAiRawEnable:Z

    if-nez p1, :cond_149

    .line 716
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    :cond_149
    :goto_149
    return-void

    .line 797
    :sswitch_14a
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V

    return-void

    .line 870
    :sswitch_14e
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    .line 871
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    .line 872
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideCenterZoomView()V

    return-void

    .line 867
    :sswitch_157
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    return-void

    nop

    :sswitch_data_15c
    .sparse-switch
        0x0 -> :sswitch_157
        0x2 -> :sswitch_14e
        0xc -> :sswitch_14a
        0xd -> :sswitch_136
        0xe -> :sswitch_122
        0xf -> :sswitch_109
        0x10 -> :sswitch_eb
        0x17 -> :sswitch_e3
        0x18 -> :sswitch_db
        0x1a -> :sswitch_d8
        0x1c -> :sswitch_cc
        0x1f -> :sswitch_122
        0x20 -> :sswitch_c4
        0x25 -> :sswitch_14a
        0x2e -> :sswitch_b0
        0x2f -> :sswitch_14a
        0x48 -> :sswitch_ac
        0x49 -> :sswitch_a4
        0x4a -> :sswitch_ac
        0x4c -> :sswitch_98
        0x50 -> :sswitch_87
        0x52 -> :sswitch_109
        0x53 -> :sswitch_f6
        0x5d -> :sswitch_81
        0x5e -> :sswitch_14a
        0x5f -> :sswitch_87
        0x6d -> :sswitch_f6
        0x8e -> :sswitch_7d
        0x90 -> :sswitch_109
        0x91 -> :sswitch_f6
        0xaa -> :sswitch_7a
        0xab -> :sswitch_77
        0xcf -> :sswitch_87
        0xe0 -> :sswitch_74
        0xe1 -> :sswitch_71
        0xe2 -> :sswitch_6e
        0xf2 -> :sswitch_68
        0xf3 -> :sswitch_65
        0x10b -> :sswitch_87
        0x119 -> :sswitch_62
        0x11a -> :sswitch_5f
        0x11b -> :sswitch_87
        0x11f -> :sswitch_59
        0x120 -> :sswitch_33
        0x138 -> :sswitch_2d
        0x139 -> :sswitch_27
        0x140 -> :sswitch_23
        0x141 -> :sswitch_23
        0x142 -> :sswitch_87
        0x143 -> :sswitch_1c
        0x144 -> :sswitch_12
    .end sparse-switch
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 1008
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->consumeBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 5

    .line 649
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-nez v0, :cond_5a

    .line 650
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->onConfigurationChanged()V

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 653
    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    .line 655
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onConfigurationChanged mCurrentConverterState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRangeConverter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_5a

    .line 657
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v1

    if-nez v1, :cond_5a

    if-eqz v0, :cond_5a

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->enter(I)Z

    :cond_5a
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onMainCameraSelected()V
    .registers 4

    .line 1596
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1597
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 1600
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_1a

    .line 1601
    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoom_disable_wide"

    .line 1602
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1604
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xeb

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onSatCameraSelected()V
    .registers 3

    .line 1573
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1574
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 1575
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    .line 1577
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_19

    .line 1578
    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_zoom_disable_wide"

    .line 1579
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 1371
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 1373
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 1378
    :cond_14
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 1380
    :goto_1d
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v1, :cond_27

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    if-eqz v1, :cond_27

    .line 1381
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    :cond_27
    const/4 v1, 0x2

    if-eq v1, p1, :cond_2d

    .line 1384
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    .line 1386
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->translateZoomBarIfNeed()V

    .line 1387
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    const/4 p1, 0x0

    .line 1388
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setLayoutPadding(ZZ)V

    .line 1389
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onScreenFormChanged mCurrentConverterState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mProgress:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mRangeConverter:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p2, 0x0

    if-eqz p1, :cond_1c

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isReachPreviewBoundary(FF)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 586
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "onScroll point is out of preview rect!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 587
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    goto :goto_1e

    .line 589
    :cond_1c
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    :goto_1e
    return p2
.end method

.method onSlipCancel()V
    .registers 3

    .line 1861
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1862
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xec

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1863
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSlipCancel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTeleCameraSelected()V
    .registers 4

    .line 1608
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 1612
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_1a

    .line 1613
    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoom_enable_tele"

    .line 1614
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1616
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xeb

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onWideCameraSelected()V
    .registers 4

    .line 1584
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1585
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    .line 1588
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_1a

    .line 1589
    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoom_enable_wide"

    .line 1590
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1592
    :cond_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xeb

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resetupConverterState(Z)V
    .registers 2

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->resetupConverterState(Z)V

    return-void
.end method

.method protected sendRecordZoomUIState(Z)V
    .registers 3

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 1239
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    .line 1240
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method

.method protected sendZoomUIMessage(Z)V
    .registers 6

    .line 1215
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz v0, :cond_8

    .line 1216
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    return-void

    :cond_8
    const-wide/16 v0, 0x7d0

    const/16 v2, 0x65

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    .line 1219
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 1220
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1222
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1223
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1226
    :cond_28
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsTouchingWheelView:Z

    if-nez p1, :cond_39

    const/4 p1, 0x0

    .line 1227
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsZoomChanging:Z

    .line 1228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_39
    return-void
.end method

.method setCurrentCameraId()V
    .registers 3

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_d

    .line 1248
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->currentIsWideCamera()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setRecordWideProgress(IZ)V

    :cond_d
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 680
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 681
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_fold_switch_preview"

    if-eqz p1, :cond_5f

    .line 682
    const-string v1, "key_show_center_zoom_ratio"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_move_event"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 686
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 688
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_when_wide_main_changed"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 692
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 694
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_transfer_camera_combination"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 696
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_notify_zoom_wheel_hide"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 698
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 702
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 703
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSetting, KEY_FOLD_SWITCH_PREVIEW value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected setLayoutPadding(ZZ)V
    .registers 19

    move-object/from16 v0, p0

    .line 410
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(ZZ)V

    .line 411
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_13

    .line 412
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setLayoutPadding: getEntryRootView() == null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 415
    :cond_13
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ", mOffsetPadding: "

    const-string v3, ", mBottomPadding: "

    const-string v4, "setLayoutPadding mTopPadding: "

    const/4 v5, 0x7

    const/4 v6, 0x0

    if-eqz v1, :cond_12c

    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v1, v5, :cond_12c

    .line 416
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 417
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 419
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 420
    iget-object v8, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v8

    iput v8, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    .line 421
    iget v9, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    add-int/2addr v8, v9

    .line 422
    iget-object v9, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 424
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 427
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 428
    iget v12, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_81

    .line 430
    sget v12, Lcom/transsion/camera/R$dimen;->hover_support_hover_padding_top:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 431
    sget v14, Lcom/transsion/camera/R$dimen;->hover_support_hover_padding_bottom:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 432
    iget-boolean v15, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz v15, :cond_77

    sget v8, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover_vlog:I

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_7e

    .line 433
    :cond_77
    sget v15, Lcom/transsion/camera/R$dimen;->graduation_hover_bottom_offset:I

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v8, v15

    :goto_7e
    move v15, v14

    move v14, v6

    goto :goto_91

    .line 435
    :cond_81
    iget-object v12, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v12}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v12

    .line 436
    sget v14, Lcom/transsion/camera/R$dimen;->hover_support_normal_padding_top:I

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move v15, v14

    move v14, v12

    move v12, v15

    move v15, v6

    .line 439
    :goto_91
    iget v5, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    if-ltz v5, :cond_97

    add-int/2addr v12, v5

    goto :goto_98

    :cond_97
    sub-int/2addr v15, v5

    .line 445
    :goto_98
    iget v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v5, v13, :cond_ad

    const-string v5, "on"

    iget-object v13, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v5, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 446
    sget v5, Lcom/transsion/camera/R$dimen;->hover_support_hover_preview_on_padding_top:I

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move v15, v6

    :cond_ad
    if-eqz p1, :cond_fe

    .line 450
    const-string v2, "topPadding"

    filled-new-array {v1, v14}, [I

    move-result-object v1

    .line 451
    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 452
    const-string v2, "bottomPadding"

    filled-new-array {v7, v8}, [I

    move-result-object v3

    .line 453
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 454
    const-string v3, "zoomRatioTopPadding"

    filled-new-array {v9, v12}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 456
    const-string v4, "zoomRatioBottomPadding"

    filled-new-array {v10, v15}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 458
    filled-new-array {v1, v2, v3, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 460
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1f0

    .line 483
    :cond_fe
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v14, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 486
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v12, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1f0

    .line 489
    :cond_12c
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-nez p2, :cond_17e

    .line 492
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_179

    if-eq v3, v2, :cond_179

    if-ne v3, v1, :cond_164

    goto :goto_179

    .line 497
    :cond_164
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v4

    iget-object v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 498
    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v5

    iget v7, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    add-int/2addr v5, v7

    .line 497
    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_17e

    .line 495
    :cond_179
    :goto_179
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 502
    :cond_17e
    :goto_17e
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 503
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 504
    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq v4, v2, :cond_1cf

    if-ne v4, v1, :cond_190

    goto :goto_1cf

    :cond_190
    const/16 v1, 0x11

    const/4 v2, 0x7

    if-ne v4, v2, :cond_198

    .line 511
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1eb

    .line 513
    :cond_198
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 514
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 515
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 514
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 516
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 517
    invoke-static {v4}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 516
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 518
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 519
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1eb

    :cond_1cf
    :goto_1cf
    const/4 v1, -0x1

    .line 506
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v2, v1, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 508
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 509
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 521
    :goto_1eb
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :goto_1f0
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x7

    if-ne v2, v1, :cond_230

    .line 524
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/app/common/R$font;->roboto_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 525
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 527
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 528
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->flip_current_zoom_ratio_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 527
    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 529
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->flip_current_zoom_ratio_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 529
    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 532
    :cond_230
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 533
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 534
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->current_zoom_ratio_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 534
    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 536
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->current_zoom_ratio_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 536
    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected setSeekBarEnable(Z)V
    .registers 2

    .line 1354
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_7

    .line 1355
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setStartVideoRecording(Z)V
    .registers 2

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_7

    .line 387
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStartVideoRecording(Z)V

    :cond_7
    return-void
.end method

.method protected setWheelViewShowFlag(Z)V
    .registers 2

    .line 1361
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    if-eqz p1, :cond_b

    .line 1363
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_b

    .line 1364
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->hideZoomWheel()V

    :cond_b
    return-void
.end method

.method public setupEntryView()V
    .registers 6

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setupEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_4c

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 605
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomWheel()V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 607
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v4

    .line 606
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_93

    .line 610
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isSameFacingSwitch()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isZoomChanged()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsActivityResume:Z

    if-nez v0, :cond_88

    .line 611
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    if-eqz v0, :cond_6c

    .line 612
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateZoomValueToUI()V

    .line 613
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    .line 614
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->sendZoomUIMessage(Z)V

    .line 615
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    goto :goto_93

    .line 617
    :cond_6c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsModeSwitch:Z

    if-nez v0, :cond_84

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraFacingFront()Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_84

    .line 620
    :cond_77
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsAfterRecordingSwitchCam:Z

    if-nez v0, :cond_81

    .line 621
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    .line 622
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomForWideToNormal(Z)V

    .line 624
    :cond_81
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsAfterRecordingSwitchCam:Z

    goto :goto_93

    .line 618
    :cond_84
    :goto_84
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setupEntryView()V

    goto :goto_93

    .line 628
    :cond_88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 629
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setupEntryView()V

    .line 633
    :cond_93
    :goto_93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isDVHintShowingInDVVideoMode()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 637
    :cond_9e
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsModeSwitch:Z

    .line 638
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    .line 639
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsActivityResume:Z

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-eqz v0, :cond_c6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_c6

    .line 641
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v0

    if-nez v0, :cond_c6

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    if-nez v0, :cond_c6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    if-nez v0, :cond_ca

    .line 642
    :cond_c6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 644
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupEntryView end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected showZoomUI(Z)V
    .registers 14

    .line 1067
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClickShowSeekBar:Z

    if-nez v0, :cond_15

    goto/16 :goto_12b

    .line 1070
    :cond_15
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_1b

    if-nez p1, :cond_12b

    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_34

    goto/16 :goto_12b

    .line 1073
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1076
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1077
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1078
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setZoomWheelEnable(Z)V

    .line 1081
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showZoomUI, isNeedShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsCapturing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsVlogModeGuideShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->isNeedShowWheelView()Z

    move-result v0

    .line 1084
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_93

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-eqz v3, :cond_93

    move v3, v2

    goto :goto_94

    :cond_93
    move v3, v4

    :goto_94
    const/4 v5, 0x2

    const-wide/16 v6, 0x12c

    .line 1085
    const-string v8, "alpha"

    const-string v9, "scaleX"

    const/16 v10, 0x8

    const-string v11, "key_conflict_ui_state"

    if-eqz p1, :cond_12c

    .line 1086
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b1

    if-eqz v3, :cond_b1

    .line 1087
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1091
    :cond_b1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsVlogModeGuideShow:Z

    if-nez p1, :cond_bf

    .line 1092
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    :cond_bf
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c8

    goto :goto_12b

    .line 1099
    :cond_c8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->translateZoomBarIfNeed()V

    .line 1100
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v11}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_zoomwheel_view_show"

    invoke-virtual {p1, v11, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_12b

    if-nez v3, :cond_12b

    .line 1102
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1104
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xde

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1105
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 1107
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 1109
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v0, v5, [F

    fill-array-data v0, :array_1b4

    .line 1114
    invoke-static {p1, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v1, v5, [F

    fill-array-data v1, :array_1bc

    .line 1116
    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1118
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1119
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1120
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1121
    new-array p0, v5, [Landroid/animation/Animator;

    aput-object p1, p0, v4

    aput-object v0, p0, v2

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1122
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_12b
    :goto_12b
    return-void

    .line 1126
    :cond_12c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v11}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v3, "value_zoomwheel_view_hide"

    invoke-virtual {p1, v11, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1127
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v3, 0xec

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1128
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v3, 0xdf

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    if-eqz v0, :cond_197

    .line 1130
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(Z)V

    .line 1132
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1134
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 1136
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v0, v5, [F

    fill-array-data v0, :array_1c4

    .line 1137
    invoke-static {p1, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    new-array v1, v5, [F

    fill-array-data v1, :array_1cc

    .line 1139
    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1140
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1141
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1142
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1143
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1144
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1a9

    .line 1162
    :cond_197
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1a9

    .line 1163
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    :cond_1a9
    :goto_1a9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    return-void

    :array_1b4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1bc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1c4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1cc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected showZoomWheel()V
    .registers 4

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_show"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xde

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_2f

    .line 962
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2f
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1454
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mIsWheelShowByFilter:Z

    const/4 v0, 0x1

    .line 1455
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mSimulateDownEvent:Z

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_68

    .line 1457
    const-string v1, "key_show_center_zoom_ratio"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1459
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_move_event"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTouchEventTransmitter:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1463
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_when_wide_main_changed"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mUIStatusListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1467
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1469
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_transfer_camera_combination"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1471
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_notify_zoom_wheel_hide"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1473
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1477
    :cond_68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->unInit()V

    .line 1478
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->unInit()V

    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .registers 4

    .line 666
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 667
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateMacroIconVisibility()V

    .line 668
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    .line 669
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getGraduationStyle()Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    move-result-object v0

    .line 668
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;

    .line 671
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;->-$$Nest$msetupConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$ProgressValueConverter;)V

    .line 672
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateModeConfig mCurrentConverterState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRangeConverter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 564
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVlogCorrectOrientation:I

    goto :goto_e

    :cond_c
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 566
    :goto_e
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mVideoRecording:Z

    if-eqz v2, :cond_19

    .line 567
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRecordingOrientation:I

    .line 569
    :cond_19
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateGradationRootLayout(II)V

    .line 570
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x0

    .line 571
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->setLayoutPadding(ZZ)V

    :cond_34
    return-void
.end method

.method updateProgressByZoom()V
    .registers 4

    .line 1254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5c

    .line 1256
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_42

    .line 1262
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1263
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    return-void

    .line 1265
    :cond_3d
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    return-void

    .line 1257
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-nez v0, :cond_51

    .line 1258
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;

    const/16 v1, 0x1770

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    .line 1260
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    return-void

    .line 1255
    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    return-void
.end method

.method updateRangeState()V
    .registers 1

    .line 1055
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateCurrentConverterState()V

    .line 1056
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->updateProgressByZoom()V

    return-void
.end method

.method public updateSeekBarWhenRecording(ZZ)V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-nez v1, :cond_9

    goto :goto_2b

    .line 396
    :cond_9
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateSeekBarStyle(ZZ)V

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 403
    :goto_1a
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result p2

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    invoke-virtual {v1, p1, v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCurrentLimitations(ZZZI)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method updateZoomBarStyle()V
    .registers 3

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz v0, :cond_d

    .line 947
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->currentIsWideCamera()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->updateSeekBarStyle(ZZ)V

    :cond_d
    return-void
.end method

.method protected updateZoomValueToUI()V
    .registers 3

    .line 1272
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1276
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->updateItemValue()V

    .line 1277
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1278
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v1, :cond_67

    .line 1279
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->currentIsWideCamera()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1280
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_e7

    .line 1281
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1282
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto/16 :goto_e7

    .line 1284
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result v1

    if-nez v1, :cond_53

    .line 1285
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_e7

    .line 1286
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1287
    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto/16 :goto_e7

    .line 1289
    :cond_53
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-nez v0, :cond_5f

    goto/16 :goto_ee

    .line 1293
    :cond_5f
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1294
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto/16 :goto_e7

    .line 1296
    :cond_67
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-eqz v1, :cond_e7

    .line 1297
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto/16 :goto_e7

    .line 1299
    :cond_7b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result v1

    if-nez v1, :cond_df

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result v1

    if-eqz v1, :cond_88

    goto :goto_df

    .line 1301
    :cond_88
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingMainToWIdeCamera()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto :goto_e7

    .line 1303
    :cond_97
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1304
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    if-nez v0, :cond_a2

    goto :goto_ee

    .line 1307
    :cond_a2
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto :goto_e7

    .line 1309
    :cond_a9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v1

    if-nez v1, :cond_d6

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    goto :goto_d6

    .line 1311
    :cond_b8
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 1312
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto :goto_e7

    .line 1313
    :cond_c7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1314
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto :goto_e7

    .line 1310
    :cond_d6
    :goto_d6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    goto :goto_e7

    .line 1300
    :cond_df
    :goto_df
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$RangeConverterState;->valueToProgress(I)I

    move-result v0

    .line 1318
    :cond_e7
    :goto_e7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    .line 1319
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    :cond_ee
    :goto_ee
    return-void
.end method
