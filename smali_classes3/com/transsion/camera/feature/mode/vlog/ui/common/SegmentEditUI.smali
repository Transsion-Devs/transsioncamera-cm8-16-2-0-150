.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;
    }
.end annotation


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0xc8

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDebug:Z = false


# instance fields
.field private mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDeleteReshootButton:Landroid/widget/Button;

.field private mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

.field private mFirstInScreenFormType:I

.field private mFirstInSegmentEditUI:Z

.field private mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mLastScreenFormType:I

.field private mLastTimePos:I

.field private volatile mNeedPauseAfterRenderStart:Z

.field private mNormalTopBarHeight:I

.field private final mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mPaused:Z

.field private mPlayButtonRoot:Landroid/widget/FrameLayout;

.field private mPlayButtonView:Landroid/widget/ImageView;

.field private mPlayLayout:Landroid/widget/FrameLayout;

.field private final mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

.field private mPlayPauseByScroll:Z

.field private mPlayRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mPlaySegmentIndex:I

.field private mPlayerClickView:Landroid/view/View;

.field private mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

.field private mPlaying:Z

.field private mRenderStart:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private mSecondEditor:Z

.field private mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

.field private mStartTimePos:I

.field private mToolbarRoot:Landroid/widget/FrameLayout;

.field private mVideoCover:Landroid/view/View;

.field private mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

.field private mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

.field private mbActive:Z


# direct methods
.method public static synthetic $r8$lambda$1Snlur3ffLP8VW-sV3KcBI-rybs(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onToolbarBackClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6UTbvs10TvGmHEUkmthnSlUu6Jg(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onPlayClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wcQ8dzm-T9vxsgipJzW3GMbTAs(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onReshootClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqjQeJqj24eB8MyexcigsC6EVEM(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->lambda$updateFrameViewParams$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kCHHkQIMitYb9BAXRvrg1bJ_arA(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onConfirmClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w8abZQ9gquply_6nvRsud458Fus(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 266
    const-string v0, "leftMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 267
    const-string/jumbo v1, "topMargin"

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 268
    const-string v2, "rightMargin"

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 269
    const-string v3, "bottomMargin"

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 270
    const-string/jumbo v4, "width"

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 271
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 272
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 273
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedPauseAfterRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayPauseByScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectFrameView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoCover(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoCover:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVlogMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedPauseAfterRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayPauseByScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRenderStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mpausePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->pausePlayIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnable(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePlayViewIcon(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updatePlayViewIcon(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_SegmentEdit"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;II)V

    .line 111
    iput-object p4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

    const/4 p0, 0x1

    .line 112
    iput p0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    .line 113
    iput-boolean p0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;II)V
    .registers 7

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPaused:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayPauseByScroll:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInSegmentEditUI:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRenderStart:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    .line 91
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaySegmentIndex:I

    .line 92
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    .line 93
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mStartTimePos:I

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    .line 96
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastScreenFormType:I

    .line 97
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInScreenFormType:I

    .line 938
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 120
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    .line 121
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    .line 122
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    if-eqz p2, :cond_39

    .line 124
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    :cond_39
    return-void
.end method

.method private getBottomBarHeight()I
    .registers 2

    .line 891
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 892
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result p0

    return p0

    .line 895
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_16

    .line 896
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getBottomBarHeight()I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private getExtraMarginValue()I
    .registers 4

    .line 503
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getBottomBarHeight()I

    move-result v0

    .line 504
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getNavigationBarHeight()I

    move-result v1

    .line 505
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getShutterPanelPaddingHeight()I

    move-result v2

    .line 506
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getShutterButtonHeight()I

    move-result p0

    sub-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p0

    return v0
.end method

.method private getNavigationBarHeight()I
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 904
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result p0

    return p0

    .line 907
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_16

    .line 908
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getNavigationBarHeight()I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private getShutterButtonHeight()I
    .registers 2

    .line 927
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 928
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterButtonHeight()I

    move-result p0

    return p0

    .line 931
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_16

    .line 932
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getShutterButtonHeight()I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private getShutterPanelPaddingHeight()I
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 916
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getShutterPanelPaddingHeight()I

    move-result p0

    return p0

    .line 919
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_16

    .line 920
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getShutterPanelPaddingHeight()I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private getToolBarOriginPaddingHeight()I
    .registers 2

    .line 867
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 868
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0

    .line 871
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_16

    .line 872
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private getTopRegionHeight()I
    .registers 3

    .line 879
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_12

    .line 880
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight(D)I

    move-result p0

    return p0

    .line 883
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    if-eqz v0, :cond_1f

    .line 884
    check-cast p0, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IReviewCameraActivityCallback;->getTopRegionHeight()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private initPlayer()V
    .registers 4

    .line 180
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    if-eqz v2, :cond_b

    const-string v2, "editor"

    goto :goto_d

    :cond_b
    const-string v2, "edit"

    :goto_d
    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->display_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->display_view_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoCover:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setScaleType(Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->onScreenFormChanged(I)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->segment_play_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->display_view_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->display_view_click_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->segment_play_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->segment_play_view_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->frame_view_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->frame_select_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->delete_and_reshoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_top_tool_bar_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->editor_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 176
    sget p0, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_top_confirm:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private synthetic lambda$updateFrameViewParams$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 319
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onConfirmClick(Landroid/view/View;)V
    .registers 4

    .line 548
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfirmClick, mbActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 549
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-nez p1, :cond_1d

    goto :goto_38

    .line 553
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->leave()Z

    .line 554
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mStartTimePos:I

    if-eq p1, v0, :cond_38

    .line 555
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaySegmentIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateRefreshState(IZ)V

    .line 556
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaySegmentIndex:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->refreshSourceStartTime(II)V

    :cond_38
    :goto_38
    return-void
.end method

.method private onPlayClick(Landroid/view/View;)V
    .registers 2

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 579
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->pausePlayIfNeed()V

    return-void

    .line 581
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->resumePlay()V

    return-void
.end method

.method private onReshootClick(Landroid/view/View;)V
    .registers 4

    .line 561
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReshootClick, mbActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 562
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-nez p1, :cond_1d

    goto :goto_36

    .line 566
    :cond_1d
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRenderStart:Z

    if-eqz p1, :cond_2a

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->pausePlay()V

    const/4 p1, 0x0

    .line 568
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    goto :goto_2d

    :cond_2a
    const/4 p1, 0x1

    .line 570
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    .line 572
    :goto_2d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

    if-eqz p1, :cond_36

    .line 573
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaySegmentIndex:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;->onDeleteAndReshoot(I)V

    :cond_36
    :goto_36
    return-void
.end method

.method private onToolbarBackClick(Landroid/view/View;)V
    .registers 4

    .line 540
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onToolbarBackClick, mbActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 541
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-nez p1, :cond_1d

    return-void

    .line 544
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->leave()Z

    return-void
.end method

.method private pausePlayIfNeed()V
    .registers 3

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 587
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    .line 588
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->pausePlay()V

    :cond_e
    return-void
.end method

.method private playVideo()V
    .registers 11

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    if-nez v0, :cond_5

    return-void

    .line 695
    :cond_5
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "playVideo, start to play segment video"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->show()V

    .line 698
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateVideoViewTranslation()V

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->setEnabled(Z)V

    .line 701
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    if-nez v0, :cond_41

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 705
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v0

    long-to-int v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 704
    invoke-virtual/range {v2 .. v9}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V

    return-void

    .line 709
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v0

    .line 710
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    if-eqz v2, :cond_53

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v0

    :goto_51
    move-object v2, v0

    goto :goto_63

    :cond_53
    if-ne v0, v1, :cond_5c

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_5c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 713
    :goto_63
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-object v3, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v4

    long-to-int v5, v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 714
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 713
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastTimePos:I

    .line 717
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mStartTimePos:I

    .line 718
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 719
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 720
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 721
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v0

    new-instance v8, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;

    invoke-direct {v8, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v0

    .line 718
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->initFrames(Ljava/lang/String;JJILcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private refreshSourceStartTime(II)V
    .registers 9

    int-to-long v0, p1

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_1f

    .line 808
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 811
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

    invoke-interface {p0, v0, v1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;->onRefreshSourceStartTime(JI)V

    return-void
.end method

.method private resumePlay()V
    .registers 3

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 594
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaying:Z

    const/4 v1, 0x0

    .line 595
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayPauseByScroll:Z

    .line 596
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->resumePlay()V

    :cond_11
    return-void
.end method

.method public static runUpdatePlayLayoutHoverAnimator(IIIIIIIIIILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 16

    .line 258
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 259
    const-string v1, "leftMargin"

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-static {v1, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 260
    const-string/jumbo p1, "topMargin"

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 261
    const-string p2, "rightMargin"

    filled-new-array {p4, p5}, [I

    move-result-object p3

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 262
    const-string p3, "bottomMargin"

    filled-new-array {p6, p7}, [I

    move-result-object p4

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 263
    const-string/jumbo p4, "width"

    filled-new-array {p8, p9}, [I

    move-result-object p5

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 264
    filled-new-array {p0, p1, p2, p3, p4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 265
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda5;

    invoke-direct {p1, p11, p10}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda5;-><init>(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 p1, 0x190

    .line 275
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setClickListener()V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f6b851f    # 0.92f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    invoke-static {p0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private setEnable(Z)V
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private stopPlay()V
    .registers 1

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    if-eqz p0, :cond_7

    .line 602
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->stopPlay()V

    :cond_7
    return-void
.end method

.method private updateDisplayLayoutParams()V
    .registers 19

    move-object/from16 v0, p0

    .line 188
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_8

    goto/16 :goto_109

    .line 192
    :cond_8
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getTopRegionHeight()I

    move-result v9

    .line 194
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 196
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v3, v5

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    mul-double/2addr v3, v6

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    div-double/2addr v3, v10

    double-to-int v1, v3

    sub-int v1, v2, v1

    sub-int v4, v1, v9

    .line 199
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, 0x0

    .line 202
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 203
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 204
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_6e

    .line 205
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    invoke-virtual {v2, v3, v14}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 206
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 208
    :cond_6e
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 209
    div-int/lit8 v2, v2, 0x2

    move-wide v15, v6

    int-to-double v6, v2

    mul-double/2addr v6, v10

    div-double/2addr v6, v15

    double-to-int v7, v6

    sub-int v3, v5, v7

    .line 211
    div-int/lit8 v3, v3, 0x2

    .line 212
    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 213
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 214
    iget v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_9e

    .line 215
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    .line 216
    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 217
    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 218
    iput v7, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_9b
    move v6, v2

    move-object v2, v1

    goto :goto_a4

    .line 220
    :cond_9e
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v6, v14}, Landroid/view/View;->setClickable(Z)V

    goto :goto_9b

    .line 222
    :goto_a4
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez v1, :cond_aa

    move v10, v8

    goto :goto_ab

    :cond_aa
    move v10, v14

    .line 223
    :goto_ab
    iget v8, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastScreenFormType:I

    if-eq v8, v1, :cond_bf

    if-eqz v10, :cond_b4

    move v8, v3

    move v3, v9

    goto :goto_bb

    .line 224
    :cond_b4
    iget v8, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNormalTopBarHeight:I

    move/from16 v17, v8

    move v8, v3

    move/from16 v3, v17

    :goto_bb
    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updatePlayLayoutHoverAnimator(ILandroid/widget/FrameLayout$LayoutParams;IIIIII)V

    goto :goto_d5

    :cond_bf
    move v8, v3

    if-eqz v10, :cond_c4

    move v3, v14

    goto :goto_c5

    :cond_c4
    move v3, v8

    :goto_c5
    if-eqz v10, :cond_c9

    move v1, v9

    goto :goto_ca

    :cond_c9
    move v1, v14

    :goto_ca
    if-eqz v10, :cond_cd

    move v6, v4

    .line 227
    :cond_cd
    invoke-virtual {v2, v3, v1, v14, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_d5
    if-eqz v10, :cond_d8

    goto :goto_d9

    :cond_d8
    move v9, v14

    :goto_d9
    if-eqz v10, :cond_dc

    goto :goto_dd

    :cond_dc
    move v4, v14

    .line 231
    :goto_dd
    invoke-virtual {v12, v14, v9, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 232
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    iput v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mLastScreenFormType:I

    return-void

    :cond_ea
    move-object v2, v1

    .line 234
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez v1, :cond_109

    .line 235
    invoke-virtual {v2, v14, v9, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 236
    invoke-virtual {v12, v14, v9, v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 237
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v14, v14}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 238
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setClickable(Z)V

    :cond_109
    :goto_109
    return-void
.end method

.method private updateFrameViewParams(Z)V
    .registers 11

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    if-nez v0, :cond_a

    return-void

    .line 286
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getNavigationBarHeight()I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    .line 292
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 294
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 297
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 300
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_56

    .line 301
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 302
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_frame_view_bottom_margin_expaned:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 304
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_frame_resume_view_bottom_margin_expaned:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    invoke-virtual {p1, v0, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_ef

    .line 307
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 308
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_70

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_control_root_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_82

    .line 311
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_reshoot_button_bottom_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getExtraMarginValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_82
    if-eqz p1, :cond_aa

    .line 315
    filled-new-array {v6, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_ac

    .line 324
    :cond_aa
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 326
    :goto_ac
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_frame_margin_bottom_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_ef

    .line 327
    :cond_bb
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez p1, :cond_ef

    .line 328
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_frame_view_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getExtraMarginValue()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_reshoot_button_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v1, p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getExtraMarginValue()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 337
    :cond_ef
    :goto_ef
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFrameViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->updateLayoutParas(II)V

    return-void
.end method

.method private updateImageOrientation()V
    .registers 6

    .line 439
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 440
    :goto_9
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v3, :cond_16

    if-eqz v0, :cond_12

    .line 441
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    invoke-virtual {v3, v4, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 443
    :cond_16
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v3, :cond_23

    if-eqz v0, :cond_1f

    .line 444
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    invoke-virtual {v3, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 446
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    if-nez v0, :cond_28

    return-void

    .line 449
    :cond_28
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-ne v1, v2, :cond_32

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updatePlayButtonViewParams()V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    .line 459
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 461
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    const/16 v0, 0x11

    .line 462
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3f

    :cond_21
    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    const/16 v2, 0x51

    .line 464
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 465
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_edit_play_button_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3f

    :cond_31
    if-nez v2, :cond_3f

    const/16 v2, 0x31

    .line 467
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 468
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_edit_play_button_top_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 470
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePlayViewIcon(Z)V
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_9

    .line 535
    sget p1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_play:I

    goto :goto_b

    :cond_9
    sget p1, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_stop:I

    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    return-void
.end method

.method private updateTopViewParams(Z)V
    .registers 16

    .line 345
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    if-nez p1, :cond_5

    return-void

    .line 349
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 350
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getToolBarOriginPaddingHeight()I

    move-result v0

    .line 351
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_horizontal_padding_tb_hover:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 355
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    .line 356
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 358
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v7, 0x1

    const/16 v8, 0x50

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/16 v11, 0x30

    const/4 v12, -0x1

    const/4 v13, -0x2

    if-ne v6, v7, :cond_da

    .line 359
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    if-eqz v0, :cond_b8

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_96

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_73

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_50

    goto/16 :goto_121

    .line 385
    :cond_50
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 387
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 388
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 392
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    .line 393
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 394
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 391
    invoke-virtual {v0, v5, v1, v6, p1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_121

    .line 373
    :cond_73
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 375
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 376
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 381
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 382
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 379
    invoke-virtual {v0, v1, v5, v6, p1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_121

    .line 361
    :cond_96
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 362
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 363
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 364
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 365
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 368
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 370
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 367
    invoke-virtual {v0, v1, v6, v5, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_121

    .line 397
    :cond_b8
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 398
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 400
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 404
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 405
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 403
    invoke-virtual {v0, v1, v6, p1, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_121

    .line 410
    :cond_da
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 411
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-ne v6, v10, :cond_f6

    .line 412
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 413
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_height_margin_bottom_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_121

    .line 416
    :cond_f6
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 417
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 418
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_121

    .line 421
    :cond_102
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez v1, :cond_121

    .line 422
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 423
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 424
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 425
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 428
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_margin_size:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_margin_size:I

    .line 430
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 428
    invoke-virtual {v1, v6, v0, p1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    :cond_121
    :goto_121
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateVideoViewTranslation()V
    .registers 6

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_97

    .line 478
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_76

    if-nez v0, :cond_29

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setTranslationY(I)V

    return-void

    .line 484
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_player_vertical_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 485
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInSegmentEditUI:Z

    if-eqz v1, :cond_48

    .line 486
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInScreenFormType:I

    .line 487
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    if-nez v1, :cond_43

    neg-int v0, v0

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    invoke-virtual {v3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setTranslationY(I)V

    goto :goto_73

    .line 489
    :cond_48
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInScreenFormType:I

    if-nez v1, :cond_54

    .line 490
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_52

    goto :goto_59

    :cond_52
    move v0, v2

    goto :goto_59

    .line 491
    :cond_54
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez v1, :cond_52

    neg-int v0, v0

    .line 492
    :goto_59
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 494
    :goto_73
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInSegmentEditUI:Z

    return-void

    .line 495
    :cond_76
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-nez v1, :cond_90

    .line 496
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    if-ne v0, v3, :cond_8c

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_player_vertical_translation:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int v2, p0

    :cond_8c
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setTranslationY(I)V

    return-void

    :cond_90
    if-ne v1, v3, :cond_97

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->setTranslationY(I)V

    :cond_97
    :goto_97
    return-void
.end method


# virtual methods
.method public enter(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V
    .registers 6

    .line 638
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter edit ui, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    .line 640
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mFirstInSegmentEditUI:Z

    .line 641
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVlogMediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 642
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlaySegmentIndex:I

    .line 643
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x0

    if-eqz p1, :cond_3d

    .line 644
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 646
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x12d

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 648
    :cond_3d
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    if-nez p1, :cond_47

    .line 649
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->getTopRegionHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNormalTopBarHeight:I

    .line 651
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerClickView:Landroid/view/View;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, p2

    :goto_50
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 652
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->playVideo()V

    return-void
.end method

.method public exit(Z)V
    .registers 5

    .line 656
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit edit UI, mbActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-nez v0, :cond_25

    goto :goto_59

    :cond_25
    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    .line 661
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRenderStart:Z

    .line 662
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    .line 663
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->stopPlay()V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->unInitFrame()V

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    if-nez v0, :cond_44

    goto :goto_59

    :cond_44
    if-eqz p1, :cond_52

    const/16 p1, 0x2716

    .line 670
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 671
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x11c

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 673
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x12e

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_59
    :goto_59
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 3

    if-nez p1, :cond_f

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    goto :goto_11

    .line 137
    :cond_f
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 139
    :goto_11
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_edit_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->initView()V

    .line 141
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->initPlayer()V

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateDisplayLayoutParams()V

    const/4 p1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateFrameViewParams(Z)V

    .line 144
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateTopViewParams(Z)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updatePlayButtonViewParams()V

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateImageOrientation()V

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setClickListener()V

    return-void
.end method

.method public isActive()Z
    .registers 1

    .line 677
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    return p0
.end method

.method public leave()Z
    .registers 2

    .line 681
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    .line 685
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;->onSegmentEditComplete()V

    return v0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    const/16 v0, 0x2712

    if-eq p1, v0, :cond_e

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    .line 156
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setEnable(Z)V

    return-void

    :cond_e
    const/4 p1, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setEnable(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 v0, 0x1

    .line 862
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    return v0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 512
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mScreenFormType:I

    .line 513
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;->onScreenFormChanged(I)V

    .line 514
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateVideoViewTranslation()V

    .line 515
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateDisplayLayoutParams()V

    const/4 p1, 0x1

    .line 516
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateFrameViewParams(Z)V

    const/4 p1, 0x0

    .line 517
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateTopViewParams(Z)V

    .line 518
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updatePlayButtonViewParams()V

    .line 519
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateImageOrientation()V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    .line 821
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPaused:Z

    .line 822
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->pausePlayIfNeed()V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 816
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPaused:Z

    return-void
.end method

.method public setSegmentListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mEditListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;

    return-void
.end method

.method public show()V
    .registers 6

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v1, v2, :cond_11

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    move v1, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v4

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSecondEditor:Z

    if-nez v1, :cond_1c

    move v3, v4

    :cond_1c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mVideoCover:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayButtonView:Landroid/widget/ImageView;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    .line 854
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mToolbarRoot:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 827
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mbActive:Z

    .line 829
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRenderStart:Z

    .line 830
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mNeedPauseAfterRenderStart:Z

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mSelectFrameView:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->unInitFrame()V

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 837
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->destroy()V

    .line 838
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    .line 841
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 842
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 626
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mDeleteReshootButton:Landroid/widget/Button;

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    if-ne p1, v1, :cond_c

    .line 629
    sget p1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_reshoot_buttom_text:I

    goto :goto_e

    :cond_c
    sget p1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete:I

    .line 628
    :goto_e
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 632
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mConfirmButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_20

    .line 633
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mCurrentPage:I

    if-ne p0, v1, :cond_1b

    const/4 p0, 0x0

    goto :goto_1d

    :cond_1b
    const/16 p0, 0x8

    :goto_1d
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 3

    .line 608
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    if-ne p2, p1, :cond_5

    return-void

    .line 611
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mOrientation:I

    .line 612
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateDisplayLayoutParams()V

    const/4 p1, 0x0

    .line 613
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateFrameViewParams(Z)V

    .line 614
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateTopViewParams(Z)V

    .line 615
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updatePlayButtonViewParams()V

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateImageOrientation()V

    return-void
.end method

.method public updatePlayLayoutHoverAnimator(ILandroid/widget/FrameLayout$LayoutParams;IIIIII)V
    .registers 32

    move-object/from16 v0, p0

    if-nez p1, :cond_1c

    const/4 v5, 0x0

    .line 247
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v11, p2

    move/from16 v3, p3

    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v0, p8

    invoke-static/range {v0 .. v11}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->runUpdatePlayLayoutHoverAnimator(IIIIIIIIIILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    :cond_1c
    const/16 v16, 0x0

    .line 250
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->mPlayLayout:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v22, p2

    move/from16 v13, p3

    move/from16 v17, p4

    move/from16 v19, p5

    move/from16 v18, p6

    move/from16 v20, p7

    move/from16 v12, p8

    move-object/from16 v21, v0

    invoke-static/range {v11 .. v22}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->runUpdatePlayLayoutHoverAnimator(IIIIIIIIIILandroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method
