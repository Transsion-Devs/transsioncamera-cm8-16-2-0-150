.class public abstract Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;,
        Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;
    }
.end annotation


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mCanShowRecordingUI:Z

.field protected final mContext:Landroid/content/Context;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitOrientation:I

.field private mIsActivityPaused:Z

.field private mIsRecording:Z

.field private mLimitedRecorderTime:J

.field protected volatile mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

.field private mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;

.field protected mOrientation:I

.field protected mParentViewGroup:Landroid/view/ViewGroup;

.field private mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mRecordingDurationBeforePause:J

.field protected mRecordingOrientation:I

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingStartTime:J

.field private mRecordingTimeContainer:Landroid/widget/LinearLayout;

.field protected mRecordingTimeView:Landroid/widget/TextView;

.field protected mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected mRecordingTotalDuration:J

.field private volatile mRelease:Z

.field private mRemainTipsShow:Z

.field protected mResources:Landroid/content/res/Resources;

.field private mRootResourceId:I

.field protected mScreenFormType:I

.field private mShowRecordingTimeViewIndicator:Z

.field protected mShowUI:Z

.field private mSwitchPreviewValue:Ljava/lang/String;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTotalRecorderTime:J

.field private mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field private final mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

.field private mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

.field private mZoomScaling:Z


# direct methods
.method public static synthetic $r8$lambda$6iaXyVKhxOaN_LJR135feOsS0bs(Landroid/view/View;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 749
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->createView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RUjPj6x_9NtEDyQVHsm1u8u7XbE(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->lambda$updateVideoPowerSavingUIVisibility$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XtKK9-WNMjvFgaz8vIqdhlVCXo0(Landroid/os/Handler;)V
    .registers 2

    const/16 v0, 0x64

    .line 636
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YQvG4GGfmzLAVLV119THSe5pzds(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->lambda$updateVideoPowerSavingUIVisibility$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$aOgpmFw_pG38izV47xsZXfJfJWE(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->lambda$hideRecordingTimeUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRelease(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$monUIStateChanged(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingTime(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTime()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 74
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    .line 75
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    const/4 v3, 0x0

    .line 78
    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 80
    sget-object v3, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 97
    new-instance v3, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    const/4 v3, -0x1

    .line 99
    iput v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 100
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    .line 102
    iput v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 111
    const-string v3, "off"

    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    .line 414
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTotalRecorderTime:J

    const-wide/16 v1, -0x1

    .line 417
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLimitedRecorderTime:J

    .line 418
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRemainTipsShow:Z

    .line 419
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mZoomScaling:Z

    .line 575
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    .line 119
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 120
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 123
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRootResourceId:I

    .line 124
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 125
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 126
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 127
    new-instance p1, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 128
    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->createVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-void
.end method

.method private calculateRecordDuration()V
    .registers 9

    .line 506
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_b

    .line 507
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    goto :goto_14

    .line 509
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    .line 512
    :goto_14
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLimitedRecorderTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/32 v6, 0x668a0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_34

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRemainTipsShow:Z

    if-nez v4, :cond_34

    sub-long/2addr v0, v6

    .line 513
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRemainDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 514
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRemainTipsShow:Z

    .line 517
    :cond_34
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLimitedRecorderTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_47

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_47

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;

    if-eqz v0, :cond_47

    .line 519
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;->onRecordingLimited()V

    .line 522
    :cond_47
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTotalRecorderTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_5d

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_5d

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;

    if-eqz v0, :cond_5d

    .line 524
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;->onRecordingTimeFull()V

    .line 528
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[calculateRecordDuration] mRecordingTotalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , mTotalRecorderTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTotalRecorderTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 4

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 750
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] - "

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRemainDuration(J)Ljava/lang/String;
    .registers 4

    long-to-int p0, p1

    .line 494
    div-int/lit16 p0, p0, 0x3e8

    .line 495
    rem-int/lit8 p1, p0, 0x3c

    .line 496
    div-int/lit8 p2, p0, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    .line 497
    div-int/lit16 p0, p0, 0xe10

    if-lez p0, :cond_26

    .line 499
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d:%02d:%02d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 501
    :cond_26
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideRecordingTimeUI()V
    .registers 4

    .line 605
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    const-string v1, "hideRecordingTimeUI() called"

    if-eqz v0, :cond_15

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 608
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_23

    goto :goto_55

    .line 613
    :cond_23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_39

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 617
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_43
    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    .line 625
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4e

    .line 626
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 629
    :cond_4e
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    if-eqz v0, :cond_55

    const/4 v0, -0x1

    .line 630
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    :cond_55
    :goto_55
    return-void
.end method

.method private hideRecordingUI()V
    .registers 2

    .line 598
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 601
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    return-void
.end method

.method private initPowerSavingViewIfNeeded()V
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    if-nez v0, :cond_25

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$id;->camera_app_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 679
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->video_power_saving:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 680
    sget v1, Lcom/transsion/camera/R$id;->power_saving_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    :cond_25
    return-void
.end method

.method private isPowerSavingUIShowing()Z
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

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

.method private synthetic lambda$hideRecordingTimeUI$0()V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateVideoPowerSavingUIVisibility$2(Z)V
    .registers 7

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    const-string v3, "on"

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 656
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 655
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayout(IIZ)V

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showTime(JZ)V

    if-nez p1, :cond_25

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x13e

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$updateVideoPowerSavingUIVisibility$3()V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showTime(JZ)V

    return-void
.end method

.method private onShowRecordingUI(Z)V
    .registers 7

    .line 690
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 691
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    :cond_a
    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    .line 694
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_16

    move v1, v0

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    .line 695
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowRecordingUI() called with: initRecordingTime = ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    if-eqz v1, :cond_52

    .line 700
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    if-eqz v1, :cond_50

    goto :goto_58

    :cond_50
    move v0, v3

    goto :goto_58

    .line 702
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    :goto_58
    if-eqz v0, :cond_79

    .line 705
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInitOrientation:I

    .line 706
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeBarLayout()V

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_73

    .line 709
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    .line 713
    :cond_79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 715
    :goto_7f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    .line 720
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    .line 725
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    .line 726
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeOrientation(I)V

    return-void
.end method

.method private onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 9

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onUIStateChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_a8

    goto :goto_9a

    .line 230
    :pswitch_2e
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 231
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 224
    :pswitch_36
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 226
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 211
    :pswitch_47
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_57

    .line 212
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTime()V

    return-void

    .line 215
    :cond_57
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq p1, p2, :cond_5f

    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 217
    :cond_5f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 219
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 220
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingUI(Z)V

    return-void

    .line 201
    :pswitch_70
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingStartTime:J

    .line 203
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingDurationBeforePause:J

    .line 204
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRecordingUI()V

    .line 205
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xcc

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_9a
    :goto_9a
    return-void

    .line 196
    :pswitch_9b
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideRecordingUI()V

    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_9b
        :pswitch_70
        :pswitch_47
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method private orientationChange(I)V
    .registers 6

    .line 279
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInitOrientation:I

    const/16 v1, 0x10e

    const/4 v2, 0x0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_19

    if-ne p1, v1, :cond_11

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_11
    if-ne p1, v0, :cond_3b

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_19
    if-ne v0, v1, :cond_2b

    if-ne p1, v3, :cond_23

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_23
    if-ne p1, v0, :cond_3b

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_2b
    if-eqz p1, :cond_3c

    const/16 v0, 0x168

    if-ne p1, v0, :cond_32

    goto :goto_3c

    :cond_32
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_3b

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_3b
    return-void

    .line 293
    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method private showRecordingUI()V
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showRecordingUI] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isActivityPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 642
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    if-eqz v0, :cond_27

    return-void

    .line 645
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 646
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->ringScreenLightUpdateUI()V

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showRecordingUI] - "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordingTime()V
    .registers 6

    .line 475
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_d

    goto :goto_50

    .line 478
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->calculateRecordDuration()V

    .line 479
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_21

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 483
    :cond_21
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showTime(JZ)V

    .line 484
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowRecordingTimeViewIndicator:Z

    .line 485
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v3, v4, :cond_3a

    if-nez v2, :cond_3a

    goto :goto_40

    .line 488
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45

    .line 486
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :goto_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_50
    :goto_50
    return-void
.end method

.method private updateRecordingUI(Z)V
    .registers 2

    .line 739
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method


# virtual methods
.method public createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 810
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 811
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 812
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 813
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 814
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method protected createVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;
    .registers 2

    .line 985
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    .line 988
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.app.ui.mode.video.CommonVideoUI5Ext"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-object p0
.end method

.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 757
    sget v1, Lcom/transsion/camera/R$id;->recording_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 758
    sget v2, Lcom/transsion/camera/R$id;->recording_time_group:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 759
    sget v2, Lcom/transsion/camera/R$id;->recording_time_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    .line 760
    sget v2, Lcom/transsion/camera/R$id;->recording_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v1
.end method

.method public getRecordingTotalDuration()J
    .registers 3

    .line 769
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    return-wide v0
.end method

.method protected getUIState()Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method protected getVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;
    .registers 1

    .line 992
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-object p0
.end method

.method public getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-object p0
.end method

.method protected hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideInfo()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 4

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 137
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    :cond_11
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 977
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    return-void

    :cond_d
    const/4 p1, 0x1

    .line 974
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsActivityPaused:Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected onHideRecordingUI()V
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideRecordingTimeUI()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2c

    goto :goto_5e

    :cond_2c
    const/4 v1, 0x6

    if-ne v0, v1, :cond_42

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_57

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_38

    goto :goto_57

    .line 253
    :cond_38
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_57

    .line 255
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->orientationChange(I)V

    return-void

    :cond_42
    const/4 v1, 0x7

    if-ne v1, v0, :cond_58

    .line 258
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_57

    .line 260
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v0, 0x0

    if-nez p0, :cond_52

    move p0, v0

    goto :goto_54

    :cond_52
    const/16 p0, 0xb4

    :goto_54
    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_57
    :goto_57
    return-void

    .line 263
    :cond_58
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 264
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeOrientation(I)V

    return-void

    .line 246
    :cond_5e
    :goto_5e
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 311
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    .line 313
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mShowUI:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    if-eqz v0, :cond_1a

    .line 314
    :cond_a
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    .line 315
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_1a

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 316
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->tempHideRecordingUI()V

    .line 320
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateRecordingTimeBarLayout()V

    .line 322
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->isPowerSavingUIShowing()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 323
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    const-string v1, "on"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 324
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 323
    invoke-virtual {p2, p1, v0, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayout(IIZ)V

    :cond_32
    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 2

    const/4 v0, 0x1

    .line 686
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI(Z)V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 2

    return-void
.end method

.method public restoreRecordingUI()V
    .registers 3

    .line 588
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_11

    .line 589
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->isPopupShowing()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    goto :goto_13

    .line 591
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    .line 593
    :goto_13
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    if-nez v0, :cond_18

    return-void

    :cond_18
    const/4 v0, 0x0

    .line 594
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI(Z)V

    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 1

    return-void
.end method

.method public sendNotification(Landroid/content/Context;)V
    .registers 7

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->video_save_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 778
    const-string v3, "notification_id"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 780
    new-instance p0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/transsion/camera/R$drawable;->btn_shutter_video_notification_saved:I

    .line 781
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->camera_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 783
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->camera_video_saved_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 785
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    const-string v2, "android.intent.category.APP_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 787
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 788
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 789
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 790
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6e

    .line 792
    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7c

    :cond_6e
    const/4 v4, 0x2

    if-ne v2, v4, :cond_77

    .line 794
    const-string v2, "com.google.android.apps.photosgo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7c

    .line 796
    :cond_77
    const-string v2, "com.gallery20"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    :goto_7c
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 800
    invoke-virtual {p1, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    .line 802
    invoke-virtual {p1, v2, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 803
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 804
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 805
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setLimitRecorderTime(J)V
    .registers 3

    .line 426
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLimitedRecorderTime:J

    const/4 p1, 0x0

    .line 427
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRemainTipsShow:Z

    return-void
.end method

.method public setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-void
.end method

.method public setOnRecordingTimeFullListener(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$OnRecordingTimeFullListener;

    return-void
.end method

.method public setPause(Z)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPause    isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_21

    const/16 v0, 0x64

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_29

    const/4 p1, 0x4

    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void
.end method

.method public setRecordingOrientation(I)V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecordingOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 441
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    :cond_27
    return-void
.end method

.method public setScreenFormType(II)V
    .registers 4

    .line 151
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v0, 0x6

    if-ne v0, p1, :cond_10

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_f

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_f

    .line 154
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    :cond_f
    return-void

    .line 157
    :cond_10
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    return-void
.end method

.method public setZoomState(Z)V
    .registers 2

    .line 431
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mZoomScaling:Z

    if-eqz p1, :cond_9

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    :cond_9
    return-void
.end method

.method protected showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 391
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mZoomScaling:Z

    if-eqz p1, :cond_5

    return-void

    .line 394
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showInfo(I)V
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_55

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_55

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3e

    const/4 v0, 0x7

    if-eq p1, v0, :cond_30

    const/4 p1, 0x0

    goto :goto_66

    .line 380
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 376
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_recording_storage_full:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 373
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_recording_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 370
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_reach_size_limit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 366
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_bad_performance_auto_stop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 386
    :goto_66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showRemainingTime(Ljava/lang/String;)V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->video_remaining_recording_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .registers 8

    .line 544
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    sub-long/2addr p1, v0

    .line 547
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->isPowerSavingUIShowing()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateRecordingTimeText(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_26

    .line 553
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method public tempHideRecordingUI()V
    .registers 2

    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mCanShowRecordingUI:Z

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_8

    return-void

    .line 580
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideRecordingTimeUI()V

    return-void
.end method

.method public unInitVideoUI()V
    .registers 4

    .line 339
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    const-string/jumbo v1, "unInitVideoUI() called"

    if-eqz v0, :cond_16

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 342
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v0, :cond_22

    .line 345
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->unInit()V

    .line 347
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 349
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 351
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRelease:Z

    .line 352
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    if-eqz v1, :cond_47

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 354
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 355
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    :cond_47
    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .registers 2

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 731
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    .line 732
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRecordingStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mIsRecording:Z

    return-void
.end method

.method protected updateRecordingTimeBarLayout()V
    .registers 17

    move-object/from16 v0, p0

    .line 818
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_7

    goto :goto_21

    .line 821
    :cond_7
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 822
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-eq v2, v3, :cond_11

    if-ne v2, v4, :cond_13

    .line 825
    :cond_11
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 828
    :cond_13
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v5, :cond_22

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    .line 829
    invoke-interface {v5, v6, v7, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_21
    return-void

    .line 833
    :cond_22
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 834
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_37

    .line 836
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->video_recordingtime_origin_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 838
    :cond_37
    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const/4 v8, 0x0

    .line 840
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v9, 0x13

    const/16 v10, 0x51

    const/16 v11, 0x15

    const/16 v12, 0x31

    const/16 v13, 0x10e

    const/16 v14, 0xb4

    const/16 v15, 0x5a

    if-ne v2, v3, :cond_a1

    if-eq v1, v15, :cond_80

    if-eq v1, v14, :cond_73

    if-eq v1, v13, :cond_66

    .line 858
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 859
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8c

    .line 852
    :cond_66
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 853
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_8c

    .line 848
    :cond_73
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 849
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_expand_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8c

    .line 844
    :cond_80
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 845
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_expand_90_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 862
    :goto_8c
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v1, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 863
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_a1
    const/4 v3, 0x3

    .line 864
    const-string v4, "on"

    const/4 v8, 0x2

    if-eqz v2, :cond_1e2

    if-eq v2, v8, :cond_1e2

    if-ne v2, v3, :cond_ad

    goto/16 :goto_1e2

    :cond_ad
    const/4 v3, 0x6

    if-ne v2, v3, :cond_138

    .line 890
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_ba

    if-eq v3, v15, :cond_ba

    if-eq v3, v13, :cond_ba

    goto :goto_bb

    :cond_ba
    move v3, v1

    :goto_bb
    if-eq v3, v15, :cond_e8

    if-eq v3, v14, :cond_db

    if-eq v3, v13, :cond_ce

    .line 912
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 913
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_f4

    .line 906
    :cond_ce
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 907
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f4

    .line 902
    :cond_db
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 903
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_f4

    .line 898
    :cond_e8
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 899
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_f4
    if-eq v1, v15, :cond_10e

    if-ne v1, v13, :cond_f9

    goto :goto_10e

    .line 920
    :cond_f9
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_text_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 921
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_text_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_122

    .line 917
    :cond_10e
    :goto_10e
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_text_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 918
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_recording_time_text_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 923
    :goto_122
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 924
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_recording_time_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 925
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_138
    const/4 v3, 0x4

    if-ne v2, v3, :cond_16f

    .line 927
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 928
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 929
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 930
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 932
    :cond_159
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 933
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_16f
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1a6

    .line 935
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 936
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 937
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 938
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 940
    :cond_190
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 941
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_1a6
    const/4 v3, 0x7

    if-ne v2, v3, :cond_238

    if-eq v1, v15, :cond_1bc

    if-eq v1, v14, :cond_1bc

    if-eq v1, v13, :cond_1bc

    .line 954
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 955
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_flip_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1c8

    .line 948
    :cond_1bc
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 949
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_time_flip_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 959
    :goto_1c8
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    if-nez v3, :cond_1cf

    const/4 v14, 0x0

    :cond_1cf
    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 960
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->flip_recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_238

    .line 867
    :cond_1e2
    :goto_1e2
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v2, :cond_208

    if-ne v2, v8, :cond_1e9

    goto :goto_208

    :cond_1e9
    if-ne v2, v3, :cond_21b

    .line 877
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->video_recordingtime_margin_top_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 878
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 879
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_recordingtime_margin_preview_on_top_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    .line 870
    :cond_208
    :goto_208
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v3

    if-ge v6, v7, :cond_216

    sub-int/2addr v7, v6

    .line 872
    div-int/2addr v7, v8

    add-int/2addr v3, v7

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    :cond_216
    sub-int/2addr v6, v7

    .line 874
    div-int/2addr v6, v8

    sub-int/2addr v3, v6

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21b
    :goto_21b
    if-ne v1, v14, :cond_224

    .line 883
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_22a

    :cond_224
    const/4 v4, 0x0

    .line 885
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 887
    :goto_22a
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 962
    :cond_238
    :goto_238
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x7

    if-ne v3, v2, :cond_24e

    .line 965
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_recording_time_container_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void

    .line 967
    :cond_24e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->recording_time_container_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method protected updateRecordingTimeOrientation(I)V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_a

    goto :goto_b

    :cond_a
    move v2, v1

    .line 270
    :goto_b
    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 272
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->isPowerSavingUIShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const-string v2, "on"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 274
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 273
    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;->updateLayout(IIZ)V

    :cond_23
    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateTimeInterval()J
    .registers 5

    .line 564
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, v1, :cond_d

    .line 566
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_d
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_19

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x65

    .line 168
    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    :cond_19
    return-void
.end method

.method public updateVideoPowerSavingUIVisibility(ZZ)V
    .registers 6

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoPowerSavingUIVisibility, visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 653
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initPowerSavingViewIfNeeded()V

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 666
    :cond_2f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->isPowerSavingUIShowing()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x13f

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 669
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPowerSavingView:Lcom/transsion/camera/app/ui/mode/video/VideoPowerSavingView;

    new-instance p2, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_48
    return-void
.end method
