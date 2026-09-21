.class public abstract Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;,
        Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;
    }
.end annotation


# instance fields
.field private mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mCanShowRecordingUI:Z

.field protected final mContext:Landroid/content/Context;

.field private mDrainageSoundSampleId:I

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

.field private mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;

.field protected mOrientation:I

.field protected mParentViewGroup:Landroid/view/ViewGroup;

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

.field private mSoundLoaded:Z

.field private mSwitchPreviewValue:Ljava/lang/String;

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mTotalRecorderTime:J

.field private mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field private final mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

.field private mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

.field private mZoomScaling:Z


# direct methods
.method public static synthetic $r8$lambda$5NiT82qgcvalIiszW5HvaCC2NOU(Landroid/os/Handler;)V
    .registers 2

    const/16 v0, 0x64

    .line 736
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OjIc4oNIqf8nPMzVJxk0uPVzX2s(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->lambda$hideRecordingTimeUI$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$P2jf31-s960iRuEViiK_LjJmdn4(Landroid/view/View;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V
    .registers 2

    .line 814
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->createView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUxtFXE7J6WBPUDyvzKCIAfWyUk(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->lambda$loadActionSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActionSound(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Lcom/transsion/camera/utils/sound/IActionSound;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDrainageSoundSampleId(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mDrainageSoundSampleId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRelease(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRelease:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$monUIStateChanged(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRecordingTime(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingTime()V

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 13

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowRecordingTimeViewIndicator:Z

    const-wide/16 v1, 0x0

    .line 88
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    .line 89
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    .line 90
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    const/4 v3, 0x0

    .line 93
    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    .line 95
    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 112
    new-instance v4, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRelease:Z

    const/4 v4, -0x1

    .line 114
    iput v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    .line 115
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowUI:Z

    .line 117
    iput v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    .line 126
    const-string v4, "off"

    iput-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    .line 130
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSoundLock:Ljava/lang/Object;

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    .line 502
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTotalRecorderTime:J

    const-wide/16 v1, -0x1

    .line 505
    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLimitedRecorderTime:J

    .line 506
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRemainTipsShow:Z

    .line 507
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mZoomScaling:Z

    .line 671
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mCanShowRecordingUI:Z

    .line 138
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mInflater:Landroid/view/LayoutInflater;

    .line 141
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 142
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRootResourceId:I

    .line 143
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 144
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 145
    iput-object p6, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 146
    new-instance p1, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;

    invoke-direct {p1, p0, v3}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    .line 147
    new-instance p1, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 148
    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->createVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-void
.end method

.method private calculateRecordDuration()V
    .registers 9

    .line 605
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v0, v1, :cond_b

    .line 606
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    goto :goto_14

    .line 608
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    .line 611
    :goto_14
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLimitedRecorderTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    const-wide/32 v6, 0x668a0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_34

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRemainTipsShow:Z

    if-nez v4, :cond_34

    sub-long/2addr v0, v6

    .line 612
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->getRemainDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showRemainingTime(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRemainTipsShow:Z

    .line 616
    :cond_34
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLimitedRecorderTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_47

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_47

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;

    if-eqz v0, :cond_47

    .line 618
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;->onRecordingLimited()V

    .line 621
    :cond_47
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTotalRecorderTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_5d

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_5d

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;

    if-eqz v0, :cond_5d

    .line 623
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;->onRecordingTimeFull()V

    .line 627
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[calculateRecordDuration] mRecordingTotalDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , mTotalRecorderTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTotalRecorderTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 4

    .line 812
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 815
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createView] - "

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRemainDuration(J)Ljava/lang/String;
    .registers 4

    long-to-int p0, p1

    .line 593
    div-int/lit16 p0, p0, 0x3e8

    .line 594
    rem-int/lit8 p1, p0, 0x3c

    .line 595
    div-int/lit8 p2, p0, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    .line 596
    div-int/lit16 p0, p0, 0xe10

    if-lez p0, :cond_26

    .line 598
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

    .line 600
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

    .line 705
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    const-string v1, "hideRecordingTimeUI() called"

    if-eqz v0, :cond_15

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 708
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 710
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_23

    goto :goto_55

    .line 713
    :cond_23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_39

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 717
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_43
    const/4 v0, 0x0

    .line 723
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowUI:Z

    .line 725
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4e

    .line 726
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideInfo()V

    .line 729
    :cond_4e
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mCanShowRecordingUI:Z

    if-eqz v0, :cond_55

    const/4 v0, -0x1

    .line 730
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    :cond_55
    :goto_55
    return-void
.end method

.method private hideRecordingUI()V
    .registers 2

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 701
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onHideRecordingUI()V

    return-void
.end method

.method private synthetic lambda$hideRecordingTimeUI$1()V
    .registers 3

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$loadActionSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 5

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 405
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_f

    :catchall_b
    move-exception p0

    goto :goto_11

    .line 407
    :cond_d
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mDrainageSoundSampleId:I

    .line 409
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    throw p0
.end method

.method private onShowRecordingUI(Z)V
    .registers 7

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 757
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    :cond_a
    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowUI:Z

    .line 760
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_16

    move v1, v0

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingUI(Z)V

    .line 761
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 763
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    if-eqz v1, :cond_52

    .line 766
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mCanShowRecordingUI:Z

    if-eqz v1, :cond_50

    goto :goto_58

    :cond_50
    move v0, v3

    goto :goto_58

    .line 768
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    :goto_58
    if-eqz v0, :cond_79

    .line 771
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mInitOrientation:I

    .line 772
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingTimeBarLayout()V

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_73

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7f

    .line 779
    :cond_79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :goto_7f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    .line 791
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateBottomRootBarLayout(Z)V

    return-void
.end method

.method private onUIStateChanged(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 9

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 216
    sget-object v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_a8

    goto :goto_9a

    .line 253
    :pswitch_2e
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 254
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingUI(Z)V

    return-void

    .line 247
    :pswitch_36
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    .line 249
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingUI(Z)V

    return-void

    .line 234
    :pswitch_47
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_57

    .line 235
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    .line 237
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingTime()V

    return-void

    .line 238
    :cond_57
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq p1, p2, :cond_5f

    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 240
    :cond_5f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    sub-long/2addr p1, v4

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    .line 242
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    .line 243
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingUI(Z)V

    return-void

    .line 224
    :pswitch_70
    sget-object p2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne p1, p2, :cond_9a

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingStartTime:J

    .line 226
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingDurationBeforePause:J

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showRecordingUI()V

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xcc

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_9a
    :goto_9a
    return-void

    .line 219
    :pswitch_9b
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideRecordingUI()V

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

    .line 298
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mInitOrientation:I

    const/16 v1, 0x10e

    const/4 v2, 0x0

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_19

    if-ne p1, v1, :cond_11

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_11
    if-ne p1, v0, :cond_3b

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_19
    if-ne v0, v1, :cond_2b

    if-ne p1, v3, :cond_23

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_23
    if-ne p1, v0, :cond_3b

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

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

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_3b
    return-void

    .line 312
    :cond_3c
    :goto_3c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void
.end method

.method private releaseActionSound()V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v1, :cond_13

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    if-eqz v2, :cond_13

    .line 417
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mDrainageSoundSampleId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1b

    :cond_13
    :goto_13
    const/4 v1, 0x0

    .line 419
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    const/4 v1, 0x0

    .line 420
    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 421
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_11

    throw p0
.end method

.method private showRecordingUI()V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showRecordingUI] + mRecordingRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isActivityPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 742
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    if-eqz v0, :cond_27

    return-void

    .line 745
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onShowRecordingUI()V

    .line 746
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->ringScreenLightUpdateUI()V

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showRecordingUI] - "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRecordingTime()V
    .registers 6

    .line 574
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_d

    goto :goto_50

    .line 577
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->calculateRecordDuration()V

    .line 578
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_21

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 582
    :cond_21
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showTime(JZ)V

    .line 583
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowRecordingTimeViewIndicator:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowRecordingTimeViewIndicator:Z

    .line 584
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mCanShowRecordingUI:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v3, v4, :cond_3a

    if-nez v2, :cond_3a

    goto :goto_40

    .line 587
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45

    .line 585
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :goto_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateTimeInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_50
    :goto_50
    return-void
.end method

.method private updateRecordingUI(Z)V
    .registers 2

    .line 804
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onUpdateRecordingUI(Z)V

    return-void
.end method


# virtual methods
.method public createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 874
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 875
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 876
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 877
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 878
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 p2, 0x0

    .line 879
    invoke-virtual {p0, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 880
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method protected createVideoUIExt()Lcom/transsion/camera/app/common/ui/IVideoUIExt;
    .registers 2

    .line 1051
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    .line 1054
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.app.ui.mode.video.CommonVideoUI5Ext"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    return-object p0
.end method

.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRootResourceId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mParentViewGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 822
    sget v1, Lcom/transsion/camera/R$id;->recording_root_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 823
    sget v2, Lcom/transsion/camera/R$id;->recording_time_group:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 824
    sget v2, Lcom/transsion/camera/R$id;->recording_time_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    .line 825
    sget v2, Lcom/transsion/camera/R$id;->recording_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v1
.end method

.method public getRecordingTotalDuration()J
    .registers 3

    .line 834
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    return-wide v0
.end method

.method public getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    return-object p0
.end method

.method protected hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 486
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideInfo()V
    .registers 2

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public initUnderwaterUI()V
    .registers 2

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    return-void
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 4

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 157
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    .line 159
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    if-nez p1, :cond_1b

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->createView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    :cond_1b
    return-void
.end method

.method public loadActionSound()V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loadActionSound] mActionSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAppUI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v0, :cond_30

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_30

    .line 395
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 398
    :cond_30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_48

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    if-eqz v1, :cond_39

    goto :goto_48

    .line 402
    :cond_39
    sget v1, Lcom/transsion/camera/R$raw;->underwater_drainage_sound:I

    new-instance v2, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->load(IILcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    return-void

    .line 399
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Underwater] loadDrainageSound sound load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    .line 1043
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    return-void

    :cond_d
    const/4 p1, 0x1

    .line 1040
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsActivityPaused:Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected onHideRecordingUI()V
    .registers 3

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 737
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideRecordingTimeUI()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUIState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

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

    .line 276
    :cond_38
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_57

    .line 278
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->orientationChange(I)V

    return-void

    :cond_42
    const/4 v1, 0x7

    if-ne v1, v0, :cond_58

    .line 281
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p1, :cond_57

    .line 283
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

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

    .line 286
    :cond_58
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    .line 287
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingTimeOrientation(I)V

    return-void

    .line 269
    :cond_5e
    :goto_5e
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 330
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    .line 332
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mShowUI:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    if-eqz p1, :cond_1a

    .line 333
    :cond_a
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateBottomRootBarLayout(Z)V

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->isPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 335
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->tempHideRecordingUI()V

    .line 339
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->updateRecordingTimeBarLayout()V

    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 2

    const/4 v0, 0x1

    .line 752
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->onShowRecordingUI(Z)V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 2

    return-void
.end method

.method public playDrainageAnimation()V
    .registers 1

    return-void
.end method

.method public playDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .registers 6

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[playDrainageSound] mActionSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSoundLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    if-eqz v0, :cond_58

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->playDrainageAnimation()V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mDrainageSoundSampleId:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    if-eqz p1, :cond_58

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 363
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xea6

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 367
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_58
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 1

    return-void
.end method

.method public sendNotification(Landroid/content/Context;)V
    .registers 7

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 841
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 842
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->video_save_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 843
    const-string/jumbo v3, "underwater_video_saved_notification_id"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 845
    new-instance p0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/transsion/camera/R$drawable;->btn_shutter_video_notification_saved:I

    .line 846
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->camera_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 848
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->camera_video_saved_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 850
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    const-string v2, "android.intent.category.APP_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 852
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 853
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 854
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 855
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    .line 857
    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7d

    :cond_6f
    const/4 v4, 0x2

    if-ne v2, v4, :cond_78

    .line 859
    const-string v2, "com.google.android.apps.photosgo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7d

    .line 861
    :cond_78
    const-string v2, "com.gallery20"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    :goto_7d
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    .line 865
    invoke-virtual {p1, v1}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    .line 867
    invoke-virtual {p1, v2, v1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 868
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 869
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 870
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setLimitRecorderTime(J)V
    .registers 3

    .line 514
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLimitedRecorderTime:J

    const/4 p1, 0x0

    .line 515
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRemainTipsShow:Z

    return-void
.end method

.method public setModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    return-void
.end method

.method public setOnRecordingTimeFullListener(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOnRecordingTimeFullListener:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;

    return-void
.end method

.method public setPause(Z)V
    .registers 5

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPause    isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_21

    const/16 v0, 0x64

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_29

    const/4 p1, 0x4

    .line 205
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    return-void
.end method

.method public setRecordingOrientation(I)V
    .registers 5

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecordingOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 529
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    :cond_27
    return-void
.end method

.method public setScreenFormType(II)V
    .registers 4

    .line 174
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    const/4 v0, 0x6

    if-ne v0, p1, :cond_10

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_f

    const/16 p1, 0x10e

    if-eq p2, p1, :cond_f

    .line 177
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    :cond_f
    return-void

    .line 180
    :cond_10
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    return-void
.end method

.method public setZoomState(Z)V
    .registers 2

    .line 519
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mZoomScaling:Z

    if-eqz p1, :cond_9

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    :cond_9
    return-void
.end method

.method protected showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 479
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mZoomScaling:Z

    if-eqz p1, :cond_5

    return-void

    .line 482
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showInfo(I)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showInfo] infoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

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

    .line 468
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 464
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessageType(I)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_recording_storage_full:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 461
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_recording_error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 458
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_reach_size_limit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_66

    .line 454
    :cond_5e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->video_bad_performance_auto_stop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 474
    :goto_66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public showRemainingTime(Ljava/lang/String;)V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->video_remaining_recording_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showTime(JZ)V
    .registers 8

    .line 644
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    sub-long/2addr p1, v0

    .line 647
    :cond_f
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/UIUtils;->formatTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_1a

    .line 649
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public abstract stopDrainageAnimation(Z)V
.end method

.method public abstract stopDrainageAnimationPrepare()V
.end method

.method public stopDrainageSound(Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;Z)Z
    .registers 7

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopDrainageSound] mActionSound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSoundLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasMessages(MSG_DRAINAGE_SOUND_STOP) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x63

    .line 375
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSoundLoaded:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_52
    if-eqz p1, :cond_66

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mDrainageSoundSampleId:I

    invoke-interface {v0, v2}, Lcom/transsion/camera/utils/sound/IActionSound;->stop(I)V

    .line 383
    invoke-interface {p1, v1}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    .line 384
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->stopDrainageAnimation(Z)V

    :cond_66
    const/4 p0, 0x1

    return p0

    :cond_68
    return v1
.end method

.method public tempHideRecordingUI()V
    .registers 2

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mCanShowRecordingUI:Z

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    if-nez v0, :cond_8

    return-void

    .line 678
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->hideRecordingTimeUI()V

    return-void
.end method

.method public unInitUnderwaterUI()V
    .registers 1

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->unInitVideoUI()V

    return-void
.end method

.method public unInitVideoUI()V
    .registers 4

    .line 426
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    const-string/jumbo v1, "unInitVideoUI() called"

    if-eqz v0, :cond_16

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 429
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    :goto_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v0, :cond_22

    .line 432
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->unInit()V

    .line 435
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingRootView:Landroid/view/View;

    .line 437
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUISpec:Lcom/transsion/camera/app/common/ui/VideoUISpec;

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 439
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRelease:Z

    .line 440
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->releaseActionSound()V

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .registers 2

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 796
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mLowLight:Z

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRecordingStatus()V
    .registers 2

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mIsRecording:Z

    return-void
.end method

.method protected updateRecordingTimeBarLayout()V
    .registers 17

    move-object/from16 v0, p0

    .line 884
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_7

    goto :goto_21

    .line 887
    :cond_7
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mOrientation:I

    .line 888
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mScreenFormType:I

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-eq v2, v3, :cond_11

    if-ne v2, v4, :cond_13

    .line 891
    :cond_11
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    .line 894
    :cond_13
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mVideoUIExt:Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    if-eqz v5, :cond_22

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    .line 895
    invoke-interface {v5, v6, v7, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUIExt;->updateRecordingTimeBarLayout(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/res/Resources;II)Z

    move-result v5

    if-eqz v5, :cond_22

    :goto_21
    return-void

    .line 899
    :cond_22
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 900
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_37

    .line 902
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->underwater_video_recordingtime_origin_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 904
    :cond_37
    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_item_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const/4 v8, 0x0

    .line 906
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

    .line 924
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 925
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_expand_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8c

    .line 918
    :cond_66
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 919
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_expand_90_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_8c

    .line 914
    :cond_73
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 915
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_expand_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_8c

    .line 910
    :cond_80
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 911
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_expand_90_margin:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 928
    :goto_8c
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v1, v8}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 929
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_a1
    const/4 v3, 0x3

    .line 930
    const-string v4, "on"

    const/4 v8, 0x2

    if-eqz v2, :cond_1e2

    if-eq v2, v8, :cond_1e2

    if-ne v2, v3, :cond_ad

    goto/16 :goto_1e2

    :cond_ad
    const/4 v3, 0x6

    if-ne v2, v3, :cond_138

    .line 956
    iget v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

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

    .line 978
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 979
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_f4

    .line 972
    :cond_ce
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 973
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_f4

    .line 968
    :cond_db
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 969
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_f4

    .line 964
    :cond_e8
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 965
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_f4
    if-eq v1, v15, :cond_10e

    if-ne v1, v13, :cond_f9

    goto :goto_10e

    .line 986
    :cond_f9
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_text_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 987
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_text_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_122

    .line 983
    :cond_10e
    :goto_10e
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_text_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 984
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_text_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 989
    :goto_122
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 990
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->aod_underwater_recording_time_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 991
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_138
    const/4 v3, 0x4

    if-ne v2, v3, :cond_16f

    .line 993
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 994
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 995
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 996
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 998
    :cond_159
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 999
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_238

    :cond_16f
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1a6

    .line 1001
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1002
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_lr_hover_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1003
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 1004
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_lr_hover_preview_on_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1006
    :cond_190
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1007
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_text_size:I

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

    .line 1020
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1021
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_flip_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1c8

    .line 1014
    :cond_1bc
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1015
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->underwater_recording_time_flip_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1025
    :goto_1c8
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingOrientation:I

    if-nez v3, :cond_1cf

    const/4 v14, 0x0

    :cond_1cf
    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1026
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->flip_underwater_recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_238

    .line 933
    :cond_1e2
    :goto_1e2
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v2, :cond_208

    if-ne v2, v8, :cond_1e9

    goto :goto_208

    :cond_1e9
    if-ne v2, v3, :cond_21b

    .line 943
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_video_recordingtime_margin_top_hover:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 944
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21b

    .line 945
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->underwater_video_recordingtime_margin_preview_on_top_hover:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    .line 936
    :cond_208
    :goto_208
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v3

    if-ge v6, v7, :cond_216

    sub-int/2addr v7, v6

    .line 938
    div-int/2addr v7, v8

    add-int/2addr v3, v7

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_21b

    :cond_216
    sub-int/2addr v6, v7

    .line 940
    div-int/2addr v6, v8

    sub-int/2addr v3, v6

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21b
    :goto_21b
    if-ne v1, v14, :cond_224

    .line 949
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_22a

    :cond_224
    const/4 v4, 0x0

    .line 951
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v4, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 953
    :goto_22a
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->underwater_recording_time_text_size:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1028
    :cond_238
    :goto_238
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x7

    if-ne v3, v2, :cond_24e

    .line 1031
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->flip_underwater_recording_time_container_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void

    .line 1033
    :cond_24e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeContainer:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->underwater_recording_time_container_min_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method protected updateRecordingTimeOrientation(I)V
    .registers 4

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTimeViewGroup:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    move v1, v0

    .line 293
    :goto_b
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_e
    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method protected updateTimeInterval()J
    .registers 5

    .line 660
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, v1, :cond_d

    .line 662
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mRecordingTotalDuration:J

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

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-eq v0, p1, :cond_19

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mMainHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x65

    .line 191
    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->mUIState:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    :cond_19
    return-void
.end method
