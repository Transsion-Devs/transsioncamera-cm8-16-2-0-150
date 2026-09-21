.class public Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;
.super Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$TeleRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$NormalRangeConverterState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$SatSupportWideConverterState;
    }
.end annotation


# static fields
.field private static final FILP_STOP_DURATION:J = 0x12cL

.field private static final HIDE_WHEEL_VIEW_DELAY:J = 0xbb8L

.field private static final MSG_GRADUATION_SLIP_STOP:I = 0x68

.field private static final MSG_HIDE_WHEEL_VIEW:I = 0x65

.field private static final MSG_SHOW_ZOOM_ITEM:I = 0x69

.field private static final MSG_SHOW_ZOOM_WHEEL:I = 0x6a

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SHOW_ZOOM_ITEM_DELAY:J = 0x64L

.field private static final SHOW_ZOOM_WHEEL_DELAY:J = 0x64L

.field private static final ZOOM_ITEM_WIDTH_DURATION:J = 0x15eL


# instance fields
.field private mAddList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

.field private mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

.field private mFreeShotDraggingOrientation:I

.field private mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mImageStyleShow:Z

.field private mIndexOffset:I

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorDstPosotion:F

.field private mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

.field private mInstantView:Landroidx/recyclerview/widget/RecyclerView;

.field private mInstantViewRoot:Landroid/view/ViewGroup;

.field private mIsConflictUIShow:Z

.field private mIsFrontDualFlashUiShow:Z

.field private mIsVlogHomepage:Z

.field private mIsZoomChanging:Z

.field private mIsZoomWheelShow:Z

.field private mLastZoomValue:I

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mModeSwitching:Z

.field private mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

.field private mPopWindowShow:Z

.field private mPostAnimationRunning:Z

.field private mPostionAnimator:Landroid/animation/ValueAnimator;

.field private mPreTotalWith:I

.field private mPrevIndex:I

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

.field private mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

.field private mRecordingOrientation:I

.field private mRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

.field private mShowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mSimulateDownEvent:Z

.field private mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

.field private mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

.field private mTimeLapseWheelShow:Z

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

.field private mUpdateCameraId:Ljava/lang/String;

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

.field private mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

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

.field private mWidthAnimator:Landroid/animation/ValueAnimator;

.field private mWidthDiff:I

.field private mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mZoomItemIndicator:Landroid/view/View;

.field private mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

.field private final mZoomItemWidthInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

.field private mZoomStateChangeListener:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;

.field private mZoomStyleChanged:Z

.field private mZoomUIViewGroup:Landroid/view/ViewGroup;

.field private mZoomWithChanged:Z


# direct methods
.method public static synthetic $r8$lambda$32Q2EjZ6-oVIhHdJSMZR1zQplhw(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->lambda$updateIndicatorPosition$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYELOD1zWBMSRJvOxroJyKWaoII(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->lambda$updateZoomItemWidth$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_jR73YoLQVSem2x952-TdNAhFuM(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->lambda$setLayoutPadding$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsvTDSFfziLxvpRu5JuyZyeSugQ(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onInteractive(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$j4q4oZBfocC7O8Yo-mBDxv-hdeg(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onInstantZoomItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jU16xgIrhZf0JKCw4yporvWJ4ww(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onProgressChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYjGPOfOm7ALn4A8DoOXmyhobhI(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onUIStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConflictUIShow(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZoomChanging(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreTotalWith(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmoothZoomView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/app/ui/widget/SmoothZoomView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterProgressList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterProgressList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterValueList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideRangeConverterValueNormalList(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueNormalList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNormalRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPostAnimationRunning(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRangeConverter(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSatRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTeleRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWideRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method static bridge synthetic -$$Nest$manimationIndicator(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->animationIndicator(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanShowZoomWheel(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->canShowZoomWheel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mconvertFocalToZoomValue(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->convertFocalToZoomValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfadeInZoomWheel(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeInZoomWheel(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetZoomRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomRange(I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monInstantZoomItemClick(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onInstantZoomItemClick(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMotionEvent(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSlipStop(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onSlipStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreCheckIndicatorPosition(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->reCheckIndicatorPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msatSupport(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->satSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowZoomItemRoot(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 128
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 218
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;-><init>(Landroid/content/res/Resources;)V

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemWidthInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomChanging:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsFrontDualFlashUiShow:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueNormalList:Ljava/util/List;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterProgressList:Ljava/util/List;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideAndMainRepeatRangeConverterValueList:Ljava/util/List;

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSimulateDownEvent:Z

    const/4 v1, -0x1

    .line 149
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 150
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mFreeShotDraggingOrientation:I

    .line 152
    const-string v2, "off"

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSwitchPreviewValue:Ljava/lang/String;

    .line 153
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndexOffset:I

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    .line 161
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPrevIndex:I

    .line 162
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStyleChanged:Z

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    .line 167
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mLastZoomValue:I

    .line 170
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    .line 171
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostAnimationRunning:Z

    .line 172
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    .line 1022
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStateChangeListener:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;

    .line 219
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_value_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 220
    array-length v2, v1

    move v3, v0

    :goto_89
    if-ge v3, v2, :cond_99

    aget v4, v1, v3

    .line 221
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 223
    :cond_99
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_value_normal_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 224
    array-length v2, v1

    move v3, v0

    :goto_a1
    if-ge v3, v2, :cond_b1

    aget v4, v1, v3

    .line 225
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueNormalList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 227
    :cond_b1
    sget v1, Lcom/transsion/camera/R$array;->wide_range_converter_progress_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 228
    array-length v2, v1

    move v3, v0

    :goto_b9
    if-ge v3, v2, :cond_c9

    aget v4, v1, v3

    .line 229
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterProgressList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 231
    :cond_c9
    sget v1, Lcom/transsion/camera/R$array;->wide_and_main_reapte_range:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 232
    array-length v1, p1

    :goto_d0
    if-ge v0, v1, :cond_e0

    aget v2, p1, v0

    .line 233
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideAndMainRepeatRangeConverterValueList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    .line 235
    :cond_e0
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    .line 236
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/ui/setting/zoom/ZoomUI4-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

    .line 237
    new-instance v0, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomUI4Controller;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    return-void
.end method

.method private addNotExistZoomInfo()V
    .registers 9

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 797
    :goto_6
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 798
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 799
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isZoomInfoExist(Lcom/transsion/camera/app/common/ZoomInfo;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 800
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 803
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->addZoomInfoToZoomItemRoot(Ljava/util/List;)V

    return-void

    .line 806
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateCurrentZoomItemView(ILjava/util/List;)V

    .line 807
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method private addNotExistZoomItemView(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    :goto_3
    if-ge p1, p2, :cond_13

    add-int/lit8 v0, p1, -0x1

    .line 900
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->addZoomItem(ILcom/transsion/camera/app/common/ZoomInfo;)Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_13
    return-void
.end method

.method private addZoomInfoToZoomItemRoot(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 842
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 843
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 844
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->createZoomItemView(Lcom/transsion/camera/app/common/ZoomInfo;)Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    move-result-object v2

    const/4 v3, 0x4

    .line 845
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 847
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->findInsertIndex(Lcom/transsion/camera/app/common/ZoomInfo;)I

    move-result v1

    .line 849
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x10

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 851
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v4, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 853
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateCurrentZoomItemView(ILjava/util/List;)V

    .line 854
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V

    .line 855
    iget-object p0, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5d

    .line 856
    iget-object p0, v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemViewWithAnimation(Ljava/util/List;)V

    :cond_5d
    return-void
.end method

.method private addZoomItem(ILcom/transsion/camera/app/common/ZoomInfo;)Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;
    .registers 3

    .line 933
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->createZoomItemView(Lcom/transsion/camera/app/common/ZoomInfo;)Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    move-result-object p2

    .line 934
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object p2
.end method

.method private animationIndicator(Z)V
    .registers 2

    .line 972
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->animationIndicator(Landroid/view/View;Z)V

    return-void
.end method

.method private canShowZoomWheel()Z
    .registers 2

    .line 1169
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    if-nez v0, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private consumeBackPressed(Z)Z
    .registers 4

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsFrontDualFlashUiShow:Z

    if-nez p1, :cond_13

    const/16 p1, 0xe7

    .line 1607
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1610
    :cond_13
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2c

    return v0

    .line 1613
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_54

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-eqz p1, :cond_54

    .line 1614
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 1616
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsBackBressed:Z

    .line 1617
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v1, :cond_4b

    .line 1618
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->onBackPressed(Z)V

    :cond_4b
    const/16 v1, 0x18

    .line 1620
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1621
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    return p1

    :cond_54
    return v0
.end method

.method private convertFocalToZoomValue(I)I
    .registers 4

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    .line 1429
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    .line 1430
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_20

    .line 1431
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :cond_20
    return p0
.end method

.method private convertZoomToFocal(I)I
    .registers 2

    int-to-float p1, p1

    .line 1425
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method private createZoomItemView(Lcom/transsion/camera/app/common/ZoomInfo;)Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;
    .registers 5

    .line 923
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->zoom_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 924
    check-cast v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 925
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomInfo(Lcom/transsion/camera/app/common/ZoomInfo;)V

    .line 926
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomItemViewStyle(I)V

    .line 927
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setBaseFocalLength(F)V

    .line 928
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStateChangeListener:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomStateChangedListener(Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;)V

    return-object v0
.end method

.method private enableViewTalkback(Landroid/view/View;Z)V
    .registers 4

    if-eqz p1, :cond_19

    .line 3071
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    :cond_d
    if-eqz p2, :cond_14

    const/4 p0, 0x1

    .line 3076
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    :cond_14
    const/4 p0, 0x4

    .line 3078
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    .line 3072
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkback] view is null or talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private fadeInZoomRatioTips()V
    .registers 3

    .line 1661
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private fadeInZoomWheel(Z)V
    .registers 4

    .line 1795
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeInZoomWheel]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1796
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    .line 1797
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showInstantView(Z)V

    .line 1798
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    if-nez v0, :cond_1c

    .line 1799
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideModePicker()V

    .line 1801
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->cancelFadeOutZoomWheel()V

    .line 1802
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->fadeinZoomWheel(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method private fadeOutZoomRatioTips()V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private fadeOutZoomWheel(ZZ)V
    .registers 5

    .line 1809
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeOutZoomWheel]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1810
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    .line 1811
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideInstantView(ZZ)V

    if-nez p1, :cond_1a

    .line 1812
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    if-nez v1, :cond_1a

    .line 1813
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showModePicker()V

    :cond_1a
    if-nez p2, :cond_34

    .line 1816
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1819
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_3b

    .line 1821
    :cond_34
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {p2, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->fadeoutZoomWheel(Landroid/view/View;Landroid/view/View;Z)V

    .line 1823
    :goto_3b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-nez p1, :cond_44

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez p1, :cond_44

    const/4 v0, 0x1

    :cond_44
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->enableZoomItem(Z)V

    return-void
.end method

.method private findInsertIndex(Lcom/transsion/camera/app/common/ZoomInfo;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 862
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 863
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 864
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getMinZoomRatio()I

    move-result v2

    if-ge v3, v2, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_22
    return v1
.end method

.method private getCurrentIndicatorPosition(I)F
    .registers 3

    .line 1386
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemWidth:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndexOffset:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    return p0
.end method

.method private getSelectedItemIndex(II)I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 1392
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 1393
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomInfo;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_30

    .line 1395
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->convertZoomToFocal(I)I

    move-result v3

    const/16 v4, 0x4e20

    if-ne p1, v4, :cond_1f

    const/16 v3, 0x32

    .line 1399
    :cond_1f
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomInfo;->getFocalLength()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_53

    goto :goto_52

    :cond_30
    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne p2, v3, :cond_43

    .line 1404
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomInfo;->getCustomZoomValue()I

    move-result v2

    if-eq p1, v2, :cond_52

    sub-int v2, p1, v2

    .line 1405
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_53

    goto :goto_52

    :cond_43
    if-ne p2, v4, :cond_4c

    .line 1410
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v2

    if-ne p1, v2, :cond_53

    goto :goto_52

    .line 1415
    :cond_4c
    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/ZoomInfo;->inCurrentRange(I)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_52
    :goto_52
    return v1

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_56
    return v0
.end method

.method private getZoomItemWidth(I)I
    .registers 4

    .line 1455
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1456
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->zoomItemNeedPadding()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1457
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNoZoomItemPadding:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    :cond_14
    return v0
.end method

.method private getZoomRange(I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;
    .registers 4

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_17

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0

    .line 994
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_24

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 995
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0

    .line 997
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_31

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0

    .line 1000
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_3e

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getZoomRatioByProgress(I)Ljava/lang/String;
    .registers 4

    .line 2308
    rem-int/lit16 p0, p1, 0x2710

    const-string v0, "%dx"

    if-nez p0, :cond_17

    .line 2309
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2311
    :cond_17
    rem-int/lit16 p0, p1, 0x3e8

    const/16 v1, 0x1f4

    if-ne p0, v1, :cond_34

    add-int/lit16 p1, p1, -0x1f4

    .line 2313
    rem-int/lit16 p0, p1, 0x2710

    if-nez p0, :cond_34

    .line 2314
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2319
    :cond_34
    div-int/lit16 p0, p1, 0x3e8

    rem-int/lit16 v1, p0, 0x3e8

    if-nez v1, :cond_4b

    .line 2320
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2323
    :cond_4b
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%dx"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleZoomVibrate(II)V
    .registers 7

    .line 2282
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    .line 2283
    const-string v1, "mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7f

    .line 2286
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomRatioByProgress(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 2288
    const-string p2, "0.6x"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, ""

    const-string v3, "x"

    if-nez p2, :cond_36

    .line 2289
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2290
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2292
    :cond_2d
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int v2, p1

    goto :goto_50

    .line 2294
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_50

    const/16 p2, 0x1b58

    if-gt p1, p2, :cond_50

    .line 2295
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2296
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const p2, 0x461c4000    # 10000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2299
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged, currentZoomValue : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",zoomByValue : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2300
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mLastZoomValue:I

    if-eq v2, p1, :cond_7f

    .line 2301
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsRotorMotor:Z

    invoke-virtual {p1, v2, p2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->vibrate(IZ)V

    .line 2302
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mLastZoomValue:I

    :cond_7f
    :goto_7f
    return-void
.end method

.method private hideCenterZoomView()V
    .registers 1

    .line 1708
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeOutZoomRatioTips()V

    return-void
.end method

.method private hideFocalView()V
    .registers 3

    const/4 v0, 0x0

    .line 1723
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1724
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1725
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->resetFocalView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private hideInstantView(ZZ)V
    .registers 5

    .line 1739
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideInstantView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    if-nez p2, :cond_19

    .line 1742
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->hideInstantView(Landroid/view/View;Z)V

    goto :goto_2b

    .line 1744
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1745
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1746
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1748
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_instant_zoom_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p2, "value_instant_zoom_hide"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method private hideModePicker()V
    .registers 4

    .line 2075
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 2076
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[hideModePicker]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideZoomIndicatorAndBackground()V
    .registers 3

    const/4 v0, 0x0

    .line 942
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 943
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 944
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideZoomItemRoot(ZZ)V
    .registers 6

    .line 1781
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1784
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideZoomItemRoot], byScale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_3d

    .line 1786
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1788
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 1790
    :cond_3d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->hideZoomItemRoot(Landroid/view/View;Z)V

    return-void
.end method

.method private inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z
    .registers 3

    if-eqz p1, :cond_a

    .line 2541
    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->currentRange(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private initZoomItem(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;)V"
        }
    .end annotation

    .line 1198
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 1199
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1200
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1201
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x10

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1203
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1205
    :cond_22
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method private initZoomItemViews(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 763
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 766
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 767
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$layout;->zoom_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 768
    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 769
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomInfo(Lcom/transsion/camera/app/common/ZoomInfo;)V

    .line 770
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomItemViewStyle(I)V

    .line 771
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setBaseFocalLength(F)V

    .line 772
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomValue(I)V

    .line 773
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStateChangeListener:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ZoomStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomStateChangedListener(Lcom/transsion/camera/app/ui/widget/zoom/IZoomItemView$ZoomStateChangedListener;)V

    .line 774
    sget-object v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 776
    :cond_4d
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->initZoomItem(Ljava/util/List;)V

    return-void
.end method

.method private instantZoomChanged(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 583
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    return v1

    .line 586
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 587
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedShowWheelOrZoomItem()Z
    .registers 2

    .line 1923
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isOffsetChanged()Z
    .registers 2

    .line 639
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevOffsetPadding:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    if-eq v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private isReachPreviewBoundary(FF)Z
    .registers 6

    .line 549
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    .line 552
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

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

.method private isZoomInfoExist(Lcom/transsion/camera/app/common/ZoomInfo;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 886
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 887
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getMinZoomRatio()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v3

    if-ne v2, v3, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method private isZoomItemViewExist(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 875
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 876
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getMinZoomRatio()I

    move-result v3

    if-ne v2, v3, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method private isZoomPropertySupportZoom()Z
    .registers 2

    .line 667
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    if-nez p0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method

.method private isZoomStyleChanged()Z
    .registers 6

    .line 643
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    .line 644
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    return v2

    .line 647
    :cond_b
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    if-eq v0, v3, :cond_15

    .line 649
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    return v3

    :cond_15
    if-ne v0, v3, :cond_1c

    if-eq v0, v1, :cond_1c

    .line 654
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    return v3

    :cond_1c
    const/4 v4, 0x5

    if-ne v1, v4, :cond_24

    if-eq v0, v4, :cond_24

    .line 659
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    return v3

    .line 662
    :cond_24
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    return v2
.end method

.method private synthetic lambda$setLayoutPadding$0(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    const-string v1, "topPadding"

    .line 427
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "bottomPadding"

    .line 428
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    .line 426
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    const-string v0, "zoomRatioTopPadding"

    .line 430
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "zoomRatioBottomPadding"

    .line 431
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 429
    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$updateIndicatorPosition$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1339
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1340
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateZoomItemWidth$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1504
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1505
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private noZoomNeedWhileRecording()Z
    .registers 3

    .line 339
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x3

    if-ne p0, v1, :cond_d

    :cond_c
    return v0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private onInstantZoomItemClick(I)V
    .registers 6

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    .line 304
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 306
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 309
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 310
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSettingInSat(IFZ)V

    return-void

    .line 313
    :cond_3f
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomRange(I)Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    move-result-object v0

    if-nez v0, :cond_47

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    :cond_47
    if-eqz v0, :cond_7d

    .line 318
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 320
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 321
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 323
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 324
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void

    .line 326
    :cond_6b
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-ne v0, v2, :cond_7d

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    :cond_7d
    return-void
.end method

.method private onInteractive(Z)V
    .registers 6

    .line 2210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractive touching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " switching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_37

    const/16 v0, 0x17

    .line 2212
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 2213
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_49

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v1, :cond_49

    .line 2214
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_49

    :cond_37
    const/16 v0, 0x18

    .line 2217
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 2218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_49

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v1, :cond_49

    .line 2219
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 2222
    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_5c

    const/4 p1, 0x0

    .line 2224
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomChanging:Z

    .line 2225
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5c
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 1174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_35

    goto :goto_3c

    .line 1176
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSimulateDownEvent:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    .line 1177
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSimulateDownEvent:Z

    .line 1178
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1179
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1180
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 1183
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 1188
    :cond_35
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSimulateDownEvent:Z

    .line 1189
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method private onProgressChanged(I)V
    .registers 6

    .line 2241
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-nez v0, :cond_12

    .line 2242
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onProgressChanged,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2245
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_real_zoom_value"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

    .line 2247
    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->-$$Nest$mupdateConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-nez v0, :cond_2e

    return-void

    .line 2250
    :cond_2e
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    .line 2251
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    .line 2253
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 2257
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v2, :cond_53

    .line 2258
    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 2260
    :cond_53
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v2, :cond_7d

    .line 2261
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    goto :goto_7d

    .line 2263
    :cond_64
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    goto :goto_7d

    .line 2265
    :cond_71
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->progressToValue(IZ)I

    move-result v0

    .line 2269
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ponProgressChanged] :   max:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  min:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  progress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2271
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->handleZoomVibrate(II)V

    .line 2277
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomValueToUI(I)V

    .line 2278
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    return-void
.end method

.method private onSlipFinish(Z)V
    .registers 5

    .line 2483
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipFinish: slipping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_3a

    .line 2486
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_46

    .line 2487
    const-string p1, "key_zoom_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "slip_sliping"

    .line 2488
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2491
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2492
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_46
    return-void
.end method

.method private onSlipStatusChanged()V
    .registers 4

    .line 2513
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateCurrentConverterState()V

    .line 2514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipStatusChanged: mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2515
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2516
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 2517
    const-string v0, "key_zoom_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "slip_stop"

    .line 2518
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private onSlipStop()V
    .registers 4

    .line 2498
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v1, :cond_15

    .line 2499
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eq v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedIntentMode()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2500
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onSlipStatusChanged()V

    .line 2503
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlipStop: mCurrentConverterState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onUIStateChanged(Z)V
    .registers 4

    .line 2230
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 2231
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2232
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->onSlipFinish(Z)V

    .line 2234
    :cond_11
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    .line 2235
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setZoomUIState(Z)V

    return-void
.end method

.method private reCheckIndicatorPosition()V
    .registers 4

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_3c

    .line 1378
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[reCheckIndicatorPosition] current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " dst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    .line 1381
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private removeExtraZoomItemView(II)V
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_14

    .line 906
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    return-void
.end method

.method private removeNotExistZoomItemView()V
    .registers 5

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_24

    .line 783
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 784
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isZoomItemViewExist(Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 785
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 788
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_32

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->removeZoomItemView(Ljava/util/List;)V

    return-void

    .line 791
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->addNotExistZoomInfo()V

    return-void
.end method

.method private removeZoomItemView(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;)V"
        }
    .end annotation

    .line 812
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 813
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 814
    new-array v1, v1, [F

    fill-array-data v1, :array_48

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 815
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 816
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 817
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 818
    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 826
    :cond_43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->addNotExistZoomInfo()V

    return-void

    nop

    :array_48
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private satSupport()Z
    .registers 2

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    if-eqz p0, :cond_14

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private setZoomWheelEnable(Z)V
    .registers 3

    .line 1601
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1602
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private showCenterZoomView()V
    .registers 6

    .line 1675
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSlowMotionCameraAssigned:Z

    if-eqz v0, :cond_13

    .line 1676
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "slow motion do no support zoom"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1687
    :cond_13
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    if-nez v0, :cond_8b

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingBackToFront()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 1688
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_28

    .line 1689
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeInZoomRatioTips()V

    .line 1691
    :cond_28
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v0

    .line 1692
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v1

    .line 1693
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[showCenterZoomView] mProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " zoomByProgress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " zoomByValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1696
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    if-eqz v2, :cond_81

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-direct {p0, v3, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v2

    if-nez v2, :cond_81

    .line 1697
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    .line 1700
    :cond_81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8b
    :goto_8b
    const/4 v0, 0x0

    .line 1704
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    return-void
.end method

.method private showInstantView(Z)V
    .registers 4

    .line 1730
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_31

    .line 1731
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showInstantView]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1733
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showInstantView(Landroid/view/View;Z)V

    .line 1734
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_instant_zoom_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_instant_zoom_show"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private showModePicker()V
    .registers 4

    .line 2062
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showModePicker] mIsConflictUIShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mTreasureBoxShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPopWindowShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mImageStyleShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2065
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    if-nez v0, :cond_50

    .line 2070
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_50
    return-void
.end method

.method private showZoomItemRoot(Z)V
    .registers 5

    .line 1753
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->noZoomNeedWhileRecording()Z

    move-result v0

    const-string v1, "[showZoomItemRoot] mModeSwitching:"

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMoreMode:Z

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1761
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz v0, :cond_79

    .line 1762
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_38

    goto :goto_79

    .line 1769
    :cond_38
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->cancel()V

    .line 1770
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-nez v0, :cond_78

    .line 1772
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isNeedShowWheelOrZoomItem()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 1773
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_78

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_75

    move v1, v2

    :cond_75
    invoke-static {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showZoomItemRoot(Landroid/view/View;ZZ)V

    :cond_78
    return-void

    .line 1763
    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScaleBegin :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTreasureBoxShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImageStyleShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPopWindowShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppUI.shutterUIProcessing():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1766
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1763
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showZoomItemViewWithAnimation(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 830
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 831
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 832
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->zoomItemNeedPadding()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 833
    invoke-static {v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showZoomItemView(Landroid/view/View;Z)V

    goto :goto_1c

    .line 835
    :cond_19
    invoke-static {v2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showZoomItemView(Landroid/view/View;Z)V

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private translateZoomBarIfNeed()V
    .registers 8

    .line 1887
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[translateZoomBarIfNeed] mIsVideoStartRecording : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVlogSegmentEmpty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1889
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->isHidding()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1890
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->cancel()V

    .line 1892
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    if-eqz v0, :cond_3c

    :cond_38
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    if-eqz v0, :cond_af

    .line 1893
    :cond_3c
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_86

    if-nez v0, :cond_45

    goto :goto_86

    :cond_45
    const/4 v2, 0x3

    if-ne v0, v2, :cond_71

    .line 1902
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_hover:I

    .line 1904
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_hover:I

    .line 1906
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v1, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    filled-new-array {v0, v2}, [Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    move-result-object v0

    .line 1902
    invoke-static {p0, v3, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V

    return-void

    :cond_71
    const/4 v2, 0x4

    if-eq v0, v2, :cond_7b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7b

    if-ne v0, v3, :cond_7a

    goto :goto_7b

    :cond_7a
    return-void

    .line 1911
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1912
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1895
    :cond_86
    :goto_86
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_normal:I

    .line 1897
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_normal:I

    .line 1899
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v2, v4, v1, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    filled-new-array {v0, v2}, [Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    move-result-object v0

    .line 1895
    invoke-static {p0, v3, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V

    return-void

    .line 1915
    :cond_af
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    .line 1916
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    new-instance v2, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    .line 1917
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    filled-new-array {v0, v2}, [Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1915
    invoke-static {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V

    return-void
.end method

.method private updateCenterZoomView(Z)V
    .registers 4

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

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

    .line 1552
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showCenterZoomView()V

    return-void

    :cond_12
    if-eqz v0, :cond_17

    .line 1554
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    :cond_17
    return-void
.end method

.method private updateCurrentConverterState()V
    .registers 3

    .line 2523
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2525
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void

    .line 2527
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void

    .line 2529
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2530
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void

    .line 2531
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2532
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSatRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void

    .line 2534
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    return-void
.end method

.method private updateCurrentZoomItemView(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_21

    .line 915
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 916
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomInfo(Lcom/transsion/camera/app/common/ZoomInfo;)V

    .line 917
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setZoomItemViewStyle(I)V

    .line 918
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setBaseFocalLength(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private updateGradationRootLayout(II)V
    .registers 10

    .line 2131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2132
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    const/16 v3, 0x55

    const/16 v4, 0x33

    const/16 v5, 0xb4

    if-ne p2, v2, :cond_88

    const/16 p2, 0x5a

    const/16 v2, 0x10e

    if-eq p1, p2, :cond_68

    if-eq p1, v5, :cond_4f

    if-eq p1, v2, :cond_38

    const/16 p2, 0x53

    .line 2153
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2154
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2155
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_0_bottom_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_7e

    .line 2146
    :cond_38
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2147
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2148
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7e

    :cond_4f
    const/16 p2, 0x35

    .line 2141
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2142
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2143
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_0_bottom_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7e

    .line 2136
    :cond_68
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2137
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2138
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_7e
    add-int/2addr p1, v2

    .line 2158
    rem-int/lit16 p1, p1, 0x168

    .line 2159
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_143

    :cond_88
    if-eqz p2, :cond_ee

    const/4 p1, 0x2

    if-eq p2, p1, :cond_ee

    const/4 p1, 0x3

    if-ne p2, p1, :cond_91

    goto :goto_ee

    :cond_91
    const/4 p1, 0x4

    if-ne p2, p1, :cond_c0

    .line 2174
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2175
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    if-eqz p1, :cond_a5

    .line 2176
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_af

    .line 2178
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2180
    :goto_af
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2181
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_143

    :cond_c0
    const/4 p1, 0x5

    if-ne p2, p1, :cond_143

    .line 2183
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2184
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    if-eqz p1, :cond_d4

    .line 2185
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_de

    .line 2187
    :cond_d4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_90_bottom_margin_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2189
    :goto_de
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->graduation_expand_start_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2190
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v5, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_143

    :cond_ee
    :goto_ee
    const/16 p1, 0x51

    .line 2163
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 2165
    invoke-static {p1, p2, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v4

    if-eqz v4, :cond_119

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v4, :cond_119

    .line 2166
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->zoom_ui4_pro_normal_zoom_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 2167
    :cond_119
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    add-int/2addr v4, v5

    .line 2168
    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v5, :cond_130

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->pro_graduation_bottom_margin_offset:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_133

    :cond_130
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomViewMargin:I

    neg-int v1, v1

    :goto_133
    add-int/2addr v4, v1

    .line 2169
    invoke-static {p1, p2, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result p1

    if-eqz p1, :cond_141

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz p1, :cond_141

    .line 2170
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProOffsetfor11:I

    add-int/2addr v4, p1

    .line 2172
    :cond_141
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2192
    :cond_143
    :goto_143
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateIndicatorPosition(I)V
    .registers 10

    .line 1261
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getSelectedItemIndex(II)I

    move-result p1

    .line 1262
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1263
    div-int/lit8 v1, v0, 0x2

    .line 1264
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    .line 1265
    rem-int/2addr v0, v3

    const/4 v4, 0x1

    if-nez v0, :cond_18

    sub-int/2addr p1, v1

    add-int/2addr p1, v4

    goto :goto_19

    :cond_18
    sub-int/2addr p1, v1

    .line 1270
    :goto_19
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getCurrentIndicatorPosition(I)F

    move-result v5

    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    .line 1271
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateIndicatorPosition] index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " remain:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mWidthDiff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1273
    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPrevIndex:I

    if-ne v5, p1, :cond_57

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-eqz v5, :cond_16b

    .line 1274
    :cond_57
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->zoomItemNeedPadding()Z

    move-result v5

    if-eqz v5, :cond_15d

    if-lez p1, :cond_b3

    if-lez v2, :cond_8a

    .line 1277
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_76

    .line 1278
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1280
    :cond_76
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v6, v1

    div-int/2addr v2, v3

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1283
    :cond_8a
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_a2

    .line 1284
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v6, v1

    div-int/2addr v2, v3

    int-to-float v1, v2

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1286
    :cond_a2
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    :cond_b3
    if-gez p1, :cond_109

    if-lez v2, :cond_e0

    .line 1291
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_cc

    .line 1292
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1294
    :cond_cc
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v6, v1

    div-int/2addr v2, v3

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1297
    :cond_e0
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_f9

    .line 1298
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_169

    .line 1300
    :cond_f9
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_169

    :cond_109
    if-nez p1, :cond_169

    if-lez v2, :cond_135

    .line 1305
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_125

    .line 1306
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_169

    .line 1308
    :cond_125
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v5, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_169

    .line 1312
    :cond_135
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    if-lez v2, :cond_14d

    .line 1313
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_169

    .line 1315
    :cond_14d
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    mul-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_169

    .line 1321
    :cond_15d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    div-int/2addr v5, v3

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1323
    :cond_169
    :goto_169
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPrevIndex:I

    .line 1325
    :cond_16b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1326
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->zoomItemNeedPadding()Z

    move-result v2

    if-eqz v2, :cond_18e

    if-nez v0, :cond_185

    .line 1328
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNoZoomItemPadding:I

    mul-int/2addr p1, v2

    div-int/2addr v2, v3

    sub-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    goto :goto_18e

    .line 1330
    :cond_185
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNoZoomItemPadding:I

    mul-int/2addr p1, v2

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    .line 1333
    :cond_18e
    :goto_18e
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    new-array v0, v3, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    .line 1334
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    if-eqz p1, :cond_1d0

    .line 1335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1336
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemWidthInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1337
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1338
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1342
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1363
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1364
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    goto :goto_1db

    .line 1365
    :cond_1d0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPostAnimationRunning:Z

    if-nez p1, :cond_1db

    .line 1366
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDstPosotion:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1368
    :cond_1db
    :goto_1db
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1ef

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1fc

    :cond_1ef
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz p1, :cond_1fc

    .line 1369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_1fc

    .line 1370
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomIndicator()V

    :cond_1fc
    return-void
.end method

.method private updateInstantItemOrientation(I)V
    .registers 2

    .line 2049
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateOrientation(I)V

    return-void
.end method

.method private updateInstantViewBG()V
    .registers 5

    .line 3057
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_9

    return-void

    .line 3060
    :cond_9
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 3061
    const-string v1, "key_picture_ratio"

    const-string v2, "_global_scope"

    const-string v3, "4:3"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3062
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "1:1"

    .line 3063
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_37

    .line 3066
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$drawable;->instant_zoom_selected_bg_black_light_ui5:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateInstantViewBG(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3064
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$drawable;->instant_zoom_selected_bg_black_dark_ui5:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateInstantViewBG(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateZoomItemOrientation(I)V
    .registers 5

    .line 2053
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 2054
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 2055
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2056
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    return-void
.end method

.method private updateZoomItemRecordingStatus(Z)V
    .registers 7

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 345
    :goto_9
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 347
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v4, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMin:I

    iget v3, v3, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->mMax:I

    invoke-virtual {v1, p1, v2, v4, v3}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateRecordingStatus(ZZII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2d
    return-void
.end method

.method private updateZoomItemStype(I)V
    .registers 5

    .line 949
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_52

    const/4 v1, 0x3

    if-eq p1, v1, :cond_52

    const/4 v2, 0x4

    if-ne p1, v2, :cond_10

    goto :goto_52

    :cond_10
    const/4 p1, 0x2

    if-ne v0, p1, :cond_22

    .line 957
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_2_items:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    :cond_22
    if-ne v0, v1, :cond_33

    .line 959
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_items:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_43

    :cond_33
    if-ne v0, v2, :cond_43

    .line 961
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_4_items:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 963
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_item_selected_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6e

    .line 953
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_fullzoom_layout_background_3_unsupport_items:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 954
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->ic_focal_item_selected_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 965
    :goto_6e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isOffsetChanged()Z

    move-result p1

    if-nez p1, :cond_82

    .line 966
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 967
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mBackGroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_82
    return-void
.end method

.method private updateZoomItemView(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 743
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->removeNotExistZoomItemView()V

    return-void
.end method

.method private updateZoomItemWidth(II)V
    .registers 9

    .line 1463
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1464
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndexOffset:I

    goto :goto_e

    .line 1466
    :cond_c
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIndexOffset:I

    .line 1468
    :goto_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_5d

    .line 1469
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1470
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1471
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDisplayDensity:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2b

    .line 1472
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->initZoom4Parameters(Landroid/content/res/Resources;)V

    .line 1474
    :cond_2b
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateZoomItemWidth] displayMetrics: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  mDisplayDensity:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDisplayDensity:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1477
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateZoomItemWidth] totalWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mPreTotalWith = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mZoomItemType:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mZoomItemWidth:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemWidth:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mZoomItemPadding:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mNoZoomItemPadding:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNoZoomItemPadding:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1481
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1482
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    .line 1483
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sub-int v2, v0, p2

    .line 1484
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthDiff:I

    .line 1485
    filled-new-array {v0, p2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, p2, :cond_d3

    .line 1487
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    return-void

    .line 1490
    :cond_d3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStyleChanged:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_e8

    .line 1491
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    .line 1492
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    .line 1493
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1494
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStyleChanged:Z

    .line 1496
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    goto :goto_149

    .line 1497
    :cond_e8
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    if-eq v0, p2, :cond_116

    .line 1498
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomWithChanged:Z

    .line 1499
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    .line 1500
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemWidthInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1501
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1502
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1503
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1507
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_149

    .line 1529
    :cond_116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateZoomItemWidth] zoomItemRootParams.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1531
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v0, p2, :cond_149

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWidthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_149

    .line 1532
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1533
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1537
    :cond_149
    :goto_149
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateZoomItems()V
    .registers 5

    .line 713
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemStype(I)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_45

    .line 716
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    if-eqz v0, :cond_45

    .line 717
    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 718
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 719
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 720
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mMacroZoomCustomized:Z

    if-eqz v2, :cond_43

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v0

    .line 722
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mCustomizedTeleValue:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_45

    .line 724
    :cond_43
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 731
    :cond_45
    :goto_45
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->initZoomItemViews(Ljava/util/List;)V

    goto :goto_64

    .line 733
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_64

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemView(Ljava/util/List;)V

    .line 738
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->upZoomItemStyle(I)V

    return-void
.end method

.method private updateZoomRatioLayout()V
    .registers 5

    .line 3083
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 3087
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3088
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_25

    const/4 v2, 0x5

    if-ne v1, v2, :cond_14

    goto :goto_25

    :cond_14
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1c

    const/16 v1, 0x11

    .line 3095
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_42

    .line 3097
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomRatioLayoutMargins(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_42

    :cond_25
    :goto_25
    const/4 v1, -0x1

    .line 3090
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3091
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3092
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3093
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3099
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateZoomUI()V
    .registers 5

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 1164
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateZoomValueToUI(I)V
    .registers 5

    const/4 v0, 0x1

    .line 2346
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomChanging:Z

    .line 2347
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 2348
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 2349
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 2350
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2351
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private zoomItemNeedPadding()Z
    .registers 3

    .line 1449
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_e

    if-eq p0, v1, :cond_e

    const/4 v0, 0x4

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v1
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

.method protected doOrientationChanged(I)V
    .registers 3

    .line 2015
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_7

    .line 2016
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setZoomViewOrientation(I)V

    .line 2018
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 2021
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setOrientation(IZ)V

    return-void
.end method

.method enableZoomItem(Z)V
    .registers 5

    .line 977
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    if-eqz v0, :cond_1d

    .line 978
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enableZoomItem] mIsZoomWheelShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 981
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableZoomItem] mIsCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_60

    const/4 v0, 0x0

    .line 983
    :goto_4a
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 984
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 985
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_60
    return-void
.end method

.method protected getEquivalentZoomValue(I)I
    .registers 6

    .line 248
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_SAT_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

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

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterProgressList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    .line 253
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

    .line 258
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterProgressList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRangeConverterValueList:Ljava/util/List;

    .line 259
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

.method getSelectedView()Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1439
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1441
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->inCurrentRange(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-object v0
.end method

.method protected getZoomRatioLayoutMargins(I)Landroid/graphics/Rect;
    .registers 5

    .line 3104
    new-instance p1, Landroid/graphics/Rect;

    const v0, 0x7fffffff

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3105
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_41

    .line 3106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->new_camera_center_zoom_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3108
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_29

    const/16 v1, 0x63

    .line 3109
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    goto :goto_2f

    :cond_29
    const/16 v1, 0x14

    .line 3111
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    :goto_2f
    const/16 v2, 0xf

    .line 3113
    invoke-static {v2}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-object p1

    .line 3116
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->new_camera_center_zoom_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3117
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_5c

    .line 3118
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-object p1

    :cond_5c
    sub-int/2addr v1, v0

    .line 3120
    iput v1, p1, Landroid/graphics/Rect;->top:I

    return-object p1
.end method

.method public graduationViewIsShow()Z
    .registers 3

    .line 1713
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public hideZoomIndicator(Z)V
    .registers 5

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideZoomIndicator] needAnim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    .line 1249
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->hideZoomItemIndicator(Landroid/view/View;Z)V

    return-void

    .line 1251
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method hideZoomItemView(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1575
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void
.end method

.method protected hideZoomWheel(ZZ)V
    .registers 6

    .line 1587
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_zoomwheel_view_hide"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1588
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    if-nez v0, :cond_2b

    .line 1589
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeOutZoomWheel(ZZ)V

    .line 1590
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 1591
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    const/16 p1, 0x1a

    .line 1592
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1594
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "hideZoomUI, action_zoom_ui_end"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1596
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1597
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

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

.method public bridge synthetic isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 266
    sget v0, Lcom/transsion/camera/R$layout;->zoom_layout_4:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 268
    sget p2, Lcom/transsion/camera/R$id;->zoom_ui_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    .line 270
    sget p2, Lcom/transsion/camera/R$id;->tv_current_zoom_ratio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    .line 271
    sget p2, Lcom/transsion/camera/R$id;->tv_current_zoom_ratio:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 272
    sget p2, Lcom/transsion/camera/R$id;->tv_stroke_current_zoom_ratio:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    .line 274
    sget p2, Lcom/transsion/camera/R$id;->zoom_item_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 275
    sget p2, Lcom/transsion/camera/R$id;->zoom_item_layout_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    .line 276
    sget p2, Lcom/transsion/camera/R$id;->zoom_item_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    .line 278
    sget p2, Lcom/transsion/camera/R$id;->graduation_zoom_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 279
    sget p2, Lcom/transsion/camera/R$id;->zoom_disc_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    .line 280
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setViewProgressChangeListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothProgressChangeListener;)V

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setInteractiveListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothInteractiveListener;)V

    .line 282
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setUIStateChangeListener(Lcom/transsion/camera/app/ui/widget/SmoothZoomView$SmoothUIStateChangeListener;)V

    .line 283
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setFocalLength(F)V

    .line 285
    sget p2, Lcom/transsion/camera/R$id;->instant_layout_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    .line 286
    sget p2, Lcom/transsion/camera/R$id;->instant_rv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantView:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-direct {p2}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    .line 288
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->setOnInstantZoomItemClickListener(Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter$InstantItemClickListener;)V

    .line 289
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateInstantViewBG()V

    .line 291
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b5

    goto :goto_b6

    :cond_b5
    move v1, p2

    :goto_b6
    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    .line 293
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result p2

    if-eqz p2, :cond_cf

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isAIGCFromNegativeScreen()Z

    move-result p2

    if-eqz p2, :cond_cf

    const/4 p2, 0x1

    .line 294
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomViewCanShow(Z)V

    :cond_cf
    return-object p1
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 2811
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne v0, p1, :cond_9

    .line 2813
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    :cond_9
    const/16 v0, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_1d4

    goto/16 :goto_1d2

    .line 3032
    :sswitch_12
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mbSegmentDragging:Z

    .line 3033
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    return-void

    .line 3028
    :sswitch_1c
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mbSegmentDragging:Z

    .line 3029
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mFreeShotDraggingOrientation:I

    return-void

    .line 2909
    :sswitch_23
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    .line 2910
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->translateZoomBarIfNeed()V

    return-void

    .line 2905
    :sswitch_29
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    .line 2906
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->translateZoomBarIfNeed()V

    return-void

    .line 3018
    :sswitch_2f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3021
    :sswitch_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2901
    :sswitch_3b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    .line 2902
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2895
    :sswitch_41
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    .line 2896
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 2897
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2898
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2890
    :sswitch_4d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 2891
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2892
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2919
    :sswitch_57
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    .line 2920
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-nez p1, :cond_1d2

    .line 2921
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2922
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2851
    :sswitch_64
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    .line 2852
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setZoomUIState(Z)V

    .line 2853
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->cancelShow()V

    .line 2854
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    if-eqz p1, :cond_72

    .line 2855
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    .line 2857
    :cond_72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 2858
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2859
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2958
    :sswitch_7c
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    .line 2959
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2960
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2997
    :sswitch_85
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    if-nez p1, :cond_1d2

    .line 2998
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2840
    :sswitch_8d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    return-void

    .line 2837
    :sswitch_90
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    return-void

    .line 2963
    :sswitch_93
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    :sswitch_95
    const/16 v0, 0xf3

    if-ne v0, p1, :cond_9b

    .line 2966
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    .line 2968
    :cond_9b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez p1, :cond_1d2

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result p1

    if-nez p1, :cond_1d2

    .line 2969
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 3015
    :sswitch_a9
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsFrontDualFlashUiShow:Z

    return-void

    .line 3012
    :sswitch_ac
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsFrontDualFlashUiShow:Z

    return-void

    .line 2955
    :sswitch_af
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateCenterZoomView(Z)V

    return-void

    .line 2952
    :sswitch_b3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2884
    :sswitch_b9
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    .line 2885
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    .line 2886
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2843
    :sswitch_c2
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_ca

    .line 2844
    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    return-void

    .line 2846
    :cond_ca
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2847
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2831
    :sswitch_d1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    if-nez p1, :cond_1d2

    .line 2832
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2833
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2827
    :sswitch_dc
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2828
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2991
    :sswitch_e3
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    if-nez p1, :cond_1d2

    .line 2992
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2993
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2985
    :sswitch_ee
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1d2

    .line 2986
    :cond_fe
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomWheelEnable(Z)V

    return-void

    .line 2949
    :sswitch_102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 2913
    :sswitch_108
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    .line 2914
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result p1

    if-nez p1, :cond_1d2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    if-nez p1, :cond_1d2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    if-nez p1, :cond_1d2

    .line 2915
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2866
    :sswitch_11c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    if-eqz v0, :cond_122

    .line 2867
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    :cond_122
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_128

    .line 2870
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPopWindowShow:Z

    :cond_128
    const/16 v0, 0xcf

    if-ne p1, v0, :cond_12e

    .line 2873
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    :cond_12e
    const/16 v0, 0x50

    if-ne p1, v0, :cond_134

    .line 2876
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    .line 2878
    :cond_134
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 2879
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2880
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2936
    :sswitch_13e
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateVideoRecordStopStatus(Z)V

    .line 2937
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    .line 2938
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    .line 2939
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTimeLapseWheelShow:Z

    .line 2940
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mImageStyleShow:Z

    .line 2941
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    .line 2942
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 2943
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsFrontDualFlashUiShow:Z

    .line 2944
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    .line 2945
    invoke-direct {p0, v1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    .line 2946
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 3041
    :sswitch_15d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 3037
    :sswitch_165
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 3005
    :sswitch_16d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateVideoRecordStopStatus(Z)V

    .line 3006
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    .line 3007
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 3008
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_17b

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    goto :goto_17d

    :cond_17b
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 3009
    :goto_17d
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    return-void

    .line 2975
    :sswitch_183
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    .line 2976
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    if-ne p1, v2, :cond_194

    .line 2977
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_190

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    goto :goto_192

    :cond_190
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    :goto_192
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 2979
    :cond_194
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    if-eqz p1, :cond_1d2

    .line 2980
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    .line 2981
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2820
    :sswitch_19f
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomWheelEnable(Z)V

    .line 2821
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    if-nez p1, :cond_1d2

    .line 2822
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2817
    :sswitch_1aa
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomWheelEnable(Z)V

    return-void

    .line 2929
    :sswitch_1ae
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz p1, :cond_1b5

    .line 2930
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomViewCanShow(Z)V

    .line 2932
    :cond_1b5
    invoke-virtual {p0, v1, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomWheel(ZZ)V

    .line 2933
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 3049
    :sswitch_1bc
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateInstantViewBG()V

    return-void

    .line 3024
    :sswitch_1c0
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setZoomWheelEnable(Z)V

    .line 3025
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    return-void

    .line 3044
    :sswitch_1c7
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_1d2

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    if-nez p1, :cond_1d2

    .line 3045
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setZoomUIState(Z)V

    :cond_1d2
    :goto_1d2
    return-void

    nop

    :sswitch_data_1d4
    .sparse-switch
        0x0 -> :sswitch_1c7
        0x2 -> :sswitch_1c0
        0x5 -> :sswitch_1bc
        0xc -> :sswitch_1ae
        0xd -> :sswitch_1aa
        0xe -> :sswitch_19f
        0xf -> :sswitch_183
        0x10 -> :sswitch_16d
        0x11 -> :sswitch_165
        0x12 -> :sswitch_15d
        0x1c -> :sswitch_13e
        0x1d -> :sswitch_11c
        0x1e -> :sswitch_108
        0x20 -> :sswitch_102
        0x25 -> :sswitch_1ae
        0x2e -> :sswitch_ee
        0x2f -> :sswitch_1ae
        0x3a -> :sswitch_e3
        0x48 -> :sswitch_dc
        0x49 -> :sswitch_d1
        0x4a -> :sswitch_dc
        0x4c -> :sswitch_c2
        0x4d -> :sswitch_165
        0x4e -> :sswitch_15d
        0x50 -> :sswitch_11c
        0x51 -> :sswitch_b9
        0x52 -> :sswitch_183
        0x53 -> :sswitch_16d
        0x5d -> :sswitch_b3
        0x5e -> :sswitch_1ae
        0x5f -> :sswitch_11c
        0x6d -> :sswitch_16d
        0x8e -> :sswitch_af
        0x90 -> :sswitch_183
        0x91 -> :sswitch_16d
        0xaa -> :sswitch_ac
        0xab -> :sswitch_a9
        0xcf -> :sswitch_11c
        0xd0 -> :sswitch_93
        0xe0 -> :sswitch_90
        0xe1 -> :sswitch_8d
        0xe8 -> :sswitch_85
        0xf2 -> :sswitch_7c
        0xf3 -> :sswitch_95
        0x106 -> :sswitch_b9
        0x10b -> :sswitch_11c
        0x119 -> :sswitch_64
        0x11a -> :sswitch_57
        0x11b -> :sswitch_4d
        0x11d -> :sswitch_41
        0x11e -> :sswitch_3b
        0x129 -> :sswitch_e3
        0x138 -> :sswitch_35
        0x139 -> :sswitch_2f
        0x140 -> :sswitch_29
        0x141 -> :sswitch_23
        0x142 -> :sswitch_4d
        0x143 -> :sswitch_1c
        0x144 -> :sswitch_12
    .end sparse-switch
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 1628
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->consumeBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged()V
    .registers 5

    .line 597
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_5b

    .line 598
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onConfigurationChanged()V

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousCameraId:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 601
    invoke-static {v0, v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x1

    .line 603
    :goto_15
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onConfigurationChanged mCurrentConverterState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRangeConverter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v1, :cond_5b

    .line 605
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->inThisRange(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;I)Z

    move-result v1

    if-nez v1, :cond_5b

    if-eqz v0, :cond_5b

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->enter(IZ)Z

    :cond_5b
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onMainCameraSelected()V
    .registers 2

    const/4 v0, 0x4

    .line 2337
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void
.end method

.method public onSatCameraSelected()V
    .registers 1

    return-void
.end method

.method onScaleBegin()V
    .registers 3

    .line 2081
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onScaleBegin]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2082
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 2083
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateSmoothStatus(I)V

    :cond_f
    const/4 v0, 0x1

    .line 2085
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    .line 2086
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2087
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    .line 2088
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideModePicker()V

    return-void
.end method

.method onScaleEnd()V
    .registers 3

    .line 2093
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onScaleEnd]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2094
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    const/4 v0, 0x1

    .line 2095
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    .line 2096
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeOutZoomRatioTips()V

    .line 2097
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showModePicker()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 7

    .line 2109
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 2110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 2111
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 2113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 2116
    :cond_14
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 2118
    :goto_1d
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v1, :cond_27

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    if-eqz v2, :cond_27

    .line 2119
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    :cond_27
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v2, p1, :cond_2e

    .line 2122
    invoke-virtual {p0, v3, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2124
    :cond_2e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->translateZoomBarIfNeed()V

    .line 2125
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    .line 2126
    invoke-virtual {p0, p2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setLayoutPadding(ZZ)V

    .line 2127
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onScreenFormChanged mCurrentConverterState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentConverterState:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mProgress:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mRangeConverter:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

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

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isReachPreviewBoundary(FF)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "onScroll point is out of preview rect!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    goto :goto_1e

    .line 562
    :cond_1c
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    :goto_1e
    return p2
.end method

.method onSlipCancel()V
    .registers 3

    .line 2508
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2509
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onSlipCancel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTeleCameraSelected()V
    .registers 2

    const/4 v0, 0x3

    .line 2341
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void
.end method

.method public onWideCameraSelected()V
    .registers 2

    const/4 v0, 0x2

    .line 2333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic resetRecordingUI()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->resetRecordingUI()V

    return-void
.end method

.method public resetupConverterState(Z)V
    .registers 2

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->resetupConverterState(Z)V

    return-void
.end method

.method protected sendRecordZoomUIState(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1931
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1932
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method

.method setCurrentCameraId()V
    .registers 4

    .line 1938
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz v1, :cond_17

    .line 1939
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentIsWhichCamera(ZZZ)V

    :cond_17
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 1542
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 1543
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_16

    .line 1544
    const-string v0, "key_fold_switch_preview"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSwitchPreviewValue:Ljava/lang/String;

    .line 1545
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSetting, KEY_FOLD_SWITCH_PREVIEW value:"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected setLayoutPadding(ZZ)V
    .registers 16

    .line 373
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p2

    if-nez p2, :cond_11

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setLayoutPadding: getEntryRootView() == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 378
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eqz p2, :cond_12a

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eq p2, v0, :cond_12a

    .line 379
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p2}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 380
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 382
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

    .line 384
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    add-int/2addr v3, v4

    .line 385
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 387
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 390
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 391
    iget v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_79

    .line 393
    sget v7, Lcom/transsion/camera/R$dimen;->hover_support_hover_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 394
    sget v9, Lcom/transsion/camera/R$dimen;->hover_support_hover_padding_bottom:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 395
    iget-boolean v10, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz v10, :cond_6f

    sget v3, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom_hover_vlog:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_76

    .line 396
    :cond_6f
    sget v10, Lcom/transsion/camera/R$dimen;->graduation_hover_bottom_offset:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v3, v10

    :goto_76
    move v10, v9

    move v9, v1

    goto :goto_89

    .line 398
    :cond_79
    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v7

    .line 399
    sget v9, Lcom/transsion/camera/R$dimen;->hover_support_normal_padding_top:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move v10, v9

    move v9, v7

    move v7, v10

    move v10, v1

    .line 402
    :goto_89
    iget v11, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    if-ltz v11, :cond_8f

    add-int/2addr v7, v11

    goto :goto_90

    :cond_8f
    sub-int/2addr v10, v11

    .line 408
    :goto_90
    iget v11, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v11, v8, :cond_a5

    const-string v8, "on"

    iget-object v11, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 409
    sget v7, Lcom/transsion/camera/R$dimen;->hover_support_hover_preview_on_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move v10, v1

    :cond_a5
    if-eqz p1, :cond_f6

    .line 413
    const-string p1, "topPadding"

    filled-new-array {p2, v9}, [I

    move-result-object p2

    .line 414
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 415
    const-string p2, "bottomPadding"

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 416
    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 417
    const-string v2, "zoomRatioTopPadding"

    filled-new-array {v4, v7}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 419
    const-string v3, "zoomRatioBottomPadding"

    filled-new-array {v5, v10}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 421
    filled-new-array {p1, p2, v2, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 423
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2ad

    .line 435
    :cond_f6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutPadding mTopPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBottomPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOffsetPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v9, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 438
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v7, v1, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2ad

    .line 441
    :cond_12a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLayoutPadding mTopPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBottomPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOffsetPadding: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 443
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2a5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2a5

    const/4 p2, 0x5

    if-ne p1, p2, :cond_167

    goto/16 :goto_2a5

    .line 448
    :cond_167
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 450
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 451
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    .line 452
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemExtraPadding:I

    add-int/2addr v4, v5

    .line 453
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 454
    invoke-static {v5, v6, v7, v8}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v9

    if-eqz v9, :cond_1b9

    iget-boolean v9, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v9, :cond_1b9

    .line 455
    iget-object v9, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->zoom_ui4_pro_normal_zoom_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    goto :goto_1ba

    :cond_1b9
    move v9, v1

    .line 456
    :goto_1ba
    iget-object v10, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v10

    iget v11, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    add-int/2addr v10, v11

    .line 457
    iget-boolean v11, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v11, :cond_1d1

    iget-object v11, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->pro_graduation_bottom_margin_offset:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int/2addr v9, v11

    goto :goto_1d4

    :cond_1d1
    iget v9, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomViewMargin:I

    neg-int v9, v9

    :goto_1d4
    add-int/2addr v10, v9

    .line 458
    iget v9, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v9, v3, :cond_1db

    .line 459
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 461
    :cond_1db
    iget v9, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v9, v4, :cond_1e1

    .line 462
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 465
    :cond_1e1
    iget v9, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v9, v3, :cond_1e7

    .line 466
    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 468
    :cond_1e7
    iget v9, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v9, v10, :cond_1ed

    .line 469
    iput v10, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 472
    :cond_1ed
    iget v9, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    if-gtz v9, :cond_20d

    iget-boolean v9, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v9, :cond_1f6

    goto :goto_20d

    .line 485
    :cond_1f6
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 486
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantBottomPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_249

    .line 473
    :cond_20d
    :goto_20d
    invoke-static {v5, v6, v7, v8}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v5

    if-eqz v5, :cond_239

    .line 474
    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProOffsetfor11:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v3, v5

    .line 475
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v5

    .line 476
    iput v10, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v5

    .line 477
    iput v3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 478
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProOffsetfor11:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 479
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProOffsetfor11:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_249

    .line 481
    :cond_239
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 482
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 489
    :goto_249
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantViewRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isOffsetChanged()Z

    move-result p1

    if-eqz p1, :cond_2aa

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz p1, :cond_29f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_29f

    .line 494
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevOffsetPadding:I

    .line 495
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    .line 496
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomItemWidth(I)I

    move-result p1

    .line 497
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomItemWidth(I)I

    move-result p2

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    if-eq p2, v2, :cond_291

    .line 498
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemWidth(II)V

    .line 500
    :cond_291
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemStype(I)V

    .line 501
    monitor-enter p0

    .line 502
    :try_start_297
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItems()V

    .line 504
    monitor-exit p0

    goto :goto_2a1

    :catchall_29c
    move-exception p1

    monitor-exit p0
    :try_end_29e
    .catchall {:try_start_297 .. :try_end_29e} :catchall_29c

    throw p1

    .line 506
    :cond_29f
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevOffsetPadding:I

    .line 508
    :goto_2a1
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    goto :goto_2aa

    .line 446
    :cond_2a5
    :goto_2a5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 513
    :cond_2aa
    :goto_2aa
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomRatioLayout()V

    .line 515
    :goto_2ad
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, p1, :cond_2ec

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/app/common/R$font;->roboto_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 517
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 518
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 519
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 520
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$dimen;->flip_current_zoom_ratio_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 519
    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$dimen;->flip_current_zoom_ratio_text_size:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 521
    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 524
    :cond_2ec
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 527
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_center_zoom_textsize:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 526
    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$dimen;->new_camera_center_zoom_textsize:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 528
    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected setOrientation(IZ)V
    .registers 5

    .line 2026
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_c

    .line 2027
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 2033
    :cond_c
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p2, :cond_13

    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    goto :goto_14

    :cond_13
    move p2, p1

    .line 2035
    :goto_14
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 2036
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    if-eqz v0, :cond_1f

    .line 2037
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 2039
    :cond_1f
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mbSegmentDragging:Z

    if-eqz v0, :cond_25

    .line 2040
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mFreeShotDraggingOrientation:I

    .line 2043
    :cond_25
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemOrientation(I)V

    .line 2044
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateInstantItemOrientation(I)V

    .line 2045
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    return-void
.end method

.method protected setSeekBarEnable(Z)V
    .registers 2

    .line 2102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_7

    .line 2103
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setStartVideoRecording(Z)V
    .registers 5

    .line 355
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    if-eqz v0, :cond_14

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomUIViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatioGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 359
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->noZoomNeedWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 360
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    goto :goto_21

    .line 362
    :cond_1e
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemRecordingStatus(Z)V

    .line 364
    :goto_21
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->translateZoomBarIfNeed()V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz v0, :cond_39

    .line 366
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentIsSatCamera()Z

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setStartVideoRecording(ZIZ)V

    :cond_39
    return-void
.end method

.method setZoomViewCanShow(Z)V
    .registers 5

    .line 2796
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    .line 2797
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setZoomViewCanShow] conflictUIShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mActionZoomWheelBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScaling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 2800
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 2801
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void

    .line 2802
    :cond_37
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-nez p1, :cond_44

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    if-eqz p1, :cond_40

    goto :goto_44

    .line 2805
    :cond_40
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void

    .line 2803
    :cond_44
    :goto_44
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 569
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setupEntryView()V

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_2a

    .line 571
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 572
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/InstantZoomItemDecoration;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantItemPadding:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantItemWidth:I

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 575
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->getCurrentInstantZoomList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->instantZoomChanged(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateInstantZoomList(Ljava/util/List;)V

    .line 578
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupEntryView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->getCurrentInstantZoomList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showZoomIndicator()V
    .registers 3

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showZoomIndicator]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1257
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->showZoomItemIndicator(Landroid/view/View;)V

    return-void
.end method

.method showZoomItemView()V
    .registers 2

    const/4 v0, 0x0

    .line 1560
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    return-void
.end method

.method protected showZoomWheel(ZZ)V
    .registers 10

    .line 1828
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->isButtonDown()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 1829
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    .line 1830
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[showZoomWheel] mSmoothZoomView.getVisibility():"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1833
    :cond_2f
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-eqz v0, :cond_35

    if-nez p1, :cond_50

    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    .line 1834
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8b

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    if-nez v0, :cond_8b

    .line 1835
    :cond_50
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    .line 1836
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showZoomWheel] mIsCapturing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isNeedShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mSmoothZoomView.getAlpha():"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    .line 1837
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mIsZoomWheelShow:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1836
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1840
    :cond_8b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideCenterZoomView()V

    .line 1841
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showZoomUI, isNeedShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsCapturing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1842
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isNeedShowWheelOrZoomItem()Z

    move-result v0

    .line 1843
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_bd

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMovieMode:Z

    if-eqz v3, :cond_bd

    move v3, v4

    goto :goto_be

    :cond_bd
    move v3, v2

    :goto_be
    const-wide/16 v5, 0x64

    if-eqz p1, :cond_ff

    .line 1845
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d4

    if-eqz v3, :cond_d4

    .line 1846
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1849
    :cond_d4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e1

    .line 1850
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsZoomWheelShow:Z

    if-eqz p1, :cond_e1

    goto :goto_139

    .line 1854
    :cond_e1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->translateZoomBarIfNeed()V

    if-eqz v0, :cond_139

    if-nez v3, :cond_139

    const/16 p1, 0x19

    .line 1856
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1857
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    .line 1858
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1859
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 p2, 0x6a

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1860
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    invoke-virtual {p0, p2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_ff
    if-eqz v0, :cond_11a

    .line 1865
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    const/16 p1, 0x1a

    .line 1866
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 1867
    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->fadeOutZoomWheel(ZZ)V

    .line 1868
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_139

    .line 1870
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1874
    :cond_11a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_139

    .line 1875
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mGraduationContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    .line 1878
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    if-eqz p1, :cond_139

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsVlogHomepage:Z

    if-eqz p1, :cond_139

    .line 1879
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    :cond_139
    :goto_139
    return-void
.end method

.method public bridge synthetic startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 2198
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2199
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mAddList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUIHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2203
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mIsConflictUIShow:Z

    const/4 v0, 0x1

    .line 2204
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSimulateDownEvent:Z

    .line 2205
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->unInit()V

    .line 2206
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->unInit()V

    return-void
.end method

.method uninitZoomUI()V
    .registers 2

    .line 1580
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1582
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomIndicatorAndBackground()V

    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .registers 5

    .line 614
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    .line 615
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    const/4 v1, 0x4

    if-eq p1, v1, :cond_14

    .line 618
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->findMinZoomValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinZoomValue:I

    .line 620
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSmoothZoomStyle()Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->initDiscBean(Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;)V

    .line 621
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mProgressValueConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;->-$$Nest$msetupConverterState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$ProgressValueConverter;)V

    .line 622
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz p1, :cond_2f

    .line 623
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    goto :goto_33

    .line 625
    :cond_2f
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    .line 627
    :goto_33
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 628
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemByInfos(ZLjava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->getCurrentInstantZoomList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->instantZoomChanged(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateInstantZoomList(Ljava/util/List;)V

    .line 633
    :cond_5e
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    .line 634
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModeConfig mProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInstantZoomList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    .line 635
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getSmoothZoomStyle():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSmoothZoomStyle()Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 634
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 537
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVlogCorrectOrientation:I

    goto :goto_e

    :cond_c
    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    .line 539
    :goto_e
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mVideoRecording:Z

    if-eqz v2, :cond_19

    .line 540
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRecordingOrientation:I

    .line 542
    :cond_19
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateGradationRootLayout(II)V

    .line 543
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

    .line 544
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->setLayoutPadding(ZZ)V

    :cond_34
    return-void
.end method

.method updateProgressByZoom()V
    .registers 4

    .line 1945
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1946
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    return-void

    .line 1947
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1948
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-nez v0, :cond_2e

    .line 1949
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;

    const/16 v1, 0x1770

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$WideRangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    .line 1951
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    return-void

    .line 1953
    :cond_39
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    return-void
.end method

.method updateRangeState()V
    .registers 1

    .line 1718
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateCurrentConverterState()V

    .line 1719
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateProgressByZoom()V

    return-void
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method updateSmoothStatus(I)V
    .registers 3

    .line 1008
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    .line 1009
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_13

    .line 1010
    const-string v0, "key_smooth_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method protected updateVideoRecordStopStatus(Z)V
    .registers 4

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 1566
    :goto_5
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1567
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1568
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateVideoRecordStopStatus(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method protected updateZoomItemByInfos(ZLjava/lang/String;)V
    .registers 6

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateZoomItemByInfos] modeSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mZoomItemType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 675
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mModeSwitching:Z

    .line 676
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mUpdateCameraId:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 678
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_64

    .line 679
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 680
    sget-object p2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 681
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    .line 682
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomWheel(ZZ)V

    .line 683
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    .line 684
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->uninitZoomUI()V

    .line 685
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomIndicator(Z)V

    .line 687
    :cond_64
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isOffsetChanged()Z

    move-result p2

    if-nez p2, :cond_bc

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->isZoomStyleChanged()Z

    move-result p2

    if-eqz p2, :cond_71

    goto :goto_bc

    .line 692
    :cond_71
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    if-nez p2, :cond_7a

    if-nez p1, :cond_7a

    .line 693
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showZoomItemRoot(Z)V

    .line 696
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz p1, :cond_a6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_a6

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomItemWidth(I)I

    move-result p1

    .line 698
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getZoomItemWidth(I)I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    if-eq p2, v0, :cond_b8

    .line 699
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItemWidth(II)V

    goto :goto_b8

    .line 702
    :cond_a6
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 703
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevOffsetPadding:I

    .line 704
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mPreTotalWith:I

    .line 705
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomIndicator(Z)V

    .line 706
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomIndicatorAndBackground()V

    .line 707
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    .line 709
    :cond_b8
    :goto_b8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateZoomItems()V

    return-void

    .line 688
    :cond_bc
    :goto_bc
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomIndicator(Z)V

    .line 689
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->hideZoomItemRoot(ZZ)V

    .line 690
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomStyleChanged:Z

    return-void
.end method

.method protected updateZoomValueToUI(Z)V
    .registers 5

    if-eqz p1, :cond_15

    .line 1960
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object p1

    .line 1961
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1962
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mStrokeCurrentZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1963
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->showCenterZoomView()V

    .line 1965
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 1966
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1967
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_67

    .line 1968
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1969
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_dd

    .line 1970
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1971
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto/16 :goto_dd

    .line 1973
    :cond_3b
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1974
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_dd

    .line 1975
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1976
    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto/16 :goto_dd

    .line 1978
    :cond_53
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1979
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-nez p1, :cond_5f

    goto/16 :goto_f0

    .line 1982
    :cond_5f
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 1983
    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto/16 :goto_dd

    .line 1985
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-eqz v0, :cond_dd

    .line 1986
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1987
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mRangeConverter:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 1988
    :cond_7a
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result v0

    if-eqz v0, :cond_87

    goto :goto_d5

    .line 1990
    :cond_87
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingMainToWIdeCamera()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1991
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 1992
    :cond_96
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 1993
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    if-nez p1, :cond_a1

    goto :goto_f0

    .line 1996
    :cond_a1
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 1998
    :cond_a8
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1999
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mWideRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 2000
    :cond_b7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2001
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 2002
    :cond_c6
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2003
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mTeleRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    goto :goto_dd

    .line 1989
    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mNormalRange:Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4$RangeConverterState;->valueToProgress(I)I

    move-result p1

    .line 2007
    :cond_dd
    :goto_dd
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setSelectValue(IZ)V

    .line 2008
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mSmoothZoomView:Lcom/transsion/camera/app/ui/widget/SmoothZoomView;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getZoomRatio(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/SmoothZoomView;->setCurrentZoomRatio(Ljava/lang/String;Z)V

    .line 2009
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    :cond_f0
    :goto_f0
    return-void
.end method

.method updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V
    .registers 9

    .line 1210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/CameraRepository;->getDeviceZoomRatio(Ljava/lang/String;)F

    move-result v0

    .line 1212
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isTeleCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1213
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p2

    goto :goto_23

    .line 1214
    :cond_13
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isWideCamera(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 1215
    div-int/lit16 p2, p1, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getEquivalentZoomValue(I)I

    move-result p2

    goto :goto_23

    :cond_22
    move p2, p1

    .line 1217
    :goto_23
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v1, :cond_3d

    .line 1218
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1219
    div-int/lit16 p2, p1, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->getEquivalentZoomValue(I)I

    move-result p2

    goto :goto_3d

    .line 1220
    :cond_36
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result v1

    if-eqz v1, :cond_3d

    move p2, p1

    .line 1224
    :cond_3d
    :goto_3d
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_49

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_49

    goto :goto_4a

    :cond_49
    move p1, p2

    :goto_4a
    const/4 p2, 0x0

    if-eqz p4, :cond_72

    .line 1227
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->zoomItemNeedPadding()Z

    move-result p4

    if-eqz p4, :cond_72

    move p4, p2

    .line 1228
    :goto_54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_72

    .line 1229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mShowList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1230
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->getMinZoomRatio()I

    move-result v0

    if-ne v0, p1, :cond_6f

    .line 1231
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemIndicator:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->scaleIndicatorView(Landroid/view/View;)V

    :cond_6f
    add-int/lit8 p4, p4, 0x1

    goto :goto_54

    .line 1235
    :cond_72
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->updateIndicatorPosition(I)V

    .line 1236
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p4}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->getCurrentZoomValue()I

    move-result p4

    if-eq p1, p4, :cond_82

    .line 1237
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mInstantAdapter:Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;

    invoke-virtual {p4, p1, p5}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomAdapter;->updateCurrentZoomValue(IZ)V

    .line 1239
    :cond_82
    :goto_82
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_9b

    .line 1240
    iget-object p4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI4;->mZoomItemRoot:Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;

    .line 1241
    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateModeSwitching(Z)V

    .line 1242
    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;->updateZoomValue(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_82

    :cond_9b
    return-void
.end method
