.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;,
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;
    }
.end annotation


# static fields
.field private static final INIT_DURATION:J = 0x0L

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_TEXT_SPEC:Ljava/lang/String; = "  /  "


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mContext:Landroid/content/Context;

.field private mCorrectOrientation:I

.field private mCurrentPage:I

.field private mFirstPreviewArrived:Z

.field private mFixedOrientation:I

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsPreViewSwitchOn:Z

.field private mIsScaleZooming:Z

.field private mIsTouchZooming:Z

.field private mListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mOrientation:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

.field private mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mRecordingDoneButton:Landroid/widget/Button;

.field private mRecordingDoneLayout:Landroid/widget/FrameLayout;

.field private mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mRecordingStartTime:J

.field private mRecordingTime:Landroid/widget/TextView;

.field private mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private mSegmentPlay:Z

.field private final mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mShutterLayout:Landroid/widget/FrameLayout;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

.field private mVideoBottomRoot:Landroid/widget/FrameLayout;

.field private mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

.field private mbActive:Z

.field private mbRecording:Z

.field private mbSegmentDragging:Z


# direct methods
.method public static synthetic $r8$lambda$G0-aEguIaPfd8ITLW-Ybrnpt9EY(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onDoneClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-gzghjRk1T5ZxyTfGb8AlvEQkc(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->lambda$onFirstSteadyFrame$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$THdQRvRrfjdUXuYZRqB2RPK7Yww(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onShutterButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cO19NTpOAeGNadffdZsqu0hFTLY(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->lambda$updateLayoutParams$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hk6SGCiYJDUFJ7PqNxsO6DHCyGw(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onCameraSwitchClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jjiKjd3Z7QkYJDug66LIi1J9kQQ(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->lambda$init$0(Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSwitch(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsScaleZooming(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_VideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 10

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingStartTime:J

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 72
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCurrentPage:I

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsPreViewSwitchOn:Z

    .line 113
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    .line 115
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    .line 116
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    .line 117
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 119
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 120
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->registerKeysToMonitor()V

    .line 122
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_58

    .line 123
    const-string p1, "com.transsion.camera.feature.mode.vlog.ui.common.VlogVideoUI5Ext"

    new-array p2, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    :cond_58
    return-void
.end method

.method private calculatePanelPaddingHeight(I)I
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->calculatePanelPaddingHeight(Lcom/transsion/camera/app/common/IAppUI;I)I

    move-result p0

    return p0
.end method

.method private initBottomBar()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_bottom_bar_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_shutter_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterLayout:Landroid/widget/FrameLayout;

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_shutter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_camera_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_progress_circle_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_progress_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_done_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneLayout:Landroid/widget/FrameLayout;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_done_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x3f6b851f    # 0.92f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private initRecordView()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_time_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_recording_time_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTime:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->createView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrame$2()V
    .registers 2

    const/4 v0, 0x1

    .line 674
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParams$1(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 370
    const-string v0, "bottomMargin"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    const-string p1, "entryBottomMargin"

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    const-string p1, "recordingTimeTopMargin"

    invoke-virtual {p4, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onCameraSwitchClick(Landroid/view/View;)V
    .registers 3

    .line 447
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 450
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->switchCamera(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 452
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->startAnimation()V

    return-void
.end method

.method private onDoneClick(Landroid/view/View;)V
    .registers 3

    .line 456
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_15

    .line 459
    :cond_7
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDoneClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;

    if-eqz p0, :cond_15

    .line 461
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;->onDoneClick()V

    :cond_15
    :goto_15
    return-void
.end method

.method private onShutterButtonClick(Landroid/view/View;)V
    .registers 2

    .line 435
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 436
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterButtonClick not allowed because of event collision"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;

    if-eqz p0, :cond_15

    .line 442
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;->onVideoShutterClick()V

    :cond_15
    return-void
.end method

.method private setOnClickListener()V
    .registers 3

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->registerTouchingView(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneButton:Landroid/widget/Button;

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private updateLayoutParams(Z)V
    .registers 20

    move-object/from16 v0, p0

    .line 186
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 187
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_d

    goto/16 :goto_2f7

    .line 190
    :cond_d
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    .line 192
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    if-eqz v3, :cond_28

    .line 194
    :cond_26
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFixedOrientation:I

    .line 197
    :cond_28
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    .line 198
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 202
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v6

    .line 204
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 210
    iget v12, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 211
    iget v13, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v14, 0x0

    .line 213
    invoke-virtual {v7, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 214
    invoke-virtual {v8, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 215
    invoke-virtual {v9, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 216
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 217
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 218
    invoke-virtual {v10, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 220
    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v15, v14, :cond_82

    .line 222
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "video_recordingtime_origin_height"

    invoke-static {v15, v14}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 224
    :cond_82
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "top_bar_item_size"

    invoke-static {v14, v4}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 226
    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    move/from16 v17, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_1d1

    const/16 v3, 0x5a

    const/16 v4, 0x15

    const/16 v5, 0x13

    if-eq v2, v3, :cond_179

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_132

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_ea

    .line 279
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_0_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 280
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x35

    .line 281
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 282
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 283
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_0_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x51

    .line 285
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_done_button_margin_bottom_expand:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x31

    .line 288
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_expand_0_top_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 291
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recording_time_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1bf

    .line 261
    :cond_ea
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_90_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 262
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x55

    .line 263
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_90_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 265
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 267
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 268
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_done_button_margin_bottom_expand:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const v3, 0x800015

    .line 270
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_expand_margin_end:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 273
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recording_time_expand_90_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1bf

    .line 245
    :cond_132
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_0_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 246
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x53

    .line 247
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 249
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_0_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x31

    .line 251
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 252
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_done_button_margin_bottom_expand:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x51

    .line 254
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_expand_0_top_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 257
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recording_time_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1bf

    .line 229
    :cond_179
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_90_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 230
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x33

    .line 231
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_90_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 233
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_bottom_panel_expand_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 235
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 236
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_done_button_margin_bottom_expand:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v3, 0x800013

    .line 238
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 239
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_expand_margin_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 241
    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recording_time_expand_90_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 295
    :goto_1bf
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 296
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v2, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 297
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2df

    :cond_1d1
    const/16 v5, 0x51

    .line 303
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v16, v6

    const/16 v6, 0x31

    .line 304
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, -0x1

    .line 307
    iput v5, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, 0x2

    if-nez v14, :cond_221

    .line 310
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1f7

    const/4 v6, -0x2

    .line 311
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 312
    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_recording_button_margin_bottom_normal:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move/from16 v17, v6

    goto :goto_1f9

    .line 314
    :cond_1f7
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 318
    :goto_1f9
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget v14, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_record_done_button_bottom_margin:I

    .line 319
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 318
    invoke-static {v6, v3, v14}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I

    move-result v3

    const v6, 0x800015

    .line 321
    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 322
    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_normal_margin_end:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-ge v15, v4, :cond_21c

    sub-int/2addr v4, v15

    .line 325
    div-int/2addr v4, v5

    add-int v6, v16, v4

    :cond_219
    :goto_219
    move/from16 v4, v17

    goto :goto_24f

    :cond_21c
    sub-int/2addr v15, v4

    .line 327
    div-int/2addr v15, v5

    sub-int v6, v16, v15

    goto :goto_219

    :cond_221
    const/4 v6, -0x2

    .line 330
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 332
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_recording_button_margin_bottom_hover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 333
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_record_done_button_bottom_margin_hover:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 334
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recordingtime_margin_top_hover:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v4, 0x800015

    .line 336
    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_camera_switcher_ui_normal_margin_end:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 339
    iget-boolean v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsPreViewSwitchOn:Z

    if-eqz v4, :cond_219

    .line 340
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_recordingtime_margin_preview_on_top_hover:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_219

    .line 344
    :goto_24f
    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCurrentPage:I

    if-ne v14, v5, :cond_265

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_25e

    .line 346
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_277

    :cond_25e
    const/4 v15, 0x0

    .line 348
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v15, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_277

    :cond_265
    const/16 v5, 0xb4

    const/4 v15, 0x0

    .line 351
    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCorrectOrientation:I

    if-eqz v2, :cond_26e

    if-ne v2, v5, :cond_270

    .line 353
    :cond_26e
    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    .line 356
    :cond_270
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v14, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 357
    iput v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCorrectOrientation:I

    .line 360
    :goto_277
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5, v15, v15}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 362
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2ca

    if-eqz p1, :cond_2ca

    .line 363
    const-string v5, "bottomMargin"

    filled-new-array {v11, v4}, [I

    move-result-object v4

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 364
    const-string v5, "entryBottomMargin"

    filled-new-array {v12, v3}, [I

    move-result-object v3

    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 365
    const-string v5, "recordingTimeTopMargin"

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 366
    filled-new-array {v4, v3, v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 367
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v7, v8, v10}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2df

    .line 379
    :cond_2ca
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 380
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 382
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 384
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    :goto_2df
    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateShutterPanelRootPadding()V

    .line 388
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v3, :cond_2f7

    .line 391
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z

    :cond_2f7
    :goto_2f7
    return-void
.end method

.method private updateShutterPanelRootPadding()V
    .registers 5

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_43

    .line 399
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 403
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->calculatePanelPaddingHeight(I)I

    move-result v0

    .line 404
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2c

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2c
    if-nez v1, :cond_43

    if-ltz v0, :cond_3a

    .line 409
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 411
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoBottomRoot:Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_43
    :goto_43
    return-void
.end method

.method private updateViewOrientation(Z)V
    .registers 5

    .line 470
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    if-eqz v1, :cond_15

    :cond_e
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 473
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFixedOrientation:I

    .line 476
    :cond_15
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbActive:Z

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public exit()V
    .registers 2

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbActive:Z

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideRecordingUI()V
    .registers 3

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v1, Lcom/transsion/camera/feature/vlog/R$drawable;->shutter_button_vlog_video_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    if-eqz v0, :cond_1c

    const/16 v1, 0x64

    .line 724
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateViewOrientation(Z)V

    .line 727
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    return-void
.end method

.method public init()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 151
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_video_record_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->initRecordView()V

    .line 154
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->initBottomBar()V

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setOnClickListener()V

    .line 157
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateViewOrientation(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_fc

    const/4 v1, 0x1

    if-eq p1, v1, :cond_e8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_fc

    const/4 v2, 0x3

    if-eq p1, v2, :cond_e8

    const/4 v2, 0x6

    if-eq p1, v2, :cond_fc

    const/4 v2, 0x7

    if-eq p1, v2, :cond_e8

    const/16 v2, 0x17

    if-eq p1, v2, :cond_e2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_d0

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_fc

    const/16 v2, 0x145

    if-eq p1, v2, :cond_c8

    const/16 v2, 0x146

    if-eq p1, v2, :cond_be

    const/16 v2, 0x2719

    const/16 v3, 0x8

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x271a

    if-eq p1, v2, :cond_a8

    const/16 v2, 0x271d

    if-eq p1, v2, :cond_a2

    const/16 v2, 0x271e

    if-eq p1, v2, :cond_9c

    const/16 v2, 0x2723

    if-eq p1, v2, :cond_88

    const/16 v2, 0x2724

    if-eq p1, v2, :cond_7b

    packed-switch p1, :pswitch_data_100

    goto/16 :goto_fb

    .line 612
    :pswitch_45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSegmentPlay:Z

    .line 613
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showOrHideCameraSwitch(Z)V

    .line 614
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 607
    :pswitch_4e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSegmentPlay:Z

    .line 608
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showOrHideCameraSwitch(Z)V

    .line 609
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 622
    :pswitch_57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbRecording:Z

    .line 623
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    .line 624
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSegmentPlay:Z

    if-nez p1, :cond_62

    .line 625
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showOrHideCameraSwitch(Z)V

    .line 627
    :cond_62
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fb

    .line 628
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 572
    :pswitch_6a
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    .line 573
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 617
    :pswitch_70
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbRecording:Z

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 619
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->showOrHideCameraSwitch(Z)V

    return-void

    .line 591
    :cond_7b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    .line 592
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    if-ne p1, v1, :cond_e8

    .line 593
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    .line 594
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateViewOrientation(Z)V

    goto :goto_e8

    .line 576
    :cond_88
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    .line 577
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    if-ne p1, v1, :cond_98

    .line 578
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFixedOrientation:I

    .line 579
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    .line 580
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateViewOrientation(Z)V

    .line 582
    :cond_98
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 641
    :cond_9c
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsPreViewSwitchOn:Z

    .line 642
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    return-void

    .line 637
    :cond_a2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsPreViewSwitchOn:Z

    .line 638
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    return-void

    .line 645
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 632
    :cond_b3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 566
    :cond_be
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    .line 567
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fb

    .line 568
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 561
    :cond_c8
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    .line 562
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    .line 563
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 555
    :cond_d0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    .line 556
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    if-nez p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    if-nez p1, :cond_fb

    .line 557
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 551
    :cond_e2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    .line 552
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    .line 599
    :cond_e8
    :goto_e8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    if-nez p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    if-nez p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fb

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    if-nez p1, :cond_fb

    .line 603
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    :cond_fb
    :goto_fb
    return-void

    .line 588
    :cond_fc
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setEnable(Z)V

    return-void

    :pswitch_data_100
    .packed-switch 0x2712
        :pswitch_70
        :pswitch_6a
        :pswitch_57
        :pswitch_4e
        :pswitch_45
    .end packed-switch
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    const/4 p1, 0x0

    .line 680
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    :cond_6
    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 4

    .line 664
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame, mbRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTouchZooming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsScaleZooming :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mbSegmentDragging :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 668
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    if-eqz v0, :cond_55

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbRecording:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    if-nez v1, :cond_55

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbSegmentDragging:Z

    if-nez v1, :cond_55

    .line 674
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_55
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 418
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mScreenFormType:I

    .line 419
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 508
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 509
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsTouchZooming:Z

    .line 510
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mIsScaleZooming:Z

    .line 512
    :cond_b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFirstPreviewArrived:Z

    return-void
.end method

.method protected registerKeysToMonitor()V
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 538
    const-string v1, "key_zoom_limit_monitor"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 492
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_32

    if-nez p1, :cond_32

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->clear(I)V

    :cond_32
    return-void
.end method

.method public showOrHideCameraSwitch(Z)V
    .registers 2

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showRecordingUI(J)V
    .registers 10

    .line 708
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mFixedOrientation:I

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTimeRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressViewRoot:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/UIUtils;->formatTimeToMinAndSec(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  /  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3a98

    .line 712
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->formatTimeToMinAndSec(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    invoke-virtual {v0, v4, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->updateTotalDuration(J)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->updateProgress(J)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->updateMinRecordingTime(J)V

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mShutterButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p1, Lcom/transsion/camera/feature/vlog/R$drawable;->shutter_button_vlog_recording:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public startAnimation()V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 690
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 692
    sget v0, Lcom/transsion/camera/feature/vlog/R$drawable;->anim_vlog_camera_switcher:I

    if-lez v0, :cond_23

    .line 694
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCameraSwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 697
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :cond_23
    return-void
.end method

.method public startRecordingTime()V
    .registers 3

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingStartTime:J

    const/4 v0, 0x1

    .line 732
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateRecordingTime(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 519
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    .line 520
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 523
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->unRegisterKeysToMonitor()V

    return-void
.end method

.method protected unRegisterKeysToMonitor()V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 544
    const-string v1, "key_zoom_limit_monitor"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2

    .line 655
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mCurrentPage:I

    if-nez p1, :cond_8

    .line 657
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->exit()V

    return-void

    .line 659
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->enter()V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 4

    .line 483
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 486
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mOrientation:I

    const/4 p1, 0x1

    .line 487
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    .line 488
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mbActive:Z

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateViewOrientation(Z)V

    return-void
.end method

.method public updateRecordingTime(Z)V
    .registers 8

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 737
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mRecordingTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/UIUtils;->formatTimeToMinAndSec(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  /  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3a98

    .line 738
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->formatTimeToMinAndSec(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mProgressView:Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/RecorderProgressView;->updateProgress(J)V

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$UIHandler;

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_38

    const-wide/16 v0, 0x0

    goto :goto_3a

    :cond_38
    const-wide/16 v0, 0x28

    :goto_3a
    const/16 p1, 0x64

    .line 742
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3f
    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateLayoutParams(Z)V

    :cond_6
    return-void
.end method
